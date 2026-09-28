"""Reference pixels -> predicted source/observed target RGB pairs -> fitted LUT.

The network learns correspondences using aligned original/effect images during
training. Inference still requires only the effect image. Missing source colours
are inferred, not directly measurable; anchor supervision covers unobserved RGB.
"""

from dataclasses import asdict, dataclass

import torch
from torch import Tensor, nn
from torch.nn import functional as F

from .lut import apply_lut, identity_lut
from .model import InvertedResidual, conv
from .point_fitting import fit_pixel_pairs, interpolate_anchors


@dataclass(frozen=True)
class PointModelConfig:
    architecture: str = "pixel_pairs"
    image_size: int = 224
    lut_size: int = 33
    anchor_size: int = 7
    point_grid: int = 14
    kernel_sigma: float = 0.14
    fit_regularization: float = 0.1

    def __post_init__(self):
        if (
            self.architecture != "pixel_pairs"
            or self.image_size != 224
            or self.lut_size != 33
        ):
            raise ValueError(
                "Pixel-pair deployment requires 224 RGB input and 33^3 LUT output"
            )
        if not 4 <= self.anchor_size <= 9 or self.point_grid != 14:
            raise ValueError(
                "Use 4..9 RGB anchors per axis and a 14x14 correspondence grid"
            )
        if (
            not 0.04 <= self.kernel_sigma <= 0.4
            or not 0.001 <= self.fit_regularization <= 1
        ):
            raise ValueError("Invalid RGB fitting kernel/regularization")


class PixelPairLutNet(nn.Module):
    def __init__(self, config: PointModelConfig | None = None):
        super().__init__()
        self.config = config or PointModelConfig()
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
        self.project = nn.Sequential(nn.Linear(512, 128), nn.ReLU())
        self.anchor_head = nn.Linear(128, 3 * self.config.anchor_size**3)
        self.point_head = nn.Sequential(
            nn.Conv2d(256 + 128 + 3, 64, 1), nn.ReLU(), nn.Conv2d(64, 4, 1)
        )
        self.register_buffer(
            "anchor_identity", identity_lut(self.config.anchor_size)[None]
        )
        positions = torch.arange(self.config.point_grid) * 16 + 8
        self.register_buffer(
            "sample_indices", (positions[:, None] * 224 + positions[None, :]).flatten()
        )
        # Near-identity initialization, but nonzero weights propagate gradients into all heads/encoder immediately.
        nn.init.normal_(self.anchor_head.weight, std=0.001)
        nn.init.zeros_(self.anchor_head.bias)
        nn.init.normal_(self.point_head[-1].weight, std=0.001)
        nn.init.zeros_(self.point_head[-1].bias)

    def predict_pairs(self, image: Tensor) -> dict[str, Tensor]:
        features = self.encoder(image.to(self.encoder[0][0].weight.dtype))
        with torch.autocast(device_type=image.device.type, enabled=False):
            features, image = features.float(), image.float()
            mean = features.mean((2, 3))
            std = (
                (features - mean[:, :, None, None]).square().mean((2, 3)) + 1e-6
            ).sqrt()
            z = self.project(torch.cat((mean, std), dim=1))
            anchors = self.anchor_identity + self.anchor_head(z).reshape(
                -1, 3, *((self.config.anchor_size,) * 3)
            )
            target = image.flatten(2).index_select(2, self.sample_indices)
            p = self.config.point_grid
            local = F.interpolate(features, size=(p, p), mode="nearest")
            head = self.point_head(
                torch.cat(
                    (
                        local,
                        z[:, :, None, None].expand(-1, -1, p, p),
                        target.reshape(-1, 3, p, p),
                    ),
                    dim=1,
                )
            )
            source = target + head[:, :3].flatten(2).tanh()
            return {
                "source": source.transpose(1, 2),
                "target": target.transpose(1, 2),
                "confidence": head[:, 3:].flatten(2).sigmoid().transpose(1, 2),
                "anchors": anchors,
            }

    def forward_with_pairs(self, image: Tensor) -> tuple[Tensor, dict[str, Tensor]]:
        pairs = self.predict_pairs(image)
        raw = fit_pixel_pairs(
            pairs["anchors"],
            pairs["source"],
            pairs["target"],
            pairs["confidence"],
            self.config.lut_size,
            self.config.kernel_sigma,
            self.config.fit_regularization,
        )
        return raw, pairs

    def raw_lut(self, image: Tensor) -> Tensor:
        return self.forward_with_pairs(image)[0]

    def forward(self, image: Tensor) -> Tensor:
        return self.raw_lut(image).clamp(0, 1)

    def budget(self) -> dict:
        counts = {
            name: sum(p.numel() for p in module.parameters())
            for name, module in self.named_children()
        }
        parameters = sum(counts.values())
        points, queries = self.config.point_grid**2, self.config.lut_size**3
        return {
            "config": asdict(self.config),
            "parameters": parameters,
            "by_module": counts,
            "fp32_parameter_mib": parameters * 4 / 2**20,
            "fp16_parameter_mib": parameters * 2 / 2**20,
            "point_pairs": points,
            "anchor_pairs": self.config.anchor_size**3,
            "pair_fitting_macs": 6 * queries * points + 3 * points**2,
            "inference_weight_chunk_mib": self.config.lut_size**2 * points * 4 / 2**20,
            "fit_note": "MAC estimate covers pair distances and RGB residual projection; excludes exponentials, reductions, anchor interpolation and training backward buffers",
        }


