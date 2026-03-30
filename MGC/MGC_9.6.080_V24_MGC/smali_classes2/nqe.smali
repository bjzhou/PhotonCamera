.class Lnqe;
.super Lnqd;
.source "PG"


# instance fields
.field final synthetic a:Lnqg;


# direct methods
.method public constructor <init>(Lnqg;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnqd;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lnqe;->a:Lnqg;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_29

    nop

    nop

    :goto_0
    iget v3, v0, Lnra;->e:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2
    new-instance v3, Lnmd;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnqg;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_25

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v3, p0, v4}, Lnmd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-long v3, v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, p0, v4}, Lnmd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    int-to-long v2, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

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

    nop

    nop

    :goto_15
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v2, 0xa

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

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

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lnqe;->a:Lnqg;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    iget v0, v0, Lnra;->e:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_20
    iget-object v1, v0, Lnra;->l:Landroid/view/View;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v4, 0x8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_23
    iget-object v1, v0, Lnra;->g:Landroid/widget/ImageButton;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v3, v0, Lnra;->e:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v1, p0, v2}, Lnmd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lnra;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v3, Lnmd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2f
    iput-boolean v1, v0, Lnra;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v1, Lnmd;

    nop

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

    :goto_32
    iget-object v1, v0, Lnra;->h:Landroid/widget/ImageButton;

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
.end method

.method public c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public e()V
    .locals 0

    goto/32 :goto_0

    nop

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
.end method
