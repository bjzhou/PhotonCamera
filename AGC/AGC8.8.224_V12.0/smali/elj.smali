.class public final Lelj;
.super Ljava/lang/Object;

# interfaces
.implements Lell;
.implements Litk;
.implements Liao;
.implements Lhyi;
.implements Lfaz;
.implements Lfaq;
.implements Lfav;
.implements Lfat;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public final b:Ljuh;

.field public final c:Lfak;

.field public final d:Ljava/util/PriorityQueue;

.field public e:Lknx;

.field public f:Lmrl;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Liko;

.field public k:Lhyn;

.field public l:Lelk;

.field public final m:Lknz;

.field public n:I

.field private final o:Landroid/os/Handler;

.field private final p:Ljava/util/Set;

.field private q:Ljava/lang/Runnable;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lelj;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljuh;Landroid/os/Handler;Lfak;Lknz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lelj;->p:Ljava/util/Set;

    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lamx;->g:Lamx;

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lelj;->d:Ljava/util/PriorityQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lelj;->r:Z

    iput-boolean v0, p0, Lelj;->g:Z

    iput-boolean v0, p0, Lelj;->h:Z

    iput-boolean v0, p0, Lelj;->i:Z

    const/4 v0, 0x1

    iput v0, p0, Lelj;->n:I

    sget-object v0, Liko;->a:Liko;

    iput-object v0, p0, Lelj;->j:Liko;

    iput-object p1, p0, Lelj;->b:Ljuh;

    iput-object p2, p0, Lelj;->o:Landroid/os/Handler;

    iput-object p3, p0, Lelj;->c:Lfak;

    iput-object p4, p0, Lelj;->m:Lknz;

    return-void
.end method

