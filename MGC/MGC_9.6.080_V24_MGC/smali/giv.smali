.class public final Lgiv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lowv;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field private final b:Lsui;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lsui;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgiv;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p2, p0, Lgiv;->b:Lsui;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgiv;->b:Lsui;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lfvz;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-direct {v1, p0, p1, v2}, Lfvz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lgiv;->a:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lgiv;->b:Lsui;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lstd;->a:Lstd;

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

    :goto_14
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    :goto_16
    invoke-static {v0, v1, p0}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method
