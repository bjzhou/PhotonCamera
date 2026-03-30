.class public final Lbdd;
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

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lbzy;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final a(Lcpc;Lcoy;J)Lcpa;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

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

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lbzy;->z:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/16 :goto_16

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    sget-wide v2, Lbcy;->b:J

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-static {p0, v0}, Lcrv;->a(Lcru;Lbmb;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_27

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    iget p2, p0, Lcpp;->a:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3}, Ldpg;->a(J)F

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    iget p3, p0, Lcpp;->b:I

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1, p4}, Lcpc;->cw(F)I

    move-result p4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1, p2, p3, p4}, Lcpb;->b(Lcpc;IILubk;)Lcpa;

    move-result-object p0

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

    :goto_1d
    new-instance p4, Lbdc;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2, v3}, Ldpg;->b(J)F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    :goto_22
    invoke-interface {p1, p3}, Lcpc;->cw(F)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_23
    iget p3, p0, Lcpp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Lbcy;->a:Lbox;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget p2, p0, Lcpp;->a:I

    nop

    :goto_27
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x15

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

    :goto_29
    invoke-interface {p2, p3, p4}, Lcoy;->l(J)Lcpp;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p4, p2, p0, p3}, Lbdc;-><init>(ILcpp;I)V

    goto/32 :goto_1c

    nop

    nop
.end method
