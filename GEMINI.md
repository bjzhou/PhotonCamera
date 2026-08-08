| 阶段 | 上次 | 现在 | 结论 |
|---|---:|---:|---|
| strength 坐标缩放 | 761ms | 7ms | native OpenMP 优化成功 |
| strength readback enqueue | 651ms | 643ms | 基本没变 |
| strength diagnostics | 未拆分 | 159ms | Kotlin 全量扫描偏重 |
| strength AOT | 未拆分 | 14ms | 不是瓶颈 |
| Spatial merge 总计 | 959ms | 1026ms | 基本稳定 |
| 默认降噪 | 1636ms | 2122ms | 本次 GPU 等待明显增加 |
| Profile / Render | 600 / 521ms | 798 / 802ms | GPU/带宽整体偏慢 |