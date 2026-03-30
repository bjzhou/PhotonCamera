.class final Lzu;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lbrd;


# direct methods
.method public constructor <init>(Lbrd;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lzu;->a:Lbrd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object p0, p0, Lzu;->a:Lbrd;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/Number;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    check-cast p1, Lceu;

    nop

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

    :goto_9
    invoke-interface {p1, p0}, Lceu;->a(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1, v0}, Lceu;->s(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    sget-wide v0, Lcfx;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    invoke-interface {p1, v0}, Lceu;->r(F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_16
    move p0, v0

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1, v0, v1}, Lceu;->w(J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    nop
.end method
