.class final Ldy;
.super Ldwl;
.source "PG"


# instance fields
.field final synthetic a:Lej;


# direct methods
.method public constructor <init>(Lej;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldwl;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldy;->a:Lej;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    goto/32 :goto_8

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
    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, v0, Lej;->J:Lfdn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

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

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ldy;->a:Lej;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lfdn;->T(Ldwk;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    iput-object v1, p0, Lej;->J:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    const v0, 0xb

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iget-object v0, v0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

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

    :goto_11
    iget-object v0, p0, Ldy;->a:Lej;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ldy;->a:Lej;

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

    :goto_13
    const/high16 v1, 0x3f800000    # 1.0f

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
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iget-object v0, p0, Ldy;->a:Lej;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldy;->a:Lej;

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object p0, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Ldvu;->l(Landroid/view/View;)V

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x3

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

    :goto_10
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

    nop

    :goto_11
    iget-object v0, v0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    iget-object v0, v0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

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

    :goto_13
    check-cast p0, Landroid/view/View;

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

    :goto_14
    instance-of v0, v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ldy;->a:Lej;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xc

    nop

    goto/32 :goto_10

    nop

    nop
.end method
