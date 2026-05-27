.class final Lkiw;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Lkoe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lkoe;->a()Lkoe;

    move-result-object v0

    sput-object v0, Lkiw;->b:Lkoe;

    return-void
.end method

.method public static a(Lkkb;Landroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-static {p0, v0}, Lkiw;->b(Lkkb;Landroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p0, "OutputConfigs"

    const-string p1, "The illegal argument may be caused by invalid surface."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static b(Lkkb;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 4

    iget-boolean v0, p0, Lkkb;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Physical camera ids are only available on Android P and greater."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Lkkb;->f:Lkll;

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lkkb;->h:Lkfl;

    iget-wide v0, p0, Lkfl;->l:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    sget-object p0, Lkiw;->b:Lkoe;

    iget-boolean p0, p0, Lkoe;->f:Z

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->setDynamicRangeProfile(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
