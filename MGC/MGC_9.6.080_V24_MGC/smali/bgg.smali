.class final Lbgg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Lbgp;

.field final synthetic b:F


# direct methods
.method public constructor <init>(Lbgp;F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lbgg;->a:Lbgp;

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

    :goto_2
    iput p2, p0, Lbgg;->b:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {v1 .. v6}, Lbfx;->a(FFLjava/util/Set;Lubo;FF)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ljava/util/Map;

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

    nop

    :goto_3
    invoke-static {p1, v0}, Lbfx;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lbgp;->b:Lubk;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    iget-object v1, v1, Lbgp;->c:Lbnx;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lbgg;->a:Lbgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, v0, p2}, Lbgp;->c(Ljava/lang/Object;Labl;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    iget v5, p0, Lbgg;->b:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

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

    nop

    :goto_c
    iget-object v2, v2, Lbgp;->l:Lbnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-interface {v2}, Lbna;->b()F

    move-result v6

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lbgg;->a:Lbgp;

    nop

    nop

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

    :goto_17
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lbgg;->a:Lbgp;

    nop

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

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lbgp;->d()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    invoke-direct {v2, v1}, Ljava/lang/Float;-><init>(F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_22
    invoke-virtual {p0, v0, p1, p2}, Lbgp;->b(FLabl;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    iget-object p0, p0, Lbgg;->a:Lbgp;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_26
    invoke-interface {v1}, Lbrd;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_27
    iget-object p0, p0, Lbgg;->a:Lbgp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Lbgp;->a:Labl;

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

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2a
    invoke-interface {v0, p1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v2, Ljava/lang/Float;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq p0, p1, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_2d
    goto/32 :goto_13

    nop

    nop

    :goto_2e
    check-cast v1, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    :goto_30
    goto/32 :goto_4

    nop

    nop

    :goto_31
    invoke-virtual {v2}, Lbgp;->i()Lubo;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lbgp;->a:Labl;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_34
    move v2, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Lbgg;->a:Lbgp;

    nop

    goto/32 :goto_7

    nop

    nop
.end method
