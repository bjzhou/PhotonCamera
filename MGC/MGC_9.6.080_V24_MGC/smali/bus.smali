.class public final Lbus;
.super Ltys;
.source "PG"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/util/Collection;
.implements Lj$/util/Set;
.implements Lucv;


# instance fields
.field private final a:Lbui;


# direct methods
.method public constructor <init>(Lbui;)V
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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltys;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbus;->a:Lbui;

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
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltyn;->e()I

    move-result p0

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
    iget-object p0, p0, Lbus;->a:Lbui;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_f

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xa

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    instance-of v0, p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v2}, Ltyn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_6
    instance-of v0, p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_19

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

    nop

    goto/32 :goto_11

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
    iget-object p0, p0, Lbus;->a:Lbui;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_9
    return v1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1e

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_13
    goto :goto_1c

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz p0, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lbus;->a:Lbui;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

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
    invoke-virtual {p0, p1}, Ltyn;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lbus;->a:Lbui;

    nop

    nop

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
    invoke-direct {v0, p0}, Lbut;-><init>(Lbuz;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lbut;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lbui;->b:Lbuz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop
.end method
