import math
import struct
import sys
from dataclasses import dataclass
from pathlib import Path


TYPE_SIZE = {
    1: 1,   # BYTE
    2: 1,   # ASCII
    3: 2,   # SHORT
    4: 4,   # LONG
    5: 8,   # RATIONAL
    7: 1,   # UNDEFINED
    9: 4,   # SLONG
    10: 8,  # SRATIONAL
    11: 4,  # FLOAT
    12: 8,  # DOUBLE
}

SAMPLE_GRID = 16
HIST_BINS = 256
TARGET_TILE_PX = 64
GRID_MIN_H = 8
GRID_MIN_V = 6
GRID_MAX_H = 64
GRID_MAX_V = 48
BASE_INPUT_WEIGHTS = [0.1495, 0.2935, 0.0570, 0.1250, 0.3750]
PGTM_SAMPLE_INPUTS = [
    0.0,
    0.0025,
    0.005,
    0.0075,
    0.010,
    0.015,
    0.020,
    0.0275,
    0.035,
    0.045,
    0.050,
    0.0575,
    0.065,
    0.0725,
    0.080,
    0.090,
    0.100,
    0.110,
    0.120,
    0.130,
    0.140,
    0.160,
    0.180,
    0.220,
    0.250,
    0.280,
    0.320,
    0.360,
    0.420,
    0.500,
    0.600,
    0.700,
    0.750,
    0.820,
    0.900,
    0.950,
    1.0,
]
CFA_RGGB = 0
CFA_GRBG = 1
CFA_GBRG = 2
CFA_BGGR = 3
BAYER_COLOR_PATTERNS = {
    CFA_RGGB: [0, 1, 1, 2],
    CFA_GRBG: [1, 0, 2, 1],
    CFA_GBRG: [1, 2, 0, 1],
    CFA_BGGR: [2, 1, 1, 0],
}
BAYER_CHANNEL_PATTERNS = {
    CFA_RGGB: [0, 1, 2, 3],
    CFA_GRBG: [1, 0, 3, 2],
    CFA_GBRG: [2, 3, 0, 1],
    CFA_BGGR: [3, 2, 1, 0],
}
PCS_TO_XYZ = [0.9642957, 1.0, 0.8251046]
BRADFORD_LINEAR = [
    0.8951, 0.2664, -0.1614,
    -0.7502, 1.7135, 0.0367,
    0.0389, -0.0685, 1.0296,
]
BRADFORD_D65_TO_D50 = [
    1.0478112, 0.0228866, -0.0501270,
    0.0295424, 0.9904844, -0.0170491,
    -0.0092345, 0.0150436, 0.7521316,
]
PROPHOTO = {
    "xr": 0.734699,
    "yr": 0.265301,
    "xg": 0.159597,
    "yg": 0.840403,
    "xb": 0.036598,
    "yb": 0.000105,
    "xw": 0.345704,
    "yw": 0.358540,
}


def mat_mul(a, b):
    return [
        a[row * 3] * b[col] + a[row * 3 + 1] * b[3 + col] + a[row * 3 + 2] * b[6 + col]
        for row in range(3)
        for col in range(3)
    ]


def mat_vec(m, v):
    return [
        m[0] * v[0] + m[1] * v[1] + m[2] * v[2],
        m[3] * v[0] + m[4] * v[1] + m[5] * v[2],
        m[6] * v[0] + m[7] * v[1] + m[8] * v[2],
        ]


def mat_inv(m):
    det = (
            m[0] * (m[4] * m[8] - m[5] * m[7])
            - m[1] * (m[3] * m[8] - m[5] * m[6])
            + m[2] * (m[3] * m[7] - m[4] * m[6])
    )
    if abs(det) < 1e-12 or not math.isfinite(det):
        return None
    inv = 1.0 / det
    return [
        (m[4] * m[8] - m[5] * m[7]) * inv,
        (m[2] * m[7] - m[1] * m[8]) * inv,
        (m[1] * m[5] - m[2] * m[4]) * inv,
        (m[5] * m[6] - m[3] * m[8]) * inv,
        (m[0] * m[8] - m[2] * m[6]) * inv,
        (m[2] * m[3] - m[0] * m[5]) * inv,
        (m[3] * m[7] - m[4] * m[6]) * inv,
        (m[1] * m[6] - m[0] * m[7]) * inv,
        (m[0] * m[4] - m[1] * m[3]) * inv,
        ]


def diag(v):
    return [v[0], 0.0, 0.0, 0.0, v[1], 0.0, 0.0, 0.0, v[2]]


def xy_to_xyz(xy):
    x, y = xy
    if y <= 1e-12:
        return None
    return [x / y, 1.0, (1.0 - x - y) / y]


def xyz_to_xy(xyz):
    s = sum(xyz)
    if abs(s) < 1e-12 or not math.isfinite(s):
        return None
    return [xyz[0] / s, xyz[1] / s]


def map_white_matrix(white1, white2):
    w1 = mat_vec(BRADFORD_LINEAR, xy_to_xyz(white1))
    w2 = mat_vec(BRADFORD_LINEAR, xy_to_xyz(white2))
    w1 = [max(v, 0.0) for v in w1]
    w2 = [max(v, 0.0) for v in w2]
    adaptation = diag([
        min(max((w2[i] / w1[i]) if w1[i] > 0.0 else 10.0, 0.1), 10.0)
        for i in range(3)
    ])
    inv_bradford = mat_inv(BRADFORD_LINEAR)
    return mat_mul(mat_mul(inv_bradford, adaptation), BRADFORD_LINEAR)


