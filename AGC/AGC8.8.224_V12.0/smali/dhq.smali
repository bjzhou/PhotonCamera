.class public final Ldhq;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ldhj;

.field public static final B:Ldhj;

.field public static final C:Ldhj;

.field public static final D:Ldhj;

.field public static final E:Ldhj;

.field public static final F:Ldhj;

.field public static final G:Ldhj;

.field public static final H:Ldhj;

.field public static final I:Ldhj;

.field public static final J:Ldhj;

.field public static final K:Ldhj;

.field public static final L:Ldhj;

.field public static final M:Ldhj;

.field public static final N:Ldhj;

.field public static final O:Ldhj;

.field public static final P:Ldhj;

.field public static final Q:Ldhj;

.field public static final R:Ldhj;

.field public static final RR:Ldhj;

.field public static final S:Ldhj;

.field public static final T:Ldhj;

.field public static final U:Ldhj;

.field public static final V:Ldhj;

.field public static final W:Ldhj;

.field public static final X:Ldhj;

.field public static final Y:Ldhj;

.field public static final Z:Ldhj;

.field public static final a:Ldhk;

.field public static final aA:Ldhj;

.field public static final aB:Ldhj;

.field public static final aC:Ldhj;

.field public static final aD:Ldhj;

.field public static final aa:Ldhj;

.field public static final ab:Ldhj;

.field public static final ac:Ldhj;

.field public static final ad:Ldhj;

.field public static final ae:Ldhj;

.field public static final af:Ldhj;

.field public static final ag:Ldhj;

.field public static final ah:Ldhj;

.field public static final ai:Ldhj;

.field public static final aj:Ldhj;

.field public static final ak:Ldhj;

.field public static final al:Ldhj;

.field public static final am:Ldhj;

.field public static final an:Ldhj;

.field public static final ao:Ldhj;

.field public static final ap:Ldhj;

.field public static final aq:Ldhj;

.field public static final ar:Ldhj;

.field public static final as:Ldhj;

.field public static final at:Ldhj;

.field public static final au:Ldhj;

.field public static final av:Ldhj;

.field public static final aw:Ldhj;

.field public static final ax:Ldhj;

.field public static final ay:Ldhj;

.field public static final az:Ldhj;

.field public static final b:Ldhk;

.field public static final c:Ldhk;

.field public static final d:Ldhk;

.field public static final e:Ldhk;

.field public static final f:Ldhk;

.field public static final g:Ldhk;

.field public static final h:Ldhk;

.field public static final i:Ldhk;

.field public static final j:Ldhk;

.field public static final k:Ldhk;

.field public static final l:Ldhk;

.field public static final m:Ldhk;

.field public static final n:Ldhk;

.field public static final o:Ldhk;

.field public static final p:Ldhk;

.field public static final q:Ldhk;

.field public static final r:Ldhk;

.field public static final s:Ldhk;

.field public static final t:Ldhk;

.field public static final u:Ldhk;

.field public static final v:Ldhk;

.field public static final w:Ldhk;

.field public static final x:Ldhj;

.field public static final y:Ldhj;

