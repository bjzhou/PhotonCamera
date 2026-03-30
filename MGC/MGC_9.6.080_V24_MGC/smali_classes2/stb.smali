.class abstract Lstb;
.super Lsug;
.source "PG"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lstc;


# direct methods
.method public constructor <init>(Lstc;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object p2, p0, Lstb;->a:Ljava/util/concurrent/Executor;

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

    nop

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lsug;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lstb;->b:Lstc;

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
.method public abstract c(Ljava/lang/Object;)V
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lssk;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_13

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object p0, p0, Lstb;->b:Lstc;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljava/util/concurrent/ExecutionException;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lstb;->b:Lstc;

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

    :goto_8
    invoke-static {v0}, Lstc;->t(Lstc;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lstb;->b:Lstc;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lssk;->cancel(Z)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lstb;->b:Lstc;

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

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lssk;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lstb;->c(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lstc;->t(Lstc;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lstb;->b:Lstc;

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

.method final f()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lstb;->a:Ljava/util/concurrent/Executor;

    nop

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p0, p0, Lstb;->b:Lstc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lssk;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final g()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lssk;->isDone()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lstb;->b:Lstc;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