TEMP_TABLE = [
    (0.0, 0.18006, 0.26352, -0.24341),
    (10.0, 0.18066, 0.26589, -0.25479),
    (20.0, 0.18133, 0.26846, -0.26876),
    (30.0, 0.18208, 0.27119, -0.28539),
    (40.0, 0.18293, 0.27407, -0.30470),
    (50.0, 0.18388, 0.27709, -0.32675),
    (60.0, 0.18494, 0.28021, -0.35156),
    (70.0, 0.18611, 0.28342, -0.37915),
    (80.0, 0.18740, 0.28668, -0.40955),
    (90.0, 0.18880, 0.28997, -0.44278),
    (100.0, 0.19032, 0.29326, -0.47888),
    (125.0, 0.19462, 0.30141, -0.58204),
    (150.0, 0.19962, 0.30921, -0.70471),
    (175.0, 0.20525, 0.31647, -0.84901),
    (200.0, 0.21142, 0.32312, -1.0182),
    (225.0, 0.21807, 0.32909, -1.2168),
    (250.0, 0.22511, 0.33439, -1.4512),
    (275.0, 0.23247, 0.33904, -1.7298),
    (300.0, 0.24010, 0.34308, -2.0637),
    (325.0, 0.24702, 0.34655, -2.4681),
    (350.0, 0.25591, 0.34951, -2.9641),
    (375.0, 0.26400, 0.35200, -3.5814),
    (400.0, 0.27218, 0.35407, -4.3633),
    (425.0, 0.28039, 0.35577, -5.3762),
    (450.0, 0.28863, 0.35714, -6.7262),
    (475.0, 0.29685, 0.35823, -8.5955),
    (500.0, 0.30505, 0.35907, -11.324),
    (525.0, 0.31320, 0.35968, -15.628),
    (550.0, 0.32129, 0.36011, -23.325),
    (575.0, 0.32931, 0.36038, -40.770),
    (600.0, 0.33724, 0.36051, -116.45),
]


def temperature_for_xy(xy):
    denom = 1.5 - xy[0] + 6.0 * xy[1]
    if abs(denom) < 1e-12:
        return 5000.0
    u = 2.0 * xy[0] / denom
    v = 3.0 * xy[1] / denom
    last_distance = 0.0
    for idx in range(1, len(TEMP_TABLE)):
        reciprocal, tu, tv, slope = TEMP_TABLE[idx]
        du, dv = 1.0, slope
        length = math.sqrt(1.0 + dv * dv)
        du /= length
        dv /= length
        uu = u - tu
        vv = v - tv
        distance = -uu * dv + vv * du
        if distance <= 0.0 or idx == len(TEMP_TABLE) - 1:
            if distance > 0.0:
                distance = 0.0
            dt = -distance
            fraction = 0.0 if idx == 1 else dt / (last_distance + dt)
            rec = TEMP_TABLE[idx - 1][0] * fraction + reciprocal * (1.0 - fraction)
            return min(max(1.0e6 / rec, 1000.0), 100000.0)
        last_distance = distance
    return 5000.0


def illuminant_to_temperature(illuminant):
    return {
        3: 2850.0, 17: 2850.0, 24: 3200.0, 23: 5000.0,
        1: 5500.0, 4: 5500.0, 9: 5500.0, 18: 5500.0, 20: 5500.0,
        10: 6500.0, 19: 6500.0, 21: 6500.0, 11: 7500.0, 22: 7500.0,
        12: 6400.0, 2: 4150.0, 14: 4150.0, 13: 5050.0, 15: 3525.0, 16: 2925.0,
    }.get(int(illuminant or 0), 0.0)


def normalize_color_matrix(matrix):
    result = list(matrix)
    coord = mat_vec(result, PCS_TO_XYZ)
    max_coord = max(coord)
    if max_coord > 0.0 and (max_coord < 0.99 or max_coord > 1.01):
        result = [v / max_coord for v in result]
    return [round(v * 10000.0) / 10000.0 for v in result]


def normalize_forward_matrix(matrix):
    result = list(matrix)
    xyz = [sum(result[0:3]), sum(result[3:6]), sum(result[6:9])]
    for row in range(3):
        scale = PCS_TO_XYZ[row] / xyz[row] if abs(xyz[row]) > 1e-6 else 1.0
        for col in range(3):
            result[row * 3 + col] *= scale
    return result


def interpolate_matrix(a, b, weight):
    return [a[i] * weight + b[i] * (1.0 - weight) for i in range(9)]


def compute_xyz_d50_to_prophoto():
    xr, yr = PROPHOTO["xr"], PROPHOTO["yr"]
    xg, yg = PROPHOTO["xg"], PROPHOTO["yg"]
    xb, yb = PROPHOTO["xb"], PROPHOTO["yb"]
    xw, yw = PROPHOTO["xw"], PROPHOTO["yw"]
    scale = [xr / yr, xg / yg, xb / yb, 1.0, 1.0, 1.0, (1 - xr - yr) / yr, (1 - xg - yg) / yg, (1 - xb - yb) / yb]
    inv = mat_inv(scale)
    white = [xw / yw, 1.0, (1 - xw - yw) / yw]
    sr, sg, sb = mat_vec(inv, white)
    gamut_to_xyz = [scale[0] * sr, scale[1] * sg, scale[2] * sb, scale[3] * sr, scale[4] * sg, scale[5] * sb, scale[6] * sr, scale[7] * sg, scale[8] * sb]
    return mat_inv(gamut_to_xyz)


