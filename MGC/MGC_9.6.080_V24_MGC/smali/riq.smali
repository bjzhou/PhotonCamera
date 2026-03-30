.class public abstract Lriq;
.super Landroid/widget/ProgressBar;
.source "PG"


# instance fields
.field public final a:Lrir;

.field public b:I

.field public c:Z

.field public final d:I

.field private final e:Z

.field private final f:I

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;

.field private final i:Leki;

.field private final j:Leki;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m()Lrjl;
    .locals 1

    goto/32 :goto_d

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lriq;->isIndeterminate()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrjf;->a:Lrjl;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lrjn;->a:Lrjl;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p3, 0x3e8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v4, Lrjx;->a:[I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, p0, Lriq;->a:Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Lriq;->i:Leki;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lqxb;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_7
    iput v0, p0, Lriq;->d:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Lqxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, p0, Lriq;->g:Ljava/lang/Runnable;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lrio;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lriq;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p3, -0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    new-instance v1, Lrip;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v1, p0, Lriq;->j:Leki;

    nop

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

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_15
    iput p2, p0, Lriq;->f:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, p0, Lriq;->h:Ljava/lang/Runnable;

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

    :goto_18
    iput-boolean p1, p0, Lriq;->e:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, p0}, Lrip;-><init>(Lriq;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    iput-boolean p1, p0, Lriq;->c:Z

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    :goto_1d
    invoke-virtual {p0, v2, p2}, Lriq;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lrir;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    invoke-static {p1, p2, p3, v0}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1, p0, v2, v3}, Lqxb;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    const v0, 0x7f15090e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_22
    new-array v7, p1, [I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static/range {v2 .. v7}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_24
    const/4 p1, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v3, p2

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

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v1, p0}, Lrio;-><init>(Lriq;)V

    goto/32 :goto_5

    nop

    nop

    :goto_29
    const/16 v2, 0xa

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

    :goto_2a
    move v5, p3

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

    nop

    :goto_2b
    const v1, 0xe

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v2, 0x9

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move v6, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_30
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

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

    :goto_31
    invoke-direct {v1, p0, v2, v3}, Lqxb;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x4

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
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Lrir;
.end method

