.class public final Lazp;
.super Ljava/lang/Object;

# interfaces
.implements Lbab;
.implements Lbdx;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lbbx;

.field public final d:Lazu;

.field public final e:Lbad;

.field public f:I

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/Executor;

.field public i:Landroid/os/PowerManager$WakeLock;

.field public j:Z

.field public final k:Lbkb;

.field private final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILazu;Lbkb;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazp;->a:Landroid/content/Context;

    iput p2, p0, Lazp;->b:I

    iput-object p3, p0, Lazp;->d:Lazu;

    iget-object p1, p4, Lbkb;->a:Ljava/lang/Object;

    check-cast p1, Lbbx;

    iput-object p1, p0, Lazp;->c:Lbbx;

    iput-object p4, p0, Lazp;->k:Lbkb;

    iget-object p1, p3, Lazu;->e:Lazd;

    iget-object p1, p1, Lazd;->i:Lbbc;

    iget-object p2, p3, Lazu;->j:Lva;

    iget-object p3, p2, Lva;->a:Ljava/lang/Object;

    iput-object p3, p0, Lazp;->g:Ljava/util/concurrent/Executor;

    iget-object p2, p2, Lva;->b:Ljava/lang/Object;

    iput-object p2, p0, Lazp;->h:Ljava/util/concurrent/Executor;

    new-instance p2, Lbad;

    invoke-direct {p2, p1, p0}, Lbad;-><init>(Lbbc;Lbab;)V

    iput-object p2, p0, Lazp;->e:Lbad;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lazp;->j:Z

    iput p1, p0, Lazp;->f:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lazp;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lazp;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lazp;->e:Lbad;

    invoke-virtual {v1}, Lbad;->b()V

    iget-object v1, p0, Lazp;->d:Lazu;

    iget-object v1, v1, Lazu;->c:Lbdz;

    iget-object v2, p0, Lazp;->c:Lbbx;

    invoke-virtual {v1, v2}, Lbdz;->a(Lbbx;)V

    iget-object v1, p0, Lazp;->i:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing wakelock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lazp;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "for WorkSpec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lazp;->c:Lbbx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lazp;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lbbx;)V
    .locals 2

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exceeded time limits on execution for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lazp;->g:Ljava/util/concurrent/Executor;

    new-instance v0, Lazo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lazo;-><init>(Lazp;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcj;

    invoke-static {v0}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v0

    iget-object v1, p0, Lazp;->c:Lbbx;

    invoke-virtual {v0, v1}, Lbbx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lazp;->g:Ljava/util/concurrent/Executor;

    new-instance v0, Lazo;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lazo;-><init>(Lazp;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 2

    iget-object p1, p0, Lazp;->g:Ljava/util/concurrent/Executor;

    new-instance v0, Lazo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lazo;-><init>(Lazp;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
