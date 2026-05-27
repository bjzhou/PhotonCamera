.class public final Lhaf;
.super Lham;


# static fields
.field private static final b:Lnak;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lfuj;

.field private final e:Ldhi;

.field private final f:Lgzw;

.field private final g:Lklx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/settings/app/upgrader/AppUpgrader"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhaf;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfuj;Lklx;Lgzw;Ldhi;)V
    .locals 2

    const-string v0, "pref_upgrade_version"

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lham;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lhaf;->c:Landroid/content/Context;

    iput-object p2, p0, Lhaf;->d:Lfuj;

    iput-object p3, p0, Lhaf;->g:Lklx;

    iput-object p5, p0, Lhaf;->e:Ldhi;

    iput-object p4, p0, Lhaf;->f:Lgzw;

    return-void
.end method

.method private final e(Lklv;Lgzi;)V
    .locals 4

    invoke-static {p1}, Lhap;->b(Lklv;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lhaf;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Ignoring attempt to upgrade size of unhandled camera facing direction"

    const/16 v0, 0xd3d

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-virtual {p2, v0}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkba;->e(Ljava/lang/String;)Lkaf;

    move-result-object v1

    iget-object v2, p0, Lhaf;->g:Lklx;

    invoke-virtual {v2, p1}, Lklx;->e(Lklv;)Lkll;

    move-result-object p1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v1

    sget-object v2, Ljzr;->a:Ljzr;

    invoke-virtual {v1, v2}, Ljzr;->m(Ljzr;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lhaf;->g:Lklx;

    iget-object v2, p0, Lhaf;->d:Lfuj;

    iget-object v3, p0, Lhaf;->e:Ldhi;

    invoke-static {p1, v1, v2, v3}, Lgky;->h(Lkll;Lklj;Lfuj;Ldhi;)Lfuz;

    move-result-object p1

    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Lklw;->x(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lklw;->k()Lklv;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2, v1, p1}, Lhap;->a(Ljava/lang/String;Ljava/util/List;Lklv;)Lkaf;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkba;->g(Lkaf;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private final f(Lgzi;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhaf;->c:Landroid/content/Context;

    const v1, 0x7f1403f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final g(Lgzi;Lklv;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lhap;->b(Lklv;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lhaf;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Ignoring attempt to upgrade size of unhandled camera facing direction"

    const/16 v0, 0xd40

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object v1, p0, Lhaf;->g:Lklx;

    invoke-virtual {v1, p2}, Lklx;->e(Lklv;)Lkll;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lhaf;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Failed to retrieve a camera id for facing: %s"

    const/16 v3, 0xd3f

    invoke-static {v1, v2, p2, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-virtual {p1, v0}, Lgzi;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lhaf;->g:Lklx;

    iget-object v2, p0, Lhaf;->d:Lfuj;

    iget-object v3, p0, Lhaf;->e:Ldhi;

    invoke-static {v1, p2, v2, v3}, Lgky;->h(Lkll;Lklj;Lfuj;Ldhi;)Lfuz;

    move-result-object p2

    const/16 v1, 0x100

    invoke-virtual {p2, v1}, Lklw;->x(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lklw;->k()Lklv;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lhap;->a(Ljava/lang/String;Ljava/util/List;Lklv;)Lkaf;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkba;->g(Lkaf;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lgzi;I)V
    .locals 12

    iget-object v0, p0, Lhaf;->c:Landroid/content/Context;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "on"

    const-string v5, "pref_camera_hdr_plus_key"

    if-ge p2, v1, :cond_1

    invoke-virtual {p1}, Lgzi;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1}, Lgzi;->p()Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v7, Lgzd;->b:Lgzr;

    iget-object v7, v7, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lgzd;->b:Lgzr;

    iget-object v7, v7, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_0

    sget-object v7, Lgzd;->b:Lgzr;

    iget-object v7, v7, Lgzr;->a:Ljava/lang/String;

    :try_start_0
    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    sget-object v9, Lham;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->b()Lnaz;

    move-result-object v9

    const-string v10, "error reading old value, removing and returning default"

    const/16 v11, 0xd49

    invoke-static {v9, v10, v11, v8}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v1, Lgzd;->b:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v8}, Lgzi;->l(Ljava/lang/String;Z)V

    :cond_0
    invoke-interface {v6, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v6, v5}, Lhaf;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v5, v3}, Lgzi;->l(Ljava/lang/String;Z)V

    :cond_1
    const/4 v1, 0x2

    if-ge p2, v1, :cond_3

    invoke-virtual {p1}, Lgzi;->p()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v6, Lgzd;->b:Lgzr;

    iget-object v6, v6, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v1, Lgzd;->b:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lgzd;->b:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lgzi;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v6, Lgzd;->b:Lgzr;

    iget-object v6, v6, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lgzd;->b:Lgzr;

    iget-object v6, v6, Lgzr;->a:Ljava/lang/String;

    invoke-static {v1, v6}, Lhaf;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lgzd;->b:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lgzi;->l(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    const/4 v1, 0x3

    if-ge p2, v1, :cond_4

    sget-object v1, Lklv;->a:Lklv;

    invoke-direct {p0, p1, v1}, Lhaf;->g(Lgzi;Lklv;)V

    sget-object v1, Lklv;->b:Lklv;

    invoke-direct {p0, p1, v1}, Lhaf;->g(Lgzi;Lklv;)V

    :cond_4
    const/16 v1, 0x8

    const-string v6, "off"

    if-ge p2, v1, :cond_8

    invoke-virtual {p1, v5}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v5}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    const-string v7, "0"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v3, v1, :cond_7

    move-object v1, v6

    goto :goto_3

    :cond_7
    move-object v1, v4

    :goto_3
    invoke-virtual {p1, v5, v1}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v1, 0x9

    if-ge p2, v1, :cond_9

    invoke-virtual {p1, v5}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v5}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "auto"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1, v5}, Lgzi;->g(Ljava/lang/String;)V

    :cond_9
    const/16 v1, 0xc

    if-ge p2, v1, :cond_a

    sget-object v1, Lklv;->a:Lklv;

    invoke-direct {p0, v1, p1}, Lhaf;->e(Lklv;Lgzi;)V

    sget-object v1, Lklv;->b:Lklv;

    invoke-direct {p0, v1, p1}, Lhaf;->e(Lklv;Lgzi;)V

    :cond_a
    const/16 v1, 0xd

    if-ge p2, v1, :cond_b

    const-string v1, "pref_camera_flashmode_key"

    invoke-virtual {p1, v1}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p1, v1}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lgzd;->s:Lgzu;

    iget-object v5, v5, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lgzd;->t:Lgzu;

    iget-object v5, v5, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lgzi;->g(Ljava/lang/String;)V

    :cond_b
    const/16 v1, 0xe

    if-ge p2, v1, :cond_d

    const-string v1, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v1}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p1, v1}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lgzd;->v:Lgzu;

    iget-object v5, v5, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lgzd;->w:Lgzu;

    iget-object v5, v5, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lgzi;->g(Ljava/lang/String;)V

    :cond_c
    sget-object v1, Lgzd;->y:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    const-string v4, "pref_camera_video_flashmode_thermally_disabled_key"

    invoke-virtual {p1, v4}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1, v4}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lgzi;->g(Ljava/lang/String;)V

    :cond_d
    const/16 v1, 0x10

    if-ge p2, v1, :cond_e

    iget-object v1, p0, Lhaf;->e:Ldhi;

    sget-object v4, Ldho;->ab:Ldhj;

    invoke-interface {v1, v4}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lgzd;->s:Lgzu;

    iget-object v1, v1, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lhaf;->c:Landroid/content/Context;

    const v5, 0x7f1403f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/16 v1, 0x11

    if-ge p2, v1, :cond_f

    sget-object v1, Lgzd;->t:Lgzu;

    iget-object v1, v1, Lgzu;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lhaf;->f(Lgzi;Ljava/lang/String;)V

    sget-object v1, Lgzd;->s:Lgzu;

    iget-object v1, v1, Lgzu;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lhaf;->f(Lgzi;Ljava/lang/String;)V

    :cond_f
    const/16 v1, 0x12

    if-ge p2, v1, :cond_10

    iget-object v1, p0, Lhaf;->e:Ldhi;

    sget-object v4, Ldhz;->c:Ldhj;

    invoke-interface {v1, v4}, Ldhi;->k(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lgcc;->a:Lgcc;

    iget-object v1, v1, Lgcc;->d:Ljava/lang/String;

    sget-object v4, Lgzd;->t:Lgzu;

    iget-object v4, v4, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lgzd;->t:Lgzu;

    iget-object v1, v1, Lgzu;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lhaf;->f(Lgzi;Ljava/lang/String;)V

    :cond_10
    const/16 v1, 0x13

    if-ge p2, v1, :cond_11

    const-string v1, "pref_camera_dynamic_depth_enabled_key"

    invoke-virtual {p1, v1}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p1, v1, v2}, Lgzi;->l(Ljava/lang/String;Z)V

    :cond_11
    const/16 v1, 0x14

    if-ge p2, v1, :cond_12

    sget-object v1, Lgzd;->D:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    const-string v2, "pref_video_quality_back_key"

    invoke-virtual {p1, v2}, Lgzi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const v4, 0x7f140431

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, v1}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1, v1, v3}, Lgzi;->l(Ljava/lang/String;Z)V

    :cond_12
    const/16 v0, 0x15

    if-ge p2, v0, :cond_13

    sget-object v0, Lgzd;->D:Lgzr;

    iget-object v0, v0, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v0}, Lgzi;->g(Ljava/lang/String;)V

    if-eqz v1, :cond_13

    iget-object v0, p0, Lhaf;->f:Lgzw;

    sget-object v1, Lgyw;->b:Lgyw;

    invoke-virtual {v0, v1}, Ljwi;->bn(Ljava/lang/Object;)V

    :cond_13
    const/16 v0, 0x16

    if-ge p2, v0, :cond_14

    iget-object v0, p0, Lhaf;->e:Ldhi;

    sget-object v1, Ldhq;->ac:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lgzd;->t:Lgzu;

    iget-object v0, v0, Lgzu;->a:Ljava/lang/String;

    const-string v1, "ns"

    invoke-virtual {p1, v0, v1}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lgzd;->s:Lgzu;

    iget-object v0, v0, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/16 v0, 0x17

    if-ge p2, v0, :cond_15

    iget-object v0, p0, Lhaf;->e:Ldhi;

    sget-object v1, Ldho;->Y:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lgyr;->c:Lgyr;

    invoke-virtual {v0}, Lgyr;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_fps_p2018_key"

    invoke-virtual {p1, v1, v0}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lgyw;->a:Lgyw;

    invoke-virtual {v0}, Lgyw;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_video_resolution"

    invoke-virtual {p1, v1, v0}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/16 v0, 0x18

    if-ge p2, v0, :cond_16

    iget-object p2, p0, Lhaf;->e:Ldhi;

    sget-object v0, Ldho;->bJ:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-nez p2, :cond_16

    sget-object p2, Lgzd;->h:Lgzu;

    iget-object p2, p2, Lgzu;->a:Ljava/lang/String;

    const-string v0, "zoom"

    invoke-virtual {p1, p2, v0}, Lgzi;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method protected final b(Lgzi;)I
    .locals 3

    invoke-virtual {p1}, Lgzi;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_strict_upgrade_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lham;->b(Lgzi;)I

    move-result p1

    return p1
.end method
