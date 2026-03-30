.class public final synthetic Lisf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# instance fields
.field public final synthetic a:F

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lisf;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lisf;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const p1, -0x3b864000    # -999.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    cmpg-float p0, v4, p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3a

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Ljrz;->e:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lisf;->b:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_11
    check-cast v4, Ljava/lang/Float;

    nop

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

    :goto_12
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmpl-float p1, v4, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    const v1, 0x1c

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    iget-object v0, p1, Ljrz;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1a
    if-lez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    :goto_1b
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    cmpl-float p0, p1, p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    if-gez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p1, Ljava/util/List;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_23
    if-eqz v3, :cond_4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v1, v2

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_5
    :goto_27
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    move v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_7

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

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

    :goto_2e
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_31
    check-cast v3, Ljava/lang/Boolean;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_34
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_9

    nop

    nop

    :goto_36
    iget p0, p0, Lisf;->a:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p1, Ljrz;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget p0, p0, Lisf;->a:F

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_24

    nop

    nop

    nop
.end method
