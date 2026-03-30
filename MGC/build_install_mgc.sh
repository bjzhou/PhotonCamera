#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

MGC_DIR="${1:-${SCRIPT_DIR}/MGC_9.6.080_V24_MGC}"
APK_PATH="${MGC_DIR}/dist/$(basename "${MGC_DIR}").apk"
KEYSTORE_PATH="${REPO_DIR}/app/release.jks"
KEYSTORE_PASS="${KEYSTORE_PASS:-900902}"

if [[ ! -d "${MGC_DIR}" ]]; then
  echo "MGC directory not found: ${MGC_DIR}" >&2
  exit 1
fi

if [[ ! -f "${KEYSTORE_PATH}" ]]; then
  echo "Keystore not found: ${KEYSTORE_PATH}" >&2
  exit 1
fi

apktool b "${MGC_DIR}"
apksigner sign --ks "${KEYSTORE_PATH}" --ks-pass "pass:${KEYSTORE_PASS}" "${APK_PATH}"
adb install "${APK_PATH}"
