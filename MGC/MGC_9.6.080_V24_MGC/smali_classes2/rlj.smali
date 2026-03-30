.class public final Lrlj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldvo;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p2, p0, Lrlj;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrlj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;Ldwy;)Ldwy;
    .locals 1

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ldwy;->c()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    if-ne v0, p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ldwy;->a()I

    move-result p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Lrlo;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lrlo;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Ldwy;

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

    :goto_b
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Ldwy;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lrlj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    return-object p2

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lrlo;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getFitsSystemWindows()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    iput p1, v0, Lrlo;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    iget-object p0, p0, Lrlj;->a:Ljava/lang/Object;

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

    :goto_13
    invoke-virtual {p2}, Ldwy;->b()I

    move-result p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lrlj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lrlj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Ldwy;->k()Ldwy;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    iget p1, p0, Lrlj;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p1, 0x0

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

    :goto_1d
    move-object p1, p2

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lrlo;->f()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x1

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

    :goto_21
    iput p1, p0, Lrlo;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    iput p1, v0, Lrlo;->m:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method
