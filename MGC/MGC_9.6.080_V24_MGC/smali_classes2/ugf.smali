.class final Lugf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lugg;


# instance fields
.field private final a:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lugf;->a:Ljava/util/concurrent/Future;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final ey()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lugf;->a:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "DisposableFutureHandle["

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "]"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lugf;->a:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const v1, 0xc

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
