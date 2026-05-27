.class public Lcom/google/android/apps/camera/jni/gxp/GxpUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/jni/gxp/GxpUtils"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a:Lnak;

    return-void
.end method

.method public static a()Z
    .locals 6

    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->getVersionNative()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget v1, v0, v2

    aget v1, v0, v3

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v4, "Error loading version: %s"

    const/16 v5, 0x645

    invoke-static {v1, v4, v0, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    new-array v0, v2, [I

    :goto_0
    array-length v1, v0

    if-le v1, v3, :cond_3

    aget v1, v0, v2

    if-gt v1, v3, :cond_2

    if-ne v1, v3, :cond_1

    aget v0, v0, v3

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->releaseNative()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Error releasing."

    const/16 v3, 0x644

    invoke-static {v0, v1, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_4
    return v2
.end method

.method static native getVersionNative()[I
.end method

.method static native releaseNative()Z
.end method
