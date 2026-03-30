.class public Lcom/google/android/material/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->a:I

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
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const v1, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

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

    :goto_b
    const v0, 0x6

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->a:I

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p1, -0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final getBaseline()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/material/internal/BaselineLayout;->a:I

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

.method protected final onLayout(ZIIII)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    sub-int v3, p4, v1

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

    nop

    :goto_1
    add-int/lit8 p5, p5, 0x1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v2, v4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    if-ne v4, v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v5

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

    :goto_8
    goto/32 :goto_1d

    nop

    :goto_9
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    add-int/2addr v3, p3

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

    :goto_b
    const/4 p5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sub-int/2addr p4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

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

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    move v4, p2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v4, v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    :goto_14
    sub-int/2addr p4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_15
    add-int/2addr v4, p2

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingRight()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-int/2addr v4, v5

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

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingTop()I

    move-result p2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1a
    div-int/lit8 v3, v3, 0x2

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

    :goto_1b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    if-lt p5, p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

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

    :goto_21
    if-eq v1, v2, :cond_3

    nop

    goto/32 :goto_2d

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v4

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

    :goto_23
    if-lez v0, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_24
    const/16 v2, 0x8

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

    :goto_25
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_26
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p5}, Lcom/google/android/material/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    iget v4, p0, Lcom/google/android/material/internal/BaselineLayout;->a:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_8

    nop

    nop

    :goto_2b
    sub-int/2addr p4, p3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2c
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    :goto_2e
    iget v4, p0, Lcom/google/android/material/internal/BaselineLayout;->a:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getChildCount()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingLeft()I

    move-result p3

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

    :goto_31
    goto/16 :goto_c

    nop

    :goto_32
    goto/32 :goto_29

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 12

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

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

    :goto_3
    shl-int/lit8 v1, v5, 0x10

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const/4 v2, -0x1

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

    :goto_6
    move v7, v2

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

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getSuggestedMinimumWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v10, v2, :cond_0

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    const/16 v11, 0x8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v10, v11, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sub-int/2addr v11, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v9, p1, p2}, Lcom/google/android/material/internal/BaselineLayout;->measureChild(Landroid/view/View;II)V

    goto/32 :goto_10

    nop

    nop

    :goto_10
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    move v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/BaselineLayout;->setMeasuredDimension(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v5, v4

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

    :goto_18
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v6, v5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

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

    :goto_21
    invoke-static {v1, p1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

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

    :goto_22
    const v1, 0x18

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

    :goto_23
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

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

    :goto_24
    goto/32 :goto_1

    nop

    :goto_25
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingBottom()I

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    :goto_29
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v5, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    move v8, v7

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    if-lt v1, v0, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    move v4, v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_31
    add-int/2addr v4, v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getSuggestedMinimumHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_36
    iput v7, p0, Lcom/google/android/material/internal/BaselineLayout;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_26

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_39
    if-ne v7, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop
.end method
