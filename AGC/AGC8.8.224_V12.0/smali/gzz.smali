.class public final Lgzz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lgzz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgzz;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lgzz;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "key_promote_launch_wear"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_switch_to_previous_mode_command_string"

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lgzz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzn;

    new-instance v1, Lcvr;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcvr;-><init>([B[B[B[B)V

    sget-object v2, Lgzd;->v:Lgzu;

    invoke-interface {v0, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcvr;->v(Ljwb;)V

    sget-object v2, Lgzd;->w:Lgzu;

    invoke-interface {v0, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcvr;->v(Ljwb;)V

    sget-object v2, Lgzd;->x:Lgzu;

    invoke-interface {v0, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcvr;->v(Ljwb;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "perf_has_shown_options_bar"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_switch_to_next_mode_command_string"

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_has_shown_longp_education"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    iget-object v1, v0, Ligo;->b:Ljava/lang/Object;

    check-cast v1, Lgzi;

    const-string v2, "pref_link_first_time_chip_click_ms"

    invoke-virtual {v1, v2}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Ligo;->a:Ljava/lang/Object;

    const-string v3, "Initializing default value (0) for key: (pref_link_first_time_chip_click_ms)"

    invoke-interface {v1, v3}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, v0, Ligo;->b:Ljava/lang/Object;

    check-cast v1, Lgzi;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lgzi;->j(Ljava/lang/String;J)V

    :cond_0
    new-instance v1, Lgyn;

    iget-object v0, v0, Ligo;->b:Ljava/lang/Object;

    check-cast v0, Lgzi;

    invoke-direct {v1, v0}, Lgyn;-><init>(Lgzi;)V

    return-object v1

    :pswitch_6
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v2, "pref_camera_enable_iris"

    invoke-virtual {v0, v2, v1}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_has_checked_gouda_mode"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_has_checked_tiara_mode"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_has_checked_ornament_mode"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_has_checked_measure_mode"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_has_checked_lens_mode"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_has_checked_dual_ev_shadow"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_d
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_has_checked_dual_ev_brightness"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_e
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "perf_has_run_first_education"

    invoke-virtual {v0, v1, v2}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_f
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v2, "pref_exposure_control_key"

    invoke-virtual {v0, v2, v1}, Ligo;->q(Ljava/lang/String;Z)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_10
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_release_dialog_last_shown_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ligo;->s(Ljava/lang/String;Ljava/lang/String;)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_11
    iget-object v0, p0, Lgzz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    sget-object v1, Ldgu;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    sget-object v0, Lgyw;->a:Lgyw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_12
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    sget-object v1, Lgyp;->a:Lgyp;

    iget v1, v1, Lgyp;->f:I

    const-string v2, "pref_af_mode_front"

    invoke-virtual {v0, v2, v1}, Ligo;->r(Ljava/lang/String;I)Ljwb;

    move-result-object v0

    return-object v0

    :pswitch_13
    iget-object v0, p0, Lgzz;->a:Loiw;

    check-cast v0, Lgzo;

    invoke-virtual {v0}, Lgzo;->a()Ligo;

    move-result-object v0

    const-string v1, "pref_camera_beholder_example_percent_key"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ligo;->r(Ljava/lang/String;I)Ljwb;

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
