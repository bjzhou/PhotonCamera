"""Safely copy original camera captures from an attached Android device."""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import subprocess
import tempfile
from pathlib import Path
from typing import Sequence


_PACKAGE_RE = re.compile(r"[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+\Z")
_PHOTO_ID_RE = re.compile(r"[A-Za-z0-9_-]{1,128}\Z")
_ADB = "adb"


def _file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _adb(
    serial: str, *args: str, check: bool = True
) -> subprocess.CompletedProcess[bytes]:
    return subprocess.run(
        [_ADB, "-s", serial, *args],
        check=check,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )


def _remote_names(serial: str, path: str) -> list[str]:
    result = _adb(serial, "shell", "ls", "-1A", path, check=False)
    if result.returncode:
        message = result.stderr.decode("utf-8", "replace").strip()
        if "No such file or directory" in message:
            return []
        raise RuntimeError(
            f"cannot enumerate remote path {path}: {message or result.returncode}"
        )
    return [line.decode("utf-8", "strict") for line in result.stdout.splitlines()]


def _remote_size(serial: str, path: str) -> int | None:
    result = _adb(serial, "shell", "wc", "-c", path, check=False)
    if result.returncode:
        message = result.stderr.decode("utf-8", "replace").strip()
        raise RuntimeError(
            f"cannot read remote size for {path}: {message or result.returncode}"
        )
    match = re.match(rb"\s*(\d+)\b", result.stdout)
    if not match:
        raise RuntimeError(f"cannot parse remote size for {path}: {result.stdout!r}")
    return int(match.group(1))


def _remote_sha256(serial: str, path: str) -> str:
    result = _adb(serial, "shell", "sha256sum", path, check=False)
    if result.returncode:
        message = result.stderr.decode("utf-8", "replace").strip()
        raise RuntimeError(
            f"cannot hash remote file {path}: {message or result.returncode}"
        )
    match = re.match(rb"([0-9a-fA-F]{64})\b", result.stdout)
    if not match:
        raise RuntimeError(f"cannot parse remote SHA-256 for {path}: {result.stdout!r}")
    return match.group(1).decode("ascii").lower()


def extract_photos(destination: Path, serial: str, package: str) -> dict:
    """Extract only origin.jpg/original.jpg captures, preserving photo IDs.

    Existing files are skipped only when their byte size matches the remote
    source. Downloads land in a temporary file and are atomically renamed.
    Returns the extraction manifest as a dictionary.
    """
    if not serial or "\x00" in serial:
        raise ValueError("serial must be a non-empty device serial")
    if not _PACKAGE_RE.fullmatch(package):
        raise ValueError("invalid Android package name")

    destination = Path(destination).expanduser().resolve()
    destination.mkdir(parents=True, exist_ok=True)
    base = f"/sdcard/Android/data/{package}/files/Pictures/photos"
    photo_ids = sorted(
        name for name in _remote_names(serial, base) if _PHOTO_ID_RE.fullmatch(name)
    )

    records: list[dict] = []
    skipped = 0
    for index, photo_id in enumerate(photo_ids, start=1):
        folder = f"{base}/{photo_id}"
        names = set(_remote_names(serial, folder))
        filename = (
            "origin.jpg"
            if "origin.jpg" in names
            else ("original.jpg" if "original.jpg" in names else None)
        )
        if filename is None:
            records.append(
                {"photoId": photo_id, "status": "skipped", "reason": "no_original_jpg"}
            )
            skipped += 1
            print(
                f"[{index}/{len(photo_ids)}] {photo_id}: skipped (no original JPG)",
                flush=True,
            )
            continue

        remote = f"{folder}/{filename}"
        size = _remote_size(serial, remote)
        source_sha256 = _remote_sha256(serial, remote)

        target_dir = destination / photo_id
        target_dir.mkdir(parents=True, exist_ok=True)
        target = target_dir / filename
        if (
            target.is_file()
            and target.stat().st_size == size
            and _file_sha256(target) == source_sha256
        ):
            records.append(
                {
                    "photoId": photo_id,
                    "source": remote,
                    "file": str(target),
                    "size": size,
                    "sha256": source_sha256,
                    "status": "existing",
                }
            )
            print(f"[{index}/{len(photo_ids)}] {photo_id}: already present", flush=True)
            continue

        fd, temp_name = tempfile.mkstemp(
            prefix=f".{filename}.", suffix=".partial", dir=target_dir
        )
        os.close(fd)
        temp = Path(temp_name)
        try:
            _adb(serial, "pull", remote, str(temp))
            if temp.stat().st_size != size:
                raise IOError(
                    f"size mismatch for {remote}: expected {size}, received {temp.stat().st_size}"
                )
            if _file_sha256(temp) != source_sha256:
                raise IOError(f"SHA-256 mismatch for {remote}")
            os.replace(temp, target)
        finally:
            temp.unlink(missing_ok=True)
        records.append(
            {
                "photoId": photo_id,
                "source": remote,
                "file": str(target),
                "size": size,
                "sha256": source_sha256,
                "status": "extracted",
            }
        )
        print(
            f"[{index}/{len(photo_ids)}] {photo_id}: extracted ({size} bytes)",
            flush=True,
        )

    manifest = {
        "serial": serial,
        "package": package,
        "sourceDirectory": base,
        "selection": "origin.jpg preferred; original.jpg fallback",
        "photoDirectories": len(photo_ids),
        "extracted": sum(r["status"] == "extracted" for r in records),
        "existing": sum(r["status"] == "existing" for r in records),
        "skipped": skipped,
        "totalBytes": sum(
            r.get("size", 0) for r in records if r["status"] != "skipped"
        ),
        "photos": records,
    }
    manifest_path = destination / "extraction.json"
    fd, temp_name = tempfile.mkstemp(
        prefix=".extraction.", suffix=".partial", dir=destination
    )
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as stream:
            json.dump(manifest, stream, ensure_ascii=False, indent=2)
            stream.write("\n")
        os.replace(temp_name, manifest_path)
    finally:
        Path(temp_name).unlink(missing_ok=True)
    return manifest


def main(argv: Sequence[str] | None = None) -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("destination", type=Path)
    parser.add_argument("--serial", required=True)
    parser.add_argument("--package", required=True)
    args = parser.parse_args(argv)
    result = extract_photos(args.destination, args.serial, args.package)
    print(
        f"Done: {result['extracted']} downloaded, {result['existing']} already present, "
        f"{result['skipped']} skipped; {result['totalBytes']} bytes total"
    )


if __name__ == "__main__":
    main()
