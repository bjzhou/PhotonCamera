.class final Ldet;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field synthetic b:F

.field final synthetic c:Ldeu;


# direct methods
.method public constructor <init>(Ldeu;Ltzy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

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
    iput-object p1, p0, Ldet;->c:Ldeu;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

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

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ldet;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ldet;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    check-cast p2, Ltzy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v5}, Ldfr;->a(Ldgv;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    :goto_3
    long-to-int p0, p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ltxr;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v4, p0, Ldet;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xa

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

    :goto_9
    invoke-static {v1}, Ldff;->a(Ldgb;)Lubo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    and-long/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    iget-object v1, p0, Ldet;->c:Ldeu;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    check-cast v4, Ldfp;

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

    :goto_f
    new-instance p1, Ljava/lang/Float;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    const-wide v2, 0xffffffffL

    nop

    nop

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

    :goto_11
    iget-wide p0, p1, Lcdi;->a:J

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

    :goto_12
    sget-object v5, Ldgn;->r:Ldgv;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iget p1, p0, Ldet;->b:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    shl-long/2addr v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_18
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    const-string p0, "Required value was null."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1a
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1, p1, p0}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_21
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_23
    if-nez v1, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v1, Ldeu;->a:Ldgb;

    nop

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

    :goto_26
    sget-object v5, Ldgn;->a:Ldgv;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Ltxr;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, p0, Ldet;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_29
    iget-object v4, v4, Ldgb;->c:Ldfr;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Lcdi;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2c
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, v4, Ldeu;->a:Ldgb;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p1, Lcdi;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2f
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_30
    or-long/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_31
    and-long/2addr v6, v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p0}, Lcnf;->c(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v4, p0, Ldet;->c:Ldeu;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v0, Luag;->a:Luag;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_36
    int-to-long v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_38
    const/16 p1, 0x20

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    int-to-long v6, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p1, v4, v5}, Lcdi;-><init>(J)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ldet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldet;->c:Ldeu;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/Number;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p2}, Ldet;-><init>(Ldeu;Ltzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    :goto_5
    iput p0, v0, Ldet;->b:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