def camera_to_prophoto(ifd0, raw_ifd, tiff):
    def vals(tag):
        return tiff.values(ifd0, tag) or tiff.values(raw_ifd, tag)

    cm1 = vals(50721)
    cm2 = vals(50722)
    fm1 = vals(50964)
    fm2 = vals(50965)
    ill1 = (vals(50778) or [0])[0]
    ill2 = (vals(50779) or [0])[0]
    analog = (vals(50727) or [1.0, 1.0, 1.0])[:3]
    cal1 = vals(50723) or [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0]
    cal2 = vals(50724) or [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0]
    neutral = vals(50728) or [1.0, 1.0, 1.0]
    if not cm1 and cm2:
        cm1, cm2, ill1, cal1 = cm2, [], ill2, cal2
    if not cm1:
        return None
    analog_matrix = diag(analog)
    temp1 = illuminant_to_temperature(ill1)
    temp2 = illuminant_to_temperature(ill2)
    color1 = mat_mul(mat_mul(analog_matrix, cal1), normalize_color_matrix(cm1))
    color2 = mat_mul(mat_mul(analog_matrix, cal2), normalize_color_matrix(cm2)) if cm2 else None
    forward1 = normalize_forward_matrix(fm1) if fm1 and len(fm1) == 9 else None
    forward2 = normalize_forward_matrix(fm2) if fm2 and len(fm2) == 9 else None
    if color2 is None or temp1 <= 0.0 or temp2 <= 0.0 or abs(temp1 - temp2) < 1e-6:
        temp1 = temp2 = 5000.0
        color2, forward2, cal2 = color1, forward1, cal1
    elif temp1 > temp2:
        temp1, temp2 = temp2, temp1
        color1, color2 = color2, color1
        forward1, forward2 = forward2, forward1
        cal1, cal2 = cal2, cal1

    def find_for_white(xy):
        wt = temperature_for_xy(xy)
        if wt <= temp1:
            w = 1.0
        elif wt >= temp2:
            w = 0.0
        else:
            w = ((1.0 / wt) - (1.0 / temp2)) / ((1.0 / temp1) - (1.0 / temp2))
            w = min(max(w, 0.0), 1.0)
        fwd = interpolate_matrix(forward1, forward2, w) if forward1 and forward2 else (forward1 or forward2)
        return interpolate_matrix(color1, color2, w), fwd, interpolate_matrix(cal1, cal2, w)

    white_xy = [0.3457, 0.3585]
    for _ in range(30):
        xyz_to_camera, _, _ = find_for_white(white_xy)
        cam_to_xyz = mat_inv(xyz_to_camera)
        if cam_to_xyz is None:
            return None
        next_xy = xyz_to_xy(mat_vec(cam_to_xyz, neutral))
        if next_xy is None:
            return None
        if abs(next_xy[0] - white_xy[0]) + abs(next_xy[1] - white_xy[1]) < 1e-7:
            white_xy = next_xy
            break
        white_xy = next_xy

    xyz_to_camera, forward, calibration = find_for_white(white_xy)
    white_xyz = xy_to_xyz(white_xy)
    camera_white = mat_vec(xyz_to_camera, white_xyz)
    white_scale = 1.0 / max(max(camera_white), 1e-6)
    camera_white = [min(max(v * white_scale, 0.001), 1.0) for v in camera_white]
    if forward is not None:
        individual_to_reference = mat_inv(mat_mul(diag(analog), calibration))
        reference_camera_white = mat_vec(individual_to_reference, camera_white)
        inverse_white = diag([1.0 / max(v, 1e-6) for v in reference_camera_white])
        camera_to_pcs = mat_mul(mat_mul(forward, inverse_white), individual_to_reference)
    else:
        pcs_to_camera = mat_mul(xyz_to_camera, map_white_matrix([0.3457, 0.3585], white_xy))
        pcs_white = mat_vec(pcs_to_camera, PCS_TO_XYZ)
        scale = 1.0 / max(max(pcs_white), 1e-6)
        scaled = [v * scale for v in pcs_to_camera]
        camera_to_pcs = mat_inv(scaled)
    return mat_mul(compute_xyz_d50_to_prophoto(), camera_to_pcs), white_xy


@dataclass
class Entry:
    tag: int
    typ: int
    count: int
    raw: bytes


def unpack(endian, fmt, data, offset=0):
    return struct.unpack_from(endian + fmt, data, offset)[0]


