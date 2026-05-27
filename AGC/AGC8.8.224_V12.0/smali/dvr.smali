.class public final Ldvr;
.super Ljava/lang/Object;

# interfaces
.implements Ldvk;


# static fields
.field public static final a:Lnak;

.field static final b:I


# instance fields
.field public final c:Logd;

.field public final d:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

.field public final e:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field public final f:Ljuh;

.field public final g:Lgzm;

.field public h:Lnou;

.field private final i:Landroid/content/Context;

.field private final j:Z

.field private final k:Lhtl;

.field private final l:Ldio;

.field private final m:Lgxd;

.field private final n:Lfbz;

.field private final o:Limo;

.field private final p:Lhsl;

.field private final q:Logd;

.field private final r:Landroid/app/Activity;

.field private final s:Lcdj;

.field private t:Lgur;

.field private final u:Lbkc;

.field private final v:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/filmstrip/photos/PhotosReviewLauncherImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldvr;->a:Lnak;

    sget v0, Lcom/google/android/apps/camera/bottombar/R$dimen;->rounded_thumbnail_diameter_normal:I

    sput v0, Ldvr;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLogd;Lhtl;Ldio;Lbkc;Lgxd;Lfbz;Landroid/app/Activity;Ljuh;Limo;Ldja;Lhsl;Logd;Lbkc;Lcdj;Lgzm;[B[B[B[B[B)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v2

    iput-object v2, v0, Ldvr;->h:Lnou;

    move-object v2, p1

    iput-object v2, v0, Ldvr;->i:Landroid/content/Context;

    move v2, p2

    iput-boolean v2, v0, Ldvr;->j:Z

    move-object v2, p3

    iput-object v2, v0, Ldvr;->c:Logd;

    move-object v2, p4

    iput-object v2, v0, Ldvr;->k:Lhtl;

    move-object v2, p5

    iput-object v2, v0, Ldvr;->l:Ldio;

    move-object v2, p6

    iput-object v2, v0, Ldvr;->u:Lbkc;

    move-object v2, p7

    iput-object v2, v0, Ldvr;->m:Lgxd;

    move-object v2, p8

    iput-object v2, v0, Ldvr;->n:Lfbz;

    move-object v2, p10

    iput-object v2, v0, Ldvr;->f:Ljuh;

    move-object/from16 v2, p16

    iput-object v2, v0, Ldvr;->s:Lcdj;

    move-object v2, p9

    iput-object v2, v0, Ldvr;->r:Landroid/app/Activity;

    move-object v2, p11

    iput-object v2, v0, Ldvr;->o:Limo;

    iget-object v2, v1, Ldja;->a:Ljava/lang/Object;

    check-cast v2, Ljew;

    const v3, 0x7f0b0154

    invoke-virtual {v2, v3}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    iput-object v2, v0, Ldvr;->d:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    iget-object v1, v1, Ldja;->a:Ljava/lang/Object;

    sget v2, Lcom/google/android/apps/camera/bottombar/R$id;->thumbnail_button:I

    check-cast v1, Ljew;

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    iput-object v1, v0, Ldvr;->e:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-object/from16 v1, p13

    iput-object v1, v0, Ldvr;->p:Lhsl;

    move-object/from16 v1, p14

    iput-object v1, v0, Ldvr;->q:Logd;

    move-object/from16 v1, p15

    iput-object v1, v0, Ldvr;->v:Lbkc;

    move-object/from16 v1, p17

    iput-object v1, v0, Ldvr;->g:Lgzm;

    return-void
.end method

.method private final i(Landroid/content/Intent;)Lnou;
    .locals 6

    iget-object v0, p0, Ldvr;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldvr;->k:Lhtl;

    invoke-virtual {v0}, Lhir;->c()V

    iget-object v0, p0, Ldvr;->s:Lcdj;

    const/4 v2, 0x3

    iput v2, v0, Lcdj;->e:I

    iget-object v0, p0, Ldvr;->p:Lhsl;

    invoke-interface {v0}, Lhsl;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "photos_review_launch_timestamp"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    const-string v0, "shared_element_return_transition"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Ldvr;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Ldvr;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const-string v3, "return_transition_thumbnail_diameter"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object v0, p0, Ldvr;->o:Limo;

    invoke-virtual {v0}, Limo;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "DEVELOPMENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "6.12"

    :try_start_0
    new-instance v4, Limn;

    invoke-direct {v4, v0}, Limn;-><init>(Ljava/lang/String;)V

    new-instance v5, Limn;

    invoke-direct {v5, v3}, Limn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Limn;->a(Limn;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_4

    :goto_0
    iget-object v0, p0, Ldvr;->p:Lhsl;

    invoke-interface {v0}, Lhsl;->b()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v3, p0, Ldvr;->r:Landroid/app/Activity;

    new-instance v4, Ldvq;

    invoke-direct {v4, v0}, Ldvq;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    const-string v0, "use_shared_element_snapshot_for_thumbnail"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Ldvr;->r:Landroid/app/Activity;

    iget-object v2, p0, Ldvr;->e:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    const-string v3, "photos:filmstrip_transition_view"

    invoke-static {v0, v2, v3}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v0

    iget-object v2, p0, Ldvr;->u:Lbkc;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lbkc;->a:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v2, Limo;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v4, 0x10f6

    invoke-interface {v2, v4}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v4, "Fail to check the version between %s and %s"

    invoke-interface {v2, v4, v0, v3}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Ldvr;->u:Lbkc;

    iget-object v2, v0, Lbkc;->a:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, v0, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f01004a

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Ldvr;->q:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldvm;

    invoke-virtual {p1}, Ldvm;->bN()V

    iget-object p1, p0, Ldvr;->e:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setVisibility(I)V

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Photos is disabled."

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Lnou;
    .locals 4

    iget-boolean v0, p0, Ldvr;->j:Z

    iget-object v1, p0, Ldvr;->r:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [J

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lbze;->j(ZZZ[J)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Llqk;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Ldvr;->t:Lgur;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lgur;->A()V

    :cond_0
    invoke-direct {p0, v0}, Ldvr;->i(Landroid/content/Intent;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 7

    const-string v0, "com.google.android.apps.photos"

    const-string v1, "Photos app package not found."

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p0}, Ldvr;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Ldvr;->o:Limo;

    invoke-virtual {v2}, Limo;->a()Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/high16 v3, 0x1040000

    const v4, 0x7f1503e3

    const/4 v5, 0x0

    if-nez v2, :cond_1

    sget-object v0, Ldvr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Cannot find Photos package info. Canceling."

    const/16 v2, 0x486

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Ldvr;->v:Lbkc;

    new-instance v1, Lmgv;

    iget-object v2, v0, Lbkc;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lmgv;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1403a7

    invoke-virtual {v1, v2}, Lmgv;->s(I)V

    const v2, 0x7f1403a6

    invoke-virtual {v1, v2}, Lmgv;->l(I)V

    new-instance v2, Lcdc;

    const/4 v4, 0x7

    invoke-direct {v2, v0, v4, v5, v5}, Lcdc;-><init>(Lbkc;I[B[B)V

    const v0, 0x7f1403b7

    invoke-virtual {v1, v0, v2}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v3, v5}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lef;->c()Leg;

    return-void

    :cond_1
    iget-object v2, p0, Ldvr;->o:Limo;

    :try_start_0
    iget-object v2, v2, Limo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v6, :cond_5

    :cond_2
    iget-object v2, p0, Ldvr;->o:Limo;

    :try_start_1
    iget-object v2, v2, Limo;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Ldvr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Photos is suspended. Canceling."

    const/16 v2, 0x484

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Ldvr;->i:Landroid/content/Context;

    invoke-static {v0}, Lbze;->k(Landroid/content/Context;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ldvr;->u:Lbkc;

    invoke-virtual {v1, v0}, Lbkc;->f(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Limo;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const/16 v3, 0x10f5

    invoke-static {v2, v1, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Ldvr;->r:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementsUseOverlay(Z)V

    invoke-virtual {p0}, Ldvr;->e()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Ldvr;->c:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchj;

    invoke-virtual {p0, v0}, Ldvr;->f(Lchj;)Lchd;

    move-result-object v0

    const/4 v2, 0x2

    if-nez v0, :cond_4

    iget-boolean v3, p0, Ldvr;->j:Z

    if-eqz v3, :cond_4

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "FilmstripDataAdapter is empty in secure activity"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Ldvr;->p:Lhsl;

    invoke-interface {v3}, Lhsl;->b()Lmqp;

    move-result-object v3

    new-instance v4, Ldvo;

    invoke-direct {v4, p0, v0, v1}, Ldvo;-><init>(Ldvr;Lchd;I)V

    invoke-virtual {v3, v4}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v1

    new-instance v3, Ldkg;

    invoke-direct {v3, p0, v0, v2}, Ldkg;-><init>(Ldvr;Lchd;I)V

    invoke-virtual {v1, v3}, Lmqp;->d(Lmrl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnou;

    :goto_1
    const-class v1, Ljava/util/concurrent/CancellationException;

    sget-object v3, Ldeo;->f:Ldeo;

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v3, v4}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iput-object v0, p0, Ldvr;->h:Lnou;

    new-instance v1, Lcnr;

    invoke-direct {v1, v2}, Lcnr;-><init>(I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_1
    move-exception v0

    sget-object v2, Limo;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const/16 v6, 0x10f4

    invoke-static {v2, v1, v6, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_5
    sget-object v0, Ldvr;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Photos is disabled. Canceling."

    const/16 v2, 0x485

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, p0, Ldvr;->v:Lbkc;

    new-instance v1, Lmgv;

    iget-object v2, v0, Lbkc;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lmgv;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1403a5

    invoke-virtual {v1, v2}, Lmgv;->s(I)V

    const v2, 0x7f1403a4

    invoke-virtual {v1, v2}, Lmgv;->l(I)V

    new-instance v2, Lcdc;

    const/16 v4, 0x8

    invoke-direct {v2, v0, v4, v5, v5}, Lcdc;-><init>(Lbkc;I[B[B)V

    const v0, 0x7f140491

    invoke-virtual {v1, v0, v2}, Lmgv;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v3, v5}, Lmgv;->n(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lef;->c()Leg;

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Ldvr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldvr;->q:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchh;

    invoke-interface {v0}, Lchh;->f()V

    iget-object v0, p0, Ldvr;->h:Lnou;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iput-object v0, p0, Ldvr;->h:Lnou;

    :cond_0
    return-void
.end method

.method public final d(Lgur;)V
    .locals 0

    iput-object p1, p0, Ldvr;->t:Lgur;

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Ldvr;->h:Lnou;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldvr;->h:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final f(Lchj;)Lchd;
    .locals 7

    invoke-interface {p1}, Lchj;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v1

    invoke-interface {v1}, Lche;->j()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v1

    invoke-interface {v1}, Lche;->d()Lgxy;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Null ShotId encountered for item: %s"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Ldvr;->m:Lgxd;

    iget-object v2, v2, Lgxd;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Lchd;)Lnou;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Ldvr;->h:Lnou;

    invoke-interface {v1}, Lnou;->isDone()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lmoz;->p(Z)V

    iget-boolean v1, v0, Ldvr;->j:Z

    iget-object v3, v0, Ldvr;->g:Lgzm;

    sget-object v4, Lgzd;->at:Lgzr;

    invoke-interface {v3, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v0, Ldvr;->r:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result v4

    iget-object v5, v0, Ldvr;->c:Logd;

    invoke-interface {v5}, Logd;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lchc;

    invoke-interface {v5}, Lchc;->a()I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Lchc;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lchd;

    invoke-interface {v7}, Lchd;->b()Lche;

    move-result-object v9

    invoke-interface {v9}, Lche;->f()Lmvv;

    move-result-object v9

    invoke-virtual {v9}, Lmvv;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v15, v11, v13

    if-eqz v15, :cond_1

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Lchd;->b()Lche;

    move-result-object v7

    invoke-interface {v7}, Lche;->b()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    new-array v9, v7, [J

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_4

    aget-object v11, v5, v10

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    invoke-static {v9}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    invoke-static {v1, v3, v4, v9}, Lbze;->j(ZZZ[J)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, v0, Ldvr;->n:Lfbz;

    invoke-interface {v3}, Lfbz;->a()J

    move-result-wide v3

    const-string v5, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    const/16 v6, 0xa

    invoke-static {v2, v5, v6}, Lmoz;->h(ZLjava/lang/String;I)V

    const-wide/16 v9, 0x0

    cmp-long v5, v3, v9

    if-nez v5, :cond_5

    const-string v3, "0"

    move-object v9, v3

    goto :goto_4

    :cond_5
    cmp-long v5, v3, v9

    if-lez v5, :cond_6

    invoke-static {v3, v4, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_4

    :cond_6
    ushr-long v11, v3, v2

    const-wide/16 v13, 0x5

    div-long/2addr v11, v13

    const-wide/16 v13, 0xa

    mul-long v15, v11, v13

    sub-long/2addr v3, v15

    const/16 v5, 0x40

    new-array v5, v5, [C

    long-to-int v4, v3

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    const/16 v4, 0x3f

    aput-char v3, v5, v4

    :goto_3
    cmp-long v3, v11, v9

    if-lez v3, :cond_7

    add-int/lit8 v4, v4, -0x1

    rem-long v8, v11, v13

    long-to-int v7, v8

    invoke-static {v7, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    aput-char v7, v5, v4

    div-long/2addr v11, v13

    const-wide/16 v9, 0x0

    goto :goto_3

    :cond_7
    rsub-int/lit8 v6, v4, 0x40

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v4, v6}, Ljava/lang/String;-><init>([CII)V

    move-object v9, v7

    :goto_4
    const-string v4, "external_session_id"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface/range {p1 .. p1}, Lchd;->d()Lfeb;

    move-result-object v4

    if-nez v4, :cond_8

    sget-object v4, Lgya;->a:Lgya;

    goto :goto_5

    :cond_8
    iget-boolean v5, v4, Lfeb;->f:Z

    if-eqz v5, :cond_9

    sget-object v4, Lgya;->f:Lgya;

    goto :goto_5

    :cond_9
    iget-boolean v5, v4, Lfeb;->g:Z

    if-eqz v5, :cond_a

    sget-object v4, Lgya;->g:Lgya;

    goto :goto_5

    :cond_a
    iget v5, v4, Lfeb;->e:I

    if-lez v5, :cond_b

    iget v5, v4, Lfeb;->b:I

    if-lez v5, :cond_b

    iget v5, v4, Lfeb;->c:I

    if-lez v5, :cond_b

    iget-object v4, v4, Lfeb;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    sget-object v4, Lgya;->j:Lgya;

    goto :goto_5

    :cond_b
    sget-object v4, Lgya;->a:Lgya;

    :goto_5
    invoke-interface/range {p1 .. p1}, Lchd;->b()Lche;

    move-result-object v5

    iget-object v6, v0, Ldvr;->g:Lgzm;

    sget-object v7, Lgzd;->at:Lgzr;

    invoke-interface {v6, v7}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-interface {v5}, Lche;->j()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Lche;->d()Lgxy;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-object v2, v0, Ldvr;->m:Lgxd;

    invoke-interface {v5}, Lche;->d()Lgxy;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lgxd;->b:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgxt;

    if-eqz v2, :cond_c

    iget-object v4, v2, Lgxt;->c:Lgya;

    :cond_c
    if-eqz v2, :cond_d

    iget-object v2, v2, Lgxt;->b:Landroid/net/Uri;

    goto :goto_6

    :cond_d
    invoke-interface/range {p1 .. p1}, Lchd;->b()Lche;

    move-result-object v2

    invoke-interface {v2}, Lche;->c()Landroid/net/Uri;

    move-result-object v2

    :goto_6
    sget-object v5, Lkqi;->c:Lkqi;

    iget-object v5, v5, Lkqi;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "content"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, v0, Ldvr;->l:Ldio;

    iget-object v6, v6, Ldio;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "processing"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v5, "processing_uri_intent_extra"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v11, v4

    goto :goto_7

    :cond_e
    invoke-interface {v5}, Lche;->c()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v2, v6

    const-string v6, "Item is no longer in progress but data doesn\'t have a valid URI."

    invoke-static {v2, v6}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-interface {v5}, Lche;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v11, v4

    :goto_7
    iget-object v2, v0, Ldvr;->o:Limo;

    invoke-virtual {v2}, Limo;->a()Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v8, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object v12, v3

    move v13, v8

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    move-object v12, v2

    const/4 v13, 0x0

    :goto_8
    iget-object v8, v0, Ldvr;->n:Lfbz;

    invoke-interface/range {p1 .. p1}, Lchd;->b()Lche;

    move-result-object v2

    invoke-interface {v2}, Lche;->j()Z

    move-result v10

    invoke-interface/range {v8 .. v13}, Lfbz;->E(Ljava/lang/String;ZLgya;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ldvr;->i(Landroid/content/Intent;)Lnou;

    move-result-object v1

    return-object v1
.end method

.method public final h(Lchd;)Lnou;
    .locals 3

    iget-object v0, p0, Ldvr;->h:Lnou;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iget-object v0, p0, Ldvr;->c:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchj;

    invoke-interface {v0}, Lchj;->g()Lnou;

    move-result-object v0

    new-instance v1, Ldvn;

    invoke-direct {v1, p0, p1}, Ldvn;-><init>(Ldvr;Lnph;)V

    iget-object v2, p0, Ldvr;->f:Ljuh;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ldvr;->g(Lchd;)Lnou;

    move-result-object p1

    return-object p1
.end method
