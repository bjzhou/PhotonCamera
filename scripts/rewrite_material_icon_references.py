#!/usr/bin/env python3
"""Rewrite Compose material-icons-extended usages to local ImageVector icons."""

from __future__ import annotations

import argparse
import json
import re
from dataclasses import dataclass, field
from pathlib import Path
from xml.etree import ElementTree


ANDROID_NS = "{http://schemas.android.com/apk/res/android}"
SOURCE_ROOTS = (
    Path("app/src/main/java"),
    Path("app/src/default/java"),
)
MAPPING_PATH = Path("build/material_icons_importer/imported-icons.json")
OUTPUT_PATH = Path("app/src/main/java/com/hinnka/mycamera/ui/icons/AppIcons.kt")


@dataclass(frozen=True)
class IconMapping:
    key: str
    property_name: str
    drawable_name: str
    usage_patterns: tuple[str, ...]
    import_patterns: tuple[str, ...]


@dataclass
class VectorPath:
    path_data: str
    fill_type: str = "NonZero"


@dataclass
class VectorGroup:
    name: str | None = None
    rotate: float = 0.0
    pivot_x: float = 0.0
    pivot_y: float = 0.0
    scale_x: float = 1.0
    scale_y: float = 1.0
    translation_x: float = 0.0
    translation_y: float = 0.0
    children: list[VectorGroup | VectorPath] = field(default_factory=list)


@dataclass
class VectorIcon:
    property_name: str
    default_width: float
    default_height: float
    viewport_width: float
    viewport_height: float
    auto_mirror: bool
    children: list[VectorGroup | VectorPath]


def android_attr(element: ElementTree.Element, name: str) -> str | None:
    return element.attrib.get(f"{ANDROID_NS}{name}")


def parse_float(value: str | None, default: float) -> float:
    if not value:
        return default
    cleaned = value.strip().removesuffix("dp")
    return float(cleaned)


def kt_float(value: float) -> str:
    if value == int(value):
        return f"{int(value)}f"
    return f"{value:.4f}".rstrip("0").rstrip(".") + "f"


def kt_string(value: str) -> str:
    return json.dumps(value, ensure_ascii=False)


def parse_fill_type(value: str | None) -> str:
    if value == "evenOdd":
        return "EvenOdd"
    return "NonZero"


def element_tag_name(element: ElementTree.Element) -> str:
    return element.tag.rsplit("}", 1)[-1]


def parse_vector_children(element: ElementTree.Element) -> list[VectorGroup | VectorPath]:
    children: list[VectorGroup | VectorPath] = []
    for child in element:
        tag = element_tag_name(child)
        if tag == "path":
            path_data = android_attr(child, "pathData")
            if not path_data:
                continue
            children.append(
                VectorPath(
                    path_data=path_data,
                    fill_type=parse_fill_type(android_attr(child, "fillType")),
                )
            )
        elif tag == "group":
            group = VectorGroup(
                name=android_attr(child, "name"),
                rotate=parse_float(android_attr(child, "rotation"), 0.0),
                pivot_x=parse_float(android_attr(child, "pivotX"), 0.0),
                pivot_y=parse_float(android_attr(child, "pivotY"), 0.0),
                scale_x=parse_float(android_attr(child, "scaleX"), 1.0),
                scale_y=parse_float(android_attr(child, "scaleY"), 1.0),
                translation_x=parse_float(android_attr(child, "translateX"), 0.0),
                translation_y=parse_float(android_attr(child, "translateY"), 0.0),
                children=parse_vector_children(child),
            )
            children.append(group)
    return children


def load_vector_icon(mapping: IconMapping, drawable_dir: Path) -> VectorIcon:
    xml_path = drawable_dir / f"{mapping.drawable_name}.xml"
    root = ElementTree.parse(xml_path).getroot()
    return VectorIcon(
        property_name=mapping.property_name,
        default_width=parse_float(android_attr(root, "width"), 24.0),
        default_height=parse_float(android_attr(root, "height"), 24.0),
        viewport_width=parse_float(android_attr(root, "viewportWidth"), 24.0),
        viewport_height=parse_float(android_attr(root, "viewportHeight"), 24.0),
        auto_mirror=android_attr(root, "autoMirrored") == "true",
        children=parse_vector_children(root),
    )


def property_name_for_key(key: str) -> str:
    parts = key.split(".")
    if parts[0] == "filled":
        return parts[1]
    if parts[0] == "outlined":
        return f"Outlined{parts[1]}"
    if parts[0] == "AutoMirrored":
        style = parts[1]
        icon_name = parts[2]
        if style == "filled":
            return f"AutoMirrored{icon_name}"
        return f"AutoMirrored{style.title()}{icon_name}"
    return "".join(part.title() for part in parts)


