.class public final Lfnn;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfnn;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfsw;
    .locals 1

    new-instance v0, Lfsw;

    invoke-direct {v0}, Lfsw;-><init>()V

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    const-string v0, "DynamicSensorOrientationExecutor"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lfnn;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljvk;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    invoke-static {}, Lfnn;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljvk;

    sget-object v1, Lfta;->a:Lfta;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lfsy;

    invoke-direct {v0}, Lfsy;-><init>()V

    return-object v0

    :pswitch_3
    invoke-static {}, Lfnn;->a()Lfsw;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Lfrt;

    invoke-direct {v0}, Lfrt;-><init>()V

    return-object v0

    :pswitch_5
    const-string v0, "mv-highres-encoder"

    invoke-static {v0}, Lgdh;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :pswitch_6
    const-string v0, "mv-main-loop"

    invoke-static {v0}, Lgdh;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :pswitch_7
    const-string v0, "mts-launcher"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    const-string v0, "mts-analysis"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    const-string v0, "ls-highres-encoder"

    invoke-static {v0}, Lgdh;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :pswitch_a
    const-string v0, "mts-fast-hdr"

    invoke-static {v0}, Ljvd;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_b
    new-instance v0, Lgxb;

    sget-object v1, Lika;->t:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lgxb;

    sget-object v1, Lika;->i:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lgxb;

    sget-object v1, Lika;->c:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_e
    new-instance v0, Lgxb;

    sget-object v1, Lika;->n:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lgxb;

    sget-object v1, Lika;->f:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_10
    new-instance v0, Lgxb;

    sget-object v1, Lika;->e:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

    return-object v0

    :pswitch_11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_12
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    sget-object v0, Liva;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    sget-object v1, Liuz;->p:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    sget-object v2, Liuz;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    sget-object v3, Liva;->b:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v3}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    new-instance v4, Lfmr;

    invoke-direct {v4, v0, v1, v2, v3}, Lfmr;-><init>(Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;)V

    return-object v4

    :pswitch_13
    new-instance v0, Lgxb;

    sget-object v1, Lika;->p:Lika;

    invoke-direct {v0, v1}, Lgxb;-><init>(Lika;)V

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
