.class public final Ldaj;
.super Ljava/lang/Object;

# interfaces
.implements Ldal;


# instance fields
.field public final A:Ljew;

.field private final B:Litm;

.field private C:Landroid/view/View;

.field private D:Licf;

.field private E:Licf;

.field private F:Lkad;

.field private final G:Ljuf;

.field public final a:Ldau;

.field public final b:Ldap;

.field public final c:Lell;

.field public final d:Lhrq;

.field public final e:Ljuh;

.field public final f:Landroid/content/Context;

.field public final g:Lgft;

.field public final h:Ldhi;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lgzn;

.field public final k:Lgeh;

.field public final l:Lgen;

.field public m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

.field public n:Ldak;

.field public o:Licf;

.field public p:Licf;

.field public q:Ldav;

.field public r:Lhyn;

.field public s:Liko;

.field public final t:Lknx;

.field public u:Lkad;

.field public v:I

.field public final w:Ljava/lang/Object;

.field public final x:Lhsh;

.field public final y:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field public z:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public constructor <init>(Ldau;Ldap;Lell;Ljew;Lhrq;Ljuh;Landroid/content/Context;Lgft;Lhsh;Ldhi;Lcdi;Lgzn;Lgeh;Litm;[B[B[B[B)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Ldaj;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lhqj;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lhqj;-><init>(Ldaj;I)V

    iput-object v1, v0, Ldaj;->l:Lgen;

    sget-object v1, Ldak;->c:Ldak;

    iput-object v1, v0, Ldaj;->n:Ldak;

    sget-object v1, Ldav;->a:Ldav;

    iput-object v1, v0, Ldaj;->q:Ldav;

    sget-object v1, Lhyn;->b:Lhyn;

    iput-object v1, v0, Ldaj;->r:Lhyn;

    sget-object v1, Liko;->a:Liko;

    iput-object v1, v0, Ldaj;->s:Liko;

    new-instance v1, Ldag;

    invoke-direct {v1, p0, v2}, Ldag;-><init>(Ldaj;I)V

    iput-object v1, v0, Ldaj;->t:Lknx;

    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ldaj;)V

    iput-object v1, v0, Ldaj;->y:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    const/4 v1, -0x1

    iput v1, v0, Ldaj;->v:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ldaj;->w:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Ldaj;->a:Ldau;

    move-object v1, p2

    iput-object v1, v0, Ldaj;->b:Ldap;

    move-object v1, p3

    iput-object v1, v0, Ldaj;->c:Lell;

    move-object v1, p4

    iput-object v1, v0, Ldaj;->A:Ljew;

    move-object v1, p5

    iput-object v1, v0, Ldaj;->d:Lhrq;

    move-object v1, p6

    iput-object v1, v0, Ldaj;->e:Ljuh;

    move-object v1, p7

    iput-object v1, v0, Ldaj;->f:Landroid/content/Context;

    move-object v1, p8

    iput-object v1, v0, Ldaj;->g:Lgft;

    move-object v1, p9

    iput-object v1, v0, Ldaj;->x:Lhsh;

    move-object v1, p10

    iput-object v1, v0, Ldaj;->h:Ldhi;

    invoke-virtual {p11}, Lcdi;->i()Ljuf;

    move-result-object v1

    iput-object v1, v0, Ldaj;->G:Ljuf;

    move-object/from16 v1, p12

    iput-object v1, v0, Ldaj;->j:Lgzn;

    move-object/from16 v1, p13

    iput-object v1, v0, Ldaj;->k:Lgeh;

    move-object/from16 v1, p14

    iput-object v1, v0, Ldaj;->B:Litm;

    return-void
.end method

.method public static r(Lkab;)Z
    .locals 1

    sget-object v0, Lkab;->b:Lkab;

    invoke-virtual {p0, v0}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lkab;->d:Lkab;

    invoke-virtual {p0, v0}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final t()V
    .locals 2

    invoke-virtual {p0}, Ldaj;->d()V

    iget-object v0, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->setVisibility(I)V

    invoke-virtual {p0}, Ldaj;->g()V

    iget-object v0, p0, Ldaj;->b:Ldap;

    check-cast v0, Ldan;

    iget-object v0, v0, Ldan;->f:Lhrz;

    invoke-virtual {v0}, Lhrz;->g()V

    return-void
.end method

.method private final u()V
    .locals 2

    iget-object v0, p0, Ldaj;->n:Ldak;

    iget-boolean v0, v0, Ldak;->e:Z

    const-string v1, "Stabilization button is not visible"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()Ldau;
    .locals 1

    iget-object v0, p0, Ldaj;->a:Ldau;

    return-object v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Ldaj;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldaj;->E:Licf;

    if-eqz v1, :cond_0

    iget-object v2, p0, Ldaj;->c:Lell;

    invoke-interface {v2, v1}, Lell;->g(Lelk;)V

    const/4 v1, 0x0

    iput-object v1, p0, Ldaj;->E:Licf;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Ldaj;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldaj;->F:Lkad;

    if-nez v1, :cond_0

    iget-object v1, p0, Ldaj;->c:Lell;

    sget-object v2, Lelm;->a:Lelm;

    invoke-interface {v1, v2}, Lell;->e(Lelm;)Lkad;

    move-result-object v1

    iput-object v1, p0, Ldaj;->F:Lkad;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 1

    invoke-direct {p0}, Ldaj;->t()V

    sget-object v0, Ldak;->c:Ldak;

    iput-object v0, p0, Ldaj;->n:Ldak;

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Ldaj;->u:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldaj;->u:Lkad;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Ldaj;->B:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Ldaj;->B:Litm;

    invoke-interface {v0}, Litm;->n()V

    return-void
.end method

.method public final f(Landroid/view/ViewStub;)V
    .locals 9

    iget-object v0, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iput-object p1, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Ldaj;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f140263

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ldaj;->f:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0xc

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Ldaj;->D:Licf;

    iget-object p1, p0, Ldaj;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f140265

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ldaj;->f:Landroid/content/Context;

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Ldaj;->o:Licf;

    const/4 v0, 0x0

    iget-object p1, p0, Ldaj;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f140264

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ldaj;->f:Landroid/content/Context;

    invoke-static/range {v0 .. v8}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object p1

    iput-object p1, p0, Ldaj;->p:Licf;

    iget-object p1, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-object p1, p1, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->c:Landroid/widget/FrameLayout;

    iput-object p1, p0, Ldaj;->C:Landroid/view/View;

    new-instance v0, Ldah;

    invoke-direct {v0, p0}, Ldah;-><init>(Ldaj;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p0, Ldaj;->C:Landroid/view/View;

    new-instance v0, Lhu;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lhu;-><init>(Ldaj;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Ldaj;->h:Ldhi;

    sget-object v0, Ldho;->cm:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldaj;->a:Ldau;

    iget-object v0, p0, Ldaj;->C:Landroid/view/View;

    check-cast p1, Ldas;

    iget-object v1, p1, Ldas;->b:Ldhi;

    sget-object v2, Ldho;->cm:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lida;

    sget-object v3, Ldav;->a:Ldav;

    iget-object v2, p1, Ldas;->a:Landroid/content/Context;

    const v4, 0x7f1404f1

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08038a

    iget-object v2, p1, Ldas;->a:Landroid/content/Context;

    const v6, 0x7f1404dc

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    move-object v6, v7

    invoke-direct/range {v2 .. v7}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Ldas;->b:Ldhi;

    sget-object v3, Ldgu;->V:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lida;

    sget-object v4, Ldav;->b:Ldav;

    iget-object v3, p1, Ldas;->a:Landroid/content/Context;

    const v5, 0x7f1404f2

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080387

    iget-object v3, p1, Ldas;->a:Landroid/content/Context;

    const v7, 0x7f1404dd

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v7, v8

    invoke-direct/range {v3 .. v8}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p1, Ldas;->b:Ldhi;

    sget-object v3, Ldgu;->W:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lida;

    sget-object v4, Ldav;->c:Ldav;

    iget-object v3, p1, Ldas;->a:Landroid/content/Context;

    const v5, 0x7f1404f0

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080386

    iget-object v3, p1, Ldas;->a:Landroid/content/Context;

    const v7, 0x7f1404db

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v7, v8

    invoke-direct/range {v3 .. v8}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p1, Ldas;->b:Ldhi;

    sget-object v3, Ldgu;->X:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lida;

    sget-object v4, Ldav;->d:Ldav;

    iget-object v3, p1, Ldas;->a:Landroid/content/Context;

    const v5, 0x7f1404f3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080389

    iget-object v3, p1, Ldas;->a:Landroid/content/Context;

    const v7, 0x7f1404de

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v7, v8

    invoke-direct/range {v3 .. v8}, Lida;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v2, Licz;

    sget-object v3, Ldav;->a:Ldav;

    invoke-direct {v2, v1, v3}, Licz;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    new-instance v1, Licy;

    iget-object v3, p1, Ldas;->a:Landroid/content/Context;

    invoke-direct {v1, v3, v0, v2}, Licy;-><init>(Landroid/content/Context;Landroid/view/View;Licz;)V

    iput-object v1, p1, Ldas;->f:Licy;

    iget-object v0, p1, Ldas;->f:Licy;

    const v1, 0x7f1404da

    invoke-virtual {v0, v1}, Licy;->c(I)V

    iget-object v0, p1, Ldas;->f:Licy;

    new-instance v1, Ldar;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ldar;-><init>(Ldas;I)V

    invoke-virtual {v0, v1}, Licy;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_4
    iget-object p1, p0, Ldaj;->a:Ldau;

    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ldaj;)V

    check-cast p1, Ldas;

    iget-object v1, p1, Ldas;->b:Ldhi;

    sget-object v2, Ldho;->cm:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p1, Ldas;->f:Licy;

    new-instance v4, Lhu;

    const/16 v5, 0x8

    invoke-direct {v4, v0, v5, v3}, Lhu;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V

    invoke-virtual {v1, v4}, Licy;->d(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Ldas;->f:Licy;

    new-instance v1, Lhzl;

    invoke-direct {v1, v0, v2, v3}, Lhzl;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V

    iput-object v1, p1, Licy;->d:Licx;

    goto :goto_0

    :cond_5
    iget-object v1, p1, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->b:Landroid/widget/ImageButton;

    new-instance v4, Lhu;

    const/16 v5, 0x9

    invoke-direct {v4, v0, v5, v3}, Lhu;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Ldas;->g:Lict;

    new-instance v1, Lhzk;

    invoke-direct {v1, v0, v2, v3}, Lhzk;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V

    invoke-virtual {p1, v1, v2}, Lict;->a(Lics;Z)V

    :goto_0
    iget-object p1, p0, Ldaj;->G:Ljuf;

    iget-object v0, p0, Ldaj;->a:Ldau;

    new-instance v1, Ldai;

    invoke-direct {v1, p0}, Ldai;-><init>(Ldaj;)V

    invoke-interface {v0, v1}, Ldau;->a(Ldaw;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Ldaj;->G:Ljuf;

    iget-object v0, p0, Ldaj;->k:Lgeh;

    iget-object v1, p0, Ldaj;->l:Lgen;

    invoke-interface {v0, v1}, Lgeh;->g(Lgen;)V

    new-instance v0, Lcfh;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lcfh;-><init>(Ldaj;I)V

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Ldaj;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Ldaj;->v:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ldaj;->g:Lgft;

    iget-object v1, p0, Ldaj;->y:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-interface {v0, v1}, Lgft;->l(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    iget-object v0, p0, Ldaj;->g:Lgft;

    iget-object v1, p0, Ldaj;->t:Lknx;

    invoke-interface {v0, v1}, Lgft;->h(Lknx;)V

    iget-object v0, p0, Ldaj;->a:Ldau;

    check-cast v0, Ldas;

    iget-object v1, v0, Ldas;->b:Ldhi;

    sget-object v2, Ldho;->cm:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldas;->f:Licy;

    sget-object v2, Ldav;->a:Ldav;

    invoke-virtual {v1, v2}, Licy;->e(Ljava/lang/Object;)V

    iget-object v0, v0, Ldas;->f:Licy;

    invoke-virtual {v0}, Licy;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ldas;->g:Lict;

    sget-object v2, Ldav;->a:Ldav;

    invoke-virtual {v1, v2}, Lict;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ldas;->b()V

    :goto_0
    sget-object v0, Ldav;->a:Ldav;

    invoke-virtual {p0, v0}, Ldaj;->j(Ldav;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Ldaj;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldaj;->F:Lkad;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkad;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Ldaj;->F:Lkad;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final declared-synchronized i(Ldak;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldaj;->n:Ldak;

    iget-object v0, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-boolean v1, p1, Ldak;->d:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const v1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, v0, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->b:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuButton;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuButton;->setAlpha(F)V

    iget-boolean v0, p1, Ldak;->e:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Ldaj;->u()V

    iget-boolean p1, p1, Ldak;->d:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldaj;->j:Lgzn;

    sget-object v0, Lgzd;->K:Lgzs;

    invoke-interface {p1, v0}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object p1

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Ldaj;->j:Lgzn;

    sget-object v1, Lgzd;->K:Lgzs;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Ldaj;->j:Lgzn;

    sget-object v1, Lgzd;->L:Lgzr;

    invoke-interface {v0, v1}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object v0

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    :cond_2
    iget-object p1, p0, Ldaj;->u:Lkad;

    if-nez p1, :cond_3

    iget-object p1, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-object p1, p1, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lhrw;

    invoke-direct {v1, p0, p1, v2}, Lhrw;-><init>(Ldaj;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object p1, p0, Ldaj;->j:Lgzn;

    sget-object v0, Lgzd;->L:Lgzr;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object p1, p0, Ldaj;->j:Lgzn;

    sget-object v0, Lgzd;->K:Lgzs;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    invoke-direct {p0}, Ldaj;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(Ldav;)V
    .locals 2

    iput-object p1, p0, Ldaj;->q:Ldav;

    iget-object v0, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-object v1, v0, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->b:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuButton;

    iget-object v0, v0, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->a:Lmwa;

    invoke-virtual {v0, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Liq;->setImageResource(I)V

    return-void
.end method

.method public final k(Lhyn;Liko;)V
    .locals 3

    iput-object p1, p0, Ldaj;->r:Lhyn;

    iput-object p2, p0, Ldaj;->s:Liko;

    iget-object v0, p0, Ldaj;->a:Ldau;

    check-cast v0, Ldas;

    iget-object v0, v0, Ldas;->f:Licy;

    iput-object p1, v0, Licy;->c:Lhyn;

    iget-object v1, v0, Licy;->c:Lhyn;

    sget-object v2, Lhyn;->d:Lhyn;

    invoke-virtual {v1, v2}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0b0299

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Licy;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802b6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Licy;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802b4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Ldaj;->a:Ldau;

    invoke-interface {v0}, Ldau;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lbze;->af(Lhyn;Liko;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldaj;->q:Ldav;

    sget-object p2, Ldav;->a:Ldav;

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Ldaj;->e()V

    return-void

    :cond_1
    invoke-virtual {p0}, Ldaj;->o()V

    :cond_2
    return-void
.end method

.method public final l(Liko;)V
    .locals 3

    iget-object v0, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->a(Liko;)V

    iget-object v0, p0, Ldaj;->a:Ldau;

    check-cast v0, Ldas;

    iget-object v1, v0, Ldas;->b:Ldhi;

    sget-object v2, Ldho;->cm:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ldas;->f:Licy;

    invoke-virtual {v0, p1}, Licy;->g(Liko;)V

    return-void

    :cond_0
    iget-object v1, v0, Ldas;->d:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;->a(Liko;)V

    iget-object v0, v0, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->a(Liko;)V

    return-void
.end method

.method public final m(Licf;)V
    .locals 2

    iget-object v0, p0, Ldaj;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ldaj;->b()V

    iput-object p1, p0, Ldaj;->E:Licf;

    iget-object v1, p0, Ldaj;->c:Lell;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p1}, Lell;->d(Lelk;)Lkad;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Ldaj;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ldaj;->q:Ldav;

    sget-object v2, Ldav;->b:Ldav;

    invoke-virtual {v1, v2}, Ldav;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldaj;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldaj;->D:Licf;

    invoke-virtual {p0, v1}, Ldaj;->m(Licf;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Ldaj;->B:Litm;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Ldaj;->B:Litm;

    invoke-interface {v0}, Litm;->p()V

    return-void
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Ldaj;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ldaj;->n:Ldak;

    iget-boolean v2, v0, Ldak;->d:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Ldaj;->a:Ldau;

    invoke-interface {v0}, Ldau;->b()V

    iget-object v0, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-object v2, p0, Ldaj;->h:Ldhi;

    sget-object v3, Ldgu;->U:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->b(ZZ)V

    iget-object v0, p0, Ldaj;->q:Ldav;

    sget-object v1, Ldav;->b:Ldav;

    invoke-virtual {v0, v1}, Ldav;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldaj;->x:Lhsh;

    sget-object v1, Lhsj;->c:Lhsj;

    invoke-virtual {v0, v1}, Lhsh;->a(Lhsj;)V

    invoke-virtual {p0}, Ldaj;->b()V

    :cond_0
    invoke-virtual {p0}, Ldaj;->d()V

    return-void

    :cond_1
    iget-boolean v0, v0, Ldak;->e:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Ldaj;->t()V

    :cond_2
    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Ldaj;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ldaj;->n:Ldak;

    iget-boolean v2, v0, Ldak;->d:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Ldaj;->m:Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-object v2, p0, Ldaj;->h:Ldhi;

    sget-object v3, Ldgu;->U:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->b(ZZ)V

    iget-object v0, p0, Ldaj;->q:Ldav;

    sget-object v1, Ldav;->b:Ldav;

    invoke-virtual {v0, v1}, Ldav;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldaj;->x:Lhsh;

    sget-object v1, Lhsj;->b:Lhsj;

    invoke-virtual {v0, v1}, Lhsh;->a(Lhsj;)V

    invoke-virtual {p0}, Ldaj;->n()V

    iget-object v0, p0, Ldaj;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    iput v1, p0, Ldaj;->v:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-boolean v0, v0, Ldak;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ldaj;->u()V

    return-void

    :cond_1
    return-void
.end method

.method public final s(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    iput-object p1, p0, Ldaj;->z:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method
