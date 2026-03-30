.class final Lbge;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lbgp;


# direct methods
.method public constructor <init>(Lbgp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbge;->a:Lbgp;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lbge;->a:Lbgp;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget-object v2, p0, Lbge;->a:Lbgp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v2}, Lbrd;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7
    iget p1, p1, Lbgp;->j:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, v0}, Lbnx;->d(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Lbgp;->d:Lbnx;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    iget v1, p1, Lbgp;->i:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lbge;->a:Lbgp;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    iget-object p1, p0, Lbge;->a:Lbgp;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, v1}, Lbnx;->d(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    add-float/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lbge;->a:Lbgp;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Lbgp;->e:Lbnx;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, v2, Lbgp;->m:Lbob;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    sub-float v1, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    add-float/2addr p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v2, Lbgp;->c:Lbnx;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_20
    iget-object p0, p0, Lbgp;->e:Lbnx;

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

    :goto_21
    const v0, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v2, p1}, Lbnx;->d(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lbge;->a:Lbgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    check-cast v2, Lbdf;

    nop

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

    :goto_25
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0, v1, p1}, Lucd;->g(FFF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    invoke-interface {v0}, Lbnx;->b()F

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method
