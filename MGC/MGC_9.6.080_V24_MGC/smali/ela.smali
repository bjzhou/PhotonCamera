.class public final Lela;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldvo;


# instance fields
.field final synthetic a:Landroidx/viewpager/widget/ViewPager;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lela;->a:Landroidx/viewpager/widget/ViewPager;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lela;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;Ldwy;)Ldwy;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Ldwy;->c()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

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

    :goto_2
    invoke-virtual {p1}, Ldwy;->c()I

    move-result v0

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

    :goto_3
    invoke-static {v2, p1}, Ldwd;->b(Landroid/view/View;Ldwy;)Ldwy;

    move-result-object v2

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

    :goto_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v3, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_9
    iget v4, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ldwy;->b()I

    move-result v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    iget v4, p2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ldwp;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Ldwq;->c(Ldua;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    :goto_11
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

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

    nop

    :goto_12
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

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

    :goto_13
    iput v3, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ldwy;->q()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lela;->a:Landroidx/viewpager/widget/ViewPager;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_18
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_19
    iget v4, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    iput v0, p2, Landroid/graphics/Rect;->top:I

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

    :goto_1b
    iget p1, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Ldwy;->d()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    iget v1, p2, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1, p2}, Ldwd;->c(Landroid/view/View;Ldwy;)Ldwy;

    move-result-object p1

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ldwp;-><init>(Ldwy;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    :goto_25
    iget-object p2, p0, Lela;->b:Landroid/graphics/Rect;

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

    :goto_26
    return-object p1

    nop

    nop

    :goto_27
    goto/32 :goto_25

    nop

    nop

    :goto_28
    goto :goto_21

    nop

    :goto_29
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    iget v0, p2, Landroid/graphics/Rect;->top:I

    nop

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

    :goto_2c
    invoke-virtual {p0}, Ldwq;->a()Ldwy;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2}, Ldwy;->b()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2}, Ldwy;->a()I

    move-result v2

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

    nop

    :goto_2f
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_31
    iput v3, p2, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_32
    iput v0, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_33
    invoke-static {p1, v0, v1, p2}, Ldua;->b(IIII)Ldua;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Ldwy;->a()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_35
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Lela;->a:Landroidx/viewpager/widget/ViewPager;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Ldwy;->d()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method
