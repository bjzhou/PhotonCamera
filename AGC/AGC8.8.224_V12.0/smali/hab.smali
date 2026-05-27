.class public final Lhab;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->a:Loiw;

    iput-object p2, p0, Lhab;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->b:Loiw;

    iput-object p2, p0, Lhab;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[C)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->b:Loiw;

    iput-object p2, p0, Lhab;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[F)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->b:Loiw;

    iput-object p2, p0, Lhab;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[I)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->b:Loiw;

    iput-object p2, p0, Lhab;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[S)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->b:Loiw;

    iput-object p2, p0, Lhab;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[Z)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->b:Loiw;

    iput-object p2, p0, Lhab;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[B)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->b:Loiw;

    iput-object p2, p0, Lhab;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[[C)V
    .locals 0

    iput p3, p0, Lhab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhab;->b:Loiw;

    iput-object p2, p0, Lhab;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lhab;
    .locals 2

    new-instance v0, Lhab;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p1, v1}, Lhab;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lhab;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhab;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuh;

    iget-object v1, p0, Lhab;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    new-instance v2, Lhjb;

    invoke-direct {v2, v0}, Lhjb;-><init>(Ljuh;)V

    iget-object v0, v2, Lhjb;->d:Lnph;

    new-instance v3, Lgij;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v4}, Lgij;-><init>(Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;I)V

    invoke-static {v0, v3}, Ljvd;->s(Lnou;Ljzs;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lhab;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgy;

    iget-object v1, p0, Lhab;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkbc;

    new-instance v2, Lhhb;

    invoke-direct {v2, v0, v1}, Lhhb;-><init>(Lhgy;Lkbc;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lhab;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lhab;->a:Loiw;

    sget-object v2, Ldho;->bc:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lest;

    invoke-virtual {v1}, Lest;->a()Lmqp;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lhab;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lhab;->a:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfse;

    new-instance v3, Lhdc;

    check-cast v0, Lhsh;

    invoke-direct {v3, v0, v2, v1}, Lhdc;-><init>(Lhsh;Lfse;[B)V

    return-object v3

    :pswitch_3
    iget-object v0, p0, Lhab;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lhab;->b:Loiw;

    check-cast v2, Ldmf;

    invoke-virtual {v2}, Ldmf;->a()Ldne;

    move-result-object v2

    check-cast v0, Lhsh;

    invoke-virtual {v2}, Ldne;->j()V

    new-instance v2, Lhbz;

    invoke-direct {v2, v0, v1}, Lhbz;-><init>(Lhsh;[B)V

    invoke-static {v2}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lhab;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    iget-object v1, p0, Lhab;->b:Loiw;

    check-cast v1, Ldmf;

    invoke-virtual {v1}, Ldmf;->a()Ldne;

    move-result-object v1

    invoke-virtual {v1}, Ldne;->j()V

    new-instance v1, Lhcm;

    invoke-direct {v1, v0}, Lhcm;-><init>(Lnou;)V

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lhab;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lhab;->b:Loiw;

    check-cast v0, Ldkv;

    invoke-virtual {v0}, Ldkv;->a()Lbkc;

    move-result-object v3

    new-instance v0, Ldja;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldja;-><init>(Landroid/content/Context;Lbkc;[B[B[B[B)V

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lhab;->a:Loiw;

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhq;->L:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    invoke-static {v1}, Lcom/agc/AdvancedSettings;->getFixShastaZSL(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgjl;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_1
    return-object v0

    :pswitch_7
    iget-object v0, p0, Lhab;->a:Loiw;

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldib;->F:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgjl;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_2
    return-object v0

    :pswitch_8
    iget-object v0, p0, Lhab;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcjl;

    invoke-direct {v2, v0, v1}, Lcjl;-><init>(Ljvs;Ljava/util/concurrent/Executor;)V

    return-object v2

    :pswitch_9
    iget-object v0, p0, Lhab;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcjl;

    invoke-direct {v2, v0, v1}, Lcjl;-><init>(Ljvs;Ljava/util/concurrent/Executor;)V

    return-object v2

    :pswitch_a
    iget-object v0, p0, Lhab;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lhab;->a:Loiw;

    check-cast v1, Lgzo;

    invoke-virtual {v1}, Lgzo;->a()Ligo;

    move-result-object v1

    sget-object v3, Ldim;->a:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pref_chameleon_control_key"

    invoke-virtual {v1, v0, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    goto :goto_3

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v0

    :goto_3
    return-object v0

    :pswitch_b
    iget-object v0, p0, Lhab;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyw;

    new-instance v2, Lgzw;

    invoke-virtual {v1}, Lgyw;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_video_resolution"

    invoke-virtual {v0, v3, v1}, Ligo;->s(Ljava/lang/String;Ljava/lang/String;)Ljwb;

    move-result-object v0

    invoke-direct {v2, v0}, Lgzw;-><init>(Ljwb;)V

    return-object v2

    :pswitch_c
    iget-object v0, p0, Lhab;->b:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lhab;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfbz;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Leln;

    invoke-direct {v5, v0}, Leln;-><init>(Landroid/content/Context;)V

    new-instance v0, Lfbw;

    invoke-direct {v0, v5, v1, v3}, Lfbw;-><init>(Lelx;Lfbz;I)V

    new-instance v1, Lfbv;

    invoke-direct {v1, v0, v4}, Lfbv;-><init>(Lelx;Ljava/util/concurrent/TimeUnit;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lfbw;

    invoke-direct {v3, v0, v1, v2}, Lfbw;-><init>(Ljava/util/HashMap;Lelx;I)V

    return-object v3

    :pswitch_d
    iget-object v0, p0, Lhab;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldho;->bb:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const-string v2, "pref_camera_selfie_mirror_key"

    invoke-virtual {v0, v2, v1}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lhab;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lhab;->a:Loiw;

    check-cast v1, Lgzo;

    invoke-virtual {v1}, Lgzo;->a()Ligo;

    move-result-object v1

    sget-object v2, Ldhy;->r:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string v0, "pref_camera_raw_output_option_available_key"

    invoke-virtual {v1, v0, v3}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    :goto_4
    return-object v0

    :pswitch_f
    iget-object v0, p0, Lhab;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    iget-object v1, p0, Lhab;->b:Loiw;

    check-cast v1, Lcmj;

    invoke-virtual {v1}, Lcmj;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "pref_mode_vesperad_option"

    invoke-virtual {v0, v2, v1}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lhab;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lhab;->a:Loiw;

    check-cast v1, Lgzo;

    invoke-virtual {v1}, Lgzo;->a()Ligo;

    move-result-object v1

    sget-object v3, Ldhq;->am:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "pref_camera_kepler_enabled_key"

    invoke-virtual {v1, v0, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    goto :goto_5

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v0

    :goto_5
    return-object v0

    :pswitch_11
    iget-object v0, p0, Lhab;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhq;->Y:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v4}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v0

    goto :goto_6

    :cond_6
    const-string v1, "pref_camera_hdrplus_option_available_key"

    invoke-virtual {v0, v1, v3}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    :goto_6
    return-object v0

    :pswitch_12
    iget-object v0, p0, Lhab;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcjl;

    invoke-direct {v2, v0, v1}, Lcjl;-><init>(Ljvs;Ljava/util/concurrent/Executor;)V

    return-object v2

    :pswitch_13
    iget-object v0, p0, Lhab;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    iget-object v1, p0, Lhab;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhf;->b:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v4}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v0

    goto :goto_7

    :cond_7
    const-string v1, "key_ff_opt_in"

    invoke-virtual {v0, v1, v3}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    :goto_7
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
