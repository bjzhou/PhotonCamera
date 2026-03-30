.class public final Lpbm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

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
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpbm;->a:Ljava/lang/Object;

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

    :goto_3
    iput p2, p0, Lpbm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_1
    iget-object p0, p0, Lpbm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpbm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    return-object v1

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

    nop

    :goto_f
    check-cast p0, Lpbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lpbp;->close()V

    goto/32 :goto_b

    nop

    nop

    :goto_12
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lpbm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    check-cast v3, Lfit;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lfit;->f:Ljava/io/Writer;

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_2
    check-cast v2, Lfit;

    nop

    invoke-virtual {v2}, Lfit;->f()V

    iget-object v2, p0, Lpbm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Lfit;

    nop

    invoke-virtual {v2}, Lfit;->g()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    iget-object v2, p0, Lpbm;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v2, Lfit;

    nop

    invoke-virtual {v2}, Lfit;->d()V

    iget-object p0, p0, Lpbm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Lfit;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    iput v2, p0, Lfit;->h:I

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    :goto_13
    return-object v1

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lpbm;->a:Ljava/lang/Object;

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
    iget v0, p0, Lpbm;->b:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v0, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x6

    nop

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

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
