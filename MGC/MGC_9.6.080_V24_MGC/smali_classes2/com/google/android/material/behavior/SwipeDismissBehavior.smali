.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Ldsw;
.source "PG"


# instance fields
.field public a:Ldxy;

.field public b:Z

.field public c:I

.field public d:F

.field public e:F

.field public f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private g:Z

.field private final h:Ldxx;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lrfm;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ldsw;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lrfm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Ldxx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public static ae(F)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop
.end method


# virtual methods
.method public ad(Landroid/view/View;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Ldxx;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Ldxy;

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    iget-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Ldxy;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    float-to-int v0, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    float-to-int v1, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Ldxy;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_17
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p3}, Ldxy;->j(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;II)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1, p2}, Ldxy;->b(Landroid/view/ViewGroup;Ldxx;)Ldxy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_8

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_24
    return v3

    nop

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    :goto_29
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne v1, p2, :cond_6

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-static {p2, p1, p3}, Ldwd;->j(Landroid/view/View;Ldxa;Ldxm;)V

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    const/high16 p1, 0x100000

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Ldxa;->u:Ldxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ad(Landroid/view/View;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    new-instance p3, Lelu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-direct {p3, p0, v0}, Lelu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p2, p1}, Ldwd;->g(Landroid/view/View;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-ne p1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Ldxy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Ldxy;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p3}, Ldxy;->e(Landroid/view/MotionEvent;)V

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
