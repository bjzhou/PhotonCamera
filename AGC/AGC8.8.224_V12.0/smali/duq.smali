.class public final Lduq;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lduq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldin;
    .locals 1

    sget-object v0, Ldin;->d:Ldin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static final b()Ldzn;
    .locals 2

    new-instance v0, Ldzn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldzn;-><init>(I)V

    return-object v0
.end method

.method public static final c()Ldzn;
    .locals 2

    new-instance v0, Ldzn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldzn;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lduq;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lgba;

    invoke-direct {v0, v1}, Lgba;-><init>(I)V

    return-object v0

    :pswitch_0
    invoke-static {}, Lemq;->b()V

    new-instance v0, Lnsb;

    invoke-direct {v0}, Lnsb;-><init>()V

    return-object v0

    :pswitch_1
    invoke-static {}, Lebq;->b()Lnrz;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Lece;

    invoke-direct {v0}, Lece;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Ljvk;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_4
    const-string v0, "ois-exec"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_5
    invoke-static {}, Lece;->c()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {}, Lduq;->b()Ldzn;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static {}, Lduq;->c()Ldzn;

    move-result-object v0

    return-object v0

    :pswitch_8
    new-instance v0, Ldym;

    invoke-direct {v0}, Ldym;-><init>()V

    return-object v0

    :pswitch_9
    new-instance v0, Ldyk;

    invoke-direct {v0}, Ldyk;-><init>()V

    return-object v0

    :pswitch_a
    new-instance v0, Lbkc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbkc;-><init>([I)V

    return-object v0

    :pswitch_b
    new-instance v0, Ldye;

    invoke-direct {v0}, Ldye;-><init>()V

    return-object v0

    :pswitch_c
    sget-object v0, Liuy;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuy;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lfwt;->e()Lfwn;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_d
    new-instance v0, Ldxg;

    invoke-direct {v0}, Ldxg;-><init>()V

    return-object v0

    :pswitch_e
    const-string v0, "meta-store-exec"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_f
    const-string v0, "frame-store-resource-manager-exec"

    invoke-static {v0}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    const-string v0, "audio-frame-enc"

    invoke-static {v0}, Ljvd;->j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-static {}, Lduq;->a()Ldin;

    move-result-object v0

    return-object v0

    :pswitch_12
    const-string v0, "feature.acmi.image.face-quality"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_13
    const-string v0, "feature.acmi.image.subject-motion"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

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
