"""Export complete user LUT files from PhotonCamera's private app storage."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import subprocess
import tempfile
from collections import Counter
from pathlib import Path
from typing import Sequence


_SAFE_FILE = re.compile(r"[A-Za-z0-9_.-]{1,200}\Z")
_EXTENSIONS = {".plut", ".cube"}


def _run(
    serial: str, *args: str, check: bool = True
) -> subprocess.CompletedProcess[bytes]:
    result = subprocess.run(
        ["adb", "-s", serial, *args], stdout=subprocess.PIPE, stderr=subprocess.PIPE
    )
    if check and result.returncode:
        message = result.stderr.decode("utf-8", "replace").strip()
        raise RuntimeError(f"ADB command failed ({result.returncode}): {message}")
    return result


def _digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def _remote_sha256(serial: str, package: str, remote: str) -> str:
    result = _run(serial, "shell", "run-as", package, "sha256sum", remote, check=False)
    if result.returncode:
        message = result.stderr.decode("utf-8", "replace").strip()
        raise RuntimeError(
            f"cannot hash remote LUT {remote}: {message or result.returncode}"
        )
    match = re.match(rb"([0-9a-fA-F]{64})\b", result.stdout)
    if not match:
        raise RuntimeError(f"invalid SHA-256 output for {remote}: {result.stdout!r}")
    return match.group(1).decode("ascii").lower()


def _read_remote(serial: str, package: str, remote: str) -> bytes:
    result = _run(serial, "exec-out", "run-as", package, "cat", remote)
    return result.stdout


def extract_luts(serial: str, package: str, output: Path) -> dict:
    if not serial or "\x00" in serial:
        raise ValueError("serial must be a non-empty device serial")
    if not re.fullmatch(r"[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+", package):
        raise ValueError("invalid Android package name")

    output = Path(output).expanduser().resolve()
    output.mkdir(parents=True, exist_ok=True)
    remote_dir = "files/custom_luts"
    listing = _run(
        serial, "shell", "run-as", package, "ls", "-1A", remote_dir, check=False
    )
    if listing.returncode:
        error = listing.stderr.decode("utf-8", "replace").strip()
        raise RuntimeError(
            f"cannot enumerate {remote_dir}: {error or listing.returncode}"
        )
    names = [line.decode("utf-8", "strict") for line in listing.stdout.splitlines()]
    candidates = sorted(
        name
        for name in names
        if _SAFE_FILE.fullmatch(name) and Path(name).suffix.lower() in _EXTENSIONS
    )
    if len(candidates) != len(set(candidates)):
        raise RuntimeError("duplicate LUT filenames returned by device")

    metadata_remote = "files/custom_luts.json"
    metadata_bytes = _read_remote(serial, package, metadata_remote)
    metadata = json.loads(metadata_bytes.decode("utf-8"))
    by_filename: dict[str, dict] = {}
    for entry in metadata if isinstance(metadata, list) else []:
        filename = entry.get("fileName") if isinstance(entry, dict) else None
        if isinstance(filename, str) and _SAFE_FILE.fullmatch(filename):
            by_filename[filename] = entry

    records: list[dict] = []
    for index, name in enumerate(candidates, start=1):
        remote = f"{remote_dir}/{name}"
        expected_hash = _remote_sha256(serial, package, remote)
        data = _read_remote(serial, package, remote)
        actual_hash = _digest(data)
        if actual_hash != expected_hash:
            raise IOError(f"SHA-256 mismatch after complete read of {remote}")
        target = output / name
        if target.is_file() and _digest(target.read_bytes()) == expected_hash:
            status = "existing"
        else:
            fd, temp_name = tempfile.mkstemp(
                prefix=f".{name}.", suffix=".partial", dir=output
            )
            try:
                with os.fdopen(fd, "wb") as stream:
                    stream.write(data)
                    stream.flush()
                    os.fsync(stream.fileno())
                if _digest(Path(temp_name).read_bytes()) != expected_hash:
                    raise IOError(f"local verification failed for {name}")
                os.replace(temp_name, target)
            finally:
                Path(temp_name).unlink(missing_ok=True)
            status = "extracted"

        entry = by_filename.get(name, {})
        records.append(
            {
                "file": name,
                "source": f"{package}:{remote}",
                "size": len(data),
                "sha256": expected_hash,
                "status": status,
                "metadata": entry,
            }
        )
        print(
            f"[{index}/{len(candidates)}] {name}: {status} ({len(data)} bytes)",
            flush=True,
        )

    categories = Counter(
        entry.get("category")
        for entry in by_filename.values()
        if isinstance(entry.get("category"), str) and entry.get("category")
    )
    manifest = {
        "serial": serial,
        "package": package,
        "sourceDirectory": f"{package}:{remote_dir}",
        "metadataSource": f"{package}:{metadata_remote}",
        "metadataSha256": _digest(metadata_bytes),
        "count": len(records),
        "extracted": sum(item["status"] == "extracted" for item in records),
        "existing": sum(item["status"] == "existing" for item in records),
        "totalBytes": sum(item["size"] for item in records),
        "formats": dict(Counter(Path(item["file"]).suffix.lower() for item in records)),
        "metadataCategories": dict(categories),
        "files": records,
    }
    fd, temp_name = tempfile.mkstemp(
        prefix=".extraction.", suffix=".partial", dir=output
    )
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as stream:
            json.dump(manifest, stream, ensure_ascii=False, indent=2)
            stream.write("\n")
        os.replace(temp_name, output / "extraction.json")
    finally:
        Path(temp_name).unlink(missing_ok=True)
    return manifest


def main(argv: Sequence[str] | None = None) -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--serial", required=True)
    parser.add_argument("--package", required=True)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args(argv)
    result = extract_luts(args.serial, args.package, args.output)
    print(
        f"Done: {result['count']} LUTs ({result['formats']}), "
        f"{result['totalBytes']} bytes total; categories: {result['metadataCategories']}"
    )


if __name__ == "__main__":
    main()
