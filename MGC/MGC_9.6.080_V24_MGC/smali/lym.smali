.class abstract Llym;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loyn;


# instance fields
.field protected final a:Llyx;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Llyx;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Llym;->b:Ljava/lang/String;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llym;->a:Llyx;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object p0, p0, Llym;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Llyl;->a(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Llym;->a:Llyx;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Llyl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, p1, p2}, Llyl;-><init>(Llym;Lpcm;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Llyx;->e(Llyb;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cM()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Llym;->b:Ljava/lang/String;

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

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "Null value for setting: "

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_d
    invoke-virtual {p0}, Llym;->d()Ljava/lang/Object;

    move-result-object v0

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

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected abstract d()Ljava/lang/Object;
.end method
