.class public final Ldci;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldfr;

.field public final b:Lxe;


# direct methods
.method public constructor <init>(Ldgb;Lxc;)V
    .locals 4

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Ldci;->b:Lxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ldgb;->i()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/16 :goto_18

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, v2}, Lxe;->d(I)Z

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lxe;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_9
    invoke-virtual {p1}, Ldgb;->g()Ldgb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v2, Ldgb;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lxe;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ldgb;->i()Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_10
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v2, v2, Ldgb;->e:I

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

    :goto_15
    iput-object v0, p0, Ldci;->a:Ldfr;

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

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    :goto_19
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p1, Ldgb;->c:Ldfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    iput-object v0, p0, Ldci;->b:Lxe;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Ldgb;->j()Z

    :goto_20
    goto/32 :goto_7

    nop

    nop

    :goto_21
    iget v3, v2, Ldgb;->e:I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p2, v3}, Lxc;->b(Lxc;I)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_25
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