class Tiff:
    def __init__(self, path):
        self.path = Path(path)
        self.data = self.path.read_bytes()
        marker = self.data[:2]
        if marker == b"II":
            self.endian = "<"
        elif marker == b"MM":
            self.endian = ">"
        else:
            raise ValueError("not TIFF")
        magic = unpack(self.endian, "H", self.data, 2)
        if magic != 42:
            raise ValueError(f"unsupported TIFF magic {magic}")
        self.ifd0_offset = unpack(self.endian, "I", self.data, 4)

    def ifd(self, offset):
        if offset <= 0 or offset + 2 > len(self.data):
            return {}, 0
        count = unpack(self.endian, "H", self.data, offset)
        pos = offset + 2
        entries = {}
        for _ in range(count):
            tag = unpack(self.endian, "H", self.data, pos)
            typ = unpack(self.endian, "H", self.data, pos + 2)
            cnt = unpack(self.endian, "I", self.data, pos + 4)
            raw = self.data[pos + 8:pos + 12]
            entries[tag] = Entry(tag, typ, cnt, raw)
            pos += 12
        next_ifd = unpack(self.endian, "I", self.data, pos) if pos + 4 <= len(self.data) else 0
        return entries, next_ifd

    def entry_bytes(self, entry):
        size = TYPE_SIZE.get(entry.typ, 1) * entry.count
        if size <= 4:
            return entry.raw[:size]
        offset = unpack(self.endian, "I", entry.raw)
        return self.data[offset:offset + size]

    def values(self, ifd, tag):
        entry = ifd.get(tag)
        if entry is None:
            return []
        data = self.entry_bytes(entry)
        e = self.endian
        if entry.typ == 3:
            return [unpack(e, "H", data, i * 2) for i in range(entry.count)]
        if entry.typ == 4:
            return [unpack(e, "I", data, i * 4) for i in range(entry.count)]
        if entry.typ == 5:
            out = []
            for i in range(entry.count):
                n = unpack(e, "I", data, i * 8)
                d = unpack(e, "I", data, i * 8 + 4)
                out.append(n / d if d else 0.0)
            return out
        if entry.typ == 9:
            return [unpack(e, "i", data, i * 4) for i in range(entry.count)]
        if entry.typ == 10:
            out = []
            for i in range(entry.count):
                n = unpack(e, "i", data, i * 8)
                d = unpack(e, "i", data, i * 8 + 4)
                out.append(n / d if d else 0.0)
            return out
        if entry.typ == 11:
            return [unpack(e, "f", data, i * 4) for i in range(entry.count)]
        if entry.typ == 12:
            return [unpack(e, "d", data, i * 8) for i in range(entry.count)]
        return list(data)


def read_pgtm(tiff, ifd):
    entry = ifd.get(52525) or ifd.get(52544)
    if entry is None:
        return None
    b = tiff.entry_bytes(entry)
    e = tiff.endian
    map_v = unpack(e, "i", b, 0)
    map_h = unpack(e, "i", b, 4)
    spacing_v = unpack(e, "d", b, 8)
    spacing_h = unpack(e, "d", b, 16)
    origin_v = unpack(e, "d", b, 24)
    origin_h = unpack(e, "d", b, 32)
    points_n = unpack(e, "i", b, 40)
    weights = [unpack(e, "f", b, 44 + i * 4) for i in range(5)]
    count = map_v * map_h * points_n
    if entry.tag == 52525:
        offset = 64
        gains = list(struct.unpack_from(e + f"{count}f", b, offset))
        gamma = 1.0
        data_type = 3
    else:
        data_type = unpack(e, "i", b, 64)
        gamma = unpack(e, "f", b, 68)
        gain_min = unpack(e, "f", b, 72)
        gain_max = unpack(e, "f", b, 76)
        offset = 80
        if data_type == 3:
            gains = list(struct.unpack_from(e + f"{count}f", b, offset))
        elif data_type == 1:
            vals = struct.unpack_from(e + f"{count}H", b, offset)
            gains = [gain_min + v / 65535.0 * (gain_max - gain_min) for v in vals]
        else:
            raise ValueError(f"unsupported PGTM2 data type {data_type}")
    return {
        "tag": entry.tag,
        "map_v": map_v,
        "map_h": map_h,
        "spacing_v": spacing_v,
        "spacing_h": spacing_h,
        "origin_v": origin_v,
        "origin_h": origin_h,
        "points_n": points_n,
        "weights": weights,
        "gamma": gamma,
        "data_type": data_type,
        "gains": gains,
    }


def percentile(values, p):
    if not values:
        return 0.0
    xs = sorted(values)
    k = (len(xs) - 1) * p
    lo = int(math.floor(k))
    hi = int(math.ceil(k))
    if lo == hi:
        return xs[lo]
    return xs[lo] * (hi - k) + xs[hi] * (k - lo)


def percentile_from_hist(hist, sample_count, p):
    if sample_count <= 0:
        return 0.0
    target = max(1, min(sample_count, math.ceil(sample_count * min(max(p, 0.0), 1.0))))
    cumulative = 0
    for index, count in enumerate(hist):
        cumulative += count
        if cumulative >= target:
            return index / float(len(hist) - 1)
    return 1.0


def percentile_from_samples(values, p):
    if not values:
        return 0.0
    xs = sorted(values)
    index = max(1, min(len(xs), math.ceil(len(xs) * min(max(p, 0.0), 1.0)))) - 1
    value = xs[index]
    return value if math.isfinite(value) and value > 0.0 else 0.0


def weighted_percentile(values, p):
    valid = sorted((value, weight) for value, weight in values if math.isfinite(value) and weight > 0.0)
    if not valid:
        return 0.0
    total = sum(weight for _, weight in valid)
    target = total * min(max(p, 0.0), 1.0)
    cumulative = 0.0
    for value, weight in valid:
        cumulative += weight
        if cumulative >= target:
            return value
    return valid[-1][0]


