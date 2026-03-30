.class final Lyc;
.super Luaq;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field final synthetic e:Lye;

.field private synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lye;Ltzy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Luaq;-><init>(Ltzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lyc;->e:Lye;

    nop

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
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lyc;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_1
    check-cast p1, Lued;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    check-cast p2, Ltzy;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    check-cast p0, Lyc;

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
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v5, p0, Lyc;->d:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget-object v4, p0, Lyc;->f:Ljava/lang/Object;

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

    :goto_2
    shr-long/2addr v5, p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, [J

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lyc;->c:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5
    const p1, 0x7fffffff

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    check-cast p1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    const/4 v5, 0x1

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    if-ne v1, p1, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_c
    move-object p1, v2

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

    :goto_d
    check-cast v4, Lued;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lyc;->e:Lye;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, p1, p0}, Lued;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_10
    iget v1, p1, Lye;->e:I

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_13
    goto :goto_11

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v3, p0, Lyc;->a:Ljava/lang/Object;

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

    :goto_16
    aget-object p1, p1, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_17
    iput v1, p0, Lyc;->c:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 p1, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    const-wide/32 v7, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1b
    aget-wide v5, p1, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p1, Lye;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    :goto_1f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_30

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v4, Lued;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    if-nez v1, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    and-long/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_25
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_26
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_28
    iput-object v2, p0, Lyc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    long-to-int v1, v5

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

    :goto_2a
    move-object v4, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v1, p0, Lyc;->d:I

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

    :goto_2c
    iget-object p1, p0, Lyc;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, p0, Lyc;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, p1, Lye;->c:[J

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

    :goto_32
    iput-object v3, p0, Lyc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_33
    move-object p1, v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_35
    iput-object v4, p0, Lyc;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lyc;

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

    :goto_2
    invoke-direct {v0, p0, p2}, Lyc;-><init>(Lye;Ltzy;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lyc;->e:Lye;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p1, v0, Lyc;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
