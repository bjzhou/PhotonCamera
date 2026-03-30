.class public Lcom/google/android/material/snackbar/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/Button;

.field public final c:Landroid/animation/TimeInterpolator;

.field public d:I


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(III)Z
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v0, p3, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

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
    return p1

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getOrientation()I

    move-result v0

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

    :goto_16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_1c
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move p1, v1

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

    :goto_1e
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    nop

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

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setOrientation(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v0, p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

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

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
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

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->c:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const p2, 0x7f0404e4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    sget-object v0, Lrer;->b:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p2, v0}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method protected final onFinishInflate()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const v0, 0x7f0b042d

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x7f0b042c

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_8
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/widget/Button;

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
.end method

.method protected final onMeasure(II)V
    .locals 7

    goto/32 :goto_26

    nop

    nop

    :goto_0
    move v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

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

    :goto_2
    invoke-direct {p0, v4, v0, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->166277962e993c138a6b1f0c9b571cc0m(III)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_14

    nop

    :goto_6
    const v2, 0x7f07017c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getOrientation()I

    move-result v0

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

    :goto_8
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    const/4 v4, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_e
    if-gtz v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

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

    :goto_f
    iget-object v3, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    if-gt v5, v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    sub-int v2, v0, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v1, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    if-nez v3, :cond_5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq v0, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v0, v2

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1f
    goto :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    :goto_23
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_7

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_7
    :goto_25
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_27
    if-gt v3, v1, :cond_8

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

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

    :goto_29
    move v3, v4

    nop

    nop

    :goto_2a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_9

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->166277962e993c138a6b1f0c9b571cc0m(III)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    const v3, 0x7f07017b

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

    nop

    nop

    :goto_2e
    iget v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2f
    iget v6, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
