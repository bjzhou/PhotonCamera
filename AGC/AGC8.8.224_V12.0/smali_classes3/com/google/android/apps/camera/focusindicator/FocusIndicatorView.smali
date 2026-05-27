.class public Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;
.super Landroid/support/constraint/ConstraintLayout;

# interfaces
.implements Ldww;
.implements Likj;


# instance fields
.field private final A:[I

.field private volatile B:Liko;

.field private final C:Landroid/animation/Animator$AnimatorListener;

.field private D:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field public final d:Ljwb;

.field public final e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

.field final f:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

.field public final g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

.field public final h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

.field public final i:Ldwa;

.field final j:Ldwc;

.field final k:Lila;

.field final l:Lila;

.field final m:Lila;

.field final n:Lila;

.field final o:Lila;

.field final p:Lila;

.field q:Lila;

.field final r:Lila;

.field final s:Lila;

.field final t:Lila;

.field final u:Lila;

.field final v:Lila;

.field final w:Lila;

.field public x:Landroid/animation/Animator;

.field private final y:Ldwg;

.field private final z:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->z:Landroid/graphics/PointF;

    new-instance p2, Ljvk;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p2, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d:Ljwb;

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->A:[I

    sget-object p2, Liko;->a:Liko;

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Liko;

    new-instance p2, Ldwf;

    invoke-direct {p2, p0}, Ldwf;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->C:Landroid/animation/Animator$AnimatorListener;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0e0059

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->E(Landroid/content/Context;)Ldwg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->y:Ldwg;

    check-cast p2, Ldvw;

    iget-object v0, p2, Ldvw;->n:Llij;

    invoke-static {v0}, Ldwi;->b(Llij;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iget-object v0, p2, Ldvw;->n:Llij;

    iget-object v1, v0, Llij;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->f:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    iget-object v1, v0, Llij;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-static {v0}, Ldwj;->b(Llij;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    iget-object v0, p2, Ldvw;->n:Llij;

    invoke-static {v0}, Ldwm;->b(Llij;)Ldwa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    iget-object v0, p2, Ldvw;->n:Llij;

    invoke-static {v0}, Ldwn;->b(Llij;)Ldwc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Ldwc;

    iget-object v0, p2, Ldvw;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lila;

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Lila;

    iget-object v1, p2, Ldvw;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lila;

    iput-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Lila;

    iget-object v2, p2, Ldvw;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lila;

    iput-object v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lila;

    iget-object v3, p2, Ldvw;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lila;

    iput-object v3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lila;

    iget-object v4, p2, Ldvw;->e:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lila;

    iput-object v4, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lila;

    iget-object v5, p2, Ldvw;->f:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lila;

    iput-object v5, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lila;

    iget-object v6, p2, Ldvw;->g:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lila;

    iput-object v6, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Lila;

    iget-object v6, p2, Ldvw;->h:Loiw;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lila;

    iput-object v6, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->r:Lila;

    iget-object v7, p2, Ldvw;->i:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lila;

    iput-object v7, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->s:Lila;

    iget-object v8, p2, Ldvw;->j:Loiw;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lila;

    iput-object v8, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->t:Lila;

    iget-object v9, p2, Ldvw;->k:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lila;

    iput-object v9, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u:Lila;

    iget-object v10, p2, Ldvw;->l:Loiw;

    invoke-interface {v10}, Loiw;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lila;

    iput-object v10, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->v:Lila;

    iget-object p2, p2, Ldvw;->m:Loiw;

    invoke-interface {p2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lila;

    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->w:Lila;

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v4}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v5}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v6}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v7}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v8}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v9}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, v10}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    instance-of p2, p1, Lcdd;

    if-eqz p2, :cond_0

    check-cast p1, Lcdd;

    invoke-interface {p1}, Lcdd;->a()Ldhi;

    move-result-object p1

    sget p2, Ldhn;->a:I

    invoke-interface {p1}, Ldhi;->c()V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;Ldwa;Ldwc;Lila;Lila;Lila;Lila;Lila;Lila;Lila;Lila;Lila;Lila;Lila;Lila;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    move-object/from16 v9, p15

    move-object/from16 v10, p16

    move-object/from16 v11, p17

    move-object/from16 v12, p18

    move-object/from16 v13, p19

    invoke-direct/range {p0 .. p1}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/graphics/PointF;

    const/4 v15, 0x0

    invoke-direct {v14, v15, v15}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->z:Landroid/graphics/PointF;

    new-instance v14, Ljvk;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v14, v15}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d:Ljwb;

    const/4 v14, 0x2

    new-array v14, v14, [I

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->A:[I

    sget-object v14, Liko;->a:Liko;

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Liko;

    new-instance v14, Ldwf;

    invoke-direct {v14, v0}, Ldwf;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->C:Landroid/animation/Animator$AnimatorListener;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->E(Landroid/content/Context;)Ldwg;

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->y:Ldwg;

    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    move-object/from16 v14, p3

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->f:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    move-object/from16 v14, p4

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    move-object/from16 v14, p5

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    move-object/from16 v14, p7

    iput-object v14, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Ldwc;

    invoke-direct {v0, v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Lila;

    invoke-direct {v0, v3}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v3, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Lila;

    invoke-direct {v0, v4}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v4, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lila;

    invoke-direct {v0, v5}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v5, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lila;

    invoke-direct {v0, v6}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v6, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lila;

    invoke-direct {v0, v7}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v7, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p:Lila;

    invoke-direct {v0, v8}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v8, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->r:Lila;

    invoke-direct {v0, v9}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v9, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->s:Lila;

    invoke-direct {v0, v10}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v10, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->t:Lila;

    invoke-direct {v0, v11}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v11, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u:Lila;

    invoke-direct {v0, v12}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v12, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->v:Lila;

    invoke-direct {v0, v13}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J(Lila;)V

    iput-object v13, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->w:Lila;

    instance-of v2, v1, Lcdd;

    if-eqz v2, :cond_0

    check-cast v1, Lcdd;

    invoke-interface {v1}, Lcdd;->a()Ldhi;

    move-result-object v1

    sget v2, Ldhn;->a:I

    invoke-interface {v1}, Ldhi;->c()V

    :cond_0
    return-void
.end method

.method private final D(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Liko;

    iget p1, p1, Liko;->e:I

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, p1, v4, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p1, Landroid/graphics/PointF;

    aget v2, v0, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private final E(Landroid/content/Context;)Ldwg;
    .locals 2

    new-instance v0, Llij;

    invoke-direct {v0, p1, p0}, Llij;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    new-instance p1, Ldvw;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Ldvw;-><init>(Llij;[B[B[B)V

    return-object p1
.end method

.method private final F()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Landroid/animation/Animator;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a()V

    :cond_2
    return-void
.end method

.method private final G()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j:Ldwc;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldwc;->d(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    invoke-interface {v0, v1}, Ldwa;->m(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void
.end method

.method private final H()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c(Z)V

    return-void
.end method

.method private final I(Lmqp;I)V
    .locals 7

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    :cond_0
    int-to-float p1, p2

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->K(F)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method private final J(Lila;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->C:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {p1, v0}, Lila;->b(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private final K(F)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v3, 0x44a8c000    # 1350.0f

    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    const p1, 0x44a8c000    # 1350.0f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_1

    const/high16 p1, 0x43b40000    # 360.0f

    :cond_1
    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v2, v3, v1

    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Liko;

    iget v4, v4, Liko;->e:I

    if-nez v4, :cond_2

    mul-float p1, p1, v1

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr p1, v1

    goto :goto_2

    :cond_2
    const v1, 0x40066666    # 2.1f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    const/16 v1, 0x8e8

    goto :goto_1

    :cond_3
    const/16 v1, 0x80c

    :goto_1
    mul-float p1, p1, v3

    int-to-float v1, v1

    div-float/2addr p1, v1

    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->l(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    div-float/2addr p1, v1

    invoke-interface {v0, p1}, Ldwa;->k(F)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->t:Lila;

    invoke-interface {v0}, Lila;->a()Likz;

    return-void
.end method

.method public final B()Likz;
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lila;->a:Likz;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lila;

    invoke-interface {v0}, Lila;->a()Likz;

    move-result-object v0

    return-object v0
.end method

.method public final C(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method

.method public final c()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->z:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final d()Likz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lila;->a:Likz;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Lila;

    invoke-interface {v0}, Lila;->a()Likz;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroid/graphics/PointF;)Likz;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Lila;

    invoke-interface {p1}, Lila;->a()Likz;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroid/graphics/PointF;)Likz;
    .locals 9

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->H()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->v:Lila;

    invoke-interface {p1}, Lila;->a()Likz;

    move-result-object p1

    sget-object v0, Ldvz;->j:Ldvz;

    sget-object v1, Ldvz;->g:Ldvz;

    sget-object v2, Ldvz;->k:Ldvz;

    sget-object v3, Ldvz;->f:Ldvz;

    sget-object v4, Ldvz;->c:Ldvz;

    sget-object v5, Ldvz;->d:Ldvz;

    const/4 v6, 0x2

    new-array v6, v6, [Ldvz;

    const/4 v7, 0x0

    sget-object v8, Ldvz;->e:Ldvz;

    aput-object v8, v6, v7

    sget-object v7, Ldvz;->b:Ldvz;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v6}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iput-boolean v8, v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->g:Z

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    invoke-interface {v1, v0}, Ldwa;->c(Lmwn;)V

    new-instance v1, Ldwe;

    invoke-direct {v1, p0, v0}, Ldwe;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lmwn;)V

    invoke-interface {p1, v1}, Likz;->b(Liky;)V

    return-object p1
.end method

.method public final g()Likz;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c(Z)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->w:Lila;

    invoke-interface {v0}, Lila;->a()Likz;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lmqp;)Likz;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->H()V

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->r()V

    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->s:Lila;

    invoke-interface {p1}, Lila;->a()Likz;

    move-result-object p1

    return-object p1
.end method

.method public final i()Likz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    sget-object v0, Lila;->a:Likz;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c(Z)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->u:Lila;

    invoke-interface {v0}, Lila;->a()Likz;

    move-result-object v0

    return-object v0
.end method

.method public final j()Likz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lila;->a:Likz;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->n:Lila;

    invoke-interface {v0}, Lila;->a()Likz;

    move-result-object v0

    return-object v0
.end method

.method public final k(Lmqp;I)Likz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lila;->a:Likz;

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->I(Lmqp;I)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lila;

    invoke-interface {p1}, Lila;->a()Likz;

    move-result-object p1

    return-object p1
.end method

.method public final l()Likz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lila;->a:Likz;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->r:Lila;

    invoke-interface {v0}, Lila;->a()Likz;

    move-result-object v0

    return-object v0
.end method

.method public final m(Landroid/graphics/PointF;)Likz;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->H()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Lila;

    invoke-interface {p1}, Lila;->a()Likz;

    move-result-object p1

    return-object p1
.end method

.method public final n()Ljvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d:Ljwb;

    return-object v0
.end method

.method public final o()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->F()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->G()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c(Z)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->t(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->H()V

    return-void
.end method

.method protected final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/support/constraint/ConstraintLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    iput-object v1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/view/View;

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/support/constraint/ConstraintLayout;->onLayout(ZIIII)V

    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->A:[I

    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getLocationInWindow([I)V

    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->z:Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->A:[I

    const/4 p4, 0x0

    aget p4, p3, p4

    int-to-float p4, p4

    const/4 p5, 0x1

    aget p3, p3, p5

    int-to-float p3, p3

    invoke-virtual {p2, p4, p3}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p2, p3}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object p2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Liko;

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Liko;

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Liko;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    iget-object p4, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->e:Liko;

    iput-object p2, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->e:Liko;

    iget-boolean p2, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->f:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->e:Liko;

    iget-object v0, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->d:Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-static {p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->a(Liko;)I

    move-result p2

    invoke-static {p4}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->a(Liko;)I

    move-result p4

    sub-int/2addr p2, p4

    sparse-switch p2, :sswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :sswitch_0
    sget-object p2, Lkab;->a:Lkab;

    goto :goto_1

    :sswitch_1
    sget-object p2, Lkab;->b:Lkab;

    goto :goto_1

    :sswitch_2
    sget-object p2, Lkab;->c:Lkab;

    goto :goto_1

    :sswitch_3
    sget-object p2, Lkab;->d:Lkab;

    :goto_1
    if-eqz v0, :cond_2

    new-instance p4, Landroid/graphics/PointF;

    invoke-direct {p4}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p2}, Lkab;->ordinal()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget p3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    :pswitch_0
    iget p2, v0, Landroid/graphics/PointF;->y:F

    int-to-float p3, p3

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    invoke-virtual {p4, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    :pswitch_1
    int-to-float p2, v1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    int-to-float p3, p3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, v0

    invoke-virtual {p4, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    :pswitch_2
    int-to-float p2, v1

    iget p3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    iget p3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p4, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    :goto_2
    invoke-virtual {p1, p4}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    :cond_2
    iput-boolean p5, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->f:Z

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->f:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->B:Liko;

    iput-object p2, p1, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->d:Liko;

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->g:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->e()V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->e()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x10e -> :sswitch_3
        -0xb4 -> :sswitch_2
        -0x5a -> :sswitch_1
        0x0 -> :sswitch_0
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->f:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->setVisibility(I)V

    return-void
.end method

.method public final q(Liko;Lhyn;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->setVisibility(I)V

    return-void
.end method

.method public final t(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->d:Ljwb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast v0, Lccv;

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->c:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->d:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lccv;->a:Ljwb;

    sget-object v0, Lccu;->c:Lccu;

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_2
    check-cast v0, Lccv;

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->g:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Lccv;->a:Ljwb;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lccu;

    sget-object v1, Lccu;->f:Lccu;

    invoke-virtual {p1, v1}, Lccu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Lccv;->a:Ljwb;

    sget-object v0, Lccu;->f:Lccu;

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public final u(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->d(F)V

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    invoke-interface {v0, p1}, Ldwa;->m(F)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void
.end method

.method public final v(Lmqp;Landroid/graphics/RectF;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->f:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->setVisibility(I)V

    check-cast p1, Lmqt;

    iget-object p1, p1, Lmqt;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v0, v3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->f:Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    sub-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    div-float v5, v1, v3

    sub-float/2addr v4, v5

    add-float v5, v2, v0

    add-float v6, v4, v1

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v2, v2, v4

    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v4, v4, v5

    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v5, v7}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    const v6, 0x3f6e147b    # 0.93f

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    cmpl-float v5, v4, v8

    if-eqz v5, :cond_2

    div-float/2addr v2, v4

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    goto :goto_0

    :cond_0
    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_1

    cmpl-float v5, v2, v8

    if-eqz v5, :cond_2

    div-float/2addr v4, v2

    cmpl-float v2, v4, v6

    if-lez v2, :cond_2

    goto :goto_0

    :cond_1
    iget-object v4, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-static {v7, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v5, v4

    cmpl-float v4, v2, v8

    if-eqz v4, :cond_2

    div-float/2addr v5, v2

    cmpl-float v2, v5, v6

    if-lez v2, :cond_2

    :goto_0
    iget-object v0, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v2, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->a:Landroid/graphics/RectF;

    invoke-virtual {v2, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_1
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {p2, v2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->setX(F)V

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->setY(F)V

    iget-object p1, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object v2, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    div-float/2addr v4, v5

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->d:Liko;

    sget-object v6, Liko;->a:Liko;

    invoke-virtual {v5, v6}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v0

    div-float/2addr v8, v3

    int-to-float p1, p1

    mul-float p1, p1, v4

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    div-float/2addr v9, v3

    int-to-float v2, v2

    mul-float v4, v4, v2

    add-float/2addr v9, v4

    add-float/2addr v8, p1

    float-to-int v2, v8

    float-to-int v8, v9

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    div-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    div-float/2addr v6, v3

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-float/2addr v6, v4

    sub-float/2addr v5, p1

    float-to-int p1, v5

    float-to-int v3, v6

    invoke-virtual {v2, p1, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3

    :cond_4
    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->d:Liko;

    sget-object v6, Liko;->b:Liko;

    invoke-virtual {v5, v6}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v0

    div-float/2addr v8, v3

    int-to-float p1, p1

    mul-float p1, p1, v4

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    div-float/2addr v9, v3

    int-to-float v2, v2

    mul-float v4, v4, v2

    add-float/2addr v9, v4

    add-float/2addr v8, p1

    float-to-int v2, v8

    float-to-int v8, v9

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    div-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v1

    div-float/2addr v6, v3

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    float-to-int v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    float-to-int v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-float/2addr v6, v4

    sub-float/2addr v5, p1

    float-to-int p1, v5

    float-to-int v3, v6

    invoke-virtual {v2, p1, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3

    :cond_5
    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->d:Liko;

    sget-object v6, Liko;->c:Liko;

    invoke-virtual {v5, v6}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v0

    div-float/2addr v8, v3

    int-to-float p1, p1

    mul-float p1, p1, v4

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    div-float/2addr v9, v3

    int-to-float v2, v2

    mul-float v4, v4, v2

    add-float/2addr v9, v4

    add-float/2addr v8, p1

    float-to-int v2, v8

    float-to-int v8, v9

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p2, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    div-float/2addr v5, v3

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v1

    div-float/2addr v6, v3

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-float/2addr v6, v4

    sub-float/2addr v5, p1

    float-to-int p1, v5

    float-to-int v3, v6

    invoke-virtual {v2, p1, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;->invalidate()V

    return-void
.end method

.method public final w(Lmqp;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->p()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->I(Lmqp;I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070061

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ldwa;->o(I)V

    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    const/4 v0, -0x1

    invoke-interface {p2, v0}, Ldwa;->j(I)V

    iget-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    invoke-interface {p2, p1}, Ldwa;->n(F)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Ldwa;->m(F)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i:Ldwa;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Ldwa;->g(FF)V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void
.end method

.method public final x(Landroid/graphics/PointF;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method public final y(Landroid/graphics/PointF;F)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->K(F)V

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getX()F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getY()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    invoke-virtual {v2, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x21

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void
.end method

.method public final z(Landroid/graphics/PointF;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->e:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    iget v0, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->c:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    mul-float p1, p1, p1

    add-float/2addr v1, p1

    cmpg-float p1, v1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
