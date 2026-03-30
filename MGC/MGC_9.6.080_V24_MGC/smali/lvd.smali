.class Llvd;
.super Llvb;
.source "PG"


# instance fields
.field private a:Landroid/animation/Animator;

.field final synthetic b:Llvi;


# direct methods
.method public constructor <init>(Llvi;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llvd;->b:Llvi;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Llvb;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Llvd;->a:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const/16 v4, 0x14d

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    iget v2, v0, Llvj;->c:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    iget v2, v0, Llvj;->e:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    new-instance v3, Lnni;

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
    iput-object v0, p0, Llvd;->a:Landroid/animation/Animator;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, p0}, Llvc;-><init>(Llvd;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, v0, Llvj;->f:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    new-instance v2, Leac;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    iget-object v2, v0, Llvj;->m:Landroid/view/View;

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

    :goto_d
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    iget v4, v0, Llvj;->a:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v3, v4, v2}, Lnni;-><init>(ILandroid/view/animation/Interpolator;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Lnni;->a()Landroid/animation/AnimatorSet;

    move-result-object v0

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

    :goto_11
    iget-object v0, p0, Llvd;->b:Llvi;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Llvi;->k()Z

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, v0, Llvj;->j:Lnnj;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v4, v0, Llvj;->d:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    const-string v5, "color"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2d

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Llvj;->a(Z)I

    move-result v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    iget v4, v0, Llvj;->b:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v2}, Leac;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    iget-object v1, v0, Llvj;->k:Lnnj;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Llvd;->b:Llvi;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v1, v5, v2, v4}, Lnni;->c(Ljava/lang/Object;Ljava/lang/String;II)V

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3, v1, v5, v2, v4}, Lnni;->c(Ljava/lang/Object;Ljava/lang/String;II)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_22
    new-instance v1, Llvc;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_0

    nop

    nop

    :goto_24
    invoke-virtual {v3, v1, v5, v2, v0}, Lnni;->c(Ljava/lang/Object;Ljava/lang/String;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3, v2, v5, v1, v4}, Lnni;->c(Ljava/lang/Object;Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, v0, Llvi;->a:Ltud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Llvj;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v2, v0, Llvj;->g:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Llvj;->l:Lnnj;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v5, "backgroundColor"

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_a

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Llvd;->a:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

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

    :goto_6
    iget-object v0, p0, Llvd;->a:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Llvd;->a:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_6

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

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public d()V
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
