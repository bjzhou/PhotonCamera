.class final Ldez;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public b:F

.field private final c:Lubo;


# direct methods
.method public constructor <init>(ILubo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Ldez;->c:Lubo;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p1, p0, Ldez;->a:I

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
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Luda;->q(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Ldez;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    sub-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-static {p1, v0, p0}, Lucd;->j(III)I

    move-result p0

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

    :goto_6
    iget v0, p0, Ldez;->b:F

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(FLtzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_20

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_30

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    :goto_2
    if-eq p2, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr p2, p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-eq v2, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p0, v0, Ldey;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_9
    check-cast p0, Ldez;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_a
    return-object v1

    nop

    nop

    :goto_b
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_30

    nop

    nop

    :goto_d
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, p2}, Ldey;-><init>(Ldez;Ltzy;)V

    :goto_f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p2, p0, Ldez;->b:F

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_14
    const v1, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    iget v2, v0, Ldey;->d:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    iput v1, v0, Ldey;->d:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_18
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_b

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Ldey;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v0, p2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    const v0, 0xe

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

    nop

    nop

    :goto_21
    const/4 v3, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_5

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, v0, Ldey;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_24
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    nop

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

    :goto_27
    invoke-interface {p2, v2, v0}, Lubo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

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

    :goto_28
    iget-object p2, v0, Ldey;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_29
    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_f

    nop

    nop

    :goto_2b
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p2, p0, Ldez;->c:Lubo;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2e

    nop

    :goto_30
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v1, v0, Ldey;->d:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_34
    new-instance v0, Ldey;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_35
    iget p2, p0, Ldez;->b:F

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

    :goto_36
    iput v3, v0, Ldey;->d:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_37
    check-cast p2, Ljava/lang/Number;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_38
    instance-of v0, p2, Ldey;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop
.end method

.method public final c(FLtzy;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ldez;->b:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ldez;->b(FLtzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    sget-object p1, Luag;->a:Luag;

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

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    sub-float/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
