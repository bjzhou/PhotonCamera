.class final Lddl;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lulf;

.field final synthetic c:Ldby;


# direct methods
.method public constructor <init>(Lulf;Ldby;Ltzy;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p3}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_2

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lddl;->b:Lulf;

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

    :goto_4
    iput-object p2, p0, Lddl;->c:Ldby;

    nop

    nop

    goto/32 :goto_1

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
    check-cast p2, Ltzy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lufs;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

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

    :goto_3
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lddl;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lddl;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

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

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltxr;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_3
    throw p0

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v2, Lddk;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v1, 0x17

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Ltxr;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Lddl;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lddl;->c:Ldby;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    if-eq p0, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-interface {p1, v2, p0}, Lulf;->eP(Lujq;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    sget-object v0, Luag;->a:Luag;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lddl;->b:Lulf;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    return-object v0

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v2, v1}, Lddk;-><init>(Ldby;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Lddl;->a:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lddl;->c:Ldby;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object v0, p0, Lddl;->b:Lulf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lddl;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, v0, p0, p2}, Lddl;-><init>(Lulf;Ldby;Ltzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
