.class public final Lbgm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Lujq;


# direct methods
.method public constructor <init>(Lujq;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbgm;->a:Lujq;

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
.method public final a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    instance-of v0, p2, Lbgl;

    nop

    nop

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

    :goto_5
    and-int v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_7
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_8
    iget-object p0, p0, Lbgm;->a:Lujq;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-eq v2, v3, :cond_2

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    move-object p2, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lbgl;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    goto/16 :goto_2b

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_16
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

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

    :goto_18
    check-cast p2, Ljava/util/Map;

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

    :goto_19
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, p0, p2}, Lbgl;-><init>(Lbgm;Ltzy;)V

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v1, v0, Lbgl;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, v0, Lbgl;->b:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v0, Lbgl;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    :goto_21
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    iput v3, v0, Lbgl;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_25
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    iget-object p2, v0, Lbgl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_29
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2a
    return-object v1

    nop

    nop

    :goto_2b
    goto/32 :goto_e

    nop

    nop

    :goto_2c
    check-cast v0, Lbgl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0, p1, v0}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2e
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_32
    if-eq p0, v1, :cond_6

    nop

    goto/32 :goto_2b

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop
.end method