.method private final n()V
    .locals 5

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lelj;->l:Lelk;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lelj;->b:Ljuh;

    new-instance v3, Leer;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v4}, Leer;-><init>(Lelk;I)V

    invoke-virtual {v2, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lelj;->l:Lelk;

    invoke-interface {v1}, Lelk;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lelj;->d:Ljava/util/PriorityQueue;

    iget-object v2, p0, Lelj;->l:Lelk;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lelj;->l:Lelk;

    iget-object v1, p0, Lelj;->o:Landroid/os/Handler;

    iget-object v2, p0, Lelj;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lelj;->o:Landroid/os/Handler;

    iget-object v2, p0, Lelj;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final o(Lelk;Ljava/lang/Runnable;)V
    .locals 4

    iget-boolean v0, p0, Lelj;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lekf;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p2, v1}, Lekf;-><init>(Lelj;Ljava/lang/Runnable;I)V

    sget-object p2, Lelj;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v1, p0, Lelj;->b:Ljuh;

    new-instance v2, Lblx;

    const/16 v3, 0x11

    invoke-direct {v2, p0, p1, v0, v3}, Lblx;-><init>(Lelj;Lelk;Ljava/lang/Runnable;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lelj;->o:Landroid/os/Handler;

    iget-object v0, p0, Lelj;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lelj;->o:Landroid/os/Handler;

    iget-object v0, p0, Lelj;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final p(Lelk;)Z
    .locals 3

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lelj;->r:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lelj;->p:Ljava/util/Set;

    invoke-interface {p1}, Lelk;->b()Lelm;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final bK()V
    .locals 2

    iget-object v0, p0, Lelj;->m:Lknz;

    iget-object v1, p0, Lelj;->e:Lknx;

    invoke-virtual {v0, v1}, Lknz;->c(Lknx;)V

    return-void
.end method

.method public final bM()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lelj;->r:Z

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lelj;->d:Ljava/util/PriorityQueue;

    const/4 v2, 0x0

    new-array v3, v2, [Lelk;

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lelk;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-interface {v4}, Lelk;->n()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lelj;->g(Lelk;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lelj;->n()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final bN()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lelj;->r:Z

    invoke-virtual {p0}, Lelj;->f()Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lelk;

    invoke-virtual {p0, v0}, Lelj;->l(Lelk;)V

    :cond_0
    return-void
.end method

.method public final d(Lelk;)Lkad;
    .locals 6

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v1}, Lelk;->i(Ljava/util/Date;)V

    iget-object v1, p0, Lelj;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lelj;->l:Lelk;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lelj;->l:Lelk;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lelk;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lelj;->o:Landroid/os/Handler;

    iget-object v3, p0, Lelj;->q:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lelj;->o:Landroid/os/Handler;

    iget-object v3, p0, Lelj;->q:Ljava/lang/Runnable;

    iget-object v4, p0, Lelj;->l:Lelk;

    invoke-interface {v4}, Lelk;->a()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lelj;->l:Lelk;

    iget-object v3, p0, Lelj;->b:Ljuh;

    new-instance v4, Lekf;

    invoke-direct {v4, p0, v1, v2}, Lekf;-><init>(Lelj;Lelk;I)V

    invoke-virtual {v3, v4}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    :goto_0
    new-instance v1, Leid;

    invoke-direct {v1, p0, p1, v2}, Leid;-><init>(Lelj;Lelk;I)V

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-interface {p1}, Lelk;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lelj;->p(Lelk;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lelj;->l:Lelk;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lelk;->p()I

    move-result v1

    invoke-static {v1}, Lemq;->c(I)I

    move-result v1

    iget-object v2, p0, Lelj;->l:Lelk;

    invoke-interface {v2}, Lelk;->p()I

    move-result v2

    invoke-static {v2}, Lemq;->c(I)I

    move-result v2

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lelj;->l:Lelk;

    invoke-interface {v1}, Lelk;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object p1, Lcgk;->l:Lcgk;

    monitor-exit v0

    return-object p1

    :cond_4
    iget-object v1, p0, Lelj;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lelj;->p(Lelk;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lelj;->l:Lelk;

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lelj;->l(Lelk;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lelj;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lelj;->l:Lelk;

    invoke-interface {v1}, Lelk;->k()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lelj;->l:Lelk;

    sget-object v2, Lchy;->j:Lchy;

    invoke-direct {p0, v1, v2}, Lelj;->o(Lelk;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lelj;->n()V

    invoke-virtual {p0, p1}, Lelj;->l(Lelk;)V

    :cond_7
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v0, Leid;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Leid;-><init>(Lelj;Lelk;I)V

    return-object v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final e(Lelm;)Lkad;
    .locals 2

    invoke-virtual {p0, p1}, Lelj;->i(Lelm;)V

    new-instance v0, Leid;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Leid;-><init>(Lelj;Lelm;I)V

    return-object v0
.end method

.method public final f()Lmqp;
    .locals 4

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lelj;->r:Z

    if-eqz v1, :cond_0

    sget-object v1, Lmpx;->a:Lmpx;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/PriorityQueue;

    iget-object v2, p0, Lelj;->d:Ljava/util/PriorityQueue;

    invoke-direct {v1, v2}, Ljava/util/PriorityQueue;-><init>(Ljava/util/PriorityQueue;)V

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lelk;

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Lelj;->p(Lelk;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lelk;

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final g(Lelk;)V
    .locals 4

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lelj;->l:Lelk;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lelj;->l:Lelk;

    invoke-interface {v1}, Lelk;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lelj;->l:Lelk;

    new-instance v2, Lekf;

    const/4 v3, 0x5

    invoke-direct {v2, p0, p1, v3}, Lekf;-><init>(Lelj;Lelk;I)V

    invoke-direct {p0, v1, v2}, Lelj;->o(Lelk;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lelj;->g:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lelj;->n()V

    iget-object v1, p0, Lelj;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lelj;->f()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lelk;

    invoke-virtual {p0, p1}, Lelj;->l(Lelk;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lelj;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lelj;->d:Ljava/util/PriorityQueue;

    const/4 v2, 0x0

    new-array v3, v2, [Lelk;

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lelk;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-interface {v4}, Lelk;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lelj;->g(Lelk;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final i(Lelm;)V
    .locals 2

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lelj;->p:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lelj;->l:Lelk;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lelj;->p:Ljava/util/Set;

    invoke-interface {p1}, Lelk;->b()Lelm;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lelj;->n()V

    invoke-virtual {p0}, Lelj;->f()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lelk;

    invoke-virtual {p0, p1}, Lelj;->l(Lelk;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j(Z)V
    .locals 3

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lelj;->h:Z

    iget-object p1, p0, Lelj;->b:Ljuh;

    new-instance v1, Leli;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Leli;-><init>(Lelj;I)V

    invoke-virtual {p1, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(Lelm;)V
    .locals 3

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lelj;->p:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lelj;->f()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lelk;

    iget-object v2, p0, Lelj;->l:Lelk;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lelj;->n()V

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lelk;

    invoke-virtual {p0, p1}, Lelj;->l(Lelk;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l(Lelk;)V
    .locals 5

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lelj;->b:Ljuh;

    new-instance v2, Lekf;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lekf;-><init>(Lelj;Lelk;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lelj;->l:Lelk;

    invoke-interface {p1}, Lelk;->m()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Leli;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Leli;-><init>(Lelj;I)V

    iput-object v1, p0, Lelj;->q:Ljava/lang/Runnable;

    iget-object v2, p0, Lelj;->o:Landroid/os/Handler;

    invoke-interface {p1}, Lelk;->a()I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m(I)V
    .locals 4

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lelj;->n:I

    iget-object v1, p0, Lelj;->b:Ljuh;

    new-instance v2, Lbbh;

    const/16 v3, 0xe

    invoke-direct {v2, p0, p1, v3}, Lbbh;-><init>(Lelj;II)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onLayoutUpdated(Lhyn;Liko;)V
    .locals 4

    sget-object v0, Lelj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lelj;->f:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyt;

    iget-object v1, v1, Lhyt;->b:Lhyq;

    iget-boolean v1, v1, Lhyq;->s:Z

    iput-boolean v1, p0, Lelj;->i:Z

    iput-object p2, p0, Lelj;->j:Liko;

    iput-object p1, p0, Lelj;->k:Lhyn;

    iget-object v1, p0, Lelj;->b:Ljuh;

    new-instance v2, Lblx;

    const/16 v3, 0x12

    invoke-direct {v2, p0, p2, p1, v3}, Lblx;-><init>(Lelj;Liko;Lhyn;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic onLayoutUpdated(Liko;)V
    .locals 0

    return-void
.end method
