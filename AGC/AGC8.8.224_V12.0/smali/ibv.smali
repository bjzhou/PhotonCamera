.class public final Libv;
.super Ljava/lang/Object;

# interfaces
.implements Licb;
.implements Licc;
.implements Libr;
.implements Lfaz;
.implements Lfat;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/EnumMap;

.field public final c:Ljava/util/EnumMap;

.field public d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

.field e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

.field public final f:Liff;

.field public g:Z

.field public h:Z

.field public i:Lkad;

.field public final j:Landroid/content/Context;

.field public final k:Lkbc;

.field public final l:Lell;

.field public m:Licf;

.field public n:Lmqp;

.field public final o:Ljvs;

.field public final p:Ljvs;

.field public final q:Ljuf;

.field public final r:Ljew;

.field private s:Lmqp;

.field private t:Z

.field private final u:Logd;

.field private final v:Ljuh;

.field private final w:Logd;

.field private final x:Loiw;

.field private final y:Ldhi;

.field private final z:Libw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/modeswitcher/ModeSwitcherControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Libv;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljuf;Ljava/util/Map;Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;Liff;Ldhi;Logd;Logd;Loiw;Ljuh;Lkbc;Lell;Ljew;Ljvs;Ljvs;[B[B[B[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lika;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Libv;->b:Ljava/util/EnumMap;

    new-instance v3, Ljava/util/EnumMap;

    const-class v4, Lika;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v3, v0, Libv;->c:Ljava/util/EnumMap;

    sget-object v3, Lmpx;->a:Lmpx;

    iput-object v3, v0, Libv;->s:Lmqp;

    const/4 v4, 0x0

    iput-boolean v4, v0, Libv;->t:Z

    iput-boolean v4, v0, Libv;->g:Z

    iput-boolean v4, v0, Libv;->h:Z

    new-instance v5, Libs;

    invoke-direct {v5, v4}, Libs;-><init>(I)V

    iput-object v5, v0, Libv;->z:Libw;

    iput-object v3, v0, Libv;->n:Lmqp;

    move-object v3, p1

    iput-object v3, v0, Libv;->j:Landroid/content/Context;

    move-object v3, p2

    iput-object v3, v0, Libv;->q:Ljuf;

    iput-object v1, v0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    move-object v3, p5

    iput-object v3, v0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    move-object v3, p6

    iput-object v3, v0, Libv;->f:Liff;

    move-object v3, p7

    iput-object v3, v0, Libv;->y:Ldhi;

    move-object v4, p8

    iput-object v4, v0, Libv;->w:Logd;

    move-object/from16 v4, p10

    iput-object v4, v0, Libv;->x:Loiw;

    move-object v4, p9

    iput-object v4, v0, Libv;->u:Logd;

    move-object/from16 v4, p11

    iput-object v4, v0, Libv;->v:Ljuh;

    move-object/from16 v4, p12

    iput-object v4, v0, Libv;->k:Lkbc;

    move-object/from16 v4, p13

    iput-object v4, v0, Libv;->l:Lell;

    move-object/from16 v4, p14

    iput-object v4, v0, Libv;->r:Ljew;

    move-object/from16 v4, p15

    iput-object v4, v0, Libv;->o:Ljvs;

    sget v4, Ldhn;->a:I

    invoke-interface {p7}, Ldhi;->c()V

    move-object/from16 v3, p16

    iput-object v3, v0, Libv;->p:Ljvs;

    iput-object v5, v1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Libw;

    iput-object v0, v1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Libr;

    move-object v1, p3

    invoke-virtual {v2, p3}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    invoke-virtual {p0, v2}, Libv;->i(Lika;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final B()V
    .locals 1

    iget-object v0, p0, Libv;->n:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Libv;->n:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_0
    return-void
.end method

.method private final C(Lika;)Z
    .locals 1

    iget-object v0, p0, Libv;->c:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final A(Z)V
    .locals 2

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e(ZZ)V

    return-void
.end method

.method public final a()Like;
    .locals 1

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    invoke-virtual {v0}, Libo;->a()Like;

    move-result-object v0

    return-object v0
.end method

.method public final bM()V
    .locals 0

    invoke-direct {p0}, Libv;->B()V

    return-void
.end method

.method public final c()Like;
    .locals 3

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    new-instance v1, Libm;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Libm;-><init>(Libo;I)V

    return-object v1
.end method

.method public final d()Like;
    .locals 3

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    new-instance v1, Libm;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Libm;-><init>(Libo;I)V

    return-object v1
.end method

.method public final e()Lkad;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Libv;->p(Z)V

    new-instance v0, Lhbq;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lhbq;-><init>(Libv;I)V

    return-object v0
.end method

.method public final f(Lika;)V
    .locals 1

    invoke-direct {p0}, Libv;->B()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Libv;->t:Z

    iget-object v0, p0, Libv;->s:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Libv;->s:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Licc;

    invoke-interface {v0, p1}, Licc;->f(Lika;)V

    :cond_0
    invoke-virtual {p0, p1}, Libv;->x(Lika;)V

    return-void
.end method

.method public final g(Lika;)V
    .locals 1

    invoke-direct {p0}, Libv;->B()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Libv;->t:Z

    iget-object v0, p0, Libv;->s:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Libv;->s:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Licc;

    invoke-interface {v0, p1}, Licc;->g(Lika;)V

    :cond_0
    return-void
.end method

.method public final h()Lkad;
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Libv;->q(I)V

    new-instance v0, Lhbq;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lhbq;-><init>(Libv;I)V

    return-object v0
.end method

.method public final i(Lika;)V
    .locals 4

    iget-object v0, p0, Libv;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    if-eqz v0, :cond_0

    iget-object v1, p0, Libv;->q:Ljuf;

    new-instance v2, Lglh;

    const/16 v3, 0xd

    invoke-direct {v2, p0, p1, v3}, Lglh;-><init>(Libv;Lika;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v2, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljuf;->d(Lkad;)V

    :cond_0
    return-void
.end method

.method public final j(Lika;)V
    .locals 2

    invoke-virtual {p0, p1}, Libv;->y(Lika;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Mode %s already configured in More Modes"

    invoke-static {v0, v1, p1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Libv;->c:Ljava/util/EnumMap;

    iget-object v1, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c(Lika;)V

    invoke-virtual {p0, p1}, Libv;->s(Lika;)V

    return-void
.end method

.method public final k(Lika;)V
    .locals 5

    invoke-direct {p0, p1}, Libv;->C(Lika;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Mode %s already configured in mode list"

    invoke-static {v0, v2, p1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Libv;->c:Ljava/util/EnumMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    invoke-static {}, Ljuh;->a()V

    sget-object v2, Lika;->a:Lika;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v4, "UNINITIALIZED is not a valid mode"

    invoke-static {v2, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    sget-object v2, Lika;->p:Lika;

    if-eq p1, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    const-string v2, "Cannot append MORE_MODES mode"

    invoke-static {v3, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->b:Ljava/util/ArrayList;

    new-instance v3, Lica;

    invoke-direct {v3, p1}, Lica;-><init>(Lika;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->e:Z

    if-nez v2, :cond_2

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->e:Z

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->requestLayout()V

    :cond_2
    invoke-virtual {p0, p1}, Libv;->s(Lika;)V

    return-void
.end method

.method public final l(Lika;)V
    .locals 4

    sget-object v0, Lika;->p:Lika;

    invoke-direct {p0, v0}, Libv;->C(Lika;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    sget-object v2, Lika;->p:Lika;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c(Lika;)V

    iget-object v0, p0, Libv;->c:Ljava/util/EnumMap;

    sget-object v2, Lika;->p:Lika;

    iget-object v3, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    iget-boolean p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

    iget-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    iput-object p1, v2, Libo;->k:Lika;

    const/4 p1, 0x2

    iput p1, v2, Libo;->o:I

    iget-object p1, v2, Libo;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setEnabled(Z)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Limz;->a(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final n(Z)V
    .locals 5

    iget-object v0, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Libv;->t:Z

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string v2, "use hideImmediately to transition without animation"

    invoke-static {v1, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->f:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->b(Z)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, p1, v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->a(Z)Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->a(Z)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    iget p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->h:I

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p1, Libz;

    invoke-direct {p1, v0}, Libz;-><init>(Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-object v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->f:Landroid/animation/Animator;

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->f:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setAlpha(F)V

    iget p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->i:F

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setTranslationX(F)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Libv;->i:Lkad;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lkad;->close()V

    return-void

    :cond_2
    return-void
.end method

.method public final o(Lika;Z)V
    .locals 2

    invoke-direct {p0, p1}, Libv;->C(Lika;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lika;->n:Lika;

    invoke-virtual {p1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lika;->f:Lika;

    invoke-virtual {p1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Libv;->g:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Libv;->y(Lika;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lika;->r:Lika;

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not configured."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    sget-object v0, Lika;->c:Lika;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g(Lika;Z)V

    return-void

    :cond_4
    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g(Lika;Z)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setEnabled(Z)V

    iget-object v0, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setEnabled(Z)V

    iget-object p1, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    invoke-virtual {p0, p1}, Libv;->x(Lika;)V

    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final r(Licc;)V
    .locals 1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Libv;->s:Lmqp;

    iget-object p1, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iput-object p0, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i:Licc;

    iget-object p1, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->j:Lmqp;

    return-void
.end method

.method public final s(Lika;)V
    .locals 3

    iget-object v0, p0, Libv;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    iget-object v1, p0, Libv;->c:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Libx;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Libv;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-interface {v1, p1, v2}, Libx;->i(Lika;Z)V

    :cond_1
    return-void
.end method

.method public final t(Lfbz;)V
    .locals 1

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iput-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lfbz;

    iget-object v0, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    iput-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->d:Lfbz;

    return-void
.end method

.method public final u()V
    .locals 3

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e(ZZ)V

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-static {v2, v0}, Limz;->a(ILandroid/view/View;)V

    return-void
.end method

.method public final v()V
    .locals 6

    iget-object v0, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->f:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->a(Z)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->b(Z)Landroid/animation/Animator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget v2, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->g:I

    int-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setPivotY(F)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setPivotX(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setAlpha(F)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setTranslationX(F)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setTranslationY(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "accessibility"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getChildCount()I

    move-result v3

    if-le v3, v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iput-object v4, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->f:Landroid/animation/Animator;

    iget-boolean v0, p0, Libv;->g:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Libv;->x:Loiw;

    check-cast v0, Lihn;

    invoke-virtual {v0}, Lihn;->a()Landroid/view/View;

    iget-object v0, p0, Libv;->w:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljew;

    iget-object v1, p0, Libv;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljew;->G(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Libv;->w:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljew;

    iget-object v3, p0, Libv;->j:Landroid/content/Context;

    iget-object v1, v1, Ljew;->a:Ljava/lang/Object;

    sget-object v4, Ldho;->aO:Ldhj;

    invoke-interface {v1, v4}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lodu;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v1, v3}, Lodu;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v1}, Lodu;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.vr.apps.ornament.measure.MeasureMainActivity"

    invoke-virtual {v1, v3, v4}, Lodu;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljew;->H(Lodu;)Z

    move-result v2

    :goto_0
    iget-object v1, p0, Libv;->w:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljew;

    iget-object v1, p0, Libv;->j:Landroid/content/Context;

    invoke-static {v1}, Ljew;->I(Landroid/content/Context;)Z

    move-result v1

    iget-object v3, p0, Libv;->u:Logd;

    invoke-interface {v3}, Logd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhzh;

    invoke-virtual {v3}, Lhzh;->a()Lnou;

    move-result-object v3

    new-instance v4, Libu;

    invoke-direct {v4, p0, v0, v1, v2}, Libu;-><init>(Libv;ZZZ)V

    iget-object v0, p0, Libv;->v:Ljuh;

    invoke-static {v3, v4, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_3
    iget-boolean v0, p0, Libv;->h:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Libv;->w()V

    :cond_4
    return-void
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Libv;->y:Ldhi;

    sget-object v1, Ldht;->t:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Libv;->b:Ljava/util/EnumMap;

    sget-object v1, Lika;->k:Lika;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvs;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Liby;->a:Liby;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lica;

    if-nez v0, :cond_2

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lica;->b:Landroid/view/View;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lhrw;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lhrw;-><init>(Libv;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public final x(Lika;)V
    .locals 3

    iget-boolean v0, p0, Libv;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Libv;->o:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxi;

    iget-object v0, v0, Lhxi;->a:Lhxj;

    sget-object v1, Lika;->p:Lika;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    sget-object p1, Lhxj;->e:Lhxj;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Libv;->p:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    :goto_0
    iget-object p1, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->d(Z)V

    iget-object p1, p0, Libv;->m:Licf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_3

    iget-object v0, p0, Libv;->l:Lell;

    invoke-interface {v0, p1}, Lell;->d(Lelk;)Lkad;

    return-void

    :cond_3
    iget-object v0, p0, Libv;->l:Lell;

    invoke-interface {v0, p1}, Lell;->g(Lelk;)V

    return-void
.end method

.method public final y(Lika;)Z
    .locals 1

    iget-object v0, p0, Libv;->c:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final z(FI)V
    .locals 6

    iget-object v0, p0, Libv;->d:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lmoz;->e(Z)V

    iget-object v2, v1, Libo;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Libo;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_2

    :cond_1
    if-eq p2, v4, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    add-int/2addr v5, p2

    invoke-virtual {v1, v5}, Libo;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v3, v1, 0x2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getRight()I

    move-result p2

    add-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    int-to-float p2, v1

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v3, p1

    :goto_2
    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    const-string v0, "Working around b/110351942: %s"

    const/16 v1, 0x102b

    invoke-static {p2, v0, p1, v1}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void
.end method