def correspondence_losses(
    raw: Tensor,
    pairs: dict[str, Tensor],
    originals: Tensor,
    effects: Tensor,
    target_lut: Tensor,
    sample_indices: Tensor,
) -> dict[str, Tensor]:
    if originals.shape[-2:] != (224, 224) or effects.shape[-2:] != (224, 224):
        raise ValueError(
            "Pixel supervision needs aligned 224x224 originals/effects before JPEG observation augmentation"
        )
    true_source = originals.flatten(2).index_select(2, sample_indices).transpose(1, 2)
    true_target = effects.flatten(2).index_select(2, sample_indices).transpose(1, 2)
    # Balance actual RGB point pairs, so common sky/background colours cannot drown out rare colours.
    cells = (true_source * 6).floor().long().clamp(0, 6)
    cell_ids = cells[..., 2] * 49 + cells[..., 1] * 7 + cells[..., 0]
    counts = torch.zeros(originals.shape[0], 343, device=originals.device)
    counts.scatter_add_(1, cell_ids, torch.ones_like(cell_ids, dtype=torch.float32))
    weights = counts.gather(1, cell_ids).reciprocal()
    weights = weights / weights.sum(1, keepdim=True)
    source_error = (pairs["source"] - true_source).abs().mean(-1)
    observation_error = (pairs["target"] - true_target).abs().mean(-1)
    # Confidence has its own detached calibration target, not a freely collapsible loss multiplier.
    confidence_target = torch.exp(
        -(source_error.detach() + observation_error.detach()) / 0.08
    )
    mapped = (
        apply_lut(raw.clamp(0, 1), true_source.transpose(1, 2).unsqueeze(-1))
        .squeeze(-1)
        .transpose(1, 2)
    )
    anchor_target = interpolate_anchors(target_lut, pairs["anchors"].shape[-1])
    terms = {
        "source_pair": (weights * source_error).sum(1).mean(),
        "anchor_pair": F.l1_loss(pairs["anchors"], anchor_target),
        "confidence": F.mse_loss(pairs["confidence"].squeeze(-1), confidence_target),
        "pixel_pair": (weights * (mapped - true_target).abs().mean(-1)).sum(1).mean(),
    }
    terms["total"] = (
        2 * terms["source_pair"]
        + terms["anchor_pair"]
        + terms["pixel_pair"]
        + 0.1 * terms["confidence"]
    )
    return terms
