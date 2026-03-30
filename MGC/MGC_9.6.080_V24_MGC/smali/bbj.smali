.class final Lbbj;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:I

.field final synthetic b:Lbcn;

.field final synthetic c:Lany;


# direct methods
.method public constructor <init>(Lbcn;Lany;Ltzy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p3}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lbbj;->b:Lbcn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lbbj;->c:Lany;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Ltyg;->a:Ltyg;

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
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast p2, Ltzy;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lbbj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lbbj;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lbbj;->c:Lany;

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput v2, p0, Lbbj;->a:I

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

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    if-eq p0, v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v1, p0}, Lbcn;->a(Lany;Ltzy;)Ljava/lang/Object;

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

    :goto_8
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Lbbj;->a:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_10
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    return-object v0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    return-object p0

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lbbj;->b:Lbcn;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    const v1, 0x17

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v0, p0, p2}, Lbbj;-><init>(Lbcn;Lany;Ltzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lbbj;->c:Lany;

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

    :goto_2
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lbbj;

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

    :goto_4
    iget-object v0, p0, Lbbj;->b:Lbcn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
