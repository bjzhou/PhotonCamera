.class public final Lckk;
.super Ljava/lang/Object;

# interfaces
.implements Lckq;


# static fields
.field static final a:Lj$/time/Duration;

.field private static final z:Lnak;


# instance fields
.field private final A:Ljuh;

.field private final B:Lell;

.field private final C:Ljwb;

.field private final D:Ljwb;

.field private final E:Ldhi;

.field private final F:Lmqp;

.field private final G:Lgeh;

.field private final H:Z

.field private final I:Lhrq;

.field private final J:Ljava/lang/Runnable;

.field private K:Landroid/content/Context;

.field private L:Landroid/widget/ImageButton;

.field private M:Licf;

.field private N:Licf;

.field private O:Licf;

.field private P:Licf;

.field private Q:Licf;

.field private R:Lkad;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Z

.field private V:Lhyn;

.field private W:Liko;

.field public final b:Lebl;

.field public final c:Ljwb;

.field public final d:Ljwb;

.field public final e:Ljwb;

.field public final f:Lfbz;

.field public final g:Ljvs;

.field public final h:Ljwb;

.field public final i:Ljwb;

.field public final j:Lhmb;

.field public final k:Lebi;

.field public final l:Ljvk;

.field public final m:Ljwb;

.field public final n:Lhws;

.field public final o:Litm;

.field public p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

.field public q:Z

.field public r:Z

.field public s:Lika;

.field public t:Ljuf;

.field public u:Z

.field public v:Z

.field public w:I

.field public x:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field public final y:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lckk;->a:Lj$/time/Duration;

    const-string v0, "com/google/android/apps/camera/autonightsight/AutoNightSightToggleControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lckk;->z:Lnak;

    return-void
.end method

