.class public final Lnko;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lnkk;

.field final synthetic c:Lbrd;


# direct methods
.method public constructor <init>(FLnkk;Lbrd;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnko;->b:Lnkk;

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

    :goto_1
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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
    iput-object p3, p0, Lnko;->c:Lbrd;

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

    nop

    :goto_4
    iput p1, p0, Lnko;->a:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static/range {v0 .. v6}, Lbir;->a(Lcij;Ljava/lang/String;Lbzz;JLblm;I)V

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v5, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v5, p2}, Ldej;->a(ILblm;I)Lcij;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iget p1, p1, Lnkk;->a:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    iget-wide v3, p0, Lcel;->g:J

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

    :goto_a
    iget-object v1, p1, Lnkk;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const/16 v6, 0x8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Lbrd;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lnko;->c:Lbrd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-interface {v5}, Lblm;->H()Z

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p2, p1}, Lcbk;->a(Lbzz;F)Lbzz;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lnko;->b:Lnkk;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v5, Lblm;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v5}, Lblm;->s()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lcel;

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

    :goto_1d
    iget-object p1, p0, Lnko;->b:Lnkk;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_1f
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_20
    iget p1, p0, Lnko;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_24
    and-int/lit8 p1, p1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_26
    sget-object p2, Lbzz;->c:Lbzv;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_28
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method
