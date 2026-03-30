.class public Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public final a:Lhfn;

.field public final b:Landroid/graphics/Rect;

.field public c:Lhfp;

.field public d:Landroid/animation/Animator;

.field public e:I

.field public f:I

.field public final g:Landroid/graphics/Point;

.field public final h:Landroid/graphics/Rect;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->g:Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    :goto_a
    new-instance p1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_14
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-direct {v3, p1, v0, v1, v2}, Lhfn;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    new-instance v3, Lhfn;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    iput-object v3, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->a:Lhfn;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v2, Lhfn;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iput-object v2, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->a:Lhfn;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    invoke-direct {v2, p1, p2, v0, v1}, Lhfn;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_15

    nop

    nop

    :goto_12
    const v1, 0x8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1c
    iput-object p1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->g:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)V
    .locals 6

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-int v2, v1, v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2
    iget v2, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    float-to-int v3, v5

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v3, v0

    nop

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

    :goto_8
    sub-int/2addr v4, v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_69

    nop

    nop

    :goto_b
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_c
    add-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_e
    iget-object v3, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v3, v3, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_54

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->a:Lhfn;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v4, p1, v3

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_15
    iget-object v3, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->a:Lhfn;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_17
    iget v2, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_18
    sub-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/2addr v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->f:I

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1c
    invoke-virtual {v5, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    float-to-int v0, v3

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr v0, v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v3, p1, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    iget v5, p1, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v4, p1, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_22
    iget-object p0, v3, Lhfn;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_24
    div-int/lit8 v3, v1, 0x2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_27
    iput v4, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->e:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v3, v3, Lhfn;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2a
    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2c
    mul-float/2addr v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2d
    iget v2, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sub-int v0, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_30
    invoke-direct {v2, v0, v1, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->j:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_34
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_35
    iget-object v5, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->a:Lhfn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget p0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/2addr v1, v3

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3a
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3b
    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3d
    add-int/2addr v1, v2

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_3e
    goto/32 :goto_a

    nop

    nop

    :goto_3f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    mul-float/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->k:Ljava/lang/Integer;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v4, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v3, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_47
    iget-object v3, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->a:Lhfn;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_49
    iget-object v3, v3, Lhfn;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v2, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4d
    div-int/lit8 v0, p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sub-int/2addr v4, v0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sub-int v0, p1, v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_50
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sub-int/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->k:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_54
    iget-object p1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_57
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v3, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_59
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5a
    add-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->j:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_5f
    iget-object v5, v5, Lhfn;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_62
    iget v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_63
    new-instance v2, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v2, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_67
    iget v1, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    float-to-int v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    :goto_6b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v2, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_6f
    iget v3, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_70
    sub-int v0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_71
    add-int/2addr v2, p0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->d:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public final c(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    iget p1, p1, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    iget p1, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    iget v1, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->g:Landroid/graphics/Point;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p1, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_10
    const v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_4

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    :goto_5
    iget-object p0, v0, Lhfp;->d:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->c:Lhfp;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_b
    iget-object p0, v0, Lhfp;->i:Ljava/lang/Integer;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    :goto_12
    iget-object p0, v0, Lhfp;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    const v1, 0xc

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, v0, Lhfp;->a:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    iget-object p0, v0, Lhfp;->h:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, v0, Lhfp;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_17

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1b

    nop

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

    :goto_1e
    iget-object p0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p0, :cond_4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_5

    nop

    nop

    :goto_21
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    iget-object v1, v0, Lhfp;->i:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onFinishInflate()V
    .locals 8

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->k:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    move-object v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_9
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v2, 0x42400000    # 48.0f

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v5, v6

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_d
    invoke-virtual {v1, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->j:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    float-to-int v0, v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_12
    iput v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_13
    move-object v3, v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v2, 0x41800000    # 16.0f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_29

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    float-to-int v0, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Lhfp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_22
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    const/high16 v2, 0x42200000    # 40.0f

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2b
    const v4, 0x7f0803c5

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

    :goto_2c
    move v6, v7

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->c:Lhfp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v2, 0x7f0803c4

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v6, 0x7f0803c7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_34
    const v1, 0x8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_37
    invoke-virtual {v1, v5, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v0, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_39
    const v5, 0x7f0803c6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3a
    iget v7, p0, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct/range {v1 .. v6}, Lhfp;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
