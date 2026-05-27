.class public final Ledu;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Ledu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Ledu;->a:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lgxb;->q()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Lgxb;->s()Ljava/util/Timer;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3
    new-instance v0, Leir;

    invoke-direct {v0}, Leir;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Lcvr;

    invoke-direct {v0, v3, v3}, Lcvr;-><init>([B[S)V

    return-object v0

    :pswitch_5
    sget-object v0, Liva;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liva;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v5}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmza;->a:Lmza;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_6
    sget-object v0, Liuz;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_1

    sget-object v0, Liuz;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v2}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmza;->a:Lmza;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    return-object v0

    :pswitch_8
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :pswitch_9
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    return-object v0

    :pswitch_a
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_b
    new-instance v0, Ljvk;

    invoke-direct {v0, v5}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    invoke-static {}, Lemq;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Liuw;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lfwt;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lfwn;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lmza;->a:Lmza;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_d
    new-instance v0, Ljvk;

    invoke-direct {v0, v5}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_e
    new-instance v0, Ljvk;

    invoke-direct {v0, v5}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_f
    new-instance v0, Ljvk;

    invoke-direct {v0, v2}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_10
    new-instance v0, Ljvk;

    invoke-direct {v0, v5}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lcvr;

    invoke-direct {v0, v3, v3, v3, v3}, Lcvr;-><init>([B[B[B[C)V

    return-object v0

    :pswitch_12
    new-instance v0, Ljvk;

    invoke-direct {v0, v5}, Ljvk;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_13
    new-instance v0, Ljvk;

    const v1, -0x3b864000    # -999.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

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
