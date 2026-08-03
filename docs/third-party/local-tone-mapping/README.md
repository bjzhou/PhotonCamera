# Local tone mapping reference notices

Photon's Kotlin implementation is a clean port/adaptation of the following public reference
implementations. The reference source archives were downloaded and compared during implementation;
they are not compiled into the application.

## Local Laplacian Filters

- Sylvain Paris, Samuel W. Hasinoff, Jan Kautz,
  “Local Laplacian Filters: Edge-aware Image Processing with a Laplacian Pyramid”, 2011.
- Official project and MATLAB source:
  <https://people.csail.mit.edu/sparis/publi/2011/siggraph/>
- Copyright (c) 2011 Sam Hasinoff.
- License: MIT; see `LOCAL_LAPLACIAN_LICENSE.txt`.

The intensity-discretized evaluation follows the authors' later `llf_general.m` implementation for
“Fast Local Laplacian Filters: Theory and Applications” (Aubry et al., 2014).

## Halide and Google BGU

- Halide `apps/local_laplacian/local_laplacian_generator.cpp` and
  `apps/bgu/bgu_generator.cpp`, pinned at commit
  `52c427d277d3dc44c9a4bf69e32c7b85e5b90681`.
- Google `bgu` `fit_and_slice_affine_grid_halide.cpp`, pinned at commit
  `f2d6f2d1950b64790a2f712dc80b6c4bada410d5`.
- Halide portions are Copyright (c) 2012-2020 MIT CSAIL, Google, Facebook, Adobe,
  NVIDIA CORPORATION, and other contributors, under the MIT license.
- Google BGU is Copyright 2016 Google Inc., under Apache License 2.0. The repository root
  `LICENSE` contains the Apache License 2.0 text.

Production implementation:
`app/src/main/java/com/hinnka/mycamera/raw/DngPhotonLocalToneMapper.kt`.
The exact stage-by-stage comparison is in `docs/photon-local-tone-mapping.md`.
