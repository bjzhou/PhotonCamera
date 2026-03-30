.class final Lbcs;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lubo;


# direct methods
.method public constructor <init>(Lubo;)V
    .locals 0

    goto/32 :goto_3

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

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbcs;->a:Lubo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0, p1}, Lbvs;->e(ILjava/lang/Object;Lblm;)Lbvn;

    move-result-object p0

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
    const/16 v0, 0x30

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iget-object p0, p0, Lbcs;->a:Lubo;

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

    :goto_4
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0}, Lbcr;-><init>(Lubo;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lbdb;->c(Lblm;)Lbgy;

    move-result-object p2

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

    :goto_7
    check-cast p1, Lblm;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    new-instance v0, Lbcr;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p2, p2, Lbgy;->b:Ldij;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    const/4 v0, 0x2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2, p0, p1, v0}, Lbgw;->a(Ldij;Lubo;Lblm;I)V

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    check-cast p2, Ljava/lang/Number;

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

    :goto_11
    const p0, -0x5d747918

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

    nop

    :goto_12
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_13
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_18

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    if-eq p2, v0, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_f

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
