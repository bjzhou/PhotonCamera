.class public final Lugb;
.super Luns;
.source "PG"


# instance fields
.field public final b:Lueo;


# direct methods
.method public constructor <init>(Luad;Ltzy;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2, v0, p1}, Lueo;-><init>(ILucu;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    iput-object p2, p0, Lugb;->b:Lueo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    sget-object p1, Luer;->a:Luer;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p2, Lueo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2}, Luns;-><init>(Luad;Ltzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lues;->eF(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method protected final eF(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Lueo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lugb;->e:Ltzy;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_d
    const v1, 0x17

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

    :goto_e
    const/4 v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lugb;->b:Lueo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p0}, Lucg;->m(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_14
    const-string p1, "Already resumed"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Lrkm;->x(Ltzy;)Ltzy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    const v0, 0xd

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lugb;->b:Lueo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1, v2}, Lueo;->c(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, p0}, Lunc;->a(Ltzy;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
