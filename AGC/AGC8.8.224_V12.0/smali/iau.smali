.class public final Liau;
.super Ljava/lang/Object;

# interfaces
.implements Libj;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final A:Lbkc;

.field public final b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public c:Libh;

.field public final d:Liff;

.field public final e:Leoa;

.field public f:Z

.field public g:Lika;

.field public final h:Licb;

.field public final i:Lgeh;

.field public final j:Lmrl;

.field public final k:Liaw;

.field private final l:Landroid/view/WindowManager;

.field private m:Libi;

.field private final n:Ljava/util/ArrayList;

.field private o:I

.field private final p:Landroid/content/Context;

.field private final q:Lkbc;

.field private final r:Z

.field private final s:Lfbz;

.field private final t:Lhkc;

.field private final u:Z

.field private final v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

.field private final z:Lcdi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/modeswitch/ModeSwitchControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Liau;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Lfbz;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lcdi;Liff;Leoa;Licb;ZLkbc;Landroid/content/Context;Lbkc;Lflh;Lhkc;Lgeh;Ldhi;Lmrl;[B[B)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p8

    move-object/from16 v3, p10

    move-object/from16 v4, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v0, Liau;->x:Z

    iput-object v1, v0, Liau;->l:Landroid/view/WindowManager;

    move-object v5, p3

    iput-object v5, v0, Liau;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object v5, p4

    iput-object v5, v0, Liau;->z:Lcdi;

    move-object v5, p5

    iput-object v5, v0, Liau;->d:Liff;

    move-object v5, p6

    iput-object v5, v0, Liau;->e:Leoa;

    move-object v5, p7

    iput-object v5, v0, Liau;->h:Licb;

    iput-object v3, v0, Liau;->p:Landroid/content/Context;

    move-object/from16 v5, p9

    iput-object v5, v0, Liau;->q:Lkbc;

    move-object/from16 v5, p11

    iput-object v5, v0, Liau;->A:Lbkc;

    iput-boolean v2, v0, Liau;->r:Z

    move-object v6, p2

    iput-object v6, v0, Liau;->s:Lfbz;

    move-object/from16 v6, p13

    iput-object v6, v0, Liau;->t:Lhkc;

    move-object/from16 v6, p14

    iput-object v6, v0, Liau;->i:Lgeh;

    move-object/from16 v6, p16

    iput-object v6, v0, Liau;->j:Lmrl;

    new-instance v6, Liaw;

    invoke-direct {v6, p0, p1, v3}, Liaw;-><init>(Libk;Landroid/view/WindowManager;Landroid/content/Context;)V

    iput-object v6, v0, Liau;->k:Liaw;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Liau;->n:Ljava/util/ArrayList;

    sget-object v3, Ldhx;->e:Ldhj;

    invoke-interface {v4, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    iput-boolean v3, v0, Liau;->u:Z

    sget-object v6, Ldgu;->aj:Ldhj;

    invoke-interface {v4, v6}, Ldhi;->l(Ldhj;)Z

    move-result v4

    iput-boolean v4, v0, Liau;->v:Z

    sget-object v6, Lika;->m:Lika;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    sget-object v3, Lika;->l:Lika;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    sget-object v2, Lika;->g:Lika;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Lika;->b:Lika;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lika;->c:Lika;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    sget-object v2, Lika;->t:Lika;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v2, Lika;->p:Lika;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p11 .. p11}, Lbkc;->e()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcdg;->d(Landroid/content/Intent;)Lika;

    move-result-object v2

    invoke-virtual {v2}, Lika;->ordinal()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    sget-object v2, Lika;->b:Lika;

    iput-object v2, v0, Liau;->g:Lika;

    goto :goto_1

    :sswitch_0
    sget-object v2, Lika;->c:Lika;

    goto :goto_0

    :goto_0
    :sswitch_1
    iput-object v2, v0, Liau;->g:Lika;

    :goto_1
    iget-object v2, v0, Liau;->g:Lika;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Liau;->z(I)V

    iput v1, v0, Liau;->o:I

    move-object/from16 v1, p12

    invoke-interface {v1, p0}, Lflh;->a(Libj;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_0
        0xf -> :sswitch_1
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method private final y(Lika;Z)V
    .locals 10

    iget-object v0, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Liau;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Liau;->d:Liff;

    invoke-interface {v0, v1}, Liff;->E(Z)V

    iget-object v0, p0, Liau;->e:Leoa;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Leoa;->g(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Liau;->f:Z

    new-instance v4, Lkte;

    iget-object v3, p0, Liau;->s:Lfbz;

    iget-object v5, p0, Liau;->t:Lhkc;

    iget-object v6, p0, Liau;->g:Lika;

    invoke-direct {v4, v3, v5, v6, p1}, Lkte;-><init>(Lfbz;Lhkc;Lika;Lika;)V

    iget-object v3, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, p0, Liau;->o:I

    if-ge v3, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-le v3, v5, :cond_3

    :goto_0
    const/16 v0, 0xfa

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    new-instance p2, Liar;

    invoke-direct {p2, p0, v2, v1}, Liar;-><init>(Liau;II)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    new-instance p2, Liat;

    invoke-direct {p2, p0}, Liat;-><init>(Liau;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    new-instance p2, Lhxc;

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lhxc;-><init>(Lkte;I[B[B[B)V

    iget-object v0, p0, Liau;->c:Libh;

    if-eqz v0, :cond_5

    iget-object v0, p0, Liau;->z:Lcdi;

    invoke-virtual {v0}, Lcdi;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Liau;->g:Lika;

    if-eq v0, p1, :cond_5

    iput-object p1, p0, Liau;->g:Lika;

    iget-object v0, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Liau;->z(I)V

    iput v0, p0, Liau;->o:I

    iget-object v0, p0, Liau;->y:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    new-instance v2, Lias;

    invoke-direct {v2, p0, v1}, Lias;-><init>(Liau;I)V

    invoke-virtual {v0, p1, v2, p2}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->l(Lika;Liij;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method private static z(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lmoz;->p(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Liau;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b()V
    .locals 3

    sget-object v0, Lika;->b:Lika;

    iget-object v1, p0, Liau;->h:Licb;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Licb;->o(Lika;Z)V

    invoke-direct {p0, v0, v2}, Liau;->y(Lika;Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Liau;->h:Licb;

    invoke-interface {v0}, Licb;->m()V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Liau;->h:Licb;

    invoke-interface {v0, p1}, Licb;->n(Z)V

    return-void
.end method

.method public final e(Lihg;)V
    .locals 1

    iget-object p1, p1, Lihg;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iput-object p1, p0, Liau;->y:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iget-object p1, p0, Liau;->g:Lika;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Liau;->q:Lkbc;

    const-string v0, "ModeSwitchCtrl#init"

    invoke-interface {p1, v0}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, p0, Liau;->h:Licb;

    invoke-interface {p1, p0}, Licb;->r(Licc;)V

    iget-object p1, p0, Liau;->h:Licb;

    iget-object v0, p0, Liau;->s:Lfbz;

    invoke-interface {p1, v0}, Licb;->t(Lfbz;)V

    iget-object p1, p0, Liau;->h:Licb;

    sget-object v0, Lika;->m:Lika;

    invoke-interface {p1, v0}, Licb;->j(Lika;)V

    iget-boolean p1, p0, Liau;->u:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Liau;->h:Licb;

    sget-object v0, Lika;->l:Lika;

    invoke-interface {p1, v0}, Licb;->j(Lika;)V

    :cond_0
    iget-boolean p1, p0, Liau;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Liau;->h:Licb;

    sget-object v0, Lika;->g:Lika;

    invoke-interface {p1, v0}, Licb;->j(Lika;)V

    :cond_1
    iget-object p1, p0, Liau;->h:Licb;

    sget-object v0, Lika;->b:Lika;

    invoke-interface {p1, v0}, Licb;->j(Lika;)V

    iget-object p1, p0, Liau;->h:Licb;

    sget-object v0, Lika;->c:Lika;

    invoke-interface {p1, v0}, Licb;->j(Lika;)V

    iget-boolean p1, p0, Liau;->v:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Liau;->h:Licb;

    sget-object v0, Lika;->t:Lika;

    invoke-interface {p1, v0}, Licb;->j(Lika;)V

    :cond_2
    iget-object p1, p0, Liau;->h:Licb;

    iget-object v0, p0, Liau;->g:Lika;

    invoke-interface {p1, v0}, Licb;->l(Lika;)V

    iget-object p1, p0, Liau;->q:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final f(Lika;)V
    .locals 1

    iget-object v0, p0, Liau;->g:Lika;

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Liau;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Liau;->y(Lika;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Liau;->j(Lika;Z)V

    :cond_0
    return-void
.end method

.method public final g(Lika;)V
    .locals 6

    iget-object v0, p0, Liau;->m:Libi;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Liau;->w:Z

    if-eqz v1, :cond_9

    check-cast v0, Lert;

    iget-object v1, v0, Lert;->T:Lcdi;

    invoke-virtual {v1}, Lcdi;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lika;->j:Lika;

    if-ne p1, v1, :cond_1

    iput-boolean v2, v0, Lert;->v:Z

    iget-object v1, v0, Lert;->M:Loiw;

    check-cast v1, Licr;

    invoke-virtual {v1}, Licr;->b()Lmbe;

    move-result-object v1

    invoke-virtual {v1}, Lmbe;->a()V

    iget-object v0, v0, Lert;->I:Ljwb;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    sget-object v3, Lika;->q:Lika;

    if-ne p1, v3, :cond_2

    iput-boolean v2, v0, Lert;->v:Z

    iget-object v1, v0, Lert;->M:Loiw;

    check-cast v1, Licr;

    invoke-virtual {v1}, Licr;->b()Lmbe;

    move-result-object v1

    iget-object v3, v0, Lert;->c:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v5, Lodu;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v5, v3}, Lodu;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v5}, Lodu;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.google.vr.apps.ornament.measure.MeasureMainActivity"

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Lmbe;->b(Landroid/content/Intent;)V

    iget-object v0, v0, Lert;->K:Ljwb;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    sget-object v4, Lika;->s:Lika;

    if-ne p1, v4, :cond_3

    iput-boolean v2, v0, Lert;->v:Z

    iget-object v1, v0, Lert;->M:Loiw;

    check-cast v1, Licr;

    invoke-virtual {v1}, Licr;->b()Lmbe;

    move-result-object v1

    invoke-virtual {v1}, Lmbe;->c()V

    iget-object v0, v0, Lert;->L:Ljwb;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    sget-object v5, Lika;->k:Lika;

    if-ne p1, v5, :cond_4

    iput-boolean v2, v0, Lert;->v:Z

    iget-object v1, v0, Lert;->N:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhzh;

    invoke-virtual {v1}, Lhzh;->b()Lnou;

    move-result-object v1

    new-instance v3, Leth;

    invoke-direct {v3, v0, v2}, Leth;-><init>(Lert;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, v0, Lert;->o:Lcha;

    if-eq p1, v1, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v5, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    move-object v1, v0

    check-cast v1, Lcie;

    iget-object v1, v1, Lcie;->y:Lfbz;

    invoke-static {p1}, Lijy;->e(Lika;)I

    move-result v3

    invoke-interface {v1, v3, v2}, Lfbz;->Z(II)V

    :cond_6
    check-cast v0, Lcie;

    iget-object v1, v0, Lcie;->i:Liff;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Liff;->G(Z)V

    sget-object v1, Lika;->e:Lika;

    if-eq p1, v1, :cond_7

    sget-object v1, Lika;->r:Lika;

    if-eq p1, v1, :cond_7

    iget-object v1, v0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    new-instance v3, Lias;

    invoke-direct {v3, v0, v2}, Lias;-><init>(Lcie;I)V

    sget-object v0, Lchy;->a:Lchy;

    invoke-virtual {v1, p1, v3, v0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->l(Lika;Liij;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->f(Lika;)V

    iget-object v1, v0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->k()V

    sget-object v1, Lika;->r:Lika;

    if-ne p1, v1, :cond_8

    iget-object v1, v0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->d()V

    iget-object v1, v0, Lcie;->e:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->e()V

    :cond_8
    invoke-virtual {v0, p1}, Lcie;->q(Lika;)V

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    :goto_1
    new-instance v1, Lcoi;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, Lcoi;-><init>(Liau;Lika;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_9
    return-void
.end method

.method public final h(Z)V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iput-boolean p1, p0, Liau;->x:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Liau;->w:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Liau;->k:Liaw;

    const/4 v0, 0x1

    iput-boolean v0, p1, Liaw;->a:Z

    iget-object p1, p0, Liau;->h:Licb;

    invoke-interface {p1, v0}, Licb;->p(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Liau;->k:Liaw;

    const/4 v0, 0x0

    iput-boolean v0, p1, Liaw;->a:Z

    iget-object p1, p0, Liau;->h:Licb;

    invoke-interface {p1, v0}, Licb;->p(Z)V

    return-void
.end method

.method public final i(Libh;)V
    .locals 0

    iput-object p1, p0, Liau;->c:Libh;

    return-void
.end method

.method public final j(Lika;Z)V
    .locals 2

    invoke-virtual {p1}, Lika;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/Globals;->setSMode(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Liau;->g:Lika;

    if-eq v0, p1, :cond_3

    iget-boolean v0, p0, Liau;->f:Z

    if-nez v0, :cond_3

    iput-object p1, p0, Liau;->g:Lika;

    invoke-virtual {p0, p1}, Liau;->s(Lika;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Liau;->z(I)V

    iput p1, p0, Liau;->o:I

    goto :goto_1

    :cond_0
    sget-object v0, Lika;->n:Lika;

    invoke-virtual {p1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lika;->f:Lika;

    invoke-virtual {p1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Liau;->n:Ljava/util/ArrayList;

    sget-object v0, Lika;->p:Lika;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Liau;->z(I)V

    iput p1, p0, Liau;->o:I

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p1, Lika;->c:Lika;

    iput-object p1, p0, Liau;->g:Lika;

    iget-object v0, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Liau;->z(I)V

    iput p1, p0, Liau;->o:I

    :goto_1
    iget-object p1, p0, Liau;->h:Licb;

    iget-object v0, p0, Liau;->g:Lika;

    invoke-interface {p1, v0, p2}, Licb;->o(Lika;Z)V

    return-void

    :cond_3
    return-void
.end method

.method public final k(Libi;)V
    .locals 0

    iput-object p1, p0, Liau;->m:Libi;

    return-void
.end method

.method public final l(Z)V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iput-boolean p1, p0, Liau;->w:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Liau;->x:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Liau;->k:Liaw;

    const/4 v0, 0x1

    iput-boolean v0, p1, Liaw;->a:Z

    iget-object p1, p0, Liau;->h:Licb;

    invoke-interface {p1, v0}, Licb;->p(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Liau;->k:Liaw;

    const/4 v0, 0x0

    iput-boolean v0, p1, Liaw;->a:Z

    iget-object p1, p0, Liau;->h:Licb;

    invoke-interface {p1, v0}, Licb;->p(Z)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Liau;->h:Licb;

    invoke-interface {v0}, Licb;->u()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Liau;->h:Licb;

    invoke-interface {v0}, Licb;->v()V

    return-void
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, Liau;->o:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 2

    iget v0, p0, Liau;->o:I

    iget-object v1, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Liau;->w:Z

    return v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Liau;->k:Liaw;

    iget-boolean v0, v0, Liaw;->a:Z

    return v0
.end method

.method public final s(Lika;)Z
    .locals 1

    iget-object v0, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final t(Lika;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "requested mode is null"

    invoke-static {v2, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v2, p0, Liau;->g:Lika;

    if-ne v2, p1, :cond_1

    sget-object p1, Liau;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v1, "requested mode is currently active"

    const/16 v2, 0xfee

    invoke-static {p1, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return v0

    :cond_1
    iget-boolean v2, p0, Liau;->f:Z

    if-eqz v2, :cond_2

    sget-object p1, Liau;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "scroll is currently in progress; don\'t know what to do with this."

    const/16 v2, 0xfed

    invoke-static {p1, v0, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return v1

    :cond_2
    iget-boolean v2, p0, Liau;->w:Z

    if-nez v2, :cond_3

    sget-object p1, Liau;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "mode switch requested when switcher is disabled. Ignoring."

    const/16 v2, 0xfec

    invoke-static {p1, v0, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Liau;->s(Lika;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Liau;->f(Lika;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Liau;->g(Lika;)V

    :goto_1
    return v0
.end method

.method public final u(IZ)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Liau;->o()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Liau;->p()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_1
    iget-object v2, p0, Liau;->j:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->a:Lhys;

    iget-object v2, v2, Lhys;->i:Lhyn;

    sget-object v3, Lhyn;->d:Lhyn;

    invoke-virtual {v2, v3}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    if-eqz p2, :cond_b

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Liau;->p()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p1, p0, Liau;->o:I

    add-int/2addr p1, v0

    :goto_0
    iget-object v3, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lika;->p:Lika;

    if-ne v3, v4, :cond_4

    iget v3, p0, Liau;->o:I

    if-eq p1, v3, :cond_4

    iget-object v3, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt p1, v3, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget p2, p0, Liau;->o:I

    if-eq p1, p2, :cond_5

    iget-object p2, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lika;

    goto/16 :goto_3

    :cond_5
    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0}, Liau;->o()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    iget p1, p0, Liau;->o:I

    add-int/lit8 p1, p1, -0x1

    :goto_1
    iget-object p2, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    sget-object v3, Lika;->p:Lika;

    if-ne p2, v3, :cond_9

    iget p2, p0, Liau;->o:I

    if-eq p1, p2, :cond_9

    if-gtz p1, :cond_8

    iget-object p1, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_2

    :cond_8
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_9
    iget p2, p0, Liau;->o:I

    if-eq p1, p2, :cond_a

    iget-object p2, p0, Liau;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lika;

    goto :goto_3

    :cond_a
    goto :goto_3

    :cond_b
    if-ne p1, v1, :cond_c

    invoke-virtual {p0}, Liau;->p()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p1, p0, Liau;->n:Ljava/util/ArrayList;

    iget p2, p0, Liau;->o:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lika;

    goto :goto_3

    :cond_c
    if-ne p1, v0, :cond_d

    invoke-virtual {p0}, Liau;->o()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Liau;->n:Ljava/util/ArrayList;

    iget p2, p0, Liau;->o:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lika;

    goto :goto_3

    :cond_d
    :goto_3
    if-eqz v2, :cond_e

    iget-object p1, p0, Liau;->s:Lfbz;

    iget-object p2, p0, Liau;->g:Lika;

    invoke-virtual {p2}, Lika;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Lika;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, p2, v3}, Lfbz;->ac(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Liau;->y(Lika;Z)V

    :cond_e
    return-void

    :cond_f
    return-void
.end method

.method public final v(Z)V
    .locals 1

    iget-object v0, p0, Liau;->h:Licb;

    invoke-interface {v0, p1}, Licb;->A(Z)V

    return-void
.end method

.method public final w(Lika;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Liau;->y(Lika;Z)V

    return-void
.end method

.method public final x()Liaw;
    .locals 1

    iget-object v0, p0, Liau;->k:Liaw;

    return-object v0
.end method
