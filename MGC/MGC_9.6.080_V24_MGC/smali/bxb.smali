.class public final Lbxb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbwz;


# instance fields
.field final synthetic a:Lbxc;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Luaz;


# direct methods
.method public constructor <init>(Lbxc;Ljava/lang/String;Luaz;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p3, p0, Lbxb;->c:Luaz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbxb;->a:Lbxc;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lbxb;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    invoke-virtual {v1, p0, v0}, Lyg;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lbxc;->a:Lyg;

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

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lyg;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lbxb;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    iget-object v1, p0, Lbxb;->b:Ljava/lang/String;

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

    :goto_f
    iget-object v1, p0, Lbxb;->a:Lbxc;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    const v0, 0x1d

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

    :goto_11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lbxb;->a:Lbxc;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lbxb;->c:Luaz;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_17
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, v1, Lbxc;->a:Lyg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop
.end method
