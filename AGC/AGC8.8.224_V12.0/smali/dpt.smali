.class public final Ldpt;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldpt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lksm;
    .locals 1

    new-instance v0, Lksm;

    invoke-direct {v0}, Lksm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ldpt;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "feature.acmi.camera.face-position-quality"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "feature.acmi.image.face-familiarity"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "feature.acmi.image.aesthetic"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-string v0, "feature.acmi.imu.sensor-accelerometer"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_3
    const-string v0, "feature.acmi.imu.frame-gyro"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-string v0, "feature.acmi.camera.lens-stability"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-string v0, "feature.acmi.camera.face-count"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_6
    const-string v0, "feature.acmi.camera.awb-stability"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-string v0, "feature.acmi.camera.af-stability"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "feature.acmi.camera.ae-stability"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {}, Ldpt;->a()Lksm;

    move-result-object v0

    return-object v0

    :pswitch_a
    new-instance v0, Ljul;

    const-string v1, "GpuFaceObfus"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_b
    invoke-static {}, Ldre;->a()Lfwx;

    move-result-object v0

    return-object v0

    :pswitch_c
    sget-object v0, Ldrl;->a:Ldrl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_d
    invoke-static {}, Ldre;->e()Lfwx;

    move-result-object v0

    return-object v0

    :pswitch_e
    new-instance v0, Ljul;

    const-string v1, "FaceDeblur"

    invoke-static {v1}, Ljvd;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_f
    const-string v0, "VsprAtvClbck"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    new-instance v0, Ljul;

    const-string v1, "GpuFaceBeau"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :pswitch_11
    invoke-static {}, Ldnf;->c()Lfwx;

    move-result-object v0

    return-object v0

    :pswitch_12
    new-instance v0, Ljvk;

    sget-object v1, Ldoh;->a:Ldoh;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_13
    new-instance v0, Ljul;

    const-string v1, "FaceBeau"

    invoke-static {v1}, Ljvd;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Ljul;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
