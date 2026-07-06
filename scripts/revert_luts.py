
import os
import struct
import sys

def convert_plut_to_cube(plut_path, cube_path):
    """
    Converts a custom binary .plut format back to .cube (Adobe 3D LUT).
    Format:
    - Magic: 'PLUT' (4 bytes)
    - Version: 1 (uint32)
    - Size: Dimension of the 3D LUT, e.g., 32 (uint32)
    - Data Type: 0 for UINT8 RGB, 1 for UINT16 RGB (uint32)
    - Payload: Raw RGB data
    """
    try:
        with open(plut_path, 'rb') as f:
            magic = f.read(4)
            if magic != b'PLUT':
                print(f"Error: Invalid magic in {plut_path}")
                return False

            version = struct.unpack('<I', f.read(4))[0]
            size = struct.unpack('<I', f.read(4))[0]
            data_type = struct.unpack('<I', f.read(4))[0]

            expected_count = size * size * size * 3
            if data_type == 1: # UINT16
                data_bytes = f.read(expected_count * 2)
                if len(data_bytes) < expected_count * 2:
                    print(f"Error: Unexpected end of file in {plut_path}")
                    return False
                data = struct.unpack(f'<{expected_count}H', data_bytes)
                scale = 65535.0
            elif data_type == 0: # UINT8
                data_bytes = f.read(expected_count)
                if len(data_bytes) < expected_count:
                    print(f"Error: Unexpected end of file in {plut_path}")
                    return False
                data = struct.unpack(f'<{expected_count}B', data_bytes)
                scale = 255.0
            else:
                print(f"Error: Unknown data type {data_type}")
                return False
    except Exception as e:
        print(f"Error reading {plut_path}: {e}")
        return False

    try:
        with open(cube_path, 'w', encoding='utf-8') as f:
            f.write(f"# Created from {os.path.basename(plut_path)}\n")
            f.write(f"LUT_3D_SIZE {size}\n")
            f.write("DOMAIN_MIN 0.0 0.0 0.0\n")
            f.write("DOMAIN_MAX 1.0 1.0 1.0\n")

            for i in range(0, len(data), 3):
                r = data[i] / scale
                g = data[i+1] / scale
                b = data[i+2] / scale
                f.write(f"{r:.6f} {g:.6f} {b:.6f}\n")
    except Exception as e:
        print(f"Error writing {cube_path}: {e}")
        return False

    return True

def main():
    # Adjust path if needed
    base_dir = os.path.dirname(os.path.abspath(__file__))
    lut_dir = os.path.join(base_dir, '..', 'app', 'src', 'main', 'assets', 'luts')

    if not os.path.exists(lut_dir):
        print(f"Directory not found: {lut_dir}")
        return

    count = 0
    for filename in os.listdir(lut_dir):
        if filename.endswith('.plut'):
            plut_path = os.path.join(lut_dir, filename)
            cube_path = os.path.join(lut_dir, filename.replace('.plut', '.cube'))

            # Check if we should overwrite or skip.
            # If the user is reverting, they likely want the .cube back.
            print(f"Converting {filename} -> {os.path.basename(cube_path)}...")
            if convert_plut_to_cube(plut_path, cube_path):
                count += 1

    print(f"Successfully reverted {count} LUT files.")

if __name__ == '__main__':
    main()
