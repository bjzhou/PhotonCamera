# 多帧拍摄 AF 等待与请求归属

## 问题证据

2026-09-06，PMA110。11:35、11:57 的连续拍摄记录均出现：

1. 第一张从 `CONTINUOUS_PICTURE / PASSIVE_FOCUSED` 冻结当前焦点。
2. 第二张从 `INACTIVE` 发送连续对焦模式的 START，约 166 ms 后返回
   `NOT_FOCUSED_LOCKED`；拍完发送 CANCEL 恢复预览。
3. 第三张从 `PASSIVE_SCAN` 发送 START，AF 状态持续为 1，直到 1200 ms 超时。

12:09:41.985–12:09:43.184 的复现期间，frame 338–373 持续返回预览结果，
`lensState=0`、焦距 `3.0773017` 保持不变。等待发生在曝光之前，与 YUV 融合耗时分开。
镜头瞬时静止不代表 AF 已完成，不能据此把 `PASSIVE_SCAN` 当成锁定状态。

根据 [Camera2 AF 状态转换表](https://developer.android.com/reference/android/hardware/camera2/CaptureResult#CONTROL_AF_STATE)，
连续照片模式在 PASSIVE_SCAN 时收到 START，会等待当前被动扫描得出结果；
AUTO 模式收到 START 则发起一次主动扫描，切换模式的同一个请求可以携带 START。
日志能确认旧代码受阻于这条被动扫描等待路径，不能单凭这些日志确定 HAL 内部为何未完成扫描。

## 请求顺序

- 已有锁定或已完成的连续对焦仍按原规则复用；镜头移动时不能越过对焦检查。
- 确实需要 AF 触发时，连续模式在设备支持 AUTO 的前提下切为 AUTO，再发送一次 START；
  MACRO/AUTO 和不支持 AUTO 的设备保持已有模式。
- 持续预览只发送该模式的 IDLE。START 请求带 generation 标签，并记录实际开始帧号。
  等待逻辑只接收从该帧开始、请求与结果 AF 模式一致的回调；可选结果模式缺失时以请求为准。
- 最新结果可能仍来自前一张 AF_OFF 连拍，因此拍照时以当前预览请求的 AF 模式为准，
  不复用另一模式下的旧 AF 锁定状态。
- 拍摄持有焦点期间，预览参数更新及闪光预热沿用本次 AF 模式/固定焦距。
  连拍完成后清理 pending、timeout 和快照，再恢复预览的连续对焦。
- 触发请求失败或中止时立即进入已有的失败处理，不等待一个已不可能完成的触发。
  真正的 AF 扫描仍保留原来的 1200 ms 超时边界。

## 验证与日志

本地 `MultiFrameFocusLockPolicyTest` 的 13 项测试通过，覆盖能力选择、旧帧拒绝、
模式不一致、触发帧直接锁定、镜头移动和既有焦点复用；`assembleDefaultDebug` 通过。
未在手机运行 Android Test。

诊断日志包括 `Waiting for multi-frame AF lock`、`Multi-frame AF trigger started`、
`Multi-frame AF observation`、`Multi-frame AF locked` 和 `Capture preview restored`。
通过 generation、sequence、frame、mode 和 elapsedMs 区分请求提交延迟、扫描与锁定等待。

设备回归需连续拍摄至少 6 张，分别检查第 3、6 张，并确认需要对焦时返回实际锁定状态，
没有通过超时后的固定焦点分支绕过 AF。