def usage_patterns_for_key(key: str, property_name: str) -> tuple[str, ...]:
    parts = key.split(".")
    if parts[0] == "filled":
        icon_name = parts[1]
        return (f"Icons.Default.{icon_name}", f"Icons.Filled.{icon_name}")
    if parts[0] == "outlined":
        return (f"Icons.Outlined.{parts[1]}",)
    if parts[:2] == ["AutoMirrored", "filled"]:
        return (f"Icons.AutoMirrored.Filled.{parts[2]}",)
    if parts[:2] == ["AutoMirrored", "outlined"]:
        return (f"Icons.AutoMirrored.Outlined.{parts[2]}",)
    return (key,)


def import_patterns_for_key(key: str) -> tuple[str, ...]:
    parts = key.split(".")
    if parts[0] == "filled":
        return (f"import androidx.compose.material.icons.filled.{parts[1]}",)
    if parts[0] == "outlined":
        return (f"import androidx.compose.material.icons.outlined.{parts[1]}",)
    if parts[:2] == ["AutoMirrored", "filled"]:
        return (f"import androidx.compose.material.icons.automirrored.filled.{parts[2]}",)
    if parts[:2] == ["AutoMirrored", "outlined"]:
        return (f"import androidx.compose.material.icons.automirrored.outlined.{parts[2]}",)
    return ()


def build_mappings(mapping_path: Path) -> list[IconMapping]:
    data = json.loads(mapping_path.read_text(encoding="utf-8"))
    mappings: list[IconMapping] = []
    for key, drawable_ref in sorted(data.items()):
        property_name = property_name_for_key(key)
        drawable_name = drawable_ref.rsplit(".", 1)[-1]
        mappings.append(
            IconMapping(
                key=key,
                property_name=property_name,
                drawable_name=drawable_name,
                usage_patterns=usage_patterns_for_key(key, property_name),
                import_patterns=import_patterns_for_key(key),
            )
        )
    return mappings


def emit_path(path: VectorPath, indent: str) -> list[str]:
    return [
        f"{indent}addPath(",
        f"{indent}    pathData = addPathNodes({kt_string(path.path_data)}),",
        f"{indent}    fill = SolidColor(Color.Black),",
        f"{indent}    pathFillType = PathFillType.{path.fill_type},",
        f"{indent})",
    ]


def emit_group(group: VectorGroup, indent: str) -> list[str]:
    args: list[str] = []
    if group.name:
        args.append(f"name = {kt_string(group.name)}")
    if group.rotate:
        args.append(f"rotate = {kt_float(group.rotate)}")
    if group.pivot_x:
        args.append(f"pivotX = {kt_float(group.pivot_x)}")
    if group.pivot_y:
        args.append(f"pivotY = {kt_float(group.pivot_y)}")
    if group.scale_x != 1.0:
        args.append(f"scaleX = {kt_float(group.scale_x)}")
    if group.scale_y != 1.0:
        args.append(f"scaleY = {kt_float(group.scale_y)}")
    if group.translation_x:
        args.append(f"translationX = {kt_float(group.translation_x)}")
    if group.translation_y:
        args.append(f"translationY = {kt_float(group.translation_y)}")

    if args:
        lines = [f"{indent}group("]
        lines.extend(f"{indent}    {arg}," for arg in args)
        lines.append(f"{indent}) {{")
    else:
        lines = [f"{indent}group {{"]
    for child in group.children:
        lines.extend(emit_vector_child(child, indent + "    "))
    lines.append(f"{indent}}}")
    return lines


def emit_vector_child(child: VectorGroup | VectorPath, indent: str) -> list[str]:
    if isinstance(child, VectorPath):
        return emit_path(child, indent)
    return emit_group(child, indent)


def cache_var_name(property_name: str) -> str:
    return "_" + property_name[0].lower() + property_name[1:]


def emit_icon(icon: VectorIcon) -> list[str]:
    cache_name = cache_var_name(icon.property_name)
    lines = [
        f"    val {icon.property_name}: ImageVector",
        "        get() {",
        f"            {cache_name}?.let {{ return it }}",
        "            return ImageVector.Builder(",
        f"                name = {kt_string('AppIcons.' + icon.property_name)},",
        f"                defaultWidth = {kt_float(icon.default_width)}.dp,",
        f"                defaultHeight = {kt_float(icon.default_height)}.dp,",
        f"                viewportWidth = {kt_float(icon.viewport_width)},",
        f"                viewportHeight = {kt_float(icon.viewport_height)},",
        f"                autoMirror = {str(icon.auto_mirror).lower()},",
        "            ).apply {",
    ]
    for child in icon.children:
        lines.extend(emit_vector_child(child, "                "))
    lines.extend(
        [
            "            }.build().also {",
            f"                {cache_name} = it",
            "            }",
            "        }",
            "",
        ]
    )
    return lines


