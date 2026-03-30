.class public final Legp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lujq;


# instance fields
.field final synthetic a:Lujq;

.field final synthetic b:Left;

.field final synthetic c:Lubk;


# direct methods
.method public constructor <init>(Lujq;Left;Lubk;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p3, p0, Legp;->c:Lubk;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    :goto_3
    iput-object p1, p0, Legp;->a:Lujq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Legp;->b:Left;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, p2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_2e

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v2, v4, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v5, p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    instance-of v0, p2, Lego;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    iget-object p2, p0, Legp;->a:Lujq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, v0, Lego;->b:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p0, p2}, Lego;-><init>(Legp;Ltzy;)V

    :goto_14
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    move-object p2, p0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_17
    iget-object p0, v0, Lego;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v2, v0, Lego;->b:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_19
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_1a
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1b
    if-eq v2, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v4, v0, Lego;->b:I

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, v0, Lego;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lego;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    if-nez v3, :cond_6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_24
    if-eq p0, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    :goto_26
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p1, Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    throw p0

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2d
    return-object v1

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_30
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_32
    iget-object p1, p0, Legp;->b:Left;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0, p2, v0}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_34
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p1, v4, p0, v0}, Ldvw;->B(Left;ZLubk;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    :goto_38
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3a
    iput v1, v0, Lego;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3b
    iput-object p2, v0, Lego;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3c
    iget-object p0, p0, Legp;->c:Lubk;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Lego;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    iput v3, v0, Lego;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_40
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p2, v0, Lego;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_42
    move-object p0, v5

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_22

    nop

    nop

    nop

    nop
.end method
