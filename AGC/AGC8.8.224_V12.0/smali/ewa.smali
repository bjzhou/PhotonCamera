.class public final Lewa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfuz;Logd;Logd;Logd;Logd;Logd;Logd;Lbkb;Lgvb;Ldhi;Lkaq;Lkbc;Lcvr;Lebx;Lbkc;Lbkc;[B[B[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcvr;->M(Logd;)Lcvr;

    move-result-object v1

    iput-object v1, v0, Lewa;->l:Ljava/lang/Object;

    invoke-static {p3}, Lcvr;->M(Logd;)Lcvr;

    move-result-object v1

    iput-object v1, v0, Lewa;->b:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lewa;->j:Ljava/lang/Object;

    invoke-static {p4}, Lcvr;->M(Logd;)Lcvr;

    move-result-object v1

    iput-object v1, v0, Lewa;->m:Ljava/lang/Object;

    invoke-static {p5}, Lcvr;->M(Logd;)Lcvr;

    move-result-object v1

    iput-object v1, v0, Lewa;->n:Ljava/lang/Object;

    invoke-static {p6}, Lcvr;->M(Logd;)Lcvr;

    move-result-object v1

    iput-object v1, v0, Lewa;->e:Ljava/lang/Object;

    move-object v1, p8

    iput-object v1, v0, Lewa;->i:Ljava/lang/Object;

    move-object v1, p9

    iput-object v1, v0, Lewa;->f:Ljava/lang/Object;

    move-object v1, p10

    iput-object v1, v0, Lewa;->d:Ljava/lang/Object;

    const-string v1, "GcaHdrShotCfgFctry"

    move-object v2, p11

    invoke-interface {p11, v1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v1

    iput-object v1, v0, Lewa;->g:Ljava/lang/Object;

    move-object v1, p12

    iput-object v1, v0, Lewa;->h:Ljava/lang/Object;

    move-object/from16 v1, p13

    iput-object v1, v0, Lewa;->o:Ljava/lang/Object;

    move-object/from16 v1, p14

    iput-object v1, v0, Lewa;->p:Ljava/lang/Object;

    move-object/from16 v1, p15

    iput-object v1, v0, Lewa;->c:Ljava/lang/Object;

    move-object/from16 v1, p16

    iput-object v1, v0, Lewa;->a:Ljava/lang/Object;

    move-object v1, p7

    iput-object v1, v0, Lewa;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lklx;Ldhi;Ljwb;Lgcg;Ljuh;Lkgd;Lgzn;Landroid/view/accessibility/AccessibilityManager;Ljwb;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmvf;->v()Lmvf;

    move-result-object p13

    iput-object p13, p0, Lewa;->n:Ljava/lang/Object;

    new-instance p13, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p13, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p13, p0, Lewa;->i:Ljava/lang/Object;

    new-instance p13, Ljava/util/ArrayList;

    invoke-direct {p13, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p13, p0, Lewa;->j:Ljava/lang/Object;

    new-instance p13, Ljava/util/HashSet;

    invoke-direct {p13}, Ljava/util/HashSet;-><init>()V

    iput-object p13, p0, Lewa;->k:Ljava/lang/Object;

    iput-object p1, p0, Lewa;->m:Ljava/lang/Object;

    iput-object p2, p0, Lewa;->a:Ljava/lang/Object;

    iput-object p3, p0, Lewa;->b:Ljava/lang/Object;

    iput-object p4, p0, Lewa;->c:Ljava/lang/Object;

    iput-object p5, p0, Lewa;->o:Ljava/lang/Object;

    iput-object p6, p0, Lewa;->l:Ljava/lang/Object;

    iput-object p7, p0, Lewa;->p:Ljava/lang/Object;

    iput-object p8, p0, Lewa;->d:Ljava/lang/Object;

    iput-object p9, p0, Lewa;->e:Ljava/lang/Object;

    iput-object p10, p0, Lewa;->f:Ljava/lang/Object;

    iput-object p11, p0, Lewa;->g:Ljava/lang/Object;

    iput-object p12, p0, Lewa;->h:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final e(Lefz;Lgkr;)V
    .locals 1

    sget-object v0, Lefz;->a:Lefz;

    if-eq p0, v0, :cond_0

    iget-object p0, p1, Lgkr;->a:Ljava/lang/Object;

    sget-object p1, Ledq;->b:Lilz;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lgaa;->a(Lilz;F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Lklv;->values()[Lklv;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    iget-object v7, p0, Lewa;->m:Ljava/lang/Object;

    check-cast v7, Lklx;

    invoke-virtual {v7, v6}, Lklx;->j(Lklv;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lewa;->m:Ljava/lang/Object;

    check-cast v7, Lklx;

    invoke-virtual {v7, v6}, Lklx;->e(Lklv;)Lkll;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lewa;->m:Ljava/lang/Object;

    check-cast v7, Lklx;

    invoke-virtual {v7, v6}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v6

    if-nez v4, :cond_1

    invoke-virtual {v6}, Lklw;->N()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldhq;->Y:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v1, "pref_camera_hdrplus_option_available_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lewa;->i:Ljava/lang/Object;

    iget-object v1, p0, Lewa;->b:Ljava/lang/Object;

    new-instance v3, Leus;

    const/16 v6, 0x9

    invoke-direct {v3, p0, v6}, Leus;-><init>(Lewa;I)V

    iget-object v6, p0, Lewa;->o:Ljava/lang/Object;

    invoke-interface {v1, v3, v6}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldhy;->r:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v1, "pref_camera_raw_output_option_available_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldgv;->b:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v1, Lgzd;->q:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldgs;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->d()V

    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->bm:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v1, "pref_camera_selfie_mirror_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget v1, Ldha;->a:I

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v1, Lgzd;->o:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldhi;->g()V

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v1, "pref_category_developer"

    if-nez v4, :cond_8

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v1, Lgzd;->A:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldgu;->o:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lewa;->l:Ljava/lang/Object;

    check-cast v0, Lkgd;

    invoke-virtual {v0}, Lkgd;->d()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v1, Lgzd;->B:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lewa;->m:Ljava/lang/Object;

    check-cast v0, Lklx;

    invoke-virtual {v0}, Lklx;->i()Z

    move-result v0

    const v0, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lewa;->p:Ljava/lang/Object;

    sget-object v1, Lgzd;->k:Lgzr;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v1, Lgzd;->k:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v1, "pref_category_custom_hotkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->br:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const-string v1, "pref_camera_dynamic_depth_enabled_key"

    if-nez v0, :cond_c

    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldho;->bs:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldhf;->b:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v3, "pref_category_frequent_faces"

    :cond_d
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldhq;->am:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v3, "pref_camera_kepler_enabled_key"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldho;->bK:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v3, "pref_camera_cd_indicator_enabled_key"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldho;->ci:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lewa;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldhi;->c()V

    :cond_10
    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v3, Lgzd;->m:Lgzr;

    iget-object v3, v3, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v3, Lgzd;->b:Lgzr;

    iget-object v3, v3, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldho;->bc:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v3, "pref_category_social_share"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldho;->X:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lewa;->e:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v3, "pref_audio_zoom_key"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldhi;->f()V

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v3, Lgzd;->l:Lgzr;

    iget-object v3, v3, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldho;->cc:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v3, Ldho;->ce:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v3, Lgzd;->n:Lgzr;

    iget-object v3, v3, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v0, p0, Lewa;->k:Ljava/lang/Object;

    const-string v3, "pref_camera_resolution"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lewa;->k:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lewa;->k:Ljava/lang/Object;

    sget-object v1, Lgzd;->B:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->bJ:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    sget-object v1, Lgzd;->h:Lgzu;

    iget-object v1, v1, Lgzu;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v0, p0, Lewa;->a:Ljava/lang/Object;

    sget-object v1, Ldim;->a:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v1, "pref_chameleon_control_key"

    :cond_19
    iget-object v0, p0, Lewa;->f:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcdm;->r:Lcdm;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lewa;->j:Ljava/lang/Object;

    const-string v1, "pref_launch_feedback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget-object v0, p0, Lewa;->g:Ljava/lang/Object;

    check-cast v0, Lmza;

    invoke-virtual {v0}, Lmza;->cz()Lnac;

    move-result-object v0

    :cond_1b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const v3, 0x7f0e00d2

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhai;

    invoke-virtual {v1}, Lhai;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "PhotoResolution"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    new-instance v4, Landroid/preference/ListPreference;

    invoke-direct {v4, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lhai;->e()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    invoke-virtual {v1}, Lhai;->a()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    invoke-virtual {v1}, Lhai;->b()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    invoke-virtual {v1}, Lhai;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lhai;->f()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lhai;->c()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setIcon(I)V

    invoke-virtual {v1}, Lhai;->d()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setLayoutResource(I)V

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setOrder(I)V

    iget-object v1, p0, Lewa;->n:Ljava/lang/Object;

    check-cast v1, Lmst;

    const-string v3, "pref_category_resolution_camera"

    invoke-virtual {v1, v3, v4}, Lmst;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_1c
    iget-object v0, p0, Lewa;->h:Ljava/lang/Object;

    check-cast v0, Lmza;

    invoke-virtual {v0}, Lmza;->cz()Lnac;

    move-result-object v0

    :cond_1d
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhaj;

    invoke-virtual {v1}, Lhaj;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "Advanced"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    new-instance v4, Landroid/preference/SwitchPreference;

    invoke-direct {v4, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lhaj;->b()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setTitle(I)V

    invoke-virtual {v1}, Lhaj;->a()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    invoke-virtual {v1}, Lhaj;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lhaj;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-direct {v1, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setOrder(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setLayoutResource(I)V

    iget-object v4, p0, Lewa;->n:Ljava/lang/Object;

    check-cast v4, Lmst;

    const-string v6, "pref_category_advanced"

    invoke-virtual {v4, v6, v1}, Lmst;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1e
    return-void
.end method

.method public final c(Lebb;Ledo;)V
    .locals 2

    iget-object v0, p0, Lewa;->p:Ljava/lang/Object;

    invoke-static {p2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p2

    sget-object v1, Lefz;->a:Lefz;

    invoke-interface {v0, p1, p2, v1}, Lebx;->a(Lebb;Lmqp;Lefz;)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Postprocessing pipeline was given image but requested "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final d(Lgkr;Lgxb;Lebb;IZLefz;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "primaryOutputFormat"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v8, Lewa;->p:Ljava/lang/Object;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-interface {v0, v10, v1, v11}, Lebx;->a(Lebb;Lmqp;Lefz;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lebh;

    iget-object v0, v8, Lewa;->g:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Selected primary format: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "updateProgress"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, v9, Lgkr;->a:Ljava/lang/Object;

    sget-object v1, Lecd;->a:Lilz;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lgaa;->a(Lilz;F)V

    iget-boolean v0, v10, Lebb;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Lewa;->d:Ljava/lang/Object;

    sget-object v1, Ldic;->a:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lewa;->m:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v9, Lgkr;->a:Ljava/lang/Object;

    sget-object v1, Ledq;->a:Lilz;

    invoke-interface {v0, v1, v2}, Lgaa;->a(Lilz;F)V

    :cond_0
    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "getAggregator"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, v8, Lewa;->o:Ljava/lang/Object;

    iget-object v1, v9, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    check-cast v0, Lcvr;

    invoke-virtual {v0, v1}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object v13

    invoke-static {}, Ledo;->a()Ledn;

    move-result-object v14

    invoke-static/range {p4 .. p4}, Lkab;->b(I)Lkab;

    move-result-object v0

    invoke-virtual {v14, v0}, Ledn;->e(Lkab;)V

    iput-object v10, v14, Ledn;->j:Lebb;

    move-object/from16 v0, p2

    iput-object v0, v14, Ledn;->l:Lgxb;

    iput-object v9, v14, Ledn;->k:Lgkr;

    iget-object v0, v8, Lewa;->l:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v2, "moments#onMainShotStarted"

    invoke-interface {v0, v2}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, v8, Lewa;->l:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsu;

    iget-object v2, v9, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->h()Lgxy;

    move-result-object v2

    new-instance v3, Lnom;

    invoke-virtual/range {p3 .. p3}, Lebb;->a()Lgyq;

    move-result-object v4

    iget-object v5, v9, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v5}, Lgxl;->i()Lgya;

    move-result-object v5

    sget-object v6, Lgya;->k:Lgya;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-direct {v3, v4, v5}, Lnom;-><init>(Lgyq;Z)V

    invoke-interface {v0, v2, v3}, Lfsu;->m(Lgxy;Lnom;)V

    :cond_2
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addProgressListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v6, Leas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Leas;-><init>(Lewa;Lgkr;Ljava/util/concurrent/atomic/AtomicBoolean;[B[B)V

    iget-object v0, v13, Leeb;->a:Lmwl;

    if-nez v0, :cond_3

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    iput-object v0, v13, Leeb;->a:Lmwl;

    :cond_3
    iget-object v0, v13, Leeb;->a:Lmwl;

    invoke-virtual {v0, v6}, Lmwl;->g(Ljava/lang/Object;)V

    iget-object v0, v8, Lewa;->a:Ljava/lang/Object;

    iget-object v1, v9, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->n()Lmqp;

    check-cast v0, Lbkc;

    iget-object v0, v0, Lbkc;->a:Ljava/lang/Object;

    sget-object v1, Ldhq;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addBaseFrameListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v15, Leat;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v4, p4

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v7}, Leat;-><init>(Lewa;Lgkr;Ledn;ILebb;[B[B)V

    invoke-virtual {v13, v15}, Leeb;->a(Lecm;)V

    iget-object v0, v8, Lewa;->d:Ljava/lang/Object;

    sget-object v1, Ldhq;->ao:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p5, :cond_5

    :cond_4
    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addPostViewRgbListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v7, Leau;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Leau;-><init>(Lewa;ILgkr;Lebb;[B[B)V

    invoke-virtual {v13, v7}, Leeb;->c(Lecn;)V

    :cond_5
    sget-object v0, Lebh;->b:Lebh;

    const/4 v15, 0x0

    if-ne v12, v0, :cond_7

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addYuvListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v0, Leav;

    invoke-direct {v0, v8, v14, v10, v15}, Leav;-><init>(Lewa;Ledn;Lebb;[B)V

    iget-object v1, v13, Leeb;->t:Lmwl;

    if-nez v1, :cond_6

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v1

    iput-object v1, v13, Leeb;->t:Lmwl;

    :cond_6
    iget-object v1, v13, Leeb;->t:Lmwl;

    invoke-virtual {v1, v0}, Lmwl;->g(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, v8, Lewa;->m:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v8, Lewa;->m:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ledl;

    if-eqz v0, :cond_9

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, v8, Lewa;->h:Ljava/lang/Object;

    const-string v2, "addPdListener"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v1, Leay;

    invoke-direct {v1, v8, v0, v15}, Leay;-><init>(Lewa;Lnph;[B)V

    iget-object v2, v13, Leeb;->r:Lmwl;

    if-nez v2, :cond_8

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v2

    iput-object v2, v13, Leeb;->r:Lmwl;

    :cond_8
    iget-object v2, v13, Leeb;->r:Lmwl;

    invoke-virtual {v2, v1}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lnsy;->z()Lnou;

    move-result-object v0

    :goto_1
    invoke-virtual {v14, v0}, Ledn;->c(Lnou;)V

    iget-object v0, v8, Lewa;->m:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v8, Lewa;->m:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ledl;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lewa;->d:Ljava/lang/Object;

    sget-object v1, Ldib;->A:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    sget-object v0, Lefz;->b:Lefz;

    if-ne v11, v0, :cond_c

    :cond_b
    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addRawListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    invoke-static {v11, v9}, Lewa;->e(Lefz;Lgkr;)V

    new-instance v6, Lgmu;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lgmu;-><init>(Lewa;Lgkr;I[B[B)V

    invoke-virtual {v13, v6}, Leeb;->d(Lecu;)V

    :cond_c
    sget-object v0, Lebh;->c:Lebh;

    if-ne v12, v0, :cond_d

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addRgbListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    invoke-static {v11, v9}, Lewa;->e(Lefz;Lgkr;)V

    new-instance v7, Leaw;

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p3

    move-object v11, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Leaw;-><init>(Lewa;Lefz;Lgkr;Ledn;Lebb;[B[B)V

    invoke-virtual {v13, v11}, Leeb;->e(Lecv;)V

    :cond_d
    sget-object v0, Lebh;->d:Lebh;

    if-ne v12, v0, :cond_e

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addHwRgbListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v6, Lenk;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lenk;-><init>(Lewa;Ledn;Lebb;I[B)V

    invoke-virtual {v13, v6}, Leeb;->b(Lecp;)V

    :cond_e
    iget-boolean v0, v10, Lebb;->c:Z

    if-eqz v0, :cond_10

    iget-object v0, v8, Lewa;->n:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v9, Lgkr;->d:Ljava/lang/Object;

    check-cast v0, Lfte;

    iget-boolean v0, v0, Lfte;->h:Z

    if-eqz v0, :cond_10

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addDngListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, v8, Lewa;->n:Ljava/lang/Object;

    check-cast v0, Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    new-instance v0, Leaz;

    invoke-direct {v0, v8, v9, v15, v15}, Leaz;-><init>(Lewa;Lgkr;[B[B)V

    iget-object v1, v13, Leeb;->n:Lmwl;

    if-nez v1, :cond_f

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v1

    iput-object v1, v13, Leeb;->n:Lmwl;

    :cond_f
    iget-object v1, v13, Leeb;->n:Lmwl;

    invoke-virtual {v1, v0}, Lmwl;->g(Ljava/lang/Object;)V

    :cond_10
    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    const-string v1, "addShotStatusListener"

    invoke-interface {v0, v1}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v0, Leax;

    invoke-direct {v0, v8, v9, v15, v15}, Leax;-><init>(Lewa;Lgkr;[B[B)V

    invoke-virtual {v13, v0}, Leeb;->f(Lecw;)V

    iget-object v0, v8, Lewa;->h:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "processOrRequestImage was given no image but still didn\'t request anything"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
