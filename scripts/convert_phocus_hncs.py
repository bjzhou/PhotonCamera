#!/usr/bin/env python3
"""Convert Phocus Colormap plists into traceable HNCS runtime assets.

The converter does not synthesize calibration data. Every stored matrix, neutral
gain, temperature and LUT sample comes from one source plist. Encrypted Phocus
matrix and neutral-gain arrays use the exact CXMLLut transform:
value * 0.5 + 1.0.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import plistlib
import struct
import sys
import zlib
from pathlib import Path
from typing import Any


MAGIC = b"HNCSMAP1"
SCHEMA_VERSION = 2
MODERN_TABLES = (
    ("LUTTableTSStd", "standard", "tt"),
    ("LUTTableFlashStd", "standard", "tf"),
    ("LUTTableHTStd", "standard", "th"),
    ("LUTTableTSRepro", "reproduction", "tt"),
    ("LUTTableFlashRepro", "reproduction", "tf"),
    ("LUTTableHTRepro", "reproduction", "th"),
)
MATRIX_ANCHORS = (
    ("mlt", "tlt"),
    ("mt", "tt"),
    ("mf", "tf"),
    ("mh", "th"),
)
NEUTRAL_ANCHORS = (
    ("vlt", "tlt"),
    ("vt", "tt"),
    ("vf", "tf"),
    ("vh", "th"),
)

# Phocus does not select these files by the XML stem.  The native route is:
# eCCDTypes + eIRFilterType -> uColorProfile -> CXMLLut::GetFileName().
# The profile IDs below were read by calling the original GetFileName() export.
# Camera names are the corresponding product names returned by
# CBodyAndBack::CameraBackModelString(), with detailed legacy combinations
# screened through CBodyAndBack::WebDeviceType().  A profile can be shared by
# several products and two profiles can cover the same nominal camera family
# when the IR-filter/sensor calibration revision differs.
PROFILE_DEVICE_METADATA: dict[str, dict[str, Any]] = {
    "LUTTable100MP": {
        "displayName": "Hasselblad H6D/A6D 100c [100MP]",
        "cameraModels": [
            "Hasselblad H6D-100c",
            "Hasselblad H6D-400c MS",
            "Hasselblad A6D-100c",
        ],
        "colorProfileIds": ["0x0511"],
        "ccdTypes": ["0x11"],
    },
    "LUTTable100MP2": {
        "displayName": "Hasselblad X2D 100C",
        "cameraModels": ["Hasselblad X2D 100C"],
        "colorProfileIds": ["0x0514", "0x0614", "0x0714"],
        "ccdTypes": ["0x14"],
    },
    "LUTTable100MP3": {
        "displayName": "Hasselblad CFV 100C / X2D II 100C",
        "cameraModels": [
            "Hasselblad CFV 100C",
            "Hasselblad X2D II 100C",
        ],
        "colorProfileIds": ["0x0615", "0x0616"],
        "ccdTypes": ["0x15", "0x16"],
    },
    "LUTTable20MP1Inch": {
        "displayName": "Hasselblad L1D-20c",
        "cameraModels": ["Hasselblad L1D-20c"],
        "colorProfileIds": ["0x0013"],
        "ccdTypes": ["0x13"],
    },
    "LUTTable22MPC": {
        "displayName": "Hasselblad CF/CFH/CFV/503CWD [22MPC]",
        "cameraModels": [
            "Hasselblad CF",
            "Hasselblad CFH",
            "Hasselblad CFV",
            "Hasselblad 503CWD",
        ],
        "colorProfileIds": ["0x0404"],
        "ccdTypes": ["0x04"],
    },
    "LUTTable31MP": {
        "displayName": "Hasselblad H3D/H3DII/H4D-31 [31MP]",
        "cameraModels": [
            "Hasselblad H3D-31",
            "Hasselblad H3DII-31",
            "Hasselblad H4D-31",
        ],
        "colorProfileIds": ["0x0008"],
        "ccdTypes": ["0x08"],
    },
    "LUTTable31MPC": {
        "displayName": "Hasselblad H3D/H3DII/H4D-31 [31MPC]",
        "cameraModels": [
            "Hasselblad H3D-31",
            "Hasselblad H3DII-31",
            "Hasselblad H4D-31",
        ],
        "colorProfileIds": ["0x0408"],
        "ccdTypes": ["0x08"],
    },
    "LUTTable39MP": {
        "displayName": "Hasselblad H2D/H3D/H3DII-39 [39MP]",
        "cameraModels": [
            "Hasselblad H2D-39",
            "Hasselblad H3D-39",
            "Hasselblad H3DII-39",
        ],
        "colorProfileIds": ["0x0009"],
        "ccdTypes": ["0x09"],
    },
    "LUTTable39MPC": {
        "displayName": "Hasselblad H2D/H3D/H3DII-39 [39MPC]",
        "cameraModels": [
            "Hasselblad H2D-39",
            "Hasselblad H3D-39",
            "Hasselblad H3DII-39",
        ],
        "colorProfileIds": ["0x0409"],
        "ccdTypes": ["0x09"],
    },
    "LUTTable40MP5": {
        "displayName": "Hasselblad H3DII/H4D/H5D-40 [40MP5]",
        "cameraModels": [
            "Hasselblad H3DII-40",
            "Hasselblad H4D-40",
            "Hasselblad H5D-40",
        ],
        "colorProfileIds": ["0x050d"],
        "ccdTypes": ["0x0d"],
    },
    "LUTTable40MPC": {
        "displayName": "Hasselblad H3DII/H4D/H5D-40 [40MPC]",
        "cameraModels": [
            "Hasselblad H3DII-40",
            "Hasselblad H4D-40",
            "Hasselblad H5D-40",
        ],
        "colorProfileIds": ["0x040d"],
        "ccdTypes": ["0x0d"],
    },
    "LUTTable50MP5": {
        "displayName": "Hasselblad H3DII/H4D/H5D-50 [50MP5]",
        "cameraModels": [
            "Hasselblad H3DII-50",
            "Hasselblad H4D-50",
            "Hasselblad H4D-200MS",
            "Hasselblad H5D-50",
            "Hasselblad H5D-50MS",
            "Hasselblad H5D-200MS",
        ],
        "colorProfileIds": ["0x050b"],
        "ccdTypes": ["0x0b"],
    },
    "LUTTable50MPC": {
        "displayName": "Hasselblad H3DII/H4D/H5D-50 [50MPC]",
        "cameraModels": [
            "Hasselblad H3DII-50",
            "Hasselblad H4D-50",
            "Hasselblad H4D-200MS",
            "Hasselblad H5D-50",
            "Hasselblad H5D-50MS",
            "Hasselblad H5D-200MS",
        ],
        "colorProfileIds": ["0x040b"],
        "ccdTypes": ["0x0b"],
    },
    "LUTTable51MP5": {
        "displayName": "Hasselblad H5D/H6D/A6D/X1D 50c [51MP5]",
        "cameraModels": [
            "Hasselblad H5D-50c",
            "Hasselblad H5D-50c MS",
            "Hasselblad H5D-200c MS",
            "Hasselblad H6D-50c",
            "Hasselblad A6D-50c",
            "Hasselblad X1D-50c",
        ],
        "colorProfileIds": ["0x050f"],
        "ccdTypes": ["0x0f"],
    },
    "LUTTable51MPmk2": {
        "displayName": "Hasselblad CFV II / X1D II 50C",
        "cameraModels": [
            "Hasselblad CFV II 50C",
            "Hasselblad X1D II 50C",
        ],
        "colorProfileIds": ["0x690f"],
        "ccdTypes": ["0x0f"],
    },
    "LUTTable60MP5": {
        "displayName": "Hasselblad H3DII/H4D/H5D-60 [60MP5]",
        "cameraModels": [
            "Hasselblad H3DII-60",
            "Hasselblad H4D-60",
            "Hasselblad H5D-60",
        ],
        "colorProfileIds": ["0x050c"],
        "ccdTypes": ["0x0c"],
    },
    "LutTable60MP52": {
        "displayName": "Hasselblad H3DII/H4D/H5D-60 [60MP52]",
        "cameraModels": [
            "Hasselblad H3DII-60",
            "Hasselblad H4D-60",
            "Hasselblad H5D-60",
        ],
        "colorProfileIds": ["0x040e", "0x050e"],
        "ccdTypes": ["0x0e"],
    },
    "LUTTable60MPC": {
        "displayName": "Hasselblad H3DII/H4D/H5D-60 [60MPC]",
        "cameraModels": [
            "Hasselblad H3DII-60",
            "Hasselblad H4D-60",
            "Hasselblad H5D-60",
        ],
        "colorProfileIds": ["0x040c"],
        "ccdTypes": ["0x0c"],
    },
    "LutTable80MP52": {
        "displayName": "Hasselblad internal sensor profile [80MP52]",
        "cameraModels": [],
        "colorProfileIds": ["0x0510"],
        "ccdTypes": ["0x10"],
    },
    "LUTTableIxpress": {
        "displayName": "Hasselblad Ixpress 96/384/72/132C/528C",
        "cameraModels": [
            "Ixpress 96",
            "Ixpress 384",
            "Ixpress 72",
            "Ixpress 132C",
            "Ixpress 528C",
        ],
        "colorProfileIds": ["0x0004"],
        "ccdTypes": ["0x04"],
    },
    "LUTTableTZ": {
        "displayName": "Hasselblad True Zoom",
        "cameraModels": ["Hasselblad True Zoom"],
        "colorProfileIds": ["0x0012"],
        "ccdTypes": ["0x12"],
    },
}


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def as_float_list(value: Any, key: str) -> list[float]:
    if not isinstance(value, list):
        raise ValueError(f"{key} is not an array")
    result = [float(item) for item in value]
    if not all(item == item and abs(item) != float("inf") for item in result):
        raise ValueError(f"{key} contains a non-finite value")
    return result


def append_floats(payload: bytearray, values: list[float]) -> dict[str, int]:
    offset = len(payload) // 4
    payload.extend(struct.pack(f"<{len(values)}f", *values))
    return {"offset": offset, "count": len(values)}


def decrypt_calibration_array(
    values: list[float],
    key: str,
    expected_count: int,
) -> list[float]:
    if len(values) != expected_count:
        raise ValueError(f"{key} must contain exactly {expected_count} values")
    return [value * 0.5 + 1.0 for value in values]


def convert_one(source_path: Path, output_path: Path) -> dict[str, Any]:
    source_bytes = source_path.read_bytes()
    root = plistlib.loads(source_bytes)
    if not isinstance(root, dict):
        raise ValueError("root plist value is not a dictionary")

    payload = bytearray()
    version = str(root.get("Version", ""))
    profile_id = source_path.stem
    cb_start = int(root["CbS"]) if "CbS" in root else None
    cb_end = int(root["CbE"]) if "CbE" in root else None
    cr_start = int(root["CrS"]) if "CrS" in root else None
    cr_end = int(root["CrE"]) if "CrE" in root else None
    if None in (cb_start, cb_end, cr_start, cr_end):
        raise ValueError("profile does not use the supported bounded-grid format")
    width = cb_end - cb_start + 1
    height = cr_end - cr_start + 1
    div_factor = float(root["DivFactor"]) if "DivFactor" in root else None
    expected_points = width * height
    tables: list[dict[str, Any]] = []
    if div_factor is None:
        raise ValueError("profile is missing DivFactor")
    for table_key, intent, temperature_key in MODERN_TABLES:
        if table_key not in root:
            continue
        values = as_float_list(root[table_key], table_key)
        if len(values) != expected_points * 2:
            raise ValueError(
                f"{table_key} has {len(values)} values, expected {expected_points * 2}"
            )
        if temperature_key not in root:
            raise ValueError(f"{table_key} requires {temperature_key}")
        tables.append(
            {
                "sourceKey": table_key,
                "intent": intent,
                "temperatureKey": temperature_key,
                "temperature": float(root[temperature_key]),
                "values": append_floats(payload, values),
            }
        )

    matrices: list[dict[str, Any]] = []
    for matrix_key, temperature_key in MATRIX_ANCHORS:
        if matrix_key not in root:
            continue
        if temperature_key not in root:
            raise ValueError(f"{matrix_key} requires {temperature_key}")
        decrypted = decrypt_calibration_array(
            as_float_list(root[matrix_key], matrix_key),
            matrix_key,
            9,
        )
        matrices.append(
            {
                "sourceKey": matrix_key,
                "temperatureKey": temperature_key,
                "temperature": float(root[temperature_key]),
                "decryption": "value*0.5+1.0",
                "values": append_floats(payload, decrypted),
            }
        )

    dng_matrix = None
    if "mfd" in root:
        dng_matrix = {
            "sourceKey": "mfd",
            "decryption": "value*0.5+1.0",
            "values": append_floats(
                payload,
                decrypt_calibration_array(as_float_list(root["mfd"], "mfd"), "mfd", 9),
            ),
        }

    neutrals: list[dict[str, Any]] = []
    for vector_key, temperature_key in NEUTRAL_ANCHORS:
        if vector_key not in root:
            continue
        values = decrypt_calibration_array(
            as_float_list(root[vector_key], vector_key),
            vector_key,
            3,
        )
        neutrals.append(
            {
                "sourceKey": vector_key,
                "temperatureKey": temperature_key if temperature_key in root else None,
                "temperature": float(root[temperature_key]) if temperature_key in root else None,
                "decryption": "value*0.5+1.0",
                "values": append_floats(payload, values),
            }
        )

    intents = sorted({table["intent"] for table in tables})
    complete = (
        width == 105
        and height == 89
        and div_factor is not None
        and len(matrices) >= 2
        and len(neutrals) >= 2
        and bool(intents)
        and all(
            len([table for table in tables if table["intent"] == intent]) >= 2
            for intent in intents
        )
    )
    if complete and profile_id not in PROFILE_DEVICE_METADATA:
        raise ValueError(f"renderable profile is missing verified device metadata: {profile_id}")
    device_metadata = PROFILE_DEVICE_METADATA.get(
        profile_id,
        {
            "displayName": profile_id,
            "cameraModels": [],
            "colorProfileIds": [],
            "ccdTypes": [],
        },
    )
    raw_payload = bytes(payload)
    compressed_payload = zlib.compress(raw_payload, level=9)
    header: dict[str, Any] = {
        "schemaVersion": SCHEMA_VERSION,
        "id": profile_id,
        "displayName": device_metadata["displayName"],
        "deviceMapping": {
            "cameraModels": device_metadata["cameraModels"],
            "colorProfileIds": device_metadata["colorProfileIds"],
            "ccdTypes": device_metadata["ccdTypes"],
            "selectionKey": "eCCDTypes+eIRFilterType",
        },
        "source": {
            "file": source_path.name,
            "sha256": sha256(source_bytes),
            "length": len(source_bytes),
        },
        "phocusVersion": version,
        "renderable": complete,
        "matrixSpace": "white-balanced-camera-rgb-to-xyz-d50",
        "neutralVectorRole": "raw-camera-channel-gains",
        "grid": {
            "width": width,
            "height": height,
            "cbStart": cb_start,
            "cbEnd": cb_end,
            "crStart": cr_start,
            "crEnd": cr_end,
            "divFactor": div_factor,
        },
        "intents": intents,
        "tables": tables,
        "matrices": matrices,
        "dngMatrix": dng_matrix,
        "neutralVectors": neutrals,
        "payload": {
            "encoding": "zlib-le-f32",
            "floatCount": len(raw_payload) // 4,
            "uncompressedBytes": len(raw_payload),
            "compressedBytes": len(compressed_payload),
            "sha256": sha256(raw_payload),
        },
    }
    header_bytes = json.dumps(
        header, ensure_ascii=False, separators=(",", ":"), sort_keys=True
    ).encode("utf-8")
    output_path.write_bytes(
        MAGIC + struct.pack("<I", len(header_bytes)) + header_bytes + compressed_payload
    )
    return {
        "id": profile_id,
        "displayName": device_metadata["displayName"],
        "cameraModels": device_metadata["cameraModels"],
        "colorProfileIds": device_metadata["colorProfileIds"],
        "ccdTypes": device_metadata["ccdTypes"],
        "asset": output_path.name,
        "sourceFile": source_path.name,
        "sourceSha256": header["source"]["sha256"],
        "sourceLength": len(source_bytes),
        "phocusVersion": version,
        "renderable": complete,
        "intents": intents,
        "matrixTemperatures": [item["temperature"] for item in matrices],
        "tableTemperatures": sorted(
            {item["temperature"] for item in tables if item["temperature"] is not None}
        ),
    }


def decode_asset(asset_path: Path) -> tuple[dict[str, Any], bytes]:
    encoded = asset_path.read_bytes()
    if encoded[: len(MAGIC)] != MAGIC:
        raise ValueError("bad magic")
    header_length = struct.unpack_from("<I", encoded, len(MAGIC))[0]
    header_start = len(MAGIC) + 4
    header_end = header_start + header_length
    header = json.loads(encoded[header_start:header_end].decode("utf-8"))
    payload = zlib.decompress(encoded[header_end:])
    expected = header["payload"]
    if len(payload) != expected["uncompressedBytes"]:
        raise ValueError("uncompressed payload length mismatch")
    if sha256(payload) != expected["sha256"]:
        raise ValueError("uncompressed payload hash mismatch")
    return header, payload


def verify_asset(source_dir: Path, asset_path: Path) -> dict[str, Any]:
    header, payload = decode_asset(asset_path)
    source_path = source_dir / header["source"]["file"]
    source_bytes = source_path.read_bytes()
    if len(source_bytes) != header["source"]["length"]:
        raise ValueError("source length mismatch")
    if sha256(source_bytes) != header["source"]["sha256"]:
        raise ValueError("source SHA-256 mismatch")
    root = plistlib.loads(source_bytes)
    floats = struct.unpack(f"<{len(payload) // 4}f", payload)
    covered_ranges: list[tuple[int, int, str]] = []

    def values(ref: dict[str, int], label: str) -> tuple[float, ...]:
        start = int(ref["offset"])
        end = start + int(ref["count"])
        if start < 0 or end > len(floats):
            raise ValueError(f"{label} reference is outside the payload")
        covered_ranges.append((start, end, label))
        return floats[start:end]

    grid = header["grid"]
    expected_grid = {
        "width": int(root["CbE"]) - int(root["CbS"]) + 1,
        "height": int(root["CrE"]) - int(root["CrS"]) + 1,
        "cbStart": int(root["CbS"]),
        "cbEnd": int(root["CbE"]),
        "crStart": int(root["CrS"]),
        "crEnd": int(root["CrE"]),
        "divFactor": float(root["DivFactor"]),
    }
    if grid != expected_grid:
        raise ValueError("grid metadata mismatch")
    if header["phocusVersion"] != str(root.get("Version", "")):
        raise ValueError("Phocus version mismatch")

    for table in header["tables"]:
        expected = as_float_list(root[table["sourceKey"]], table["sourceKey"])
        if float(root[table["temperatureKey"]]) != table["temperature"]:
            raise ValueError(f"{table['sourceKey']} temperature mismatch")
        actual = values(table["values"], table["sourceKey"])
        if struct.pack(f"<{len(expected)}f", *expected) != struct.pack(
            f"<{len(actual)}f", *actual
        ):
            raise ValueError(f"{table['sourceKey']} payload mismatch")

    for matrix in header["matrices"]:
        expected = decrypt_calibration_array(
            as_float_list(root[matrix["sourceKey"]], matrix["sourceKey"]),
            matrix["sourceKey"],
            9,
        )
        if float(root[matrix["temperatureKey"]]) != matrix["temperature"]:
            raise ValueError(f"{matrix['sourceKey']} temperature mismatch")
        actual = values(matrix["values"], matrix["sourceKey"])
        if struct.pack("<9f", *expected) != struct.pack("<9f", *actual):
            raise ValueError(f"{matrix['sourceKey']} payload mismatch")
    for neutral in header["neutralVectors"]:
        expected = decrypt_calibration_array(
            as_float_list(root[neutral["sourceKey"]], neutral["sourceKey"]),
            neutral["sourceKey"],
            3,
        )
        if neutral["temperatureKey"] is not None and (
            float(root[neutral["temperatureKey"]]) != neutral["temperature"]
        ):
            raise ValueError(f"{neutral['sourceKey']} temperature mismatch")
        actual = values(neutral["values"], neutral["sourceKey"])
        if struct.pack("<3f", *expected) != struct.pack("<3f", *actual):
            raise ValueError(f"{neutral['sourceKey']} payload mismatch")
    if header["dngMatrix"] is not None:
        matrix = header["dngMatrix"]
        expected = decrypt_calibration_array(
            as_float_list(root[matrix["sourceKey"]], matrix["sourceKey"]),
            matrix["sourceKey"],
            9,
        )
        actual = values(matrix["values"], matrix["sourceKey"])
        if struct.pack("<9f", *expected) != struct.pack("<9f", *actual):
            raise ValueError(f"{matrix['sourceKey']} payload mismatch")

    ordered_ranges = sorted(covered_ranges)
    cursor = 0
    for start, end, label in ordered_ranges:
        if start != cursor:
            raise ValueError(f"payload coverage gap/overlap before {label}")
        cursor = end
    if cursor != len(floats):
        raise ValueError("payload contains unreferenced float data")
    return header


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("source_dir", type=Path)
    parser.add_argument("output_dir", type=Path)
    parser.add_argument("--verify", action="store_true")
    args = parser.parse_args()
    source_dir = args.source_dir.resolve()
    output_dir = args.output_dir.resolve()
    if not source_dir.is_dir():
        parser.error(f"source directory does not exist: {source_dir}")
    output_dir.mkdir(parents=True, exist_ok=True)

    sources = sorted(source_dir.glob("*.xml"), key=lambda path: path.name.lower())
    if not sources:
        parser.error(f"no XML files found in {source_dir}")

    for old_asset in output_dir.glob("*.hncs"):
        old_asset.unlink()
    manifest_entries = []
    skipped_sources = []
    for source_path in sources:
        output_path = output_dir / f"{source_path.stem}.hncs"
        try:
            manifest_entries.append(convert_one(source_path, output_path))
        except ValueError as error:
            skipped_sources.append(
                {
                    "sourceFile": source_path.name,
                    "sourceSha256": sha256(source_path.read_bytes()),
                    "reason": str(error),
                }
            )

    manifest = {
        "schemaVersion": SCHEMA_VERSION,
        "format": MAGIC.decode("ascii"),
        "sourceDirectoryName": source_dir.name,
        "profileCount": len(manifest_entries),
        "renderableProfileCount": sum(
            1 for profile in manifest_entries if profile["renderable"]
        ),
        "profiles": manifest_entries,
        "skippedSources": skipped_sources,
    }
    manifest_path = output_dir / "manifest.json"
    manifest_path.write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )

    if args.verify:
        for entry in manifest_entries:
            header = verify_asset(source_dir, output_dir / entry["asset"])
            if header["id"] != entry["id"]:
                raise ValueError(f"{entry['asset']} id differs from manifest")
            if header["displayName"] != entry["displayName"]:
                raise ValueError(f"{entry['asset']} displayName differs from manifest")
            mapping = header["deviceMapping"]
            for key in ("cameraModels", "colorProfileIds", "ccdTypes"):
                if mapping[key] != entry[key]:
                    raise ValueError(
                        f"{entry['asset']} deviceMapping.{key} differs from manifest"
                    )
            if mapping["selectionKey"] != "eCCDTypes+eIRFilterType":
                raise ValueError(f"{entry['asset']} has an invalid selectionKey")
        parsed_manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
        if parsed_manifest != manifest:
            raise ValueError("manifest round-trip mismatch")

    print(
        f"converted={len(manifest_entries)} "
        f"renderable={manifest['renderableProfileCount']} "
        f"skipped={len(skipped_sources)} "
        f"output={output_dir}"
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
