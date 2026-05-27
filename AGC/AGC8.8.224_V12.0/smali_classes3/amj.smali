.class public abstract Lamj;
.super Lamk;


# instance fields
.field public volatile a:Lami;

.field private i:Ljava/util/concurrent/Executor;

.field private volatile j:Lami;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lamk;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method final b()V
    .locals 4

    iget-object v0, p0, Lamj;->j:Lami;

    if-nez v0, :cond_3

    iget-object v0, p0, Lamj;->a:Lami;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lamj;->a:Lami;

    iget-boolean v0, v0, Lami;->a:Z

    iget-object v0, p0, Lamj;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lamj;->i:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lamj;->a:Lami;

    iget-object v1, p0, Lamj;->i:Ljava/util/concurrent/Executor;

    iget v2, v0, Lamm;->f:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v0, v0, Lamm;->f:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never reach this state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    throw v0

    :cond_2
    const/4 v2, 0x2

    iput v2, v0, Lamm;->f:I

    iget-object v0, v0, Lamm;->c:Ljava/util/concurrent/FutureTask;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final c()V
    .locals 1

    invoke-virtual {p0}, Lamk;->f()V

    new-instance v0, Lami;

    invoke-direct {v0, p0}, Lami;-><init>(Lamj;)V

    iput-object v0, p0, Lamj;->a:Lami;

    invoke-virtual {p0}, Lamj;->b()V

    return-void
.end method

.method final d(Lami;)V
    .locals 1

    iget-object v0, p0, Lamj;->j:Lami;

    if-ne v0, p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 p1, 0x0

    iput-object p1, p0, Lamj;->j:Lami;

    invoke-virtual {p0}, Lamj;->b()V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lamk;->b:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mListener="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lamk;->h:Lame;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lamk;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lamk;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lamk;->d:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mContentChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lamk;->g:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mProcessingChange="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean v0, p0, Lamk;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lamk;->f:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lamk;->e:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lamk;->f:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget-object v0, p0, Lamj;->a:Lami;

    const-string v2, " waiting="

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lamj;->a:Lami;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lamj;->a:Lami;

    iget-boolean v0, v0, Lami;->a:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    iget-object v0, p0, Lamj;->j:Lami;

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mCancellingTask="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lamj;->j:Lami;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lamj;->j:Lami;

    iget-boolean p1, p1, Lami;->a:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_5
    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lamj;->a:Lami;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lamk;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lamk;->g:Z

    :cond_0
    iget-object v0, p0, Lamj;->j:Lami;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamj;->a:Lami;

    iget-boolean v0, v0, Lami;->a:Z

    iput-object v2, p0, Lamj;->a:Lami;

    return-void

    :cond_1
    iget-object v0, p0, Lamj;->a:Lami;

    iget-boolean v0, v0, Lami;->a:Z

    iget-object v0, p0, Lamj;->a:Lami;

    iget-object v3, v0, Lamm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lamm;->c:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamj;->a:Lami;

    iput-object v0, p0, Lamj;->j:Lami;

    :cond_2
    iput-object v2, p0, Lamj;->a:Lami;

    :cond_3
    return-void
.end method
