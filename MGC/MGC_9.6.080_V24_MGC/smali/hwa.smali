.class public final synthetic Lhwa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhwa;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhwa;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lhwa;->b:Landroid/view/ViewGroup;

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
    iput-object p5, p0, Lhwa;->e:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lhwa;->d:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    new-array p2, p2, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iget-object p1, p0, Lhwa;->a:Landroid/view/View;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x2

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

    :goto_9
    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7f0b0272

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-lt p2, p3, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_d
    new-array p3, p2, [I

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

    :goto_e
    if-nez p2, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    const/4 p5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_f

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    iget-object p1, p0, Lhwa;->d:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    const/4 p1, 0x4

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

    :goto_16
    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget p3, p3, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lhwa;->e:Landroid/view/View;

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

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget p2, p2, p5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    add-int/2addr p3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    const/4 p1, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    iget-object p4, p0, Lhwa;->b:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p5, p0, Lhwa;->c:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    goto/32 :goto_1f

    nop

    nop
.end method