def app_grid_size(width, height):
    return (
        min(max((int(width) + TARGET_TILE_PX - 1) // TARGET_TILE_PX, GRID_MIN_H), GRID_MAX_H),
        min(max((int(height) + TARGET_TILE_PX - 1) // TARGET_TILE_PX, GRID_MIN_V), GRID_MAX_V),
    )


def normalized_cfa_color(value):
    color = int(value)
    return 1 if color == 3 else color


def dng_cfa_color_at(cfa, repeat_dim, x, y):
    if not cfa:
        return None
    rows = int(repeat_dim[0]) if len(repeat_dim) >= 2 and int(repeat_dim[0]) > 0 else 2
    cols = int(repeat_dim[1]) if len(repeat_dim) >= 2 and int(repeat_dim[1]) > 0 else 2
    index = (y % rows) * cols + (x % cols)
    if index < 0 or index >= len(cfa):
        return None
    return normalized_cfa_color(cfa[index])


def app_cfa_pattern_from_dng(cfa, repeat_dim, phase_x=0, phase_y=0):
    actual = [
        dng_cfa_color_at(cfa, repeat_dim, phase_x + x, phase_y + y)
        for y in range(2)
        for x in range(2)
    ]
    for pattern, expected in BAYER_COLOR_PATTERNS.items():
        if actual == expected:
            return pattern
    return CFA_RGGB


def channel_index_for_pixel(app_cfa, x, y):
    pattern = BAYER_CHANNEL_PATTERNS.get(int(app_cfa), BAYER_CHANNEL_PATTERNS[CFA_RGGB])
    return pattern[(y & 1) * 2 + (x & 1)]


def cfa_color_for_pixel(app_cfa, x, y):
    channel = channel_index_for_pixel(app_cfa, x, y)
    if channel == 0:
        return 0
    if channel == 3:
        return 2
    return 1


def black_level_by_channel(raw_black, black_repeat, app_cfa):
    if not raw_black:
        return [0.0, 0.0, 0.0, 0.0]
    if len(raw_black) == 1:
        return [float(raw_black[0])] * 4
    rows = int(black_repeat[0]) if len(black_repeat) >= 2 and int(black_repeat[0]) > 0 else 2
    cols = int(black_repeat[1]) if len(black_repeat) >= 2 and int(black_repeat[1]) > 0 else 2
    if rows == 2 and cols == 2 and len(raw_black) >= 4:
        result = [float(raw_black[0])] * 4
        for y in range(2):
            for x in range(2):
                channel = channel_index_for_pixel(app_cfa, x, y)
                result[channel] = float(raw_black[y * 2 + x])
        return result
    if len(raw_black) >= 4:
        return [float(raw_black[i]) for i in range(4)]
    return [float(raw_black[min(i, len(raw_black) - 1)]) for i in range(4)]


def black_level_for_pixel(black_by_channel, app_cfa, x, y):
    channel = channel_index_for_pixel(app_cfa, x, y)
    if not black_by_channel:
        return 0.0
    return float(black_by_channel[channel] if channel < len(black_by_channel) else black_by_channel[0])


def weighted_rgb_input(red, green, blue, baseline_gain, weights):
    r = red * baseline_gain
    g = green * baseline_gain
    b = blue * baseline_gain
    rgb_min = min(r, g, b)
    rgb_max = max(r, g, b)
    return max(
        weights[0] * r +
        weights[1] * g +
        weights[2] * b +
        weights[3] * rgb_min +
        weights[4] * rgb_max,
        0.0,
    )


def global_stats_from_cells(cells):
    if not cells:
        return {}
    weight_sum = sum(cell["sampleWeight"] for cell in cells)
    if weight_sum <= 0.0:
        return {}
    result = {
        key: sum(cell[key] * cell["sampleWeight"] for cell in cells) / weight_sum
        for key in ["p10", "p50", "p90", "p98", "highlightFraction", "p995Input", "p999Input"]
    }
    result["tailP95"] = weighted_percentile(
        [(cell["p995Input"], cell["sampleWeight"]) for cell in cells],
        0.95,
    )
    result["tailP98"] = weighted_percentile(
        [(cell["p995Input"], cell["sampleWeight"]) for cell in cells],
        0.98,
    )
    result["tailP99"] = weighted_percentile(
        [(cell["p999Input"], cell["sampleWeight"]) for cell in cells],
        0.99,
    )
    result["maxInput"] = max(cell["p999Input"] for cell in cells)
    result["sampleWeight"] = weight_sum
    return result


def cell_stats_from_values(values):
    hist = [0] * HIST_BINS
    highlight_count = 0
    for value in values:
        clamped = min(max(value, 0.0), 1.0)
        index = int(clamped * (HIST_BINS - 1) + 0.5)
        index = max(0, min(HIST_BINS - 1, index))
        hist[index] += 1
        if value >= 0.92:
            highlight_count += 1
    sample_count = len(values)
    return {
        "p10": percentile_from_hist(hist, sample_count, 0.10),
        "p50": percentile_from_hist(hist, sample_count, 0.50),
        "p90": percentile_from_hist(hist, sample_count, 0.90),
        "p98": percentile_from_hist(hist, sample_count, 0.98),
        "highlightFraction": highlight_count / sample_count if sample_count else 0.0,
        "p995Input": percentile_from_samples(values, 0.995),
        "p999Input": percentile_from_samples(values, 0.999),
        "sampleWeight": float(sample_count),
    }


def gain_at_cell(pgtm, cell, table_input):
    n = pgtm["points_n"]
    x = max(0.0, min(1.0, table_input)) * max(n, 1)
    i0 = max(0, min(n - 1, int(math.floor(x))))
    i1 = max(0, min(n - 1, i0 + 1))
    t = x - i0
    off = cell * n
    return pgtm["gains"][off + i0] * (1 - t) + pgtm["gains"][off + i1] * t


def main(path):
    t = Tiff(path)
    ifd0, _ = t.ifd(t.ifd0_offset)
    sub_offsets = t.values(ifd0, 330)
    ifds = [(t.ifd0_offset, ifd0)] + [(o, t.ifd(o)[0]) for o in sub_offsets]
    raw = None
    pgtm = read_pgtm(t, ifd0)
    pgtm_ifd = "IFD0"
    for offset, ifd in ifds:
        width = (t.values(ifd, 256) or [0])[0]
        height = (t.values(ifd, 257) or [0])[0]
        compression = (t.values(ifd, 259) or [0])[0]
        bits = (t.values(ifd, 258) or [0])[0]
        if width >= 1000 and height >= 1000 and compression == 1 and bits == 16:
            raw = (offset, ifd)
        local_pgtm = read_pgtm(t, ifd)
        if local_pgtm is not None:
            pgtm = local_pgtm
            pgtm_ifd = f"IFD@{offset}"
    if raw is None:
        raise ValueError("no uncompressed raw IFD")
    offset, ifd = raw
    camera_to_profile = camera_to_prophoto(ifd0, ifd, t)
    width = t.values(ifd, 256)[0]
    height = t.values(ifd, 257)[0]
    black = t.values(ifd, 50714)
    black_repeat = t.values(ifd, 50713)
    white = (t.values(ifd, 50717) or [65535])[0]
    baseline = (t.values(ifd0, 50730) or t.values(ifd, 50730) or [0.0])[0]
    strip_offsets = t.values(ifd, 273)
    strip_counts = t.values(ifd, 279)
    rows_per_strip = (t.values(ifd, 278) or [height])[0]
    cfa = t.values(ifd, 33422)
    cfa_repeat = t.values(ifd, 33421)
    app_cfa = app_cfa_pattern_from_dng(cfa, cfa_repeat)
    black_rggb = black_level_by_channel(black, black_repeat, app_cfa)
    has_pgtm = pgtm is not None
    print(f"FILE {path}")
    print(f"RAW ifd={offset} size={width}x{height} rowsPerStrip={rows_per_strip} strips={len(strip_offsets)}")
    print(
        f"blackRaw={black} blackRepeat={black_repeat} blackRggb={black_rggb} "
        f"white={white} baselineEv={baseline} baselineGain={2**baseline:.6f} "
        f"cfaRepeat={cfa_repeat} cfa={cfa} appCfa={app_cfa}"
    )
    if camera_to_profile is None:
        print("CAMERA_TO_PROFILE none, falling back to camera RGB")
        color_matrix = None
    else:
        color_matrix, white_xy = camera_to_profile
        print(
            "CAMERA_TO_PROPHOTO "
            f"whiteXY={white_xy[0]:.6f},{white_xy[1]:.6f} "
            "matrix=" + ",".join(f"{v:.7f}" for v in color_matrix)
        )
    if has_pgtm:
        print(
            f"PGTM {pgtm_ifd} tag={pgtm['tag']} grid={pgtm['map_h']}x{pgtm['map_v']}x{pgtm['points_n']} "
            f"weights={','.join(f'{w:.7f}' for w in pgtm['weights'])} sum={sum(pgtm['weights']):.7f} gamma={pgtm['gamma']}"
        )
    else:
        print("PGTM none")
    # Read a downsampled RAW set on 2x2 Bayer cells, matching app pgtmInputAt.
    raw_bytes = bytearray()
    for so, sc in zip(strip_offsets, strip_counts):
        raw_bytes += t.data[so:so + sc]
    row_stride = width * 2
    if len(raw_bytes) < row_stride * height:
        raise ValueError(f"raw bytes too small {len(raw_bytes)} expected {row_stride * height}")
    baseline_gain = 2.0 ** baseline
    app_grid_h, app_grid_v = app_grid_size(width, height)
    pgtm_weights = pgtm["weights"] if has_pgtm else BASE_INPUT_WEIGHTS
    pgtm_grid_h = pgtm["map_h"] if has_pgtm else app_grid_h
    pgtm_grid_v = pgtm["map_v"] if has_pgtm else app_grid_v

    def normalized_raw_at(px, py):
        pos = py * row_stride + px * 2
        rawv = unpack(t.endian, "H", raw_bytes, pos)
        black_at = black_level_for_pixel(black_rggb, app_cfa, px, py)
        return min(max((rawv - black_at) / max(float(white) - black_at, 1.0), 0.0), 1.0)

    def sample_inputs_at(base_x, base_y):
        sums = [0.0, 0.0, 0.0]
        counts = [0, 0, 0]
        for dy in (0, 1):
            for dx in (0, 1):
                px = min(max(base_x + dx, 0), width - 1)
                py = min(max(base_y + dy, 0), height - 1)
                color = cfa_color_for_pixel(app_cfa, px, py)
                value = normalized_raw_at(px, py)
                sums[color] += value
                counts[color] += 1
        fallback = sum(sums) / max(sum(counts), 1)
        red = sums[0] / counts[0] if counts[0] else fallback
        green = sums[1] / counts[1] if counts[1] else fallback
        blue = sums[2] / counts[2] if counts[2] else fallback
        if color_matrix is not None:
            profile_red, profile_green, profile_blue = mat_vec(color_matrix, [red, green, blue])
        else:
            profile_red, profile_green, profile_blue = red, green, blue
        luma = 0.2126 * red + 0.7152 * green + 0.0722 * blue
        legacy_post = max((0.5 * luma + 0.5 * max(red, green, blue)) * baseline_gain, 0.0)
        profile_scene = weighted_rgb_input(
            profile_red,
            profile_green,
            profile_blue,
            baseline_gain,
            BASE_INPUT_WEIGHTS,
        )
        embedded_table_weighted = weighted_rgb_input(
            profile_red,
            profile_green,
            profile_blue,
            baseline_gain,
            pgtm_weights,
        )
        pgtm_gamma = pgtm["gamma"] if has_pgtm else 1.0
        table_input = min(max(embedded_table_weighted, 0.0), 1.0) ** pgtm_gamma
        return legacy_post, profile_scene, table_input

    def sample_grid(grid_h, grid_v):
        legacy_cells = [[] for _ in range(grid_h * grid_v)]
        profile_cells = [[] for _ in range(grid_h * grid_v)]
        table_cells = [[] for _ in range(grid_h * grid_v)]
        for cy in range(grid_v):
            start_y = (cy * height) // grid_v
            end_y = ((cy + 1) * height + grid_v - 1) // grid_v
            start_y -= start_y & 1
            end_y = min(height, end_y + (end_y & 1))
            cell_height = max(end_y - start_y, 2)
            for cx in range(grid_h):
                start_x = (cx * width) // grid_h
                end_x = ((cx + 1) * width + grid_h - 1) // grid_h
                start_x -= start_x & 1
                end_x = min(width, end_x + (end_x & 1))
                cell_width = max(end_x - start_x, 2)
                index = cy * grid_h + cx
                for local_y in range(SAMPLE_GRID):
                    y = start_y + ((local_y * 2 + 1) * cell_height) // (SAMPLE_GRID * 2)
                    y = min(max(y - (y & 1), start_y), max(start_y, end_y - 2))
                    for local_x in range(SAMPLE_GRID):
                        x = start_x + ((local_x * 2 + 1) * cell_width) // (SAMPLE_GRID * 2)
                        x = min(max(x - (x & 1), start_x), max(start_x, end_x - 2))
                        legacy_post, profile_scene, table_input = sample_inputs_at(x, y)
                        legacy_cells[index].append(legacy_post)
                        profile_cells[index].append(profile_scene)
                        table_cells[index].append(table_input)
        return legacy_cells, profile_cells, table_cells

    legacy_cells, profile_cells, table_cells = sample_grid(app_grid_h, app_grid_v)
    if (app_grid_h, app_grid_v) == (pgtm_grid_h, pgtm_grid_v):
        pgtm_table_cells = table_cells
    else:
        _, _, pgtm_table_cells = sample_grid(pgtm_grid_h, pgtm_grid_v)

    post_inputs = [value for cell in legacy_cells for value in cell]
    profile_scene_inputs = [value for cell in profile_cells for value in cell]
    table_inputs = [value for cell in table_cells for value in cell]
    print("TABLE_INPUT percentiles " + " ".join(
        f"p{int(p*1000)/10:g}={percentile(table_inputs, p):.6f}" for p in
        [0.001, 0.005, 0.01, 0.02, 0.05, 0.10, 0.25, 0.50, 0.75, 0.90, 0.95, 0.98, 0.99, 0.995, 0.999]
    ))
    print("POST_BASELINE_INPUT percentiles " + " ".join(
        f"p{int(p*1000)/10:g}={percentile(post_inputs, p):.6f}" for p in
        [0.001, 0.005, 0.01, 0.02, 0.05, 0.10, 0.25, 0.50, 0.75, 0.90, 0.95, 0.98, 0.99, 0.995, 0.999]
    ))
    print("PROFILE_SCENE_INPUT percentiles " + " ".join(
        f"p{int(p*1000)/10:g}={percentile(profile_scene_inputs, p):.6f}" for p in
        [0.001, 0.005, 0.01, 0.02, 0.05, 0.10, 0.25, 0.50, 0.75, 0.90, 0.95, 0.98, 0.99, 0.995, 0.999]
    ))
    print("TABLE_INPUT band fractions " + " ".join(
        f"{a:.3f}-{b:.3f}={sum(1 for v in table_inputs if a <= v < b) / len(table_inputs):.5f}"
        for a, b in [(0, .02), (.02, .04), (.04, .06), (.06, .08), (.08, .10), (.10, .12), (.12, .14), (.14, .18), (.18, .25), (.25, .4), (.4, .7), (.7, 1.01)]
    ))
    legacy_stats = [cell_stats_from_values(values) for values in legacy_cells]
    rimm_stats = [cell_stats_from_values(values) for values in profile_cells]
    legacy_global = global_stats_from_cells(legacy_stats)
    rimm_global = global_stats_from_cells(rimm_stats)
    print(
        f"APP_STATS_GRID {app_grid_h}x{app_grid_v} sampleGrid={SAMPLE_GRID} "
        f"samples={int(rimm_global['sampleWeight']) if rimm_global else 0}"
    )
    print(
        "LEGACY_POST_BASELINE_GLOBAL_STATS "
        f"p10={legacy_global['p10']:.6f} "
        f"p50={legacy_global['p50']:.6f} "
        f"p90={legacy_global['p90']:.6f} "
        f"p98={legacy_global['p98']:.6f} "
        f"highlightFraction={legacy_global['highlightFraction']:.6f} "
        f"p995Mean={legacy_global['p995Input']:.6f} "
        f"p999Mean={legacy_global['p999Input']:.6f} "
        f"tailP95={legacy_global['tailP95']:.6f} "
        f"tailP98={legacy_global['tailP98']:.6f} "
        f"tailP99={legacy_global['tailP99']:.6f} "
        f"maxInput={legacy_global['maxInput']:.6f}"
    )
    print(
        "GENERATOR_RIMM_GLOBAL_STATS "
        f"p10={rimm_global['p10']:.6f} "
        f"p50={rimm_global['p50']:.6f} "
        f"p90={rimm_global['p90']:.6f} "
        f"p98={rimm_global['p98']:.6f} "
        f"highlightFraction={rimm_global['highlightFraction']:.6f} "
        f"p995Mean={rimm_global['p995Input']:.6f} "
        f"p999Mean={rimm_global['p999Input']:.6f} "
        f"tailP95={rimm_global['tailP95']:.6f} "
        f"tailP98={rimm_global['tailP98']:.6f} "
        f"tailP99={rimm_global['tailP99']:.6f} "
        f"maxInput={rimm_global['maxInput']:.6f}"
    )
    print(
        "KOTLIN_FIXTURE_RIMM "
        f"rimmP10={rimm_global['p10']:.6f} "
        f"rimmP50={rimm_global['p50']:.6f} "
        f"rimmP90={rimm_global['p90']:.6f} "
        f"rimmP98={rimm_global['p98']:.6f} "
        f"rimmHighlightFraction={rimm_global['highlightFraction']:.6f} "
        f"rimmTailP95={rimm_global['tailP95']:.6f} "
        f"rimmTailP98={rimm_global['tailP98']:.6f} "
        f"rimmTailP99={rimm_global['tailP99']:.6f} "
        f"rimmMaxInput={rimm_global['maxInput']:.6f}"
    )
    if not has_pgtm:
        return

    pgtm_gain_p50_samples = []
    pgtm_gain_mean_samples = []
    pgtm_output_p50_samples = []
    for tval in PGTM_SAMPLE_INPUTS:
        gains = [gain_at_cell(pgtm, c, tval) for c in range(pgtm_grid_h * pgtm_grid_v)]
        gain_p50 = percentile(gains, 0.50)
        gain_mean = sum(gains) / len(gains)
        pgtm_gain_p50_samples.append(gain_p50)
        pgtm_gain_mean_samples.append(gain_mean)
        pgtm_output_p50_samples.append(tval * gain_p50)
        print(
            f"PGTM t={tval:.3f} gain_p05={percentile(gains, .05):.6f} "
            f"gain_p50={gain_p50:.6f} gain_mean={gain_mean:.6f} "
            f"gain_p95={percentile(gains, .95):.6f} out_p50={tval * gain_p50:.6f}"
        )
    print(
        "KOTLIN_DENSE_TABLE_INPUTS floatArrayOf(" +
        ", ".join(f"{value:.4f}f" for value in PGTM_SAMPLE_INPUTS) +
        ")"
    )
    print(
        "KOTLIN_DENSE_PGTM_GAIN_P50 floatArrayOf(" +
        ", ".join(f"{value:.6f}f" for value in pgtm_gain_p50_samples) +
        ")"
    )
    print(
        "KOTLIN_DENSE_PGTM_GAIN_MEAN floatArrayOf(" +
        ", ".join(f"{value:.6f}f" for value in pgtm_gain_mean_samples) +
        ")"
    )
    print(
        "KOTLIN_DENSE_PGTM_OUTPUT_P50 floatArrayOf(" +
        ", ".join(f"{value:.6f}f" for value in pgtm_output_p50_samples) +
        ")"
    )
    print("PGTM_LOW_RANGE_OUTPUT_SLOPES p50")
    previous_t = None
    previous_output = None
    for tval in [0.080, 0.085, 0.090, 0.095, 0.100, 0.105, 0.110, 0.115, 0.120, 0.125, 0.130, 0.135, 0.140]:
        gains = [gain_at_cell(pgtm, c, tval) for c in range(pgtm_grid_h * pgtm_grid_v)]
        output = tval * percentile(gains, .50)
        if previous_t is not None:
            slope = (output - previous_output) / (tval - previous_t)
            print(f"SLOPE {previous_t:.3f}-{tval:.3f} out0={previous_output:.6f} out1={output:.6f} slope={slope:.6f}")
        previous_t = tval
        previous_output = output
    # Cells whose raw tableInput distribution sits around suspected keycap halo band.
    cell_rows = []
    for idx, vals in enumerate(pgtm_table_cells):
        p50 = percentile(vals, 0.50)
        p90 = percentile(vals, 0.90)
        p98 = percentile(vals, 0.98)
        frac = sum(1 for v in vals if 0.08 <= v < 0.14) / len(vals)
        if frac > 0.18 or 0.08 <= p50 <= 0.14 or 0.08 <= p90 <= 0.14:
            cx = idx % pgtm_grid_h
            cy = idx // pgtm_grid_h
            g12 = gain_at_cell(pgtm, idx, 0.12)
            cell_rows.append((frac, cx, cy, p50, p90, p98, g12))
    cell_rows.sort(reverse=True)
    print("SUSPECT_CELLS frac_0.08_0.14,cx,cy,p50,p90,p98,gain@0.12")
    for row in cell_rows[:24]:
        print("CELL " + ",".join(f"{v:.6f}" if isinstance(v, float) else str(v) for v in row))


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(f"usage: {Path(sys.argv[0]).name} <google-dng> [<google-dng> ...]", file=sys.stderr)
        sys.exit(2)
    for index, source in enumerate(sys.argv[1:]):
        if index:
            print()
        main(source)
