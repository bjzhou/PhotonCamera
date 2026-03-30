.class public final Lnlh;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:F

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(FLjava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

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

    :goto_1
    iput p1, p0, Lnlh;->a:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lnlh;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lnlh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    move p0, v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    cmpg-float v2, v3, v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v3, p0, Lnlh;->a:F

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

    :goto_5
    check-cast p0, Lnbh;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2b

    nop

    :goto_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1, v0}, Lceu;->a(F)V

    goto/32 :goto_26

    nop

    nop

    :goto_b
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Lnzk;->ac(Lnbh;)F

    move-result p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lnlh;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    sget-object v2, Lnlj;->f:Lnlj;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lceu;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

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
    const v1, 0x1c

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

    :goto_16
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    :goto_18
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1, p0}, Lceu;->q(F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    iget v0, p0, Lnlh;->a:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1, v0, v1}, Lucd;->g(FFF)F

    move-result p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Lnlh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_25
    invoke-static {p1, v0, v1}, Lucd;->g(FFF)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lnlh;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p1, Ljava/lang/Number;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_29
    invoke-interface {p0, p1, v1, v2}, Lubp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    :goto_2b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method
