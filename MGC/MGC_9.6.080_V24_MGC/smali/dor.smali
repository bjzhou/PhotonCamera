.class final Ldor;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Lbny;


# direct methods
.method public constructor <init>([Ljava/lang/Object;Lbny;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldor;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

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

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ldor;->b:Lbny;

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

    :goto_4
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_18

    nop

    nop

    :goto_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v9, v1}, Lblm;->x(Ljava/lang/Object;)V

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    if-eq p1, p2, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_d
    invoke-interface {v9, p1}, Lblm;->E(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v1, Luaz;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p2, p0}, Ldoq;-><init>(Lbny;[Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_10
    sget-object v0, Ldoo;->a:Lubo;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    iget-object p0, p0, Ldor;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v9}, Lblm;->H()Z

    move-result p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_15
    sget-object p1, Lbll;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    invoke-static/range {v0 .. v10}, Lbcv;->a(Lubo;Luaz;Lbzz;Lcfs;JJLbck;Lblm;I)V

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    and-int/lit8 p1, p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v10, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1b
    move-object v9, p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Ldoq;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v1, p1, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    :goto_21
    goto/32 :goto_1f

    nop

    nop

    :goto_22
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_23
    check-cast v9, Lblm;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_24
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    iget-object p2, p0, Ldor;->b:Lbny;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    if-eqz p1, :cond_4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p1, p0, Ldor;->a:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v9}, Lblm;->g()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    invoke-interface {v9}, Lblm;->s()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v6, 0x0

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

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop
.end method
