.class public final Legr;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcvr;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Legr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legr;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Legr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legr;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Loiw;)Legr;
    .locals 2

    new-instance v0, Legr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Legr;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static b(Loiw;)Legr;
    .locals 2

    new-instance v0, Legr;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Legr;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Legr;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbc;

    invoke-static {}, Lewq;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lepl;

    invoke-direct {v2, v0, v1}, Lepl;-><init>(Lkbc;Ljava/util/concurrent/Executor;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lepc;

    invoke-direct {v1, v0}, Lepc;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkbc;

    new-instance v1, Lend;

    invoke-direct {v1, v0}, Lend;-><init>(Lkbc;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lelx;

    sget-object v1, Lelx;->f:Llpu;

    invoke-interface {v0, v1}, Lelx;->a(Llpu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcvr;

    invoke-direct {v2, v0, v1, v1}, Lcvr;-><init>(Landroid/content/Context;[B[B)V

    return-object v2

    :pswitch_5
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcvr;

    invoke-direct {v2, v0, v1}, Lcvr;-><init>(Landroid/content/Context;[C)V

    return-object v2

    :pswitch_6
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Lelq;

    invoke-virtual {v0}, Lelq;->a()Landroid/view/WindowManager;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1

    :pswitch_7
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lell;

    check-cast v0, Litk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lell;

    check-cast v0, Liao;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_imax_audio_enabled_key"

    invoke-virtual {v0, v1, v3}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Leht;

    invoke-virtual {v0}, Leht;->a()Lehs;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Leic;

    invoke-direct {v1, v0}, Leic;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_c
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leic;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_d
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekh;

    new-instance v1, Lekg;

    invoke-direct {v1}, Lekg;-><init>()V

    iput-object v0, v1, Lekg;->e:Lekh;

    invoke-virtual {v1}, Lekg;->f()V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    invoke-static {}, Lger;->o()Lgeq;

    move-result-object v1

    sget-object v4, Lgec;->v:Lgec;

    invoke-virtual {v1, v4}, Lgeq;->r(Lgec;)V

    const v4, 0x7f140229

    invoke-virtual {v1, v4}, Lgeq;->h(I)V

    invoke-virtual {v1, v4}, Lgeq;->c(I)V

    const/4 v4, 0x2

    new-array v5, v4, [Lgej;

    sget-object v6, Lgej;->ag:Lgej;

    aput-object v6, v5, v3

    sget-object v6, Lgej;->af:Lgej;

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lgeq;->n([Lgej;)V

    new-array v5, v4, [Ljava/lang/Integer;

    const v6, 0x7f14022a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const v6, 0x7f14022c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lgeq;->j([Ljava/lang/Integer;)V

    new-array v5, v4, [Ljava/lang/Integer;

    const v6, 0x7f14022b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const v6, 0x7f14022d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Lgeq;->e([Ljava/lang/Integer;)V

    new-array v4, v4, [Ljava/lang/Integer;

    const v5, 0x7f08035f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const v3, 0x7f080360

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Lgeq;->g([Ljava/lang/Integer;)V

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Ljwb;

    sget-object v2, Ldeo;->l:Ldeo;

    sget-object v3, Lgej;->af:Lgej;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcdu;

    const/16 v5, 0x11

    invoke-direct {v4, v3, v5}, Lcdu;-><init>(Lgej;I)V

    invoke-static {v0, v2, v4}, Ljwa;->b(Ljwb;Lmqi;Lmqi;)Ljwb;

    move-result-object v0

    iput-object v0, v1, Lgeq;->a:Ljwb;

    sget-object v0, Lika;->d:Lika;

    invoke-virtual {v1, v0}, Lgeq;->t(Lika;)V

    invoke-virtual {v1}, Lgeq;->a()Lger;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    new-instance v1, Lehu;

    invoke-direct {v1, v0}, Lehu;-><init>(Landroid/opengl/GLSurfaceView;)V

    return-object v1

    :pswitch_10
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Lehg;

    invoke-virtual {v0}, Lehg;->a()Lehf;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhq;->Y:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Liuu;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuu;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmza;->a:Lmza;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    check-cast v0, Lcvr;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_13
    iget-object v0, p0, Legr;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    sget-object v1, Ldeo;->k:Ldeo;

    invoke-virtual {v0, v1}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v0

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
