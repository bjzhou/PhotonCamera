.class final Lelk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    sput-object v0, Lelk;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_5

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

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop
.end method

.method public static a(Landroid/view/View;)Z
    .locals 5

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lt v3, v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v3, v3, 0x1

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

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    move v3, v1

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

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
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    :goto_11
    const v0, 0x1a

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const v1, 0x4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    return v2

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    invoke-static {v4}, Lelk;->a(Landroid/view/View;)Z

    move-result v4

    nop

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

    :goto_1d
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    instance-of v0, p0, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
