.class public final Lcla;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcla;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmrq;
    .locals 1

    sget-object v0, Lmpw;->a:Lmrq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static final b()Lmvv;
    .locals 5

    const-string v0, "on_shutter"

    const-string v1, "BOOL"

    invoke-static {v0, v1}, Lcnd;->a(Ljava/lang/String;Ljava/lang/String;)Lcnd;

    move-result-object v0

    invoke-static {v0}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "photo_mode"

    const-string v2, "INTEGER"

    invoke-static {v1, v2}, Lcnd;->a(Ljava/lang/String;Ljava/lang/String;)Lcnd;

    move-result-object v1

    invoke-static {v1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcmu;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcmu;-><init>(I)V

    new-instance v3, Lcmu;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcmu;-><init>(I)V

    const-string v4, "pixel_data"

    invoke-static {v4, v0, v3}, Lcne;->a(Ljava/lang/String;Lmvv;Lcmt;)Lcne;

    move-result-object v0

    const-string v3, "metadata"

    invoke-static {v3, v1, v2}, Lcne;->a(Ljava/lang/String;Lmvv;Lcmt;)Lcne;

    move-result-object v1

    invoke-static {v0, v1}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static c()Lcvr;
    .locals 2

    new-instance v0, Lcvr;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcvr;-><init>([B[B[B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcla;->a:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcwa;

    invoke-direct {v0}, Lcwa;-><init>()V

    return-object v0

    :pswitch_0
    new-instance v0, Lcgk;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcgk;-><init>(I)V

    return-object v0

    :pswitch_1
    sget-object v0, Lcka;->a:Lcka;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Lcvi;

    invoke-direct {v0}, Lcvi;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Lcvr;

    invoke-direct {v0, v2}, Lcvr;-><init>([B)V

    return-object v0

    :pswitch_4
    invoke-static {}, Lcla;->c()Lcvr;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Ldgw;

    invoke-direct {v0}, Ldgw;-><init>()V

    return-object v0

    :pswitch_6
    new-instance v0, Lcrb;

    invoke-direct {v0}, Lcrb;-><init>()V

    return-object v0

    :pswitch_7
    new-instance v0, Lcpg;

    invoke-direct {v0}, Lcpg;-><init>()V

    return-object v0

    :pswitch_8
    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_9
    const-string v0, "VidMedCod"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljvd;->i(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :pswitch_a
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "f250"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :pswitch_b
    const-string v0, "feature.brella.frame.low-res"

    invoke-static {v0}, Ldsx;->b(Ljava/lang/String;)Ldsx;

    move-result-object v0

    return-object v0

    :pswitch_c
    throw v2

    :pswitch_d
    new-instance v0, Lcvr;

    invoke-direct {v0, v2}, Lcvr;-><init>([C)V

    return-object v0

    :pswitch_e
    invoke-static {}, Lcla;->a()Lmrq;

    move-result-object v0

    new-instance v1, Lmpa;

    invoke-direct {v1, v0}, Lmpa;-><init>(Lmrq;)V

    return-object v1

    :pswitch_f
    invoke-static {}, Lcla;->a()Lmrq;

    move-result-object v0

    return-object v0

    :pswitch_10
    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_11
    new-instance v0, Ljvk;

    sget-object v1, Lclj;->a:Lclj;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_12
    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_13
    new-instance v0, Lcvr;

    invoke-direct {v0, v2, v2}, Lcvr;-><init>([B[C)V

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
