import os
import glob
import numpy as np
import colour

def batch_convert_rec709_to_srgb(input_dir, output_dir):
    """
    批量将 Rec.709 的 3D LUT 转换为 sRGB 的 3D LUT。
    """
    # 确保输出目录存在
    os.makedirs(output_dir, exist_ok=True)

    # 查找输入目录下所有的 .cube 文件
    lut_files = glob.glob(os.path.join(input_dir, "*.cube"))

    if not lut_files:
        print(f"在 {input_dir} 中没有找到 .cube 文件。")
        return

    for file_path in lut_files:
        filename = os.path.basename(file_path)
        output_path = os.path.join(output_dir, filename.replace(".cube", "_sRGB.cube"))

        print(f"正在处理: {filename} ...")

        # 1. 读取原始的 Rec.709 LUT
        lut_rec709 = colour.io.read_LUT(file_path)
        size = lut_rec709.size  # 获取 LUT 的精度，通常是 33 或 65

        # 2. 构建新 LUT 的标准 sRGB 输入网格 (定义域为 0.0 到 1.0)
        # np.meshgrid(..., indexing='ij') 确保生成的网格严格遵循 R, G, B 的多维数组顺序
        x = np.linspace(0, 1, size)
        R, G, B = np.meshgrid(x, x, x, indexing='ij')
        srgb_grid_in = np.stack([R, G, B], axis=-1) # Shape: (size, size, size, 3)

        # 3. 构造输入端转换 (sRGB -> Linear -> Rec.709)
        # 解开 sRGB 伽马得到线性光 (Scene Linear)
        linear_in = colour.cctf_decoding(srgb_grid_in, function='sRGB')

        # 压入 Rec.709 伽马
        # 注：如果你确定原 LUT 是基于 Gamma 2.4 监视器环境制作的，
        # 这里可以将 'ITU-R BT.709' 替换为 'ITU-R BT.1886'
        rec709_in = colour.cctf_encoding(linear_in, function='ITU-R BT.709')

        # 4. 核心：用转换后的 Rec.709 值去“采样”原始的 3D LUT
        # colour 库的 apply() 方法会自动处理非整数网格点上的三线性插值 (Trilinear Interpolation)
        rec709_out = lut_rec709.apply(rec709_in)

        # 5. 构造输出端转换 (Rec.709 -> Linear -> sRGB)
        linear_out = colour.cctf_decoding(rec709_out, function='ITU-R BT.709')
        srgb_out = colour.cctf_encoding(linear_out, function='sRGB')

        # 限制数值范围在 0.0 到 1.0 之间，防止越界导致移动端 Shader 渲染出现黑斑或噪点
        srgb_out = np.clip(srgb_out, 0.0, 1.0)

        # 6. 构建并保存全新的 sRGB LUT
        lut_srgb = colour.LUT3D(table=srgb_out, name=f"{lut_rec709.name}_sRGB")
        colour.io.write_LUT(lut_srgb, output_path)

        print(f"转换成功 -> {output_path}\n")

if __name__ == "__main__":
    base_dir = os.getcwd()
    lut_dir = os.path.join(base_dir, '..', 'app', 'src', 'main', 'assets', 'raw', 'flog2')

    print("开始执行 LUT 批量色彩空间转换...")
    batch_convert_rec709_to_srgb(lut_dir, lut_dir)
    print("全部完成！")