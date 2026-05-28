#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
AGC_DIR="$ROOT_DIR/AGC/AGC8.8.224_V12.0"
DEX_BUILD_DIR="$ROOT_DIR/agc-photon-lut/build/outputs/agc-dex"
OUT_DIR="$ROOT_DIR/AGC/out"
UNSIGNED_APK="$OUT_DIR/agc-photon-unsigned.apk"
ALIGNED_APK="$OUT_DIR/agc-photon-aligned.apk"
SIGNED_APK="$OUT_DIR/agc-photon-signed.apk"
KEYSTORE="$ROOT_DIR/app/debug.keystore"
PACKAGE_NAME="$(sed -n 's/.*package="\([^"]*\)".*/\1/p' "$AGC_DIR/AndroidManifest.xml" | head -n 1)"

mkdir -p "$OUT_DIR"

cd "$ROOT_DIR"
./gradlew :agc-photon-lut:buildAgcPhotonDex
./gradlew :agc-photon-lut:buildAgcPhotonSo
./gradlew :app:buildCMakeDebug

next_dex_number() {
  local max=1
  local dex
  shopt -s nullglob
  for dex in "$AGC_DIR"/classes*.dex; do
    local name number
    name="$(basename "$dex")"
    if [[ "$name" == "classes.dex" ]]; then
      number=1
    elif [[ "$name" =~ ^classes([0-9]+)\.dex$ ]]; then
      number="${BASH_REMATCH[1]}"
    else
      continue
    fi
    if (( number > max )); then
      max="$number"
    fi
  done
  echo $((max + 1))
}

inject_dex_files() {
  local index=4
  shopt -s nullglob
  for dex in "$AGC_DIR"/classes*.dex; do
    local name number
    name="$(basename "$dex")"
    if [[ "$name" =~ ^classes([0-9]+)\.dex$ ]]; then
      number="${BASH_REMATCH[1]}"
      if (( number >= index )); then
        rm -f "$dex"
      fi
    fi
  done
  shopt -s nullglob
  for dex in "$DEX_BUILD_DIR"/classes*.dex; do
    cp "$dex" "$AGC_DIR/classes${index}.dex"
    echo "Injected $(basename "$dex") -> classes${index}.dex"
    index=$((index + 1))
  done
}

find_android_tool() {
  local tool="$1"
  local sdk="${ANDROID_HOME:-${ANDROID_SDK_ROOT:-}}"
  if [[ -n "$sdk" ]]; then
    find "$sdk/build-tools" -name "$tool" -type f | sort -V | tail -n 1
  fi
}

inject_dex_files

# 同步插件所必须的内置 assets 资源文件（LUT 描述文件与内置配置文件）
echo "Syncing plugin assets into host..."
if [[ -d "$ROOT_DIR/app/src/main/assets" ]]; then
  mkdir -p "$AGC_DIR/assets"
  rsync -a --ignore-existing "$ROOT_DIR/app/src/main/assets/" "$AGC_DIR/assets/"
fi

# 同步插件所必须的 native 动态库文件 (.so)
echo "Syncing native libraries into host..."
SO_DIR="$ROOT_DIR/app/build/intermediates/stripped_native_libs/defaultDebug/stripDefaultDebugDebugSymbols/out/lib/arm64-v8a"
if [[ -d "$SO_DIR" ]]; then
  mkdir -p "$AGC_DIR/lib/arm64-v8a"
  cp -pf "$SO_DIR"/*.so "$AGC_DIR/lib/arm64-v8a/"
  echo "Native libraries successfully synced."
else
  echo "Warning: Native library directory not found at $SO_DIR"
fi

# 同步 AGC photon LUT 插件的 native 动态库
PHOTON_SO_DIR="$ROOT_DIR/agc-photon-lut/build/outputs/agc-so/lib/arm64-v8a"
if [[ -d "$PHOTON_SO_DIR" ]]; then
  mkdir -p "$AGC_DIR/lib/arm64-v8a"
  cp -pf "$PHOTON_SO_DIR"/*.so "$AGC_DIR/lib/arm64-v8a/"
  echo "AGC photon LUT native library synced."
else
  echo "Warning: AGC photon LUT native library directory not found at $PHOTON_SO_DIR"
fi

apktool b "$AGC_DIR" -o "$UNSIGNED_APK"

ZIPALIGN="$(find_android_tool zipalign)"
APKSIGNER="$(find_android_tool apksigner)"
if [[ -z "$ZIPALIGN" || -z "$APKSIGNER" ]]; then
  echo "zipalign/apksigner not found. Set ANDROID_HOME or ANDROID_SDK_ROOT." >&2
  exit 1
fi

"$ZIPALIGN" -f -p 4 "$UNSIGNED_APK" "$ALIGNED_APK"
"$APKSIGNER" sign \
  --ks "$KEYSTORE" \
  --ks-pass pass:android \
  --key-pass pass:android \
  --ks-key-alias androiddebugkey \
  --out "$SIGNED_APK" \
  "$ALIGNED_APK"

adb install -r "$SIGNED_APK"
if [[ -n "$PACKAGE_NAME" ]]; then
  adb shell monkey -p "$PACKAGE_NAME" -c android.intent.category.LAUNCHER 1
fi

echo "$SIGNED_APK"
