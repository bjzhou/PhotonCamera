.class public final synthetic Lmrw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lmse;


# direct methods
.method public synthetic constructor <init>(Lmse;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmrw;->a:Lmse;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    move v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v5, p5

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

    :goto_6
    invoke-interface/range {v0 .. v5}, Landroid/view/View$OnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lmrw;->a:Lmse;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmse;->e:Landroid/view/View$OnScrollChangeListener;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    move-object v1, p1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    move v4, p4

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

    :goto_12
    goto/32 :goto_c

    nop

    nop

    :goto_13
    move v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
