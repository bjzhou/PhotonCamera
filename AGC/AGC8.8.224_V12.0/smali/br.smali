.class final Lbr;
.super Lbu;


# instance fields
.field final synthetic a:Lqv;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic c:Lqe;

.field final synthetic d:Lpw;

.field final synthetic e:Lbw;


# direct methods
.method public constructor <init>(Lbw;Lqv;Ljava/util/concurrent/atomic/AtomicReference;Lqe;Lpw;)V
    .locals 0

    iput-object p1, p0, Lbr;->e:Lbw;

    iput-object p2, p0, Lbr;->a:Lqv;

    iput-object p3, p0, Lbr;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lbr;->c:Lqe;

    iput-object p5, p0, Lbr;->d:Lpw;

    invoke-direct {p0}, Lbu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lbr;->e:Lbw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lbw;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_rq#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lbw;->Z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr;->a:Lqv;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lqv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqa;

    iget-object v2, p0, Lbr;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lbr;->e:Lbw;

    iget-object v4, p0, Lbr;->c:Lqe;

    iget-object v5, p0, Lbr;->d:Lpw;

    invoke-interface {v3}, Lakv;->getLifecycle()Laks;

    move-result-object v6

    iget-object v7, v6, Laks;->a:Lakr;

    sget-object v8, Lakr;->d:Lakr;

    invoke-virtual {v7, v8}, Lakr;->a(Lakr;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1, v0}, Lqa;->c(Ljava/lang/String;)V

    iget-object v3, v1, Lqa;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbby;

    if-nez v3, :cond_0

    new-instance v3, Lbby;

    invoke-direct {v3, v6}, Lbby;-><init>(Laks;)V

    goto :goto_0

    :cond_0
    :goto_0
    new-instance v6, Landroidx/activity/result/ActivityResultRegistry$1;

    invoke-direct {v6, v1, v0, v5, v4}, Landroidx/activity/result/ActivityResultRegistry$1;-><init>(Lqa;Ljava/lang/String;Lpw;Lqe;)V

    iget-object v4, v3, Lbby;->a:Ljava/lang/Object;

    check-cast v4, Laks;

    invoke-virtual {v4, v6}, Laks;->a(Laku;)V

    iget-object v4, v3, Lbby;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lqa;->d:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lpy;

    invoke-direct {v0}, Lpy;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifecycleOwner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is attempting to register while current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Laks;->a:Lakr;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". LifecycleOwners must call register before they are STARTED."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
