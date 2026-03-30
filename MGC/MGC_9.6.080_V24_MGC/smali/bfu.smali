.class final Lbfu;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lbgp;

.field final synthetic c:F


# direct methods
.method public constructor <init>(Lbgp;FLtzy;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x2

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
    iput p2, p0, Lbfu;->c:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0, p1, p3}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lbfu;->b:Lbgp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lufs;

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
    check-cast p2, Ltzy;

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
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lbfu;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    check-cast p0, Lbfu;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v2, p0, Lbfu;->a:I

    nop

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

    :goto_1
    iget-object p1, p0, Lbfu;->b:Lbgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    sget-object p1, Luag;->a:Luag;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    sget-object v0, Luag;->a:Luag;

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

    :goto_8
    if-nez v1, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

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

    :goto_b
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iget v1, p0, Lbfu;->a:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2, v3, p0}, Lujp;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v3, p1, v1}, Lbgg;-><init>(Lbgp;F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Lbfu;->c:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    new-instance v3, Lbgg;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_18
    if-ne p0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_11

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p1, Lbgp;->h:Lujp;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_1d
    goto/32 :goto_15

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq p0, v0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

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

    :goto_0
    iget p0, p0, Lbfu;->c:F

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
    new-instance p1, Lbfu;

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

    :goto_2
    invoke-direct {p1, v0, p0, p2}, Lbfu;-><init>(Lbgp;FLtzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lbfu;->b:Lbgp;

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
