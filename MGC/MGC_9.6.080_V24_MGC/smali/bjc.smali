.class public final Lbjc;
.super Lbzy;
.source "PG"

# interfaces
.implements Lcru;
.implements Lcss;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lbzy;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final a(Lcpc;Lcoy;J)Lcpa;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    sget-object v0, Lbiv;->a:Lbox;

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

    :goto_1
    invoke-static {v0, v1}, Lucd;->e(FF)F

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    if-gtz p0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p3, p4, p2, p0}, Lbjb;-><init>(ILcpp;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

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

    :goto_7
    new-instance p3, Lbjb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const v0, 0xc

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

    nop

    :goto_9
    goto/16 :goto_2a

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2, p3, p4}, Lcoy;->l(J)Lcpp;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    iget p0, p2, Lcpp;->b:I

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    iget p4, p2, Lcpp;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_23

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1, v0}, Lcpc;->cw(F)I

    move-result p3

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean p0, p0, Lbzy;->z:Z

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, p4, p0, p3}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

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

    :goto_1c
    iget v0, v0, Ldpe;->a:F

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1d
    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    :goto_22
    move p0, p3

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_24
    iget p0, p2, Lcpp;->b:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, v0}, Lcrv;->a(Lcru;Lbmb;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_c

    nop

    nop

    :goto_27
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x1

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

    :goto_29
    iget p4, p2, Lcpp;->a:I

    nop

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

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

    :goto_2c
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_e

    nop

    nop

    :goto_2e
    check-cast v0, Ldpe;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_30
    const/4 p3, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop
.end method