def generate_app_icons(mappings: list[IconMapping], drawable_dir: Path) -> str:
    icons = [load_vector_icon(mapping, drawable_dir) for mapping in mappings]
    lines = [
        "package com.hinnka.mycamera.ui.icons",
        "",
        "import androidx.compose.ui.graphics.Color",
        "import androidx.compose.ui.graphics.PathFillType",
        "import androidx.compose.ui.graphics.SolidColor",
        "import androidx.compose.ui.graphics.vector.ImageVector",
        "import androidx.compose.ui.graphics.vector.addPathNodes",
        "import androidx.compose.ui.graphics.vector.group",
        "import androidx.compose.ui.unit.dp",
        "",
        "object AppIcons {",
    ]
    for icon in icons:
        lines.extend(emit_icon(icon))
    lines.append("}")
    lines.append("")
    for icon in icons:
        lines.append(f"private var {cache_var_name(icon.property_name)}: ImageVector? = null")
    lines.append("")
    return "\n".join(lines)


def kotlin_files(source_roots: tuple[Path, ...]) -> list[Path]:
    files: list[Path] = []
    for source_root in source_roots:
        if source_root.exists():
            files.extend(sorted(source_root.rglob("*.kt")))
    return files


def remove_imports(text: str, import_patterns: set[str]) -> str:
    lines = text.splitlines(keepends=True)
    kept = []
    for line in lines:
        if line.strip() in import_patterns:
            continue
        kept.append(line)
    return "".join(kept)


def ensure_app_icons_import(text: str) -> str:
    app_icons_import = "import com.hinnka.mycamera.ui.icons.AppIcons"
    if app_icons_import in text:
        return text

    lines = text.splitlines(keepends=True)
    last_import = -1
    for index, line in enumerate(lines):
        if line.startswith("import "):
            last_import = index
    if last_import >= 0:
        lines.insert(last_import + 1, app_icons_import + "\n")
        return "".join(lines)

    for index, line in enumerate(lines):
        if line.startswith("package "):
            insert_at = index + 1
            if insert_at < len(lines) and lines[insert_at].strip() == "":
                insert_at += 1
            lines.insert(insert_at, app_icons_import + "\n")
            return "".join(lines)
    return app_icons_import + "\n\n" + text


def rewrite_kotlin_file(path: Path, mappings: list[IconMapping]) -> tuple[str, bool]:
    original = path.read_text(encoding="utf-8")
    import_patterns = {pattern for mapping in mappings for pattern in mapping.import_patterns}
    text = remove_imports(original, import_patterns)

    changed_usages = False
    for mapping in mappings:
        for usage in mapping.usage_patterns:
            replacement = f"AppIcons.{mapping.property_name}"
            if usage in text:
                text = text.replace(usage, replacement)
                changed_usages = True

    if changed_usages:
        text = ensure_app_icons_import(text)

    return text, text != original


def rewrite_kotlin_files(mappings: list[IconMapping], source_roots: tuple[Path, ...], write: bool) -> list[Path]:
    changed_paths: list[Path] = []
    for path in kotlin_files(source_roots):
        rewritten, changed = rewrite_kotlin_file(path, mappings)
        if changed:
            changed_paths.append(path)
            if write:
                path.write_text(rewritten, encoding="utf-8", newline="")
    return changed_paths


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--mapping", type=Path, default=MAPPING_PATH)
    parser.add_argument("--drawable-dir", type=Path, default=Path("app/src/main/res/drawable"))
    parser.add_argument("--output", type=Path, default=OUTPUT_PATH)
    parser.add_argument("--write", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    mappings = build_mappings(args.mapping)
    generated = generate_app_icons(mappings, args.drawable_dir)

    changed_kotlin = rewrite_kotlin_files(mappings, SOURCE_ROOTS, write=args.write)
    output_changed = not args.output.exists() or args.output.read_text(encoding="utf-8") != generated

    print(f"icons: {len(mappings)}")
    print(f"generated: {args.output}")
    print(f"kotlin files to rewrite: {len(changed_kotlin)}")
    for path in changed_kotlin:
        print(f"  {path}")

    if args.write:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(generated, encoding="utf-8", newline="\n")
        print("wrote changes")
    elif output_changed:
        print("dry-run only; generated AppIcons.kt would change")
    else:
        print("dry-run only; generated AppIcons.kt is unchanged")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
