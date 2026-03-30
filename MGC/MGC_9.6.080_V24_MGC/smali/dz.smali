.class final Ldz;
.super Ldwl;
.source "PG"


# instance fields
.field final synthetic a:Lea;


# direct methods
.method public constructor <init>(Lea;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldwl;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldz;->a:Lea;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iget-object p0, p0, Lej;->t:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    :goto_3
    invoke-static {v0}, Ldvu;->l(Landroid/view/View;)V

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lea;->a:Lej;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ldvu;->l(Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    :goto_9
    iput-object v1, p0, Lej;->J:Lfdn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ldz;->a:Lea;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_b
    const v0, 0xf

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

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    iget-object v0, v0, Lea;->a:Lej;

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

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_11
    goto/16 :goto_4

    nop

    nop

    :goto_12
    goto/32 :goto_28

    nop

    nop

    :goto_13
    iget-object v0, v0, Lea;->a:Lej;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    instance-of v0, v0, Landroid/view/View;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_16
    iget-object v0, v0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/32 :goto_11

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

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

    :goto_19
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ldz;->a:Lea;

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

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_1d
    iget-object v0, p0, Ldz;->a:Lea;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lea;->a:Lej;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, v0, Lea;->a:Lej;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Ldz;->a:Lea;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Lfdn;->T(Ldwk;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Lea;->a:Lej;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    iget-object v0, v0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

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

    :goto_29
    if-nez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ldz;->a:Lea;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Ldz;->a:Lea;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lej;->J:Lfdn;

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

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method
