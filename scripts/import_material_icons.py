#!/usr/bin/env python3
"""
Import only the Material Icons used by the app as local Android vector drawables.

The script is intended to help remove the heavy Compose material-icons-extended
dependency. By default it only prints a plan. Pass --write to create drawable XML
files for icons that are referenced by the source code but not provided by
material-icons-core.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import sys
import urllib.error
import urllib.request
import xml.etree.ElementTree as ET
import zipfile
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


ANDROID_NS = "http://schemas.android.com/apk/res/android"
ET.register_namespace("android", ANDROID_NS)

REPO_OWNER = "google"
REPO_NAME = "material-design-icons"
REPO_REF = "master"
GITHUB_TREE_URL = (
    f"https://api.github.com/repos/{REPO_OWNER}/{REPO_NAME}/git/trees/{REPO_REF}?recursive=1"
)
RAW_BASE_URL = f"https://raw.githubusercontent.com/{REPO_OWNER}/{REPO_NAME}/{REPO_REF}/"
SYMBOLS_BASE_URL = "https://fonts.gstatic.com/s/i/short-term/release"

STYLE_TO_REPO_DIR = {
    "filled": "materialicons",
    "outlined": "materialiconsoutlined",
    "rounded": "materialiconsround",
    "sharp": "materialiconssharp",
    "twotone": "materialiconstwotone",
}
REPO_DIR_TO_STYLE = {value: key for key, value in STYLE_TO_REPO_DIR.items()}

STYLE_ALIASES = {
    "Default": "filled",
    "Filled": "filled",
    "Outlined": "outlined",
    "Rounded": "rounded",
    "Sharp": "sharp",
    "TwoTone": "twotone",
    "filled": "filled",
    "outlined": "outlined",
    "rounded": "rounded",
    "sharp": "sharp",
    "twotone": "twotone",
}

ICON_IMPORT_RE = re.compile(
    r"^import\s+androidx\.compose\.material\.icons\."
    r"(?:(automirrored)\.)?"
    r"(filled|outlined|rounded|sharp|twotone)\."
    r"([A-Za-z][A-Za-z0-9_]*|\*)\s*$",
    re.MULTILINE,
)
ICON_USAGE_RE = re.compile(
    r"Icons\.(Default|Filled|Outlined|Rounded|Sharp|TwoTone)\.([A-Za-z][A-Za-z0-9_]*)"
)
AUTO_ICON_USAGE_RE = re.compile(
    r"Icons\.AutoMirrored\.(Filled|Outlined|Rounded|Sharp|TwoTone)\.([A-Za-z][A-Za-z0-9_]*)"
)
CORE_CLASS_RE = re.compile(
    r"androidx/compose/material/icons/(?:(automirrored)/)?"
    r"(filled|outlined|rounded|sharp|twotone)/([A-Za-z][A-Za-z0-9_]*)Kt\.class$"
)
ANDROID_VECTOR_RE = re.compile(
    r"^android/([^/]+)/([^/]+)/([^/]+)/black/res/drawable[^/]*/([^/]+\.xml)$"
)
SVG_NS = "http://www.w3.org/2000/svg"

SYMBOLS_STYLE_TO_FAMILY = {
    "filled": "materialsymbolsoutlined",
    "outlined": "materialsymbolsoutlined",
    "rounded": "materialsymbolsrounded",
    "sharp": "materialsymbolssharp",
    "twotone": "materialsymbolsoutlined",
}
SPECIAL_COMPOSE_TO_SOURCE = {
    "Crop169": "crop_16_9",
}


@dataclass(frozen=True, order=True)
class IconRef:
    name: str
    style: str
    auto_mirrored: bool = False

    @property
    def display_name(self) -> str:
        prefix = "AutoMirrored." if self.auto_mirrored else ""
        return f"{prefix}{self.style}.{self.name}"


@dataclass(frozen=True)
class RepoIcon:
    icon: IconRef
    path: str
    source_name: str


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Import used Compose Material Icons as local vector drawables."
    )
    parser.add_argument(
        "--source-root",
        action="append",
        type=Path,
        default=None,
        help="Kotlin source root to scan. Can be passed more than once.",
    )
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=Path("app/src/main/res/drawable"),
        help="Drawable output directory.",
    )
    parser.add_argument(
        "--repo",
        type=Path,
        help="Optional local clone of google/material-design-icons.",
    )
    parser.add_argument(
        "--cache-dir",
        type=Path,
        default=Path("build/material_icons_importer"),
        help="Cache directory for GitHub tree metadata and downloaded XML.",
    )
    parser.add_argument(
        "--core-jar",
        type=Path,
        help="Optional path to material-icons-core classes.jar.",
    )
    parser.add_argument(
        "--all-used",
        action="store_true",
        help="Import every used icon instead of only icons missing from material-icons-core.",
    )
    parser.add_argument(
        "--include-core-covered",
        action="store_true",
        help="Print core-covered icons in the report.",
    )
    parser.add_argument(
        "--write",
        action="store_true",
        help="Write drawable XML files. Without this flag the script only prints a plan.",
    )
    parser.add_argument(
        "--overwrite",
        action="store_true",
        help="Overwrite existing drawable XML files.",
    )
    parser.add_argument(
        "--no-github",
        action="store_true",
        help="Do not query GitHub. Requires --repo if --write needs icons.",
    )
    parser.add_argument(
        "--no-symbols",
        action="store_true",
        help="Do not fall back to Google Fonts Material Symbols SVGs.",
    )
    args = parser.parse_args()

    project_root = Path.cwd()
    source_roots = args.source_root or [
        Path("app/src/main/java"),
        Path("app/src/default/java"),
    ]
    source_roots = [root if root.is_absolute() else project_root / root for root in source_roots]
    output_dir = args.output_dir if args.output_dir.is_absolute() else project_root / args.output_dir
    cache_dir = args.cache_dir if args.cache_dir.is_absolute() else project_root / args.cache_dir

    used_icons = scan_used_icons(source_roots)
    core_icons = load_core_icons(args.core_jar)

    if args.all_used:
        icons_to_import = sorted(used_icons)
    else:
        icons_to_import = sorted(icon for icon in used_icons if icon not in core_icons)
    core_covered = sorted(icon for icon in used_icons if icon in core_icons)

    print(f"Scanned icons: {len(used_icons)}")
    print(f"Covered by material-icons-core: {len(core_covered)}")
    print(f"Need local drawable import: {len(icons_to_import)}")

    if args.include_core_covered and core_covered:
        print()
        print("Core-covered icons:")
        for icon in core_covered:
            print(f"  {icon.display_name}")

    if not icons_to_import:
        return 0

    repo_index: dict[tuple[str, str], RepoIcon] = {}
    if args.repo:
        repo_root = args.repo if args.repo.is_absolute() else project_root / args.repo
        repo_index.update(index_local_repo(repo_root))
    if not repo_index and not args.no_github:
        repo_index.update(load_github_index(cache_dir))

    print()
    print("Local drawable imports:")

    imported = 0
    skipped = 0
    unresolved: list[IconRef] = []
    mapping: dict[str, str] = {}
    for icon in icons_to_import:
        repo_icon = resolve_repo_icon(repo_index, icon)
        if repo_icon is None and not args.no_symbols:
            repo_icon = material_symbol_icon(icon)
        if repo_icon is None:
            unresolved.append(icon)
            print(f"  MISSING {icon.display_name}")
            continue

        drawable_name = drawable_resource_name(icon, repo_icon.source_name)
        output_path = output_dir / f"{drawable_name}.xml"
        mapping[icon.display_name] = f"R.drawable.{drawable_name}"

        status = "would write"
        if output_path.exists() and not args.overwrite:
            status = "exists"
            skipped += 1
        elif args.write:
            xml_text = read_repo_icon_xml(repo_icon.path, args.repo, cache_dir)
            normalized = normalize_vector_xml(xml_text, auto_mirrored=icon.auto_mirrored)
            output_dir.mkdir(parents=True, exist_ok=True)
            output_path.write_text(normalized, encoding="utf-8", newline="\n")
            status = "wrote"
            imported += 1
        print(f"  {status:11} {icon.display_name} -> {output_path.relative_to(project_root)}")

    if args.write:
        cache_dir.mkdir(parents=True, exist_ok=True)
        mapping_path = cache_dir / "imported-icons.json"
        mapping_path.write_text(
            json.dumps(mapping, indent=2, sort_keys=True) + "\n",
            encoding="utf-8",
            newline="\n",
        )
        print()
        print(f"Wrote mapping: {mapping_path.relative_to(project_root)}")

    if unresolved:
        print()
        print("Unresolved icons:")
        for icon in unresolved:
            print(f"  {icon.display_name}")

    print()
    print(f"Imported: {imported}; existing/skipped: {skipped}; unresolved: {len(unresolved)}")
    if not args.write:
        print("Dry run only. Re-run with --write to create drawable XML files.")

    return 1 if unresolved else 0


def scan_used_icons(source_roots: Iterable[Path]) -> set[IconRef]:
    icons: set[IconRef] = set()
    for root in source_roots:
        if not root.exists():
            continue
        for source in root.rglob("*.kt"):
            text = source.read_text(encoding="utf-8", errors="ignore")
            for match in ICON_IMPORT_RE.finditer(text):
                auto_group, style_group, icon_name = match.groups()
                if icon_name == "*":
                    continue
                icons.add(
                    IconRef(
                        name=icon_name,
                        style=STYLE_ALIASES[style_group],
                        auto_mirrored=bool(auto_group),
                    )
                )
            for match in ICON_USAGE_RE.finditer(text):
                style_group, icon_name = match.groups()
                icons.add(IconRef(name=icon_name, style=STYLE_ALIASES[style_group]))
            for match in AUTO_ICON_USAGE_RE.finditer(text):
                style_group, icon_name = match.groups()
                icons.add(
                    IconRef(
                        name=icon_name,
                        style=STYLE_ALIASES[style_group],
                        auto_mirrored=True,
                    )
                )
    return icons


def load_core_icons(core_jar: Path | None) -> set[IconRef]:
    jar_path = core_jar or find_material_icons_core_jar()
    if jar_path is None or not jar_path.exists():
        print("Warning: material-icons-core classes.jar was not found; treating all icons as missing.")
        return set()

    icons: set[IconRef] = set()
    with zipfile.ZipFile(jar_path) as jar:
        for entry in jar.namelist():
            match = CORE_CLASS_RE.match(entry)
            if not match:
                continue
            auto_group, style_group, icon_name = match.groups()
            icons.add(
                IconRef(
                    name=icon_name,
                    style=STYLE_ALIASES[style_group],
                    auto_mirrored=bool(auto_group),
                )
            )
    return icons


def find_material_icons_core_jar() -> Path | None:
    user_profile = Path(os.environ.get("USERPROFILE", Path.home()))
    candidates: list[Path] = []
    transform_root = user_profile / ".gradle" / "caches"
    if transform_root.exists():
        candidates.extend(
            path
            for path in transform_root.glob("*/transforms/**/material-icons-core*/jars/classes.jar")
            if path.is_file()
        )
    candidates.sort(key=lambda path: path.stat().st_mtime, reverse=True)
    return candidates[0] if candidates else None


def index_local_repo(repo_root: Path) -> dict[tuple[str, str], RepoIcon]:
    if not repo_root.exists():
        raise FileNotFoundError(f"Material icons repo not found: {repo_root}")

    index: dict[tuple[str, str], RepoIcon] = {}
    android_root = repo_root / "android"
    for path in android_root.rglob("*.xml"):
        relative = path.relative_to(repo_root).as_posix()
        add_repo_icon(index, relative)
    return index


def load_github_index(cache_dir: Path) -> dict[tuple[str, str], RepoIcon]:
    cache_dir.mkdir(parents=True, exist_ok=True)
    cache_path = cache_dir / "github-tree.json"
    if cache_path.exists():
        data = json.loads(cache_path.read_text(encoding="utf-8"))
    else:
        request = urllib.request.Request(GITHUB_TREE_URL, headers={"User-Agent": "PhotonCamera-icon-importer"})
        try:
            with urllib.request.urlopen(request, timeout=60) as response:
                data = json.loads(response.read().decode("utf-8"))
        except urllib.error.URLError as exc:
            raise RuntimeError(f"Unable to fetch GitHub tree: {exc}") from exc
        cache_path.write_text(json.dumps(data), encoding="utf-8", newline="\n")

    if data.get("truncated"):
        print("Warning: GitHub tree response is truncated; Material Symbols fallback will cover missing icons.")

    index: dict[tuple[str, str], RepoIcon] = {}
    for item in data.get("tree", []):
        path = item.get("path")
        if isinstance(path, str):
            add_repo_icon(index, path)
    return index


def add_repo_icon(index: dict[tuple[str, str], RepoIcon], path: str) -> None:
    match = ANDROID_VECTOR_RE.match(path)
    if not match:
        return
    _category, icon_snake, repo_style, filename = match.groups()
    style = REPO_DIR_TO_STYLE.get(repo_style)
    if style is None:
        return
    icon_name = snake_to_compose_name(icon_snake)
    key = (style, icon_name)
    current = index.get(key)
    icon = IconRef(name=icon_name, style=style)
    candidate = RepoIcon(icon=icon, path=path, source_name=icon_snake)
    if current is None or rank_repo_path(path) < rank_repo_path(current.path):
        index[key] = candidate


def resolve_repo_icon(index: dict[tuple[str, str], RepoIcon], icon: IconRef) -> RepoIcon | None:
    return index.get((icon.style, icon.name))


def material_symbol_icon(icon: IconRef) -> RepoIcon | None:
    family = SYMBOLS_STYLE_TO_FAMILY.get(icon.style)
    if family is None:
        return None
    source_name = compose_to_source_name(icon.name)
    variant = "fill1" if icon.style == "filled" and not icon.name.endswith("Border") else "default"
    path = f"symbols://{family}/{source_name}/{variant}/24px.svg"
    return RepoIcon(icon=icon, path=path, source_name=source_name)


def rank_repo_path(path: str) -> tuple[int, int, str]:
    drawable_rank = 0 if "/res/drawable/" in path else 1
    filled_rank = 0 if "/materialicons/" in path else 1
    return (drawable_rank, filled_rank, path)


def read_repo_icon_xml(path: str, local_repo: Path | None, cache_dir: Path) -> str:
    if path.startswith("symbols://"):
        return read_material_symbol_vector(path, cache_dir)

    if local_repo:
        repo_root = local_repo if local_repo.is_absolute() else Path.cwd() / local_repo
        local_path = repo_root / Path(path)
        if local_path.exists():
            return local_path.read_text(encoding="utf-8")

    icon_cache = cache_dir / "xml"
    icon_cache.mkdir(parents=True, exist_ok=True)
    cached_path = icon_cache / path.replace("/", "__")
    if cached_path.exists():
        return cached_path.read_text(encoding="utf-8")

    url = RAW_BASE_URL + path
    request = urllib.request.Request(url, headers={"User-Agent": "PhotonCamera-icon-importer"})
    try:
        with urllib.request.urlopen(request, timeout=60) as response:
            text = response.read().decode("utf-8")
    except urllib.error.URLError as exc:
        raise RuntimeError(f"Unable to download {url}: {exc}") from exc
    cached_path.write_text(text, encoding="utf-8", newline="\n")
    return text


def read_material_symbol_vector(symbol_path: str, cache_dir: Path) -> str:
    relative = symbol_path.removeprefix("symbols://")
    symbol_cache = cache_dir / "symbols"
    symbol_cache.mkdir(parents=True, exist_ok=True)
    cached_svg = symbol_cache / relative.replace("/", "__")
    if cached_svg.exists():
        svg_text = cached_svg.read_text(encoding="utf-8")
    else:
        url = f"{SYMBOLS_BASE_URL}/{relative}"
        request = urllib.request.Request(url, headers={"User-Agent": "PhotonCamera-icon-importer"})
        try:
            with urllib.request.urlopen(request, timeout=60) as response:
                svg_text = response.read().decode("utf-8")
        except urllib.error.URLError as exc:
            raise RuntimeError(f"Unable to download {url}: {exc}") from exc
        cached_svg.write_text(svg_text, encoding="utf-8", newline="\n")
    return svg_to_vector_xml(svg_text)


def svg_to_vector_xml(svg_text: str) -> str:
    svg = ET.fromstring(svg_text)
    view_box = svg.get("viewBox", "0 0 24 24").replace(",", " ").split()
    if len(view_box) != 4:
        raise ValueError(f"Unsupported SVG viewBox: {svg.get('viewBox')}")
    min_x, min_y, width, height = [float(value) for value in view_box]
    android = f"{{{ANDROID_NS}}}"

    vector = ET.Element(
        "vector",
        {
            android + "width": "24dp",
            android + "height": "24dp",
            android + "viewportWidth": format_number(width),
            android + "viewportHeight": format_number(height),
        },
    )
    parent = vector
    if min_x != 0 or min_y != 0:
        group_attrs = {}
        if min_x != 0:
            group_attrs[android + "translateX"] = format_number(-min_x)
        if min_y != 0:
            group_attrs[android + "translateY"] = format_number(-min_y)
        parent = ET.SubElement(vector, "group", group_attrs)

    for svg_path in svg.findall(f".//{{{SVG_NS}}}path"):
        path_data = svg_path.get("d")
        if not path_data:
            continue
        attrs = {
            android + "fillColor": "@android:color/black",
            android + "pathData": path_data,
        }
        fill_rule = svg_path.get("fill-rule") or svg_path.get("clip-rule")
        if fill_rule == "evenodd":
            attrs[android + "fillType"] = "evenOdd"
        ET.SubElement(parent, "path", attrs)

    ET.indent(vector, space="    ")
    return ET.tostring(vector, encoding="unicode") + "\n"


def normalize_vector_xml(xml_text: str, auto_mirrored: bool) -> str:
    root = ET.fromstring(xml_text)
    android = f"{{{ANDROID_NS}}}"

    root.attrib.pop(android + "tint", None)
    root.set(android + "width", root.get(android + "width", "24dp"))
    root.set(android + "height", root.get(android + "height", "24dp"))
    root.set(android + "viewportWidth", root.get(android + "viewportWidth", "24"))
    root.set(android + "viewportHeight", root.get(android + "viewportHeight", "24"))
    if auto_mirrored:
        root.set(android + "autoMirrored", "true")

    for path in root.iter():
        if path.tag.endswith("path"):
            path.set(android + "fillColor", "@android:color/black")

    ET.indent(root, space="    ")
    return ET.tostring(root, encoding="unicode") + "\n"


def drawable_resource_name(icon: IconRef, source_name: str) -> str:
    parts = ["ic", "material"]
    if icon.style != "filled":
        parts.append(icon.style)
    parts.append(source_name)
    if icon.auto_mirrored:
        parts.append("auto_mirrored")
    parts.append("24")
    return sanitize_resource_name("_".join(parts))


def sanitize_resource_name(name: str) -> str:
    name = re.sub(r"[^a-z0-9_]", "_", name.lower())
    name = re.sub(r"_+", "_", name).strip("_")
    if not name or not name[0].isalpha():
        name = "ic_" + name
    return name


def snake_to_compose_name(value: str) -> str:
    parts = value.split("_")
    return "".join(part[:1].upper() + part[1:] for part in parts if part)


def compose_to_source_name(name: str) -> str:
    if name in SPECIAL_COMPOSE_TO_SOURCE:
        return SPECIAL_COMPOSE_TO_SOURCE[name]
    value = re.sub(r"(?<=[a-z0-9])(?=[A-Z])", "_", name)
    value = re.sub(r"(?<=[A-Z])(?=[A-Z][a-z])", "_", value)
    return value.lower()


def format_number(value: float) -> str:
    if value.is_integer():
        return str(int(value))
    return str(value)


if __name__ == "__main__":
    sys.exit(main())