.method public constructor <init>(Ljwb;Lebl;Ljuh;Lell;Ljew;Lfbz;Ljwb;Lgzn;Ljvs;Ljwb;Ldhi;Lhmb;Lmqp;Lgeh;Lebi;Ljwb;Lhws;Litm;Ljew;Lhrq;[B[B[B[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljvk;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lckk;->d:Ljwb;

    new-instance v2, Ljvk;

    invoke-direct {v2, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lckk;->e:Ljwb;

    new-instance v2, Ljvk;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v4

    invoke-direct {v2, v4}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lckk;->l:Ljvk;

    new-instance v2, Lcdw;

    const/16 v4, 0x11

    invoke-direct {v2, p0, v4}, Lcdw;-><init>(Lckk;I)V

    iput-object v2, v0, Lckk;->J:Ljava/lang/Runnable;

    iput-boolean v3, v0, Lckk;->q:Z

    iput-boolean v3, v0, Lckk;->r:Z

    sget-object v2, Lika;->a:Lika;

    iput-object v2, v0, Lckk;->s:Lika;

    iput-boolean v3, v0, Lckk;->U:Z

    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V

    iput-object v2, v0, Lckk;->t:Ljuf;

    iput v3, v0, Lckk;->w:I

    iput-boolean v3, v0, Lckk;->u:Z

    sget-object v2, Lhyn;->b:Lhyn;

    iput-object v2, v0, Lckk;->V:Lhyn;

    sget-object v2, Liko;->a:Liko;

    iput-object v2, v0, Lckk;->W:Liko;

    iput-boolean v3, v0, Lckk;->v:Z

    move-object v2, p2

    iput-object v2, v0, Lckk;->b:Lebl;

    move-object v2, p3

    iput-object v2, v0, Lckk;->A:Ljuh;

    move-object v2, p1

    iput-object v2, v0, Lckk;->c:Ljwb;

    move-object v2, p4

    iput-object v2, v0, Lckk;->B:Lell;

    move-object v2, p5

    iput-object v2, v0, Lckk;->y:Ljew;

    move-object v2, p6

    iput-object v2, v0, Lckk;->f:Lfbz;

    move-object v2, p9

    iput-object v2, v0, Lckk;->g:Ljvs;

    move-object v2, p7

    iput-object v2, v0, Lckk;->h:Ljwb;

    move-object/from16 v2, p10

    iput-object v2, v0, Lckk;->i:Ljwb;

    sget-object v2, Lgzd;->s:Lgzu;

    invoke-interface {p8, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v2

    iput-object v2, v0, Lckk;->C:Ljwb;

    sget-object v2, Lgzd;->t:Lgzu;

    invoke-interface {p8, v2}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v1

    iput-object v1, v0, Lckk;->D:Ljwb;

    move-object/from16 v1, p11

    iput-object v1, v0, Lckk;->E:Ldhi;

    move-object/from16 v1, p12

    iput-object v1, v0, Lckk;->j:Lhmb;

    move-object/from16 v1, p13

    iput-object v1, v0, Lckk;->F:Lmqp;

    move-object/from16 v1, p14

    iput-object v1, v0, Lckk;->G:Lgeh;

    move-object/from16 v1, p15

    iput-object v1, v0, Lckk;->k:Lebi;

    move-object/from16 v1, p16

    iput-object v1, v0, Lckk;->m:Ljwb;

    move-object/from16 v1, p17

    iput-object v1, v0, Lckk;->n:Lhws;

    move-object/from16 v1, p18

    iput-object v1, v0, Lckk;->o:Litm;

    invoke-virtual/range {p19 .. p19}, Ljew;->L()Z

    move-result v1

    iput-boolean v1, v0, Lckk;->H:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lckk;->I:Lhrq;

    return-void
.end method

.method public static C(Lgcc;Lgyu;Z)Z
    .locals 1

    iget p0, p0, Lgcc;->e:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lgyu;->a:Lgyu;

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final H(ZLcks;Lika;)I
    .locals 1

    sget-object v0, Lika;->m:Lika;

    if-eq p2, v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    sget-object p0, Lcks;->a:Lcks;

    invoke-virtual {p1}, Lcks;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x2

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final I(ZZ)V
    .locals 4

    iget-object v0, p0, Lckk;->n:Lhws;

    invoke-interface {v0}, Lhws;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckk;->n:Lhws;

    iget-object v1, p0, Lckk;->c:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lckk;->m:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcks;

    iget-object v3, p0, Lckk;->s:Lika;

    invoke-static {v1, v2, v3}, Lckk;->H(ZLcks;Lika;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lhws;->r(IZZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lckk;->n:Lhws;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lhws;->i(Z)V

    return-void
.end method

.method private final J(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lckk;->c()V

    iget-object v0, p0, Lckk;->n:Lhws;

    invoke-interface {v0, p1}, Lhws;->d(Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lckk;->o:Litm;

    check-cast p1, Lisi;

    iget-object p1, p1, Lisi;->E:Lita;

    invoke-virtual {p1}, Lisk;->b()V

    :cond_0
    return-void
.end method

.method private final K()V
    .locals 4

    new-instance v0, Lish;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lish;-><init>(Lckk;I)V

    iget-object v1, p0, Lckk;->o:Litm;

    check-cast v1, Lisi;

    iget-object v1, v1, Lisi;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lckk;->t:Ljuf;

    new-instance v2, Lchq;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lchq;-><init>(Lckk;Litk;I)V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method private final L(Ljvs;)V
    .locals 3

    iget-object v0, p0, Lckk;->t:Ljuf;

    invoke-static {p1}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object p1

    new-instance v1, Lcbl;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lcbl;-><init>(Lckk;I)V

    iget-object v2, p0, Lckk;->A:Ljuh;

    invoke-interface {p1, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method private final M(Lika;)V
    .locals 2

    sget-object v0, Lika;->m:Lika;

    invoke-virtual {p1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lckk;->n:Lhws;

    invoke-interface {p1}, Lhws;->w()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lckk;->n:Lhws;

    invoke-interface {p1}, Lhws;->x()V

    :goto_0
    new-instance p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {p1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lckk;)V

    iput-object p1, p0, Lckk;->x:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v0, p0, Lckk;->n:Lhws;

    invoke-interface {v0, p1}, Lhws;->y(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    iget-object p1, p0, Lckk;->t:Ljuf;

    new-instance v0, Lcfh;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcfh;-><init>(Lckk;I)V

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method private final N(Lika;)V
    .locals 4

    iget-object v0, p0, Lckk;->t:Ljuf;

    const/4 v1, 0x2

    new-array v1, v1, [Ljvs;

    const/4 v2, 0x0

    iget-object v3, p0, Lckk;->c:Ljwb;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lckk;->m:Ljwb;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lccp;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lccp;-><init>(Lckk;Lika;I)V

    iget-object p1, p0, Lckk;->A:Ljuh;

    invoke-interface {v1, v2, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method private final O()V
    .locals 3

    iget-object v0, p0, Lckk;->L:Landroid/widget/ImageButton;

    new-instance v1, Lhu;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lhu;-><init>(Lckk;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final declared-synchronized P(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "AutoNightSightToggleControllerImpl"

    iget-object v1, p0, Lckk;->G:Lgeh;

    const v2, 0x7f0801b8

    const v3, 0x7f1401ab

    invoke-interface {v1, p1, v2, v3, v0}, Lgeh;->v(ZIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized Q(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean p1, p0, Lckk;->v:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lckk;->B:Lell;

    iget-object v0, p0, Lckk;->Q:Licf;

    invoke-interface {p1, v0}, Lell;->d(Lelk;)Lkad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lckk;->B:Lell;

    iget-object v0, p0, Lckk;->Q:Licf;

    invoke-interface {p1, v0}, Lell;->g(Lelk;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final R(ZZ)V
    .locals 2

    iget-object v0, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const/4 v1, 0x1

    if-eq v1, p2, :cond_0

    const p2, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    iput p2, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g:F

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setAlpha(F)V

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const v0, 0x7f1400fe

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g(I)V

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const v0, 0x7f080416

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e(I)V

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0801b8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-static {v0}, Linb;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    iget-object p2, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const v0, 0x7f1400fd

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g(I)V

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f080415

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_4

    const v1, 0x7f0b03b2

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-static {v1}, Linb;->k(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e(I)V

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0801b7

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-static {v0}, Linb;->j(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_5
    iget-object p2, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p1, p0, Lckk;->k:Lebi;

    iget-boolean p1, p1, Lebi;->h:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const p2, 0x7f1400f4

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g(I)V

    :cond_6
    return-void
.end method

.method private final S()Z
    .locals 2

    iget-object v0, p0, Lckk;->s:Lika;

    sget-object v1, Lika;->m:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lckk;->b:Lebl;

    invoke-virtual {v0}, Lebl;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lckk;->b:Lebl;

    invoke-virtual {v0}, Lebl;->d()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lckk;->U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckk;->D:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lckk;->C:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    :goto_0
    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lckk;->d:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "ns"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_1
    iget-object v0, p0, Lckk;->d:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lckk;->d:Ljwb;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lckk;->G(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final B()Z
    .locals 2

    iget-boolean v0, p0, Lckk;->U:Z

    const-string v1, "ns"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckk;->D:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lckk;->C:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final D(Lj$/time/Duration;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lckk;->I(ZZ)V

    iget-object v1, p0, Lckk;->n:Lhws;

    invoke-interface {v1}, Lhws;->o()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v2, Lckk;->a:Lj$/time/Duration;

    invoke-virtual {p1, v2}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lckk;->E:Ldhi;

    sget-object v1, Ldhu;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->e()V

    invoke-virtual {p0}, Lckk;->j()V

    return v0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lckk;->h(ZZ)V

    iget-object p1, p0, Lckk;->n:Lhws;

    invoke-interface {p1, v0}, Lhws;->i(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final E(Lgyu;ZI)V
    .locals 1

    sget-object v0, Liko;->a:Liko;

    sget-object v0, Lika;->a:Lika;

    add-int/lit8 p3, p3, -0x1

    packed-switch p3, :pswitch_data_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lckk;->N:Licf;

    iput-object p1, p0, Lckk;->O:Licf;

    goto :goto_1

    :pswitch_0
    sget-object p3, Lgyu;->a:Lgyu;

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lckk;->M:Licf;

    iput-object p1, p0, Lckk;->O:Licf;

    goto :goto_1

    :cond_0
    sget-object p3, Lgyu;->a:Lgyu;

    if-eq p1, p3, :cond_1

    iget-object p1, p0, Lckk;->M:Licf;

    :goto_0
    iput-object p1, p0, Lckk;->O:Licf;

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lckk;->N:Licf;

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lckk;->q:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lckk;->b:Lebl;

    invoke-virtual {p1}, Lebl;->d()Ljvs;

    move-result-object p1

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    :goto_2
    invoke-virtual {p0, p2}, Lckk;->q(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final F(Lfuz;)V
    .locals 1

    invoke-virtual {p1}, Lklw;->k()Lklv;

    move-result-object p1

    sget-object v0, Lklv;->a:Lklv;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lckk;->U:Z

    invoke-virtual {p0}, Lckk;->A()V

    return-void
.end method

.method public final G(ZI)V
    .locals 3

    iget-object v0, p0, Lckk;->f:Lfbz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lckk;->g:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lckk;->s:Lika;

    invoke-interface {v0, p1, v1, v2, p2}, Lfbz;->ad(ZFLika;I)V

    :cond_0
    return-void
.end method

.method public final a(Lika;Lgcb;Ljvs;)Lkad;
    .locals 6

    iget-object v0, p0, Lckk;->t:Ljuf;

    invoke-virtual {v0}, Ljuf;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lckk;->t:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lckk;->t:Ljuf;

    iput-object p1, p0, Lckk;->s:Lika;

    sget-object v0, Liko;->a:Liko;

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p1}, Lika;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Not supported for mode "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :sswitch_0
    iget-object p2, p0, Lckk;->k:Lebi;

    iget-boolean p2, p2, Lebi;->h:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lckk;->d:Ljwb;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p2, p0, Lckk;->e:Ljwb;

    invoke-interface {p2, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-direct {p0, p3}, Lckk;->L(Ljvs;)V

    invoke-direct {p0}, Lckk;->O()V

    invoke-direct {p0, p1}, Lckk;->N(Lika;)V

    invoke-direct {p0, p1}, Lckk;->M(Lika;)V

    invoke-direct {p0}, Lckk;->K()V

    invoke-virtual {p0, v1, v1}, Lckk;->o(ZZ)V

    iget-object p1, p0, Lckk;->e:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lckk;->d:Ljwb;

    check-cast p2, Ljvk;

    iget-object p2, p2, Ljvk;->d:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lckk;->z(ZZ)V

    goto/16 :goto_0

    :sswitch_1
    invoke-direct {p0}, Lckk;->O()V

    iget-object v0, p0, Lckk;->t:Ljuf;

    new-instance v2, Lcbl;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v3}, Lcbl;-><init>(Lckk;I)V

    iget-object v3, p0, Lckk;->A:Ljuh;

    invoke-virtual {p2, v2, v3}, Ljwh;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lckk;->t:Ljuf;

    iget-object v2, p0, Lckk;->h:Ljwb;

    new-instance v3, Lccp;

    const/4 v4, 0x2

    invoke-direct {v3, p0, p2, v4}, Lccp;-><init>(Lckk;Lgcb;I)V

    iget-object v5, p0, Lckk;->A:Ljuh;

    invoke-interface {v2, v3, v5}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lckk;->t:Ljuf;

    iget-object v2, p0, Lckk;->j:Lhmb;

    invoke-virtual {v2}, Lhmb;->a()Ljvs;

    move-result-object v2

    new-instance v3, Lccp;

    const/4 v5, 0x4

    invoke-direct {v3, p0, p2, v5}, Lccp;-><init>(Lckk;Lgcb;I)V

    iget-object p2, p0, Lckk;->A:Ljuh;

    invoke-interface {v2, v3, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljuf;->d(Lkad;)V

    iget-object p2, p0, Lckk;->t:Ljuf;

    new-array v0, v4, [Ljvs;

    iget-object v2, p0, Lckk;->D:Ljwb;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lckk;->C:Ljwb;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    new-instance v2, Lcbl;

    const/16 v5, 0x11

    invoke-direct {v2, p0, v5}, Lcbl;-><init>(Lckk;I)V

    iget-object v5, p0, Lckk;->A:Ljuh;

    invoke-interface {v0, v2, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    iget-object p2, p0, Lckk;->t:Ljuf;

    new-array v0, v4, [Ljvs;

    iget-object v2, p0, Lckk;->e:Ljwb;

    aput-object v2, v0, v3

    iget-object v2, p0, Lckk;->d:Ljwb;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v0

    new-instance v2, Lcbl;

    const/16 v5, 0x10

    invoke-direct {v2, p0, v5}, Lcbl;-><init>(Lckk;I)V

    iget-object v5, p0, Lckk;->A:Ljuh;

    invoke-interface {v0, v2, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    iget-object p2, p0, Lckk;->t:Ljuf;

    iget-object v0, p0, Lckk;->b:Lebl;

    invoke-virtual {v0}, Lebl;->d()Ljvs;

    move-result-object v0

    new-instance v2, Lckj;

    invoke-direct {v2, p0, v4}, Lckj;-><init>(Lckk;I)V

    iget-object v4, p0, Lckk;->A:Ljuh;

    invoke-interface {v0, v2, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    iget-object p2, p0, Lckk;->t:Ljuf;

    iget-object v0, p0, Lckk;->b:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    new-instance v2, Lcbl;

    const/16 v4, 0x12

    invoke-direct {v2, p0, v4}, Lcbl;-><init>(Lckk;I)V

    iget-object v4, p0, Lckk;->A:Ljuh;

    invoke-interface {v0, v2, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    iget-object p2, p0, Lckk;->t:Ljuf;

    iget-object v0, p0, Lckk;->i:Ljwb;

    new-instance v2, Lckj;

    invoke-direct {v2, p0, v3}, Lckj;-><init>(Lckk;I)V

    iget-object v3, p0, Lckk;->A:Ljuh;

    invoke-interface {v0, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    iget-object p2, p0, Lckk;->t:Ljuf;

    iget-object v0, p0, Lckk;->d:Ljwb;

    new-instance v2, Lckj;

    invoke-direct {v2, p0, v1}, Lckj;-><init>(Lckk;I)V

    iget-object v1, p0, Lckk;->A:Ljuh;

    invoke-interface {v0, v2, v1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    iget-object p2, p0, Lckk;->k:Lebi;

    iget-boolean p2, p2, Lebi;->h:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p3}, Lckk;->L(Ljvs;)V

    invoke-direct {p0, p1}, Lckk;->N(Lika;)V

    invoke-direct {p0, p1}, Lckk;->M(Lika;)V

    invoke-direct {p0}, Lckk;->K()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lckk;->t:Ljuf;

    new-instance p2, Lcfh;

    const/4 p3, 0x5

    invoke-direct {p2, p0, p3}, Lcfh;-><init>(Lckk;I)V

    invoke-virtual {p1, p2}, Ljuf;->d(Lkad;)V

    new-instance p1, Lcfh;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lcfh;-><init>(Lckk;I)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lckk;->I(ZZ)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lckk;->k:Lebi;

    iget-object v0, v0, Lebi;->i:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lckk;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object v1, p0, Lckk;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lckk;->k:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lckk;->u:Z

    iget v0, p0, Lckk;->w:I

    if-eqz v0, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_2

    :cond_0
    invoke-direct {p0}, Lckk;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, v2}, Lckk;->h(ZZ)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lckk;->e()V

    return-void

    :cond_3
    invoke-direct {p0}, Lckk;->S()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2, v2}, Lckk;->o(ZZ)V

    return-void

    :cond_4
    invoke-virtual {p0, v1, v2}, Lckk;->o(ZZ)V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lckk;->J(ZZ)V

    invoke-direct {p0}, Lckk;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v0}, Lckk;->o(ZZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lckk;->o(ZZ)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lckk;->L:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lckk;->k:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lckk;->u:Z

    :cond_0
    return-void
.end method

.method public final h(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lckk;->o(ZZ)V

    invoke-virtual {p0}, Lckk;->c()V

    iget-object v0, p0, Lckk;->n:Lhws;

    invoke-interface {v0, p2}, Lhws;->v(Z)V

    iget-object p2, p0, Lckk;->o:Litm;

    check-cast p2, Lisi;

    iget-object p2, p2, Lisi;->E:Lita;

    invoke-virtual {p2}, Lisk;->m()V

    iget-object p2, p0, Lckk;->I:Lhrq;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lckk;->V:Lhyn;

    sget-object v0, Lhyn;->e:Lhyn;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lckk;->W:Liko;

    sget-object v0, Liko;->a:Liko;

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lckk;->I:Lhrq;

    invoke-virtual {p2, v1}, Lhrq;->b(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lckk;->s()V

    :cond_1
    return-void
.end method

.method public final i(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lckk;->o(ZZ)V

    invoke-direct {p0, p1, p2}, Lckk;->J(ZZ)V

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lckk;->i(ZZ)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lckk;->R:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    return-void
.end method

.method public final l(Landroid/view/ViewStub;Landroid/content/Context;)V
    .locals 9

    iput-object p2, p0, Lckk;->K:Landroid/content/Context;

    iget-object v0, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iput-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    :cond_0
    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    iput-object p1, p0, Lckk;->L:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f1400f7

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x8

    move-object v5, p2

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Lckk;->M:Licf;

    iget-object p1, p0, Lckk;->F:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v4, p0, Lckk;->F:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhly;

    invoke-interface {v4}, Lhly;->a()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x8

    move-object v5, p2

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Lckk;->N:Licf;

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f1400f6

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x2

    move-object v5, p2

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Lckk;->Q:Licf;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lckk;->k:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    const v1, 0x7f1400fb

    const/4 v2, 0x1

    if-eq v2, v0, :cond_2

    const v0, 0x7f1400f8

    goto :goto_0

    :cond_2
    const v0, 0x7f1400fb

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lckk;->S:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lckk;->k:Lebi;

    iget-boolean p2, p2, Lebi;->h:Z

    if-eq v2, p2, :cond_3

    const v1, 0x7f1400fa

    goto :goto_1

    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lckk;->T:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lckk;->o(ZZ)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lckk;->e:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lckk;->d:Ljwb;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lckk;->z(ZZ)V

    return-void
.end method

.method public final n()V
    .locals 0

    invoke-virtual {p0}, Lckk;->e()V

    return-void
.end method

.method public final o(ZZ)V
    .locals 2

    iget-object v0, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->b()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->d()V

    iget-object p1, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    iput-boolean v1, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->a:Z

    iget-object p1, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->b()V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->d()V

    iget-object p1, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    iput-boolean v1, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->a:Z

    iget-object p1, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->reverse()V

    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->b()V

    if-eqz p1, :cond_5

    iget p2, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g:F

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setAlpha(F)V

    if-eq v1, p1, :cond_6

    const/4 p1, 0x4

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setVisibility(I)V

    return-void
.end method

.method public final onLayoutUpdated(Lhyn;Liko;)V
    .locals 0

    iput-object p1, p0, Lckk;->V:Lhyn;

    iput-object p2, p0, Lckk;->W:Liko;

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->a(Liko;)V

    :cond_0
    return-void
.end method

.method public final synthetic onLayoutUpdated(Liko;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized p(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lckk;->E:Ldhi;

    sget-object v1, Ldhq;->ak:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lckk;->P(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lckk;->Q(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized q(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lckk;->O:Licf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lckk;->P:Licf;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lckk;->B:Lell;

    invoke-interface {v1, v0}, Lell;->g(Lelk;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lckk;->v:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lckk;->q:Z

    iget-object p1, p0, Lckk;->O:Licf;

    iput-object p1, p0, Lckk;->P:Licf;

    iget-object v0, p0, Lckk;->B:Lell;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final r()V
    .locals 6

    iget-object v0, p0, Lckk;->k:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v2, "catshark_toggle_tooltip"

    goto :goto_0

    :cond_0
    const-string v2, "catshark_agency_tooltip"

    :goto_0
    iget-object v3, p0, Lckk;->y:Ljew;

    invoke-virtual {v3, v2}, Ljew;->X(Ljava/lang/String;)I

    move-result v2

    iget-boolean v3, p0, Lckk;->r:Z

    if-nez v3, :cond_4

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lckk;->k()V

    iget-object v4, p0, Lckk;->S:Ljava/lang/String;

    if-lez v2, :cond_2

    iget-object v2, p0, Lckk;->e:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lckk;->d:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v4, p0, Lckk;->T:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_1
    new-instance v2, Lifx;

    invoke-direct {v2, v4}, Lifx;-><init>(Ljava/lang/String;)V

    sget-object v4, Liko;->a:Liko;

    sget-object v4, Lika;->a:Lika;

    iget-object v4, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object v4, v4, Lcom/google/android/apps/camera/ui/views/ToggleUi;->b:Liko;

    if-nez v4, :cond_3

    sget-object v4, Liko;->a:Liko;

    :cond_3
    invoke-virtual {v4}, Liko;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object v4, v4, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lifx;->q(Landroid/view/View;)V

    invoke-interface {v2}, Lify;->i()V

    goto :goto_2

    :pswitch_0
    iget-object v4, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object v4, v4, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lifx;->q(Landroid/view/View;)V

    iput v1, v2, Lifx;->b:I

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object v4, v4, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lifx;->r(Landroid/view/View;)V

    iput v3, v2, Lifx;->b:I

    :goto_2
    invoke-interface {v2}, Lifz;->k()V

    const/16 v4, 0x12c

    iput v4, v2, Lifx;->d:I

    const/16 v4, 0x1770

    iput v4, v2, Lifx;->e:I

    const/4 v4, 0x0

    iput-boolean v4, v2, Lifx;->c:Z

    new-instance v5, Lfeo;

    invoke-direct {v5, p0, v1}, Lfeo;-><init>(Lckk;I)V

    invoke-interface {v2, v5}, Liga;->d(Ljava/util/function/Supplier;)V

    new-instance v5, Lbnd;

    invoke-direct {v5, p0, v0, v3}, Lbnd;-><init>(Lckk;ZI)V

    iget-object v0, p0, Lckk;->A:Ljuh;

    invoke-interface {v2, v5, v0}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2}, Liga;->l()V

    iput-boolean v1, v2, Lifx;->g:Z

    iget-object v0, p0, Lckk;->B:Lell;

    iput-object v0, v2, Lifx;->i:Lell;

    const/4 v0, 0x4

    iput v0, v2, Lifx;->m:I

    iget-object v0, p0, Lckk;->K:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    iput-object v0, v2, Lifx;->j:Lj$/util/Optional;

    iput-boolean v4, v2, Lifx;->f:Z

    invoke-interface {v2}, Liga;->a()Lkad;

    move-result-object v0

    iput-object v0, p0, Lckk;->R:Lkad;

    return-void

    :cond_4
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lckk;->k:Lebi;

    iget-object v0, v0, Lebi;->i:Lj$/util/Optional;

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lckk;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object v1, p0, Lckk;->J:Ljava/lang/Runnable;

    iget-object v2, p0, Lckk;->k:Lebi;

    iget-object v2, v2, Lebi;->i:Lj$/util/Optional;

    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized t()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lckk;->v:Z

    invoke-virtual {p0}, Lckk;->j()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lckk;->p(Z)V

    invoke-virtual {p0}, Lckk;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lckk;->k:Lebi;

    iget-boolean v0, v0, Lebi;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lckk;->u:Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lckk;->i(ZZ)V

    return-void
.end method

.method public final declared-synchronized v()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lckk;->v:Z

    iget-object v0, p0, Lckk;->b:Lebl;

    invoke-virtual {v0}, Lebl;->d()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lckk;->e()V

    iget-object v0, p0, Lckk;->b:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lckk;->p(Z)V

    invoke-virtual {p0}, Lckk;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final w(Lj$/time/Duration;)V
    .locals 4

    iget-object v0, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lckk;->s:Lika;

    sget-object v1, Lika;->m:Lika;

    invoke-virtual {v0, v1}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lckk;->c:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p1}, Lj$/time/Duration;->isNegative()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lj$/time/Duration;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lckk;->z:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xe2

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    const-string v3, "Invalid capture duration %s"

    invoke-interface {v0, v3, v1, v2}, Lnah;->q(Ljava/lang/String;J)V

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iget-object v1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    float-to-double v2, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f14053b

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object v2, v1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lckk;->n:Lhws;

    invoke-interface {v1, p1, v0}, Lhws;->l(Lj$/time/Duration;Ljava/lang/String;)V

    return-void

    :cond_4
    return-void
.end method

.method public final x(Lj$/time/Duration;I)V
    .locals 1

    iget-object v0, p0, Lckk;->n:Lhws;

    invoke-interface {v0}, Lhws;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lckk;->n:Lhws;

    invoke-interface {p2, p1}, Lhws;->c(Lj$/time/Duration;)V

    return-void

    :cond_1
    const/16 p1, 0x64

    if-eq p2, p1, :cond_3

    iget-object v0, p0, Lckk;->n:Lhws;

    invoke-interface {v0}, Lhws;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p1, :cond_4

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lckk;->n:Lhws;

    invoke-interface {p1}, Lhws;->j()V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lckk;->n:Lhws;

    invoke-interface {p1}, Lhws;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lckk;->I(ZZ)V

    :cond_4
    return-void
.end method

.method public final declared-synchronized y()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lckk;->U:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lckk;->D:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lckk;->C:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lckk;->d:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lckk;->B()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    if-eqz v0, :cond_4

    :try_start_2
    iget-boolean v0, p0, Lckk;->U:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lckk;->D:Ljwb;

    const-string v1, "ns"

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lckk;->C:Ljwb;

    const-string v1, "ns"

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iget-boolean v0, p0, Lckk;->U:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lckk;->D:Ljwb;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lckk;->C:Ljwb;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final z(ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lckk;->L:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-direct {p0, p2, v1}, Lckk;->R(ZZ)V

    iget-object p1, p0, Lckk;->k:Lebi;

    iget-boolean p1, p1, Lebi;->h:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lckk;->l:Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lj$/time/Duration;

    invoke-virtual {p0, p1}, Lckk;->w(Lj$/time/Duration;)V

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object p2, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->setAlpha(F)V

    return-void

    :cond_0
    iget-object p1, p0, Lckk;->n:Lhws;

    sget-object p2, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    invoke-interface {p1, p2}, Lhws;->k(Lj$/time/Duration;)V

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c()V

    return-void

    :cond_1
    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c()V

    return-void

    :cond_2
    iget-object p1, p0, Lckk;->L:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-direct {p0, v0, v0}, Lckk;->R(ZZ)V

    iget-object p1, p0, Lckk;->p:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c()V

    iget-object p1, p0, Lckk;->n:Lhws;

    sget-object p2, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    invoke-interface {p1, p2}, Lhws;->k(Lj$/time/Duration;)V

    invoke-virtual {p0}, Lckk;->e()V

    return-void
.end method
