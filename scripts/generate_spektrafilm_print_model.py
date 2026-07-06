#!/usr/bin/env python3
"""Export Spektrafilm print-model parameters for Android runtime LUT synthesis."""

from __future__ import annotations

import json
import math
from pathlib import Path

import colour
import numpy as np

from spektrafilm.config import STANDARD_OBSERVER_CMFS
from spektrafilm.model.illuminants import standard_illuminant
from spektrafilm.profiles.io import load_profile
from spektrafilm.runtime.params_builder import digest_params, init_params
from spektrafilm.runtime.pipeline import SimulationPipeline
from spektrafilm.utils.morph_curves import PrintCurvesMorphParams, apply_print_curves_morph


FILMS = [
    "fujifilm_c200",
    "fujifilm_pro_400h",
    "fujifilm_provia_100f",
    "fujifilm_velvia_100",
    "fujifilm_xtra_400",
    "kodak_ektachrome_100",
    "kodak_ektar_100",
    "kodak_gold_200",
    "kodak_kodachrome_64",
    "kodak_portra_160",
    "kodak_portra_400",
    "kodak_portra_800",
    "kodak_portra_800_push1",
    "kodak_portra_800_push2",
    "kodak_ultramax_400",
    "kodak_verita_200d",
    "kodak_vision3_200t",
    "kodak_vision3_250d",
    "kodak_vision3_500t",
    "kodak_vision3_50d",
]

PRINTS = [
    "fujifilm_crystal_archive_typeii",
    "kodak_2383",
    "kodak_2393",
    "kodak_ektacolor_edge",
    "kodak_endura_premier",
    "kodak_portra_endura",
    "kodak_supra_endura",
    "kodak_ultra_endura",
]


def clean(value, *, nan=0.0):
    array = np.asarray(value, dtype=np.float64)
    array = np.nan_to_num(array, nan=nan, posinf=nan, neginf=nan)
    return array.tolist()


def round_floats(value, digits=8):
    if isinstance(value, float):
        if not math.isfinite(value):
            return 0.0
        return round(value, digits)
    if isinstance(value, list):
        return [round_floats(item, digits) for item in value]
    if isinstance(value, dict):
        return {key: round_floats(item, digits) for key, item in value.items()}
    return value


def xy_from_spectrum(spectrum):
    normalization = np.sum(spectrum * STANDARD_OBSERVER_CMFS[:, 1], axis=0)
    xyz = np.einsum("k,kl->l", spectrum, STANDARD_OBSERVER_CMFS[:]) / normalization
    return colour.XYZ_to_xy(xyz)


def xyz_to_prophoto_matrix(viewing_illuminant):
    spectrum = standard_illuminant(viewing_illuminant)
    source_xy = xy_from_spectrum(spectrum)
    basis_xyz = np.eye(3)
    rgb_basis_rows = colour.XYZ_to_RGB(
        basis_xyz,
        colourspace="ProPhoto RGB",
        apply_cctf_encoding=False,
        illuminant=source_xy,
    )
    return rgb_basis_rows.T


def export_model(output_path: Path):
    illuminants = {}
    matrices = {}
    for name in sorted({"D50", "K75P"}):
        spectrum = standard_illuminant(name)
        illuminants[name] = clean(spectrum)
        matrices[name] = clean(xyz_to_prophoto_matrix(name))

    model = {
        "version": 1,
        "wavelengths": clean(np.arange(380, 781, 5, dtype=np.float64)),
        "observerCmfs": clean(STANDARD_OBSERVER_CMFS[:]),
        "viewingIlluminants": illuminants,
        "xyzToProPhoto": matrices,
        "films": {},
        "papers": {},
        "combinations": {},
    }

    for film_name in FILMS:
        params = digest_params(init_params(film_name, "kodak_portra_endura"))
        film = params.film
        model["films"][film_name] = {
            "channelDensity": clean(film.data.channel_density, nan=100.0),
            "baseDensity": clean(film.data.base_density, nan=100.0),
            "densityMin": clean(-np.asarray(params.film_render.grain.density_min)),
            "densityMax": clean(np.nanmax(film.data.density_curves, axis=0)),
        }

    for paper_name in PRINTS:
        paper = load_profile(paper_name)
        density_curves = apply_print_curves_morph(
            paper.data.log_exposure,
            paper.data.density_curves_model,
            PrintCurvesMorphParams(active=False),
            profile_type=paper.info.type,
        )
        model["papers"][paper_name] = {
            "viewingIlluminant": paper.info.viewing_illuminant,
            "sensitivity": clean(np.nan_to_num(10 ** paper.data.log_sensitivity)),
            "channelDensity": clean(paper.data.channel_density, nan=100.0),
            "baseDensity": clean(paper.data.base_density, nan=100.0),
            "logExposure": clean(paper.data.log_exposure),
            "densityCurves": clean(density_curves),
        }

    for film_name in FILMS:
        model["combinations"][film_name] = {}
        for paper_name in PRINTS:
            params = init_params(film_name, paper_name)
            params.io.output_color_space = "ProPhoto RGB"
            params.io.output_cctf_encoding = False
            params.io.scan_film = False
            params.debug.lut_mode = True
            params = digest_params(params)
            pipeline = SimulationPipeline(params)

            paper = pipeline.print
            sensitivity = np.nan_to_num(10 ** paper.data.log_sensitivity)
            light_source = standard_illuminant(pipeline.enlarger.illuminant)
            print_illuminant = pipeline._enlarger_service.enlarger_filtered_illuminant(light_source)
            exposure_factor = pipeline._printing_stage._compute_exposure_factor_midgray(
                sensitivity,
                print_illuminant,
            )
            midgray_spectral_density = pipeline._enlarger_service.density_spectral_midgray

            model["combinations"][film_name][paper_name] = {
                "printIlluminant": clean(print_illuminant),
                "exposureFactor": clean(exposure_factor),
                "midgraySpectralDensity": clean(midgray_spectral_density.reshape(-1)),
                "neutralFilters": [
                    float(pipeline.enlarger.c_filter_neutral),
                    float(pipeline.enlarger.m_filter_neutral),
                    float(pipeline.enlarger.y_filter_neutral),
                ],
            }

    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(
        json.dumps(round_floats(model), separators=(",", ":")),
        encoding="utf-8",
    )


if __name__ == "__main__":
    export_model(Path("../PhotonMGC/app/src/main/assets/spektrafilm/print_model.json"))
