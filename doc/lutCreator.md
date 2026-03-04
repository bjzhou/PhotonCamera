# LUT制作

新增一个 LUT 制作页面，用户可以选择一张或者多张相同风格的照片，点击生成按钮后生成一个相同风格的 LUT 并导入到 App 内，支持为 LUT 命名，支持导出 LUT

制作 LUT 的色彩空间： oklch
制作 LUT 的数据结构：
```json
{
  "color_features": {
    
    // 1. 全局影调映射 (Global Tone Mapping)
    // 决定画面的明暗分布和对比度，通常映射为 -1.0 到 1.0 的归一化浮点数
    "tone": {
      "exposure": 0.15,       // 曝光偏移
      "contrast": 0.30,       // 全局对比度
      "highlights": -0.20,    // 高光压制 (Highlight Roll-off，胶片感关键)
      "shadows": 0.10,        // 暗部提亮
      "white_point": -0.05,   // 白点偏移 (如褪色效果)
      "black_point": 0.08     // 黑点抬升 (Fade 效果，日系/复古必备)
    },

    // 2. 全局色彩平衡 (Global Color Balance)
    // 控制画面的基础色温和色偏
    "balance": {
      "temperature": -0.4,    // 色温冷暖 (负值为冷/蓝，正值为暖/黄)
      "tint": 0.2             // 色调偏移 (负值为绿，正值为洋红)
    },

    // 3. 分区调色 / 交叉色彩 (Split Toning / Color Wheels)
    // 将色彩注入到特定的亮度区间，这是建立“风格记忆色”的核心
    // OKLCH
    "split_toning": {
      "shadows": {
        "hue": 210,           // 暗部偏蓝青色 (0-360)
        "saturation": 0.4     // 注入的色彩浓度 (0.0 - 1.0)
      },
      "midtones": {
        "hue": 0,             // 中灰区域
        "saturation": 0.0
      },
      "highlights": {
        "hue": 35,            // 高光偏暖橙色
        "saturation": 0.25
      }
    },

    // 4. HSL 专项色彩偏移 (Targeted HSL Shifts)
    // 针对特定颜色的精确打击，例如“徕卡红”、“富士绿”或“赛博朋克青”
    // OKLCH
    "hsl_shifts": {
      "red":    { "h_shift": 5.0,  "s_shift": 0.1,  "l_shift": -0.05 },
      "orange": { "h_shift": 0.0,  "s_shift": -0.1, "l_shift": 0.1 },
      "yellow": { "h_shift": 0.0,  "s_shift": 0.0, "l_shift": 0.0 },
      "green":  { "h_shift": 15.0, "s_shift": -0.2, "l_shift": -0.1 },
      "cyan":   { "h_shift": -10.0,"s_shift": 0.4,  "l_shift": 0.2 },
      "blue":   { "h_shift": -5.0, "s_shift": 0.3,  "l_shift": 0.0 },
      "purple":   { "h_shift": 0.0, "s_shift": 0.0,  "l_shift": 0.0 },
      "magenta":   { "h_shift": 0.0, "s_shift": 0.0,  "l_shift": 0.0 }
    },

    // 5. 枢纽曲线控制点 (Spline Curve Control Points) [进阶]
    // 用少量控制点 (如 3-5 个点) 描述 RGB 曲线，而不是直接输出曲线数组
    // [x, y] 表示输入和输出的映射
    "curves": {
      "luma": [[0.0, 0.05], [0.3, 0.25], [0.7, 0.8], [1.0, 0.95]], // 典型 S 型胶片曲线
      "red":  [[0.0, 0.0], [0.5, 0.5], [1.0, 1.0]],
      "green":[[0.0, 0.0], [0.5, 0.5], [1.0, 1.0]],
      "blue": [[0.0, 0.08], [0.5, 0.45], [1.0, 0.9]]               // 暗部加蓝，高光减蓝
    }
  }
}
```

从用户提供的图片中分析出以上数据，并最终通过插值得到一个 33x33x33 的 LUT 文件