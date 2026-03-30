.class public final synthetic Lloq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnlk;


# instance fields
.field public final synthetic a:Llos;

.field public final synthetic b:Lnkn;


# direct methods
.method public synthetic constructor <init>(Llos;Lnkn;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lloq;->a:Llos;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lloq;->b:Lnkn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(FZLnlj;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p3, p0, Llos;->c:Loyd;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const v0, 0x11

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lloq;->a:Llos;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-interface {p3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    mul-float/2addr v0, p1

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

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    if-eqz p2, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-float/2addr v0, p1

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

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_27

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, p1, p3}, Lrrf;->V(FFF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_17
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p2}, Llos;->k(Lnkn;)V

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    check-cast p3, Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

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

    :goto_1d
    check-cast p3, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p3, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_21
    sub-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    iget-object p3, p0, Llos;->d:Loyn;

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

    :goto_26
    invoke-virtual {p3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p2, p0, Lloq;->b:Lnkn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop
.end method
