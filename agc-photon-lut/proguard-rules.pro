# 保持宿主直接调用的桥梁类及所有方法名、字段不被混淆
-keep class com.hinnka.mycamera.agc.PhotonAgcBridge {
    *;
}

# 保持反射所需的关键属性与元数据（如泛型签名、注解、内部类等），确保 Compose 框架反射和序列化正常
-keepattributes Signature,Annotation*,EnclosingMethod,InnerClasses,SourceFile,LineNumberTable

# 保持所有 ViewModel 子类及其构造函数不被混淆和优化（因为 ViewModelProvider 运行时需反射调用其构造函数）
-keep class * extends androidx.lifecycle.ViewModel {
    <init>(...);
}

# 保持整个生命周期体系不被部分重命名或剔除，维护 ART 校验一致性，防止 VerifyError
-keep class androidx.lifecycle.** { *; }

# 保持插件 R$string 类及其成员不被优化、剥离或混淆，以支持反射映射到本地字典
-keep class com.hinnka.mycamera.R$string {
    public static final int *;
}

-keep class com.hinnka.mycamera.agc.FilePickerProxyActivity { *; }