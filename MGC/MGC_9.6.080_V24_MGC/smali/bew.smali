.class final Lbew;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Lubo;

.field final synthetic b:Lubo;


# direct methods
.method public constructor <init>(Lubo;Lubo;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbew;->a:Lubo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p2, p0, Lbew;->b:Lubo;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lbdb;->c(Lblm;)Lbgy;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lbew;->a:Lubo;

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

    :goto_2
    if-eq p2, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p2, p2, Lbgy;->a:Ldij;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x30

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    new-instance v1, Lbev;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_12

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_b
    invoke-interface {p1}, Lblm;->s()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    const p0, 0xd6af9ad

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    goto/16 :goto_20

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lblm;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    check-cast p2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    and-int/lit8 p2, p2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lbew;->b:Lubo;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, v0, p0}, Lbev;-><init>(Lubo;Lubo;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Lblm;->H()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Ltyg;->a:Ltyg;

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
    invoke-static {p2, p0, p1, v0}, Lbgw;->a(Ldij;Lubo;Lblm;I)V

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    :goto_21
    invoke-static {p0, v1, p1}, Lbvs;->e(ILjava/lang/Object;Lblm;)Lbvn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method