.field public static final z:Ldhj;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.3a.debug_meta"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    sget-object v1, Ldhp;->a:Ldhp;

    invoke-virtual {v1}, Ldhp;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ldhp;->b:Ldhp;

    invoke-virtual {v2}, Ldhp;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ldhp;->c:Ldhp;

    invoke-virtual {v3}, Ldhp;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ldhp;->d:Ldhp;

    invoke-virtual {v4}, Ldhp;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lmwn;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v1

    iput-object v1, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->a:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.3a.debug_meta_all"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cuttle.motion_ef"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->x:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cuttle.motion_metadata"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->y:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cuttle.extended"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->z:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.force_cuttle.extended"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cuttle.extended.fz.RESTART"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cuttle.extended.uwz.RESTART"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cuttle.sky"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->A:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cuttle.max_exp_ms"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->B:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.cuttle.rerun_fd"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->C:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.3a_conv"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->D:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.extburst.RESTART"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.hdrplus_wb_source"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lmwn;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v2

    iput-object v2, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->b:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.psaf_frame_count"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lmym;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v1

    sget-object v2, Lmug;->a:Lmug;

    invoke-static {v1, v2}, Lmtx;->a(Lmym;Lmuh;)Lmtx;

    move-result-object v1

    iput-object v1, v0, Lnoc;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->c:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.psaf_exp_time_ms"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->E:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.psaf_sb_thresh"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->F:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.zsl_buffer_size"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->d:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hdr_hvx.RESTART"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->G:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "camera.hdr_postview_hvx.RESTART"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "HdrPlus"

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v2, "camera_hdr_gxp_restart_remote"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->H:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.hdr_gxp.RESTART"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->I:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.max_burst_size"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->e:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.cuttle.max_burst_size"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->f:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.p3_available"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->J:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.p3_force"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.shasta_psl"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->K:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.shasta_zsl"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->L:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.shasta.frame_retention_ms"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->g:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.shasta.force"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.shasta.factor"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->M:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.shasta_zsl.burst_size"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->h:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.shasta_zsl.max_exptime_ms"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->N:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.lancet_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->O:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.lancet_model_asset_name"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->P:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "SABRE_ALLOWED"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->Q:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.sabre_force"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.spatial_rgb_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->R:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.spatial_rgb_force"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->RR:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.wiener_force"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->S:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.sabre_unzoomed_tele"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->T:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.slowraw"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.estrella_login_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->U:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catfish_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->V:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catfish.debug"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catfish.max_frames"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->i:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catfish_flash_anim_capture_threshold_ms"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->j:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.flash_animation_experiment"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.flash_anim_fade_in_ms"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->k:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.flash_anim_fade_out_ms"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->l:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.flash_anim_max_alpha"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->W:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.force_low_light_fps"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.live_tb"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->X:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.live_tb.forcedtbfactor"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->m:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "hdrnet_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->Y:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.hdrnet.height"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->n:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.hdrnet.hi-res"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->Z:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.nonzsl_extended_base_frame_selection"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->q()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->aa:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.vf.verbose"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.sabre_burst_size"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->o:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.zsl.extended_buffer_factor"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ab:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_enabled.RESTART"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ac:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_cheese"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ad:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_in_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ae:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_out_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->af:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_cheese_in_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ag:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_cheese_out_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ah:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_full_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ai:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_af"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->aj:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.catshark_minibar_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ak:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.cuttle.fastaf"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->al:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.kepler_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->am:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.kepler_min_frame_count"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->p:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.kepler_merge_frame_count"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->q:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.kepler_capture_threshold_ms"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->r:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.kepler_stream_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->an:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.kepler_hevc_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.kepler_frame_duration_ms"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->s:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.kepler_micro"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.disable_hdrplus_postview"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ao:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.cuttle.enable_timeout"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ap:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.cuttle.custom_timeout_ms"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->t:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.hdr_plus_torch_thermal_throttling"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->aq:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.gpu_sampled_image"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ar:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.include_ultra_short_frame"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->as:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.metering.recompute_ae"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->at:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.pb_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->au:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.ts_base"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.pecan_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->av:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.pecan_model_asset_name"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->u()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->aw:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.pecan_override"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->u:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "camera.low_payload_threshold"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->v:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v2, "gcam.gpu_power_boost_enabled"

    iput-object v2, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    const-string v1, "thread_priority_boost_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.hawk_boost_big_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ax:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.hawk_boost_mid_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->ay:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.hawk_boost_little_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->az:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.jpeg_compression_boost_big_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->aA:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.jpeg_compression_boost_mid_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->aB:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.jpeg_compression_boost_little_option"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->s()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->aC:Ldhj;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.jpeg_compression_cpu_affinity_mask"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->l()Ldhk;

    move-result-object v0

    sput-object v0, Ldhq;->w:Ldhk;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    const-string v1, "gcam.walnut_enabled"

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lnoc;->t()Ldhj;

    move-result-object v0

    sput-object v0, Ldhq;->aD:Ldhj;

    return-void
.end method
