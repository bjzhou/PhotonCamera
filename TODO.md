# TODO List

- [x] 系统相册跟随删除
- [x] 鸿蒙适配
- [x] 滤镜面板自动关闭
- [x] 对焦
- [x] 相册导入照片方向处理
- [x] 开发者选项多语言
- [x] 批量导入
- [x] LUT自定义命名
- [x] 静音拍照添加震动
- [x] 定制水印
- [x] 影调配方
- [x] 闪光灯异常
- [x] 关闭锐化降噪
- [x] 水印定制持久化
- [x] 边框定制(5203...)
- [x] LUT顺序、编辑
- [x] 降噪等级
- [x] 音量键曝光补偿
- [x] LUT分类
- [x] 摄像头方向修正
- [x] 水印 LOGO 缺少
- [x] 焦段多余
- [x] 捐赠入口
- [ ] 屏幕调整曝光
- [ ] 默认焦段
- [ ] 云空间
- [ ] 双指缩放调整焦段
- [ ] AI构图
- [ ] 视频拍摄

# RAW 处理

- [ ] 预览流与最终成像一致
- [ ] 全流程 RAW 处理管线
- [x] 高光压制
- [ ] 降噪
- [x] 旋转方向不对
- [ ] 未数码裁切

# 竞品参考

* AGC ToolKit Pro
* DAZZ
* varlens
* kapi

# Crashes

* Pixel 7 Android 16 - 拍照后预览黑屏
* Pixel 7 Android 16 - 切换摄像头闪退


if (warmMask > 0.0) {
// 6.2.1 "去脏"：只在一定范围内应用，避免把鲜艳的红色变黑
color.b = mix(color.b, color.b * 0.85, warmMask * strength);
// 6.2.2 密度调整
color.g = mix(color.g, color.g * 0.95, warmMask * strength);
// 6.2.3 胶片感增强：使用非线性缩放而不是简单的乘法，保护亮度
vec3 sCurve = color * color * (3.0 - 2.0 * color);
color = mix(color, sCurve, warmMask * strength * 0.2);
}