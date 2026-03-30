.class public final Lmln;
.super Landroid/support/v7/widget/RecyclerView;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhoh;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmln;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lmln;->setFocusable(Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, v0, p2}, Lmlm;-><init>(Landroid/content/res/Resources;Lhoh;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lmlm;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lmln;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->aa(Lkl;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->at()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lmln;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

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

    nop

    :goto_14
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    invoke-direct {p1, v0}, Lmlk;-><init>(Landroid/content/res/Resources;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lmln;->setOverScrollMode(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->ay(Lkg;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lmln;->getContext()Landroid/content/Context;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x7f070781

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Lmlk;

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

    :goto_1b
    const/4 v0, 0x2

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

    :goto_1c
    invoke-virtual {p0, v0, p1, p1, p1}, Lmln;->setPaddingRelative(IIII)V

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->Y(Lke;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop
.end method
