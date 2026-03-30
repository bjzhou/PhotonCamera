.class final Lufn;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lucs;

.field final synthetic b:Z


# direct methods
.method public constructor <init>(Lucs;Z)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p2, p0, Lufn;->b:Z

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

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lufn;->a:Lucs;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    move-object p0, p2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Luad;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p2}, Luad;->plus(Luad;)Luad;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p2, Lufl;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Lufl;->b()Luad;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iget-boolean p0, p0, Lufn;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2}, Luab;->getKey()Luac;

    move-result-object v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_10

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2}, Luab;->getKey()Luac;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p2, Lufl;

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

    :goto_f
    invoke-interface {p1, p0}, Luad;->plus(Luad;)Luad;

    move-result-object p0

    nop

    :goto_10
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p2}, Lufl;->a()Lufl;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Luad;->get(Luac;)Luab;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_13
    iget-object p0, p0, Lufn;->a:Lucs;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lufl;

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_16
    check-cast p2, Luab;

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

    :goto_17
    iget-object v0, v0, Lucs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v0, p2, Lufl;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_24

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Luad;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_1e
    iput-object v0, p0, Lucs;->a:Ljava/lang/Object;

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

    :goto_1f
    const v1, 0x11

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1, p0}, Luad;->plus(Luad;)Luad;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0, v1}, Luad;->minusKey(Luac;)Luad;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Luad;

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

    :goto_29
    iget-object v0, p0, Lufn;->a:Lucs;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lucs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
