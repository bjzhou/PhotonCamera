
import numpy as np

def xy_to_XYZ(x, y):
    return [x/y, 1.0, (1.0-x-y)/y]

def get_xyz_matrix(r, g, b, w):
    X = np.array([
        [r[0]/r[1], g[0]/g[1], b[0]/b[1]],
        [1.0, 1.0, 1.0],
        [(1.0-r[0]-r[1])/r[1], (1.0-g[0]-g[1])/g[1], (1.0-b[0]-b[1])/b[1]]
    ])
    W = np.array(xy_to_XYZ(*w))
    S = np.linalg.solve(X, W)
    return X * S

def bradford_adaptation(src_wp, dst_wp):
    if src_wp == dst_wp:
        return np.eye(3)

    M_cat02 = np.array([
        [ 0.7328,  0.4296, -0.1624],
        [-0.7036,  1.6975,  0.0061],
        [ 0.0030,  0.0136,  0.9834]
    ])

    src_XYZ = np.array(xy_to_XYZ(*src_wp))
    dst_XYZ = np.array(xy_to_XYZ(*dst_wp))

    src_LMS = M_cat02 @ src_XYZ
    dst_LMS = M_cat02 @ dst_XYZ

    LMS_ratio = dst_LMS / src_LMS
    M_adapt = np.diag(LMS_ratio)

    return np.linalg.inv(M_cat02) @ M_adapt @ M_cat02

spaces = [
    # (Name, r, g, b, w)
    ("SRGB", (0.640, 0.330), (0.300, 0.600), (0.150, 0.060), (0.3127, 0.3290)),
    ("DCI_P3", (0.680, 0.320), (0.265, 0.690), (0.150, 0.060), (0.314, 0.351)),
    ("BT2020", (0.708, 0.292), (0.170, 0.797), (0.131, 0.046), (0.3127, 0.3290)),
    ("ARRI4", (0.7347, 0.2653), (0.1424, 0.8576), (0.0991, -0.0308), (0.3127, 0.3290)),
    ("AppleLog2", (0.725, 0.301), (0.221, 0.814), (0.068, -0.076), (0.3127, 0.3290)),
    ("S_GAMUT3_CINE", (0.766, 0.275), (0.225, 0.8), (0.089, -0.087), (0.3127, 0.3290)),
    ("ACES_AP1", (0.713, 0.293), (0.165, 0.83), (0.128, 0.044), (0.32168, 0.33767)),
]

M_srgb_xyz = get_xyz_matrix(spaces[0][1], spaces[0][2], spaces[0][3], spaces[0][4])

for i in range(1, len(spaces)):
    name, r, g, b, w = spaces[i]
    M_target_xyz = get_xyz_matrix(r, g, b, w)
    M_adapt = bradford_adaptation(spaces[0][4], w)

    # Forward: SRGB_Lin -> Target_Lin
    M_fwd = np.linalg.inv(M_target_xyz) @ M_adapt @ M_srgb_xyz

    print(f"---{name} (Ordinal {i})---")
    entries = M_fwd.flatten(order='F')
    for e in entries:
        print(f"{e:.6f}")
