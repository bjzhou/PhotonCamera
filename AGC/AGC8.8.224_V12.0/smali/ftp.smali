.class public final Lftp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lftp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const-string v0, "CameraEx"

    invoke-static {v0}, Ljvd;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static final b()Lfxx;
    .locals 1

    new-instance v0, Lfxx;

    invoke-direct {v0}, Lfxx;-><init>()V

    return-object v0
.end method

.method public static c(Loiw;)Lftp;
    .locals 1

    new-instance p0, Lftp;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lftp;-><init>(I)V

    return-object p0
.end method

.method public static d()Lgfp;
    .locals 1

    new-instance v0, Lgfp;

    invoke-direct {v0}, Lgfp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lftp;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lfzp;->a(Ljava/lang/Float;Landroid/util/Pair;)Lfzp;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljvk;

    new-instance v2, Lift;

    new-array v1, v1, [Landroid/hardware/camera2/params/Face;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const-wide/16 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lift;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;J)V

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    new-instance v0, Ljvk;

    sget-object v1, Lnru;->b:Lnru;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Lfze;

    invoke-direct {v0}, Lfze;-><init>()V

    return-object v0

    :pswitch_6
    invoke-static {}, Lftp;->b()Lfxx;

    move-result-object v0

    return-object v0

    :pswitch_7
    new-instance v0, Lfwj;

    invoke-direct {v0}, Lfwj;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Lfvt;

    invoke-direct {v0}, Lfvt;-><init>()V

    return-object v0

    :pswitch_9
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    return-object v0

    :pswitch_a
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/Globals;->getNoiseVfMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    return-object v0

    :pswitch_b
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v0, v1}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-static {v2}, Ljvw;->g(Ljava/lang/Object;)Ljvs;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-static {}, Lftp;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-static {}, Lftp;->d()Lgfp;

    move-result-object v0

    return-object v0

    :pswitch_f
    new-instance v0, Lfue;

    invoke-direct {v0}, Lfue;-><init>()V

    return-object v0

    :pswitch_10
    new-instance v0, Lgxb;

    invoke-direct {v0, v3}, Lgxb;-><init>([B)V

    return-object v0

    :pswitch_11
    new-instance v0, Ljvk;

    sget-object v1, Lfua;->a:[Landroid/hardware/camera2/params/MeteringRectangle;

    sget-object v1, Lftz;->a:Lfua;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_12
    new-instance v0, Ldqx;

    invoke-direct {v0}, Ldqx;-><init>()V

    return-object v0

    :pswitch_13
    new-instance v0, Lbkb;

    invoke-direct {v0, v3, v3}, Lbkb;-><init>([C[S)V

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
