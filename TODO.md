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
- [ ] 闪光灯异常
- [ ] 影调配方
- [ ] 水印定制持久化
- [ ] 边框定制(5203...)
- [ ] 关闭锐化降噪
- [ ] raw 格式照片处理 / Halide
- [ ] 视频拍摄

# 竞品参考

* AGC ToolKit Pro
* DAZZ
* varlens
* kapi

# Crashes

* 01-15 19:03:30.760 18622 18622 E AndroidRuntime: FATAL EXCEPTION: main
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: Process: com.hinnka.mycamera, PID: 18622
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: java.lang.IllegalStateException: Cannot transition entry that is not in the back stack
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.navigation.internal.NavControllerImpl.prepareForTransition$navigation_runtime_release(NavControllerImpl.kt:293)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.navigation.NavController$NavControllerNavigatorState.prepareForTransition(NavController.android.kt:149)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.navigation.compose.ComposeNavigator.prepareForTransition(ComposeNavigator.kt:77)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.navigation.compose.NavHostKt$NavHost$25$1.invokeSuspend(NavHost.kt:529)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.navigation.compose.NavHostKt$NavHost$25$1.invoke(Unknown Source:8)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.navigation.compose.NavHostKt$NavHost$25$1.invoke(Unknown Source:4)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1.invokeSuspend(PredictiveBackHandler.kt:227)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at kotlin.coroutines.jvm.internal.BaseContinuationImpl.resumeWith(ContinuationImpl.kt:34)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at kotlinx.coroutines.DispatchedTask.run(DispatchedTask.kt:101)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.compose.ui.platform.AndroidUiDispatcher.performTrampolineDispatch(AndroidUiDispatcher.android.kt:79)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.compose.ui.platform.AndroidUiDispatcher.access$performTrampolineDispatch(AndroidUiDispatcher.android.kt:41)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at androidx.compose.ui.platform.AndroidUiDispatcher$dispatchCallback$1.run(AndroidUiDispatcher.android.kt:57)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at android.os.Handler.handleCallback(Handler.java:1051)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at android.os.Handler.dispatchMessage(Handler.java:107)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at android.os.Looper.loopOnce(Looper.java:266)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at android.os.Looper.loop(Looper.java:361)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at android.app.ActivityThread.main(ActivityThread.java:10344)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at java.lang.reflect.Method.invoke(Native Method)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:675)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:1002)
  01-15 19:03:30.760 18622 18622 E AndroidRuntime: 	Suppressed: kotlinx.coroutines.internal.DiagnosticCoroutineContextException: [androidx.compose.ui.platform.MotionDurationScaleImpl@5920955, androidx.compose.runtime.BroadcastFrameClock@ac40f6a, StandaloneCoroutine{Cancelling}@8290c5b, AndroidUiDispatcher@4a02cf8]