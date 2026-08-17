from pathlib import Path


SOURCE = Path("MGC/jadx_decompile_src/resources/lib/arm64-v8a/libgcastartup.so")
DESTINATION = Path("app/src/main/assets/mgc_denoise/sabre_luma_denoise.binarypb")
PAYLOAD_OFFSET = 0xC25C30
PAYLOAD_SIZE = 0x10B


def main() -> None:
    library = SOURCE.read_bytes()
    payload = library[PAYLOAD_OFFSET : PAYLOAD_OFFSET + PAYLOAD_SIZE]
    if len(payload) != PAYLOAD_SIZE:
        raise RuntimeError("MGC Sabre luma tuning payload is truncated")
    DESTINATION.parent.mkdir(parents=True, exist_ok=True)
    DESTINATION.write_bytes(payload)


if __name__ == "__main__":
    main()
