"""Mobile encoder with independent tone and factorized 3D residual heads."""

from dataclasses import asdict, dataclass

import torch
from torch import Tensor, nn
from torch.nn import functional as F

from .lut import identity_lut


@dataclass(frozen=True)
class ModelConfig:
    image_size: int = 224
    lut_size: int = 33
    bases: int = 32
    rank: int = 8
    histogram_bins: int = 16

    def __post_init__(self):
        if self.image_size != 224 or self.lut_size != 33:
            raise ValueError(
                "The deployment contract is 224x224 input and 33^3 LUT output"
            )
        if (
            not 4 <= self.bases <= 64
            or not 4 <= self.rank <= 16
            or self.histogram_bins != 16
        ):
            raise ValueError("Unsupported factorization configuration")


def conv(
    cin: int, cout: int, kernel: int, stride: int = 1, groups: int = 1
) -> nn.Sequential:
    return nn.Sequential(
        nn.Conv2d(cin, cout, kernel, stride, kernel // 2, groups=groups, bias=False),
        nn.BatchNorm2d(cout),
        nn.ReLU6(inplace=False),
    )


class InvertedResidual(nn.Module):
    def __init__(self, cin: int, cout: int, stride: int, expansion: int = 3):
        super().__init__()
        hidden = cin * expansion
        self.block = nn.Sequential(
            conv(cin, hidden, 1),
            conv(hidden, hidden, 3, stride, hidden),
            nn.Conv2d(hidden, cout, 1, bias=False),
            nn.BatchNorm2d(cout),
        )
        self.residual = stride == 1 and cin == cout

    def forward(self, x: Tensor) -> Tensor:
        y = self.block(x)
        return x + y if self.residual else y


class LutDecoder(nn.Module):
    def __init__(self, config: ModelConfig):
        super().__init__()
        n, k, rank = config.lut_size, config.bases, config.rank
        self.n, self.rank = n, rank
        self.core = nn.Parameter(torch.randn(k, 3 * rank**3) * 0.02)
        # Learnable axis factors start at linear interpolation, not random colour permutations.
        grid = torch.linspace(0, rank - 1, n)
        interpolation = (1 - (grid[:, None] - torch.arange(rank)[None]).abs()).clamp(
            min=0
        )
        self.axis_r = nn.Parameter(interpolation.T.clone())
        self.axis_g = nn.Parameter(interpolation.T.clone())
        self.axis_b = nn.Parameter(interpolation.T.clone())
        self.register_buffer("identity", identity_lut(n)[None])

    def forward(self, weights: Tensor, tone: Tensor) -> Tensor:
        batch, rank, n = weights.shape[0], self.rank, self.n
        # Contract the style dimension BEFORE expanding spatial axes: no K x 33^3 bank.
        x = (weights @ self.core).reshape(batch, 3, rank, rank, rank)
        x = x @ self.axis_r  # B,C,b,g,R
        x = (x.transpose(-1, -2) @ self.axis_g).transpose(-1, -2)  # B,C,b,G,R
        x = (x.permute(0, 1, 3, 4, 2) @ self.axis_b).permute(0, 1, 4, 2, 3)
        tone = tone.reshape(batch, 3, n)
        curves = torch.stack(
            (
                tone[:, 0, None, None, :].expand(-1, n, n, -1),
                tone[:, 1, None, :, None].expand(-1, n, -1, n),
                tone[:, 2, :, None, None].expand(-1, -1, n, n),
            ),
            dim=1,
        )
        return self.identity + curves + x


class StyleLutNet(nn.Module):
    def __init__(self, config: ModelConfig | None = None):
        super().__init__()
        self.config = config or ModelConfig()
        self.encoder = nn.Sequential(
            conv(3, 24, 3, 2),
            InvertedResidual(24, 32, 2),
            InvertedResidual(32, 32, 1),
            InvertedResidual(32, 64, 2),
            InvertedResidual(64, 64, 1),
            InvertedResidual(64, 96, 2),
            InvertedResidual(96, 96, 1),
            InvertedResidual(96, 160, 2),
            InvertedResidual(160, 160, 1),
            conv(160, 256, 1),
        )
        self.register_buffer("bins", torch.linspace(0, 1, self.config.histogram_bins))
        # Mean/std of learned features + raw RGB moments and soft histograms.
        self.project = nn.Sequential(nn.Linear(512 + 6 + 48, 256), nn.ReLU())
        self.weight_head = nn.Linear(256, self.config.bases)
        self.tone_head = nn.Linear(256, 3 * self.config.lut_size)
        nn.init.normal_(self.weight_head.weight, std=0.001)
        nn.init.zeros_(self.weight_head.bias)
        nn.init.zeros_(self.tone_head.weight)
        nn.init.zeros_(self.tone_head.bias)
        self.decoder = LutDecoder(self.config)

    def raw_lut(self, image: Tensor) -> Tensor:
        features = self.encoder(image.to(self.encoder[0][0].weight.dtype))
        # LUT coordinates, moments, heads and spatial reconstruction stay FP32 even under AMP.
        with torch.autocast(device_type=image.device.type, enabled=False):
            features, image = features.float(), image.float()
            mean = features.mean((2, 3))
            std = (
                (features - mean[:, :, None, None]).square().mean((2, 3)) + 1e-6
            ).sqrt()
            rgb_mean = image.mean((2, 3))
            rgb_std = (
                (image - rgb_mean[:, :, None, None]).square().mean((2, 3)) + 1e-6
            ).sqrt()
            small = F.avg_pool2d(image, 4)
            distances = (small.unsqueeze(-1) - self.bins).abs()
            histogram = (
                (1 - distances * (self.config.histogram_bins - 1))
                .clamp(min=0)
                .mean((2, 3))
            )
            z = self.project(
                torch.cat((mean, std, rgb_mean, rgb_std, histogram.flatten(1)), dim=1)
            )
            return self.decoder(self.weight_head(z), self.tone_head(z))

    def forward(self, image: Tensor) -> Tensor:
        return self.raw_lut(image).clamp(0, 1)

    def budget(self) -> dict:
        counts = {
            name: sum(p.numel() for p in module.parameters())
            for name, module in self.named_children()
        }
        return {
            "config": asdict(self.config),
            "parameters": sum(counts.values()),
            "by_module": counts,
            "fp32_parameter_mib": sum(counts.values()) * 4 / 2**20,
            "fp16_parameter_mib": sum(counts.values()) * 2 / 2**20,
        }
