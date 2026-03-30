.class public final synthetic Liit;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liln;


# instance fields
.field public final synthetic a:Lijb;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Llko;


# direct methods
.method public synthetic constructor <init>(Lijb;Llko;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Liit;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Liit;->c:Llko;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Liit;->a:Lijb;

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
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const v2, 0x7f14058d

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, v0, Lijb;->a:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v1, Llko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Liit;->c:Llko;

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    sget-object v1, Llxo;->b:Llxo;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

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

    :goto_8
    invoke-interface {v2, v3, p1}, Lktr;->a(Lnoz;F)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Liit;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v3, Likv;->a:Lnoz;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, v1, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_e
    invoke-direct {v1, v2, p1}, Lnio;-><init>(I[Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f
    const v2, 0x7f1404d3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array p1, v2, [Ljava/lang/Object;

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

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    const-string v2, "ProgressCallback"

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v0, Lijb;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Lnio;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Liit;->a:Lijb;

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

    :goto_19
    new-instance v1, Lnio;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p1, v1, :cond_1

    nop

    goto/32 :goto_24

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v2, p1}, Lnio;-><init>(I[Ljava/lang/Object;)V

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    if-nez p0, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p0, v1}, Llxa;->V(Lnik;)V

    :goto_22
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_25
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0}, Llxa;->k()Llxo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    new-array p1, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop
.end method
