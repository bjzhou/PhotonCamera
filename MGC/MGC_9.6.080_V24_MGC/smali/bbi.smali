.class final Lbbi;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lbcn;

.field final synthetic c:Lbbm;


# direct methods
.method public constructor <init>(Lbcn;Lbbm;Ltzy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbbi;->b:Lbcn;

    nop

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lbbi;->c:Lbbm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p3}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    check-cast p0, Lbbi;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ltzy;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lbbi;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    check-cast p1, Lufs;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

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

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v1, p1, Lbcn;->b:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v1, 0x40c00000    # 6.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    const/high16 v1, 0x41000000    # 8.0f

    nop

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

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_f
    const/high16 v1, 0x41400000    # 12.0f

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

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_13
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p0}, Lbcn;->b(Ltzy;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_15
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v1, p0, Lbbi;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lbbi;->b:Lbcn;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p1, Lbcn;->c:F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, p1, Lbcn;->a:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    :goto_1e
    iget v1, p0, Lbbi;->a:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_20
    if-ne p0, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_21
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, p1, Lbcn;->d:F

    nop

    goto/32 :goto_14

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

    :goto_0
    new-instance p1, Lbbi;

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

    :goto_1
    iget-object v0, p0, Lbbi;->b:Lbcn;

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

    :goto_2
    iget-object p0, p0, Lbbi;->c:Lbbm;

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

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, v0, p0, p2}, Lbbi;-><init>(Lbcn;Lbbm;Ltzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
