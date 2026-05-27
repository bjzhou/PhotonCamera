.class public final Lims;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lims;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Limx;
    .locals 1

    new-instance v0, Limx;

    invoke-direct {v0}, Limx;-><init>()V

    return-object v0
.end method

.method public static final b()Ljza;
    .locals 2

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    new-instance v1, Ljza;

    invoke-direct {v1, v0}, Ljza;-><init>(Landroid/media/MediaRecorder;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lims;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkgi;

    invoke-direct {v0}, Lkgi;-><init>()V

    return-object v0

    :pswitch_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lkdb;

    invoke-direct {v0}, Lkdb;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera-Hndlr"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :pswitch_3
    const-string v0, "Camera-Ex"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_4
    new-instance v0, Lkba;

    invoke-direct {v0}, Lkba;-><init>()V

    return-object v0

    :pswitch_5
    throw v2

    :pswitch_6
    new-instance v0, Ljyx;

    invoke-direct {v0}, Ljyx;-><init>()V

    return-object v0

    :pswitch_7
    new-instance v0, Ljyx;

    invoke-direct {v0}, Ljyx;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Lkgd;

    invoke-direct {v0}, Lkgd;-><init>()V

    return-object v0

    :pswitch_9
    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_a
    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_b
    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    new-instance v0, Ligo;

    invoke-direct {v0, v2, v2}, Ligo;-><init>([B[B)V

    return-object v0

    :pswitch_d
    new-instance v0, Liqb;

    invoke-direct {v0}, Liqb;-><init>()V

    return-object v0

    :pswitch_e
    new-instance v0, Liox;

    invoke-direct {v0}, Liox;-><init>()V

    return-object v0

    :pswitch_f
    new-instance v0, Liov;

    invoke-direct {v0}, Liov;-><init>()V

    return-object v0

    :pswitch_10
    const-string v0, "VfeExecutor"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_11
    invoke-static {}, Lims;->a()Limx;

    move-result-object v0

    return-object v0

    :pswitch_12
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_13
    new-instance v0, Limq;

    invoke-direct {v0}, Limq;-><init>()V

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
