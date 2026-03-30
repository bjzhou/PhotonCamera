.class final Ltfd;
.super Ltdx;
.source "PG"


# instance fields
.field private final a:Ltdx;

.field private final b:Ltet;


# direct methods
.method public constructor <init>(Ltdx;Ltet;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Ltfz;-><init>(Ltdx;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ltfd;->b:Ltet;

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

    nop

    :goto_3
    new-instance v0, Ltfz;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object v0, p0, Ltfd;->a:Ltdx;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lthn;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_24

    nop

    nop

    :goto_0
    invoke-static {v4, p1, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1c

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    iget-object v1, p0, Ltfd;->a:Ltdx;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v1, 0x1

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

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_10
    const/16 v4, 0x380

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v4, 0x382

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_14
    check-cast v1, Ljava/lang/Boolean;

    nop

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

    :goto_15
    invoke-interface {v0}, Ltet;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v4, p1, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    return-object p0

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    const/16 v4, 0x381

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    const/16 v4, 0x37f

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v4, p1, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_24
    const v0, 0x15

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Ltfd;->b:Ltet;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v4, 0x383

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_27
    const/16 v1, 0x9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p0, 0x0

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

    nop

    :goto_2a
    invoke-static {v4, p1, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Ljava/util/Collection;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, p1}, Ltdx;->a(Lthn;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v4, p1, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1b

    nop

    nop
.end method
