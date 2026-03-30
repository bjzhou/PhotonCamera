.class final Ldhm;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:Ldhn;


# direct methods
.method public constructor <init>(Ldhn;)V
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

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldhm;->a:Ldhn;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_1
    iget-object p0, p0, Ldhn;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iget-object v5, v5, Ldhr;->a:Ldhs;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    if-ltz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    if-gtz v2, :cond_2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    move-object p0, v0

    nop

    :goto_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    :goto_8
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    invoke-interface {v5}, Ldhs;->b()F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    move v1, v5

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    check-cast v5, Ldhr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    move-object v0, v4

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Ldhr;->a:Ldhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_1f

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Ldhr;->a:Ldhs;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x1

    nop

    nop

    :goto_1f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ltz v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    :goto_23
    check-cast v1, Ldhr;

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

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Ldhm;->a:Ldhn;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_29
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1}, Ldhs;->b()F

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne v3, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2d
    invoke-interface {p0}, Ldhs;->b()F

    move-result p0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p0, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Ldhr;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_30
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_33
    const v1, 0x8

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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
.end method
