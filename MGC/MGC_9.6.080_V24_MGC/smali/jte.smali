.class public final Ljte;
.super Llb;
.source "PG"


# instance fields
.field public final s:Landroid/widget/ImageView;

.field public final t:Landroid/widget/TextView;

.field public u:Lows;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const v0, 0x7f0b034e

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Llb;-><init>(Landroid/view/View;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b034c

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Landroid/widget/TextView;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Ljte;->t:Landroid/widget/TextView;

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

    :goto_8
    iput-object v0, p0, Ljte;->s:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/widget/ImageView;

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
.end method


# virtual methods
.method final B()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lows;->close()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ljte;->u:Lows;

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ljte;->u:Lows;

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
.end method

.method public final C(ZZ)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_26

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Ljte;->a:Landroid/view/View;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Ljte;->s:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p2}, Lnzk;->y(Landroid/view/View;)I

    move-result p2

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

    :goto_6
    invoke-static {p2}, Lnzk;->v(Landroid/view/View;)I

    move-result p2

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

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_8
    const-string p2, "default"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_a
    iget-object p1, p0, Ljte;->s:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    iget-object p1, p0, Ljte;->s:Landroid/widget/ImageView;

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

    nop

    :goto_e
    iget-object p1, p0, Ljte;->s:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    const-string p2, "default large screen"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const-string p2, "selected"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Lnzk;->q(Landroid/view/View;)I

    move-result p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Ljte;->s:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Ljte;->a:Landroid/view/View;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_22

    nop

    nop

    :goto_18
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p0, Ljte;->a:Landroid/view/View;

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

    nop

    :goto_1a
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Ljte;->s:Landroid/widget/ImageView;

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

    :goto_1d
    iget-object p2, p0, Ljte;->a:Landroid/view/View;

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

    :goto_1e
    invoke-static {p2}, Lnzk;->x(Landroid/view/View;)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_20
    invoke-static {p0}, Lnzk;->s(Landroid/view/View;)I

    move-result p0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_0

    nop

    nop

    :goto_22
    iget-object p1, p0, Ljte;->s:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Ljte;->s:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_26
    goto/32 :goto_23

    nop

    nop

    :goto_27
    iget-object p0, p0, Ljte;->a:Landroid/view/View;

    nop

    goto/32 :goto_14

    nop

    nop
.end method
