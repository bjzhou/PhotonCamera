.class final Lhr;
.super Landroid/widget/PopupWindow;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-virtual {p0, p2}, Lhr;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

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
    goto/32 :goto_8

    nop

    nop

    :goto_7
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p2, v1, p3, v0}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_e
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lew;->s:[I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    if-nez p3, :cond_1

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop
.end method
