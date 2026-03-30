.class public final Lndw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnnj;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lndw;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lndw;->a:Landroid/view/View;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    iget-object v0, v0, Lndy;->n:Landroid/animation/Animator;

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

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lndy;->g()V

    goto/32 :goto_19

    nop

    nop

    :goto_3
    iget-object v0, p0, Lndw;->a:Landroid/view/View;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    :goto_8
    check-cast v0, Lndy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Lndy;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :goto_d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    :goto_10
    check-cast p0, Lndy;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lndw;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_14
    iget-object v0, v0, Lndy;->n:Landroid/animation/Animator;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    :goto_17
    iget-object v0, p0, Lndw;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Lndw;->b:I

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

    :goto_1c
    const v1, 0x11

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lndy;->m:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lndw;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lndy;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    iput p1, v0, Lndy;->j:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    check-cast p0, Lndy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lndw;->a:Landroid/view/View;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :goto_27
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lndw;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Lndy;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2c
    if-eq v0, v1, :cond_4

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

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    iput p1, p0, Lndy;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lndy;->invalidate()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    :goto_33
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput p1, p0, Lndy;->h:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method
