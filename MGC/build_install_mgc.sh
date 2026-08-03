#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

MGC_DIR="${1:-${SCRIPT_DIR}/MGC_9.6.080_V24_MGC}"
APK_PATH="${MGC_DIR}/dist/$(basename "${MGC_DIR}").apk"
KEYSTORE_PATH="${REPO_DIR}/app/release.jks"
KEYSTORE_PASS="${KEYSTORE_PASS:-900902}"
PREVIEWHOOK_DEX_PATH="${REPO_DIR}/previewhook/build/outputs/standalone-dex/release/classes.dex"
MGC_CLASSES4_PATH="${MGC_DIR}/classes4.dex"
BASIC_TONE_SOURCE_DIR="${REPO_DIR}/app/src/main/assets/internal/basic_tone"
BASIC_TONE_TARGET_DIR="${MGC_DIR}/assets/internal/basic_tone"

if [[ ! -d "${MGC_DIR}" ]]; then
  echo "MGC directory not found: ${MGC_DIR}" >&2
  exit 1
fi

if [[ ! -f "${KEYSTORE_PATH}" ]]; then
  echo "Keystore not found: ${KEYSTORE_PATH}" >&2
  exit 1
fi

(
  cd "${REPO_DIR}"
  ./gradlew :previewhook:assembleStandaloneDexRelease
)

if [[ ! -f "${PREVIEWHOOK_DEX_PATH}" ]]; then
  echo "Previewhook dex not found after build: ${PREVIEWHOOK_DEX_PATH}" >&2
  exit 1
fi

# The Gradle task syncs to the fixed MGC workspace. Keep the script's optional
# MGC directory argument correct as well by copying the freshly built primary dex.
if ! cmp -s "${PREVIEWHOOK_DEX_PATH}" "${MGC_CLASSES4_PATH}"; then
  cp "${PREVIEWHOOK_DEX_PATH}" "${MGC_CLASSES4_PATH}"
fi

mkdir -p "${BASIC_TONE_TARGET_DIR}"
cp "${BASIC_TONE_SOURCE_DIR}/low_key_32f.bin" "${BASIC_TONE_TARGET_DIR}/low_key_32f.bin"
cp "${BASIC_TONE_SOURCE_DIR}/high_key_32f.bin" "${BASIC_TONE_TARGET_DIR}/high_key_32f.bin"

apktool b "${MGC_DIR}"
apksigner sign --ks "${KEYSTORE_PATH}" --ks-pass "pass:${KEYSTORE_PASS}" "${APK_PATH}"
adb install -r --no-incremental "${APK_PATH}"
