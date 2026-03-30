.class public final Lbgk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lbgp;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lbgp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbgk;->a:Ljava/lang/Object;

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

    :goto_1
    iput-object p2, p0, Lbgk;->b:Lbgp;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lbgk;->b(Ljava/util/Map;Ltzy;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop
.end method

.method public final b(Ljava/util/Map;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v2, -0x80000000

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lbgj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4
    if-eq p1, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    :goto_5
    and-int v3, v1, v2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, v0, Lbgj;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->ddUDjfz:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

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

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    iget-object p2, p0, Lbgk;->b:Lbgp;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lbgj;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p0}, Lbgp;->k(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, v0, Lbgj;->c:I

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

    :goto_14
    iget-object p2, v0, Lbgj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_15
    iget-object p1, p0, Lbgk;->b:Lbgp;

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

    :goto_16
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lbgk;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    iput-object p0, v0, Lbgj;->d:Lbgk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p0, Lbgk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1b
    iput v3, v0, Lbgj;->c:I

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    :goto_1d
    goto/16 :goto_31

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_20
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p1, p2}, Lbfx;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

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

    nop

    :goto_23
    throw p0

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v0, p2, Lbgj;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_26
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_29
    goto :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2d
    return-object v1

    nop

    nop

    :goto_2e
    goto/32 :goto_15

    nop

    nop

    :goto_2f
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_30
    invoke-direct {v0, p0, p2}, Lbgj;-><init>(Lbgk;Ltzy;)V

    :goto_31
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v2, v3, :cond_4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    :goto_33
    move-object v0, p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0xe

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v3, :cond_6

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, v0, Lbgj;->d:Lbgk;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p2, p1, v0}, Lbgp;->g(FLtzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3c
    iget v2, v0, Lbgj;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method
