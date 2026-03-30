.class public final Lpvc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Lsui;

.field final synthetic b:Lpic;

.field final synthetic c:Lpic;


# direct methods
.method public constructor <init>(Lpic;Lsui;Lpic;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpvc;->a:Lsui;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpvc;->b:Lpic;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lpvc;->c:Lpic;

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

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    instance-of v0, p1, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

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

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpic;->a:Ljava/lang/Object;

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

    :goto_4
    iget-object v0, p0, Lpvc;->a:Lsui;

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

    :goto_5
    invoke-interface {v0}, Lsui;->isCancelled()Z

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Lpic;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lpvc;->b:Lpic;

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

    :goto_c
    iget-object p0, p0, Lpvc;->b:Lpic;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lpic;->s(Ljava/lang/Exception;)V

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lorb;->r(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lpic;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lpic;->s(Ljava/lang/Exception;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    check-cast p0, Lorb;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Ljava/lang/Exception;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lpvc;->c:Lpic;

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

    :goto_15
    const/4 p1, 0x0

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

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lpic;->t(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpvc;->b:Lpic;

    nop

    goto/32 :goto_0

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
.end method