.method public final b()Lrjf;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    check-cast p0, Lrjf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final c()Lrjn;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lrjn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method protected final d(Z)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0, v1, p1}, Lrjj;->l(ZZZ)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    invoke-virtual {p0}, Lriq;->f()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lriq;->e:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lriq;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    const v1, 0x14

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    check-cast v0, Lrjj;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    const v0, 0x10

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lriq;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    if-gtz v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    iget v0, p0, Lriq;->f:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method final f()Z
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lriq;->getWindowVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lriq;->getWindowVisibility()I

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v0, p0

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

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

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    goto :goto_18

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v1, v0, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xe

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

    :goto_17
    goto :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lriq;->isAttachedToWindow()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    return p0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_22

    nop

    nop

    :goto_21
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    :goto_22
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public g(I)V
    .locals 1

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqqy;->m(Landroid/content/ContentResolver;)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_12

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    cmpl-float p1, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lrjn;->isVisible()Z

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_13

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
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lrjf;->jumpToCurrentState()V

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-boolean p1, p0, Lriq;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lriq;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lriq;->isIndeterminate()Z

    move-result v0

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

    :goto_1a
    invoke-virtual {p1, p0}, Leki;->b(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput p1, p0, Lriq;->b:I

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

    :goto_1c
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lrjm;->c()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    :goto_21
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lriq;->i:Leki;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lriq;->isIndeterminate()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final bridge synthetic getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final invalidate()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/ProgressBar;->invalidate()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lriq;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lriq;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lrjm;->b(Leki;)V

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lriq;->j:Leki;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lriq;->e()V

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lriq;->i:Leki;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lrjj;->h(Leki;)V

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lriq;->f()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Lrjj;->h(Leki;)V

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xe

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    const v0, 0x7

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lriq;->j:Leki;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    iget-object v0, v0, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lrjj;->n()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lrjn;->b:Lrjm;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Lrjj;->o(Leki;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_8
    iget-object v1, p0, Lriq;->j:Leki;

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lriq;->j:Leki;

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

    nop

    :goto_b
    iget-object v0, p0, Lriq;->h:Ljava/lang/Runnable;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lriq;->c()Lrjn;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lrjj;->o(Leki;)V

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_12
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Lriq;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_1d

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lrjm;->e()V

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lriq;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    const v0, 0xe

    nop

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

    :goto_19
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lriq;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    check-cast v0, Lrjj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lriq;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lriq;->b()Lrjf;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method protected final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    nop

    invoke-virtual {p0}, Lriq;->getPaddingLeft()I

    move-result v1

    nop

    if-nez v1, :cond_1

    nop

    invoke-virtual {p0}, Lriq;->getPaddingTop()I

    move-result v1

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {p0}, Lriq;->getPaddingLeft()I

    move-result v1

    nop

    nop

    nop

    nop

    int-to-float v1, v1

    nop

    nop

    invoke-virtual {p0}, Lriq;->getPaddingTop()I

    move-result v2

    nop

    nop

    nop

    int-to-float v2, v2

    nop

    nop

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    invoke-virtual {p0}, Lriq;->getPaddingRight()I

    move-result v1

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->getPaddingBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    :cond_3
    invoke-virtual {p0}, Lriq;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->getPaddingLeft()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->getPaddingRight()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->getPaddingTop()I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->getPaddingBottom()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    sub-int/2addr v2, v3

    nop

    const/4 v3, 0x0

    nop

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    invoke-virtual {p0}, Lriq;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrjl;->g()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/widget/ProgressBar;->onLayout(ZIIII)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lriq;->19e596a3e324281407eb5c11093c0152m()Lrjl;

    move-result-object p0

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

    :goto_3
    return-void

    nop

    nop
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    invoke-virtual {v0}, Lrjl;->b()I

    move-result v1

    nop

    nop

    nop

    if-gez v1, :cond_0

    nop

    invoke-virtual {p0}, Lriq;->getSuggestedMinimumWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-static {v1, p1}, Lriq;->getDefaultSize(II)I

    move-result p1

    nop

    goto :goto_4

    nop

    nop

    :cond_0
    invoke-virtual {v0}, Lrjl;->b()I

    move-result p1

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->getPaddingLeft()I

    move-result v1

    nop

    nop

    nop

    nop

    add-int/2addr p1, v1

    nop

    invoke-virtual {p0}, Lriq;->getPaddingRight()I

    move-result v1

    nop

    nop

    add-int/2addr p1, v1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lrjl;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    if-gez v1, :cond_1

    nop

    nop

    invoke-virtual {p0}, Lriq;->getSuggestedMinimumHeight()I

    move-result v0

    nop

    nop

    invoke-static {v0, p2}, Lriq;->getDefaultSize(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v0}, Lrjl;->a()I

    move-result p2

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    add-int/2addr p2, v0

    nop

    invoke-virtual {p0}, Lriq;->getPaddingBottom()I

    move-result v0

    nop

    nop

    nop

    add-int/2addr p2, v0

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lriq;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_8
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-direct {p0}, Lriq;->19e596a3e324281407eb5c11093c0152m()Lrjl;

    move-result-object v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

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

    nop

    :goto_12
    const v1, 0x10

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisibilityChanged(Landroid/view/View;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_8

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lriq;->d(Z)V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lriq;->d(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onWindowVisibilityChanged(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized setIndeterminate(Z)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lriq;->isIndeterminate()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

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

    :goto_a
    return-void

    nop

    :goto_b
    :try_start_2
    invoke-virtual {p0}, Lriq;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    check-cast v0, Lrjj;

    nop

    nop

    nop

    invoke-virtual {v0}, Lrjj;->n()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lriq;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lriq;->f()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    check-cast v2, Lrjj;

    nop

    nop

    invoke-virtual {v2, v1, v0, v0}, Lrjj;->l(ZZZ)Z

    :cond_1
    instance-of v1, p1, Lrjn;

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    invoke-virtual {p0}, Lriq;->f()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    check-cast p1, Lrjn;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lrjn;->b:Lrjm;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrjm;->d()V

    :cond_2
    iput-boolean v0, p0, Lriq;->c:Z

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq p1, v0, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

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

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop
.end method

.method public final setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    const-string p1, "Cannot set framework drawable as indeterminate drawable."

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    check-cast v0, Lrjj;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    instance-of v0, p1, Lrjn;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lrjj;->n()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final declared-synchronized setProgress(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_1
    invoke-virtual {p0}, Lriq;->isIndeterminate()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    :try_start_2
    invoke-virtual {p0, p1}, Lriq;->g(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop
.end method

.method public final setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v0, v0

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

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Lrjf;->setLevel(I)Z

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    float-to-int p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "Cannot set framework drawable as progress drawable."

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    check-cast p1, Lrjf;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    const p0, 0x461c4000    # 10000.0f

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lriq;->getMax()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lriq;->getProgress()I

    move-result v0

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

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lrjj;->n()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_7

    nop

    nop

    :goto_14
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    :goto_17
    instance-of v0, p1, Lrjf;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    div-float/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
