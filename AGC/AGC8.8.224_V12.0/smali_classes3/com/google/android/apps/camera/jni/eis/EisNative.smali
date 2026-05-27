.class public final Lcom/google/android/apps/camera/jni/eis/EisNative;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/apps/camera/jni/eis/EisNative;

    invoke-static {v0}, Lkak;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createHandle(IIIFZILjava/lang/String;)J
.end method

.method public static native getNumOfFramesToLookAhead(J)I
.end method

.method public static native getNumStrips(J)I
.end method

.method public static native isTripodMode(J)Z
.end method

.method public static native processFrame(J[BIIJJJJFFFZJ[F[F[FIZ)J
.end method

.method public static native processGyro(JFFFJ)Z
.end method

.method public static native processLensOffset(JFFJI)Z
.end method

.method public static native releaseHandle(J)V
.end method

.method public static native setActiveArraySize(JII)V
.end method

.method public static native setCropWindowSize(JII)V
.end method

.method public static native setStabilizationStrength(JF)V
.end method
