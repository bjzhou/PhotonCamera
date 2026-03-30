.class Loxg;
.super Lstq;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/RunnableScheduledFuture;


# instance fields
.field private final a:Ljava/util/concurrent/RunnableScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Loxg;->a:Ljava/util/concurrent/RunnableScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lstq;-><init>(Ljava/util/concurrent/Future;)V

    goto/32 :goto_0

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


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-object p0, p0, Loxg;->a:Ljava/util/concurrent/RunnableScheduledFuture;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ljava/util/concurrent/Delayed;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loxg;->a:Ljava/util/concurrent/RunnableScheduledFuture;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final isPeriodic()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loxg;->a:Ljava/util/concurrent/RunnableScheduledFuture;

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result p0

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

    nop
.end method

.method public run()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/RunnableScheduledFuture;->run()V

    goto/32 :goto_1

    nop

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
    iget-object p0, p0, Loxg;->a:Ljava/util/concurrent/RunnableScheduledFuture;

    nop

    goto/32 :goto_0

    nop

    nop
.end method
