.class final Lenb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected final a:Lenc;

.field public final b:F

.field public final c:I

.field public final d:F

.field public final e:Lenj;

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field protected n:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lenc;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lenb;->e:Lenj;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lenb;->a:Lenc;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-direct {p1, p2}, Lenj;-><init>(Lenc;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    iput v0, p0, Lenb;->b:F

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

    :goto_b
    iput p1, p0, Lenb;->d:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    iput p1, p0, Lenb;->c:I

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
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lenb;->o:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    const v0, 0x3ea8f5c3    # 0.33f

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

    :goto_12
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    new-instance p1, Lenj;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    iput-boolean v0, p0, Lenb;->m:Z

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

    :goto_15
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

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
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Lenj;->m:Ldys;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    iget-object p1, p0, Lenb;->e:Lenj;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    iget-object v0, p1, Lenj;->l:Ldys;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v0, v0, Ldyp;->m:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v1, p0, Lenb;->m:Z

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean p1, p1, Ldyp;->m:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1d
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lenb;->g:F

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
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    iget-object v0, v0, Lenj;->f:Landroid/view/VelocityTracker;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Lenb;->l:Z

    nop

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

    :goto_a
    iput-boolean v0, p0, Lenb;->k:Z

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

    :goto_b
    iput-boolean v0, p0, Lenb;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v1, v0, Lenj;->f:Landroid/view/VelocityTracker;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lenb;->e:Lenj;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v1, p0, Lenb;->i:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lenb;->h:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lenb;->e:Lenj;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    const/high16 v1, -0x31000000

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_0

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

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lenb;->g:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x18

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3
    cmpl-float v2, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lenb;->h:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_c
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    if-gtz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v0, p0, Lenb;->j:Z

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

    :goto_f
    sub-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Lenb;->o:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    iput-boolean v3, p0, Lenb;->j:Z

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-gtz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    mul-float v4, p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    cmpl-float v1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    cmpg-float p1, p1, v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_20
    mul-float v3, v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    iput-boolean v3, p0, Lenb;->j:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    :goto_24
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    const v0, 0xb

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

    nop

    nop

    :goto_27
    mul-int v2, v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_28
    add-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ltz p1, :cond_4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop
.end method

.method protected final d(Landroid/view/View;ZFFF)Z
    .locals 12

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v9, v9

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

    :goto_1
    sub-float v10, v6, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3
    sub-float v11, v8, v10

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
    int-to-float v9, v9

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    :goto_7
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    const/4 v0, 0x0

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

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    cmpl-float v8, v6, v8

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c
    if-eqz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_d
    goto/32 :goto_37

    nop

    :goto_e
    return v2

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v1, p3

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    :goto_13
    move-object v6, p0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    int-to-float v6, v3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    cmpg-float v8, v6, v8

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    int-to-float v8, v4

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

    :goto_19
    int-to-float v8, v8

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ltz v8, :cond_3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    :goto_1b
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    move-object v0, p1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v5, v5, -0x1

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

    nop

    nop

    :goto_1e
    int-to-float v10, v10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

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

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    add-float v8, p5, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_22
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    neg-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-gez v8, :cond_4

    nop

    goto/32 :goto_3c

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    invoke-virtual/range {v6 .. v11}, Lenb;->d(Landroid/view/View;ZFFF)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

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

    :goto_28
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2a
    if-gez v5, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    :goto_2b
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-float v6, p4, v6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    if-ltz v9, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2f
    move v9, p3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_30
    cmpl-float v9, v8, v9

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_31
    instance-of v1, v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_32
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

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

    :goto_33
    cmpg-float v9, v8, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    float-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0xf

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

    :goto_36
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-gez v9, :cond_8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3e
    return v2

    nop

    nop

    :goto_3f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez p2, :cond_9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_42
    int-to-float v9, v9

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop
.end method
