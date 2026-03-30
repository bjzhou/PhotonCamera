.class final Lans;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbob;


# direct methods
.method public constructor <init>(Ljava/util/List;Lbob;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lans;->b:Lbob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lans;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HmqQPvLPsPlKiOMS(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

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

.method public static ZCFgrnGgSXGBgTTE(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static bnnmpWAOnlHoBXej(Ljava/util/Collection;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static cTnJPtTXSlKDexSE(Z)Ljava/lang/Boolean;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static lZJEdeZVDwvWIOkH(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static lccWSLRhIkzaZFFs(Lbob;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lbob;->h(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p1, p0, Lans;->b:Lbob;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    iget-object p1, p1, Lanp;->a:Lanq;

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

    :goto_3
    invoke-static {p2, p1}, Lans;->lZJEdeZVDwvWIOkH(Ljava/util/List;Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-static {p2, p1}, Lans;->ZCFgrnGgSXGBgTTE(Ljava/util/List;Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    :goto_7
    check-cast p1, Lany;

    nop

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

    nop

    :goto_8
    goto :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    instance-of p2, p1, Lanq;

    nop

    nop

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

    :goto_c
    iget-object p0, p0, Lans;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    instance-of p2, p1, Lanr;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lanr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Lans;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Lanp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    if-nez p2, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    iget-object p2, p0, Lans;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, p0}, Lans;->lccWSLRhIkzaZFFs(Lbob;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    iget-object p2, p0, Lans;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    xor-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p2, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_19
    invoke-static {p2, p1}, Lans;->HmqQPvLPsPlKiOMS(Ljava/util/List;Ljava/lang/Object;)Z

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p1, Lanr;->a:Lanq;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    invoke-static {p0}, Lans;->cTnJPtTXSlKDexSE(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of p2, p1, Lanp;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1d
    invoke-static {p0}, Lans;->bnnmpWAOnlHoBXej(Ljava/util/Collection;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method
