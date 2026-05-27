.class public final Lfiw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfiw;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/media/MediaFormat;
    .locals 3

    const-string v0, "audio/mp4a-latm"

    const v1, 0xbb80

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "aac-profile"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    sget v1, Ldxr;->a:I

    mul-int/lit8 v1, v1, 0xa

    const-string v2, "max-input-size"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "oo.muxer.force_sequential"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lfiw;->a:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    sget-object v0, Liva;->m:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lfmo;

    invoke-direct {v1, v0}, Lfmo;-><init>(Lj$/util/Optional;)V

    return-object v1

    :pswitch_0
    invoke-static {}, Lflb;->c()Lhrf;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljvk;

    sget-object v1, Ljwu;->a:Ljwu;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    new-instance v0, Ljvk;

    sget-object v1, Lcwx;->b:Lcwx;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_3
    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_4
    new-instance v0, Ljvk;

    invoke-direct {v0, v3}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    new-instance v0, Ljvk;

    sget-object v1, Lfmg;->a:Lfmg;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lfld;

    invoke-direct {v0}, Lfld;-><init>()V

    return-object v0

    :pswitch_7
    new-instance v0, Lfys;

    invoke-direct {v0}, Lfys;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Lfkg;

    invoke-direct {v0}, Lfkg;-><init>()V

    return-object v0

    :pswitch_9
    const-string v0, "feature.acmi.imu.camera-pose"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_a
    const-string v0, "feature.acmi.imu.camera-orientation"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_b
    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mv-timeout-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :pswitch_d
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object v0

    :pswitch_e
    new-instance v0, Ljvk;

    invoke-direct {v0, v3}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_f
    new-instance v0, Ljvk;

    invoke-direct {v0, v3}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_10
    invoke-static {}, Lfwt;->i()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-static {}, Lfiw;->a()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0

    :pswitch_12
    new-instance v0, Lbkb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lbkb;-><init>([B[B[S)V

    return-object v0

    :pswitch_13
    sget-object v0, Lfiq;->a:Lfiq;

    return-object v0

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
