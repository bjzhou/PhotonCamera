
import os
import struct
import sys

def convert_cube_to_plut(cube_path, plut_path):
    """
    Converts a .cube (Adobe 3D LUT) file to a custom binary .plut format.
    Format:
    - Magic: 'PLUT' (4 bytes)
    - Version: 1 (uint32)
    - Size: Dimension of the 3D LUT, e.g., 32 (uint32)
    - Data Type: 0 for UINT8 RGB, 1 for UINT16 RGB (uint32)
    - Payload: Raw RGB data
    """
    try:
        with open(cube_path, 'r', encoding='utf-8') as f:
            lines = f.readlines()
    except UnicodeDecodeError:
        with open(cube_path, 'r', encoding='latin-1') as f:
            lines = f.readlines()

    size = 0
    domain_min = [0.0, 0.0, 0.0]
    domain_max = [1.0, 1.0, 1.0]
    data = []

    for line in lines:
        line = line.strip()
        if not line or line.startswith('#'):
            continue

        if line.startswith('LUT_3D_SIZE'):
            size = int(line.split()[1])
        elif line.startswith('DOMAIN_MIN'):
            domain_min = [float(x) for x in line.split()[1:]]
        elif line.startswith('DOMAIN_MAX'):
            domain_max = [float(x) for x in line.split()[1:]]
        else:
            parts = line.split()
            if len(parts) == 3:
                try:
                    rgb = [float(x) for x in parts]
                    # Normalize to [0, 1] based on DOMAIN
                    for i in range(3):
                        val = (rgb[i] - domain_min[i]) / (domain_max[i] - domain_min[i])
                        val = max(0.0, min(1.0, val))
                        # Convert to uint16 for higher precision
                        data.append(int(val * 65535.0 + 0.5))
                except ValueError:
                    continue

    if size == 0:
        print(f"Error: Could not find LUT_3D_SIZE in {cube_path}")
        return False

    expected_count = size * size * size * 3
    if len(data) != expected_count:
        print(f"Warning: Data count mismatch in {cube_path}. Expected {expected_count}, got {len(data)}")
        # If data is short, pad it
        if len(data) < expected_count:
            data.extend([0] * (expected_count - len(data)))
        # If data is long, truncate it
        elif len(data) > expected_count:
            data = data[:expected_count]

    with open(plut_path, 'wb') as f:
        # Magic
        f.write(b'PLUT')
        # Version
        f.write(struct.pack('<I', 1))
        # Size
        f.write(struct.pack('<I', size))
        # Data Type (1 = UINT16)
        f.write(struct.pack('<I', 1))
        # Data
        f.write(struct.pack(f'<{len(data)}H', *data))

    return True

def main():
    # Adjust path if needed
    base_dir = os.getcwd()
    lut_dir = os.path.join(base_dir, 'app', 'src', 'main', 'assets', 'raw')

    if not os.path.exists(lut_dir):
        print(f"Directory not found: {lut_dir}")
        return

    count = 0
    for filename in os.listdir(lut_dir):
        if filename.endswith('.cube'):
            cube_path = os.path.join(lut_dir, filename)
            plut_path = os.path.join(lut_dir, filename.replace('.cube', '.plut'))
            print(f"Converting {filename} -> {os.path.basename(plut_path)}...")
            if convert_cube_to_plut(cube_path, plut_path):
                count += 1

    print(f"Successfully converted {count} LUT files.")

if __name__ == '__main__':
    main()
