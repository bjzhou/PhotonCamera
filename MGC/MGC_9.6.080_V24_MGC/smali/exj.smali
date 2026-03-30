.class public final Lexj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Lujq;


# direct methods
.method public constructor <init>(Lujq;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lexj;->a:Lujq;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, v0, Lexi;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v2, v0, Lexi;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    instance-of v0, p2, Lexi;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-interface {p0, p1, v0}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p2, v0, Lexi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    and-int v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

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

    nop

    :goto_f
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lexj;->a:Lujq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    move-object v0, p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    :goto_1a
    check-cast v0, Lexi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_3

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

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of p2, p1, Letj;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1d
    goto :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, p0, p2}, Lexi;-><init>(Lexj;Ltzy;)V

    :goto_20
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    if-eq p0, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, v0, Lexi;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    new-instance v0, Lexi;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_27
    iput v3, v0, Lexi;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    const v1, 0x2

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

    :goto_29
    goto/32 :goto_25

    nop

    :goto_2a
    throw p0

    nop

    nop

    :goto_2b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object v1

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq v2, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v1, Luag;->a:Luag;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p2, :cond_6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method
