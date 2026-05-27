.class public final Lhac;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lhac;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhac;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lhac;
    .locals 2

    new-instance v0, Lhac;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lhac;-><init>(Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lhac;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Limg;

    invoke-virtual {v0}, Limg;->a()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ligo;

    invoke-direct {v1, v0}, Ligo;-><init>(Landroid/content/pm/PackageManager;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lhac;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldhw;->q:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lhac;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_0

    :cond_0
    new-instance v0, Lheg;

    invoke-direct {v0}, Lheg;-><init>()V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lhac;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v1, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lnou;)V

    return-object v1

    :pswitch_3
    iget-object v0, p0, Lhac;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    new-instance v1, Lhcy;

    invoke-direct {v1, v0}, Lhcy;-><init>(Lnou;)V

    return-object v1

    :pswitch_4
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lhbm;

    invoke-direct {v1, v0}, Lhbm;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lhbk;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lkns;

    invoke-direct {v1, v0}, Lkns;-><init>(Landroid/content/Context;)V

    return-object v1

    :pswitch_7
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v2, "pref_has_checked_lasagna_mode"

    invoke-virtual {v0, v2, v1}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v2, "pref_has_checked_cheetah_mode"

    invoke-virtual {v0, v2, v1}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_audio_zoom_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_zoom_out_command_string"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_zoom_in_command_string"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    new-instance v1, Lgzv;

    sget-object v2, Lgyr;->c:Lgyr;

    invoke-virtual {v2}, Lgyr;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_fps_cm_key"

    invoke-virtual {v0, v3, v2}, Ligo;->s(Ljava/lang/String;Ljava/lang/String;)Ljwb;

    move-result-object v0

    invoke-direct {v1, v0}, Lgzv;-><init>(Ljwb;)V

    return-object v1

    :pswitch_d
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    new-instance v1, Lgzv;

    sget-object v2, Lgyr;->c:Lgyr;

    invoke-virtual {v2}, Lgyr;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_fps_4k_key"

    invoke-virtual {v0, v3, v2}, Ligo;->s(Ljava/lang/String;Ljava/lang/String;)Ljwb;

    move-result-object v0

    invoke-direct {v1, v0}, Lgzv;-><init>(Ljwb;)V

    return-object v1

    :pswitch_e
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    new-instance v1, Lgzv;

    sget-object v2, Lgyr;->c:Lgyr;

    invoke-virtual {v2}, Lgyr;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_fps_key"

    invoke-virtual {v0, v3, v2}, Ligo;->s(Ljava/lang/String;Ljava/lang/String;)Ljwb;

    move-result-object v0

    invoke-direct {v1, v0}, Lgzv;-><init>(Ljwb;)V

    return-object v1

    :pswitch_f
    iget-object v0, p0, Lhac;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldil;->h:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lhpu;->a:Lhpu;

    goto :goto_1

    :cond_1
    sget-object v0, Lhpu;->b:Lhpu;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_switch_camera_command_string"

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_shutter_command_string"

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_camera_resolution"

    const-string v2, "full"

    invoke-virtual {v0, v1, v2}, Ligo;->s(Ljava/lang/String;Ljava/lang/String;)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lhac;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v2, "perf_has_run_second_education"

    invoke-virtual {v0, v2, v1}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

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
