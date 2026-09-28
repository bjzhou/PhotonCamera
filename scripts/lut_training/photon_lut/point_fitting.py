"""Differentiable sRGB point-pair fitting, shared by training and deployment.

A full-colour anchor lattice covers colours absent from the reference. Observed
pixel pairs fit local residuals around that lattice, with density normalization
so repeated sky/skin/background pixels do not dominate the fit.
"""

import torch
from torch import Tensor
from torch.nn import functional as F

from .lut import apply_lut, identity_lut


def interpolate_anchors(anchors: Tensor, size: int) -> Tensor:
    return F.interpolate(
        anchors.float(), size=(size,) * 3, mode="trilinear", align_corners=True
    )


def gaussian(query: Tensor, source: Tensor, sigma: float) -> Tensor:
    squared = (
        query.square().sum(-1, keepdim=True)
        + source.square().sum(-1)[:, None, :]
        - 2 * (query @ source.transpose(1, 2))
    ).clamp_min(0)
    return torch.exp(squared * (-0.5 / sigma**2))


def fit_pixel_pairs(
    anchors: Tensor,
    source: Tensor,
    target: Tensor,
    confidence: Tensor,
    size: int = 33,
    sigma: float = 0.14,
    regularization: float = 0.1,
) -> Tensor:
    """Regularized local least squares for the RGB residual at each LUT query.

    For q, minimize sum_i w_i(q)||d(q)-e_i||² + lambda||d(q)||²,
    where e_i=target_i-anchorLUT(source_i). This has the closed-form solution
    d=sum(w*e)/(lambda+sum(w)). It is neither a tone/saturation adjustment nor
    a matrix inversion. Small lambda is an explicit prior toward the learned
    anchor mapping where the observed image has little colour coverage.
    """
    if sigma <= 0 or regularization <= 0 or size < 2:
        raise ValueError("Invalid fitting configuration")
    with torch.autocast(device_type=anchors.device.type, enabled=False):
        anchors, source, target, confidence = (
            anchors.float(),
            source.float().clamp(0, 1),
            target.float(),
            confidence.float(),
        )
        sampled = apply_lut(anchors, source.transpose(1, 2).unsqueeze(-1))
        residual = target - sampled.squeeze(-1).transpose(1, 2)
        density = gaussian(source, source, sigma).sum(-1, keepdim=True)
        mass = confidence / density  # density >= 1 due to each point's self weight
        grid = identity_lut(size).to(source.device).flatten(1).T[None]
        corrections = []
        # One B slab per chunk, identical to the exported graph. Avoid a full Q*P tensor at inference.
        for query in grid.split(size * size, dim=1):
            weights = gaussian(query, source, sigma) * mass.transpose(1, 2)
            corrections.append(
                (weights @ residual) / (regularization + weights.sum(-1, keepdim=True))
            )
        correction = torch.cat(corrections, dim=1).transpose(1, 2)
        return interpolate_anchors(anchors, size) + correction.reshape(
            -1, 3, size, size, size
        )
