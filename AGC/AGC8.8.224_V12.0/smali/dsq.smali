.class public final Ldsq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Lmqp;

.field public final d:Ljvb;

.field private final e:Lmqp;

.field private final f:Lksm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/featurecentral/camera/FeatureCentralFrameConsumer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldsq;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lmqp;Lmqp;Ljava/util/Set;Lksm;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljvd;->b(Ljava/util/concurrent/Executor;)Ljvb;

    move-result-object p1

    iput-object p1, p0, Ldsq;->d:Ljvb;

    iput-object p2, p0, Ldsq;->e:Lmqp;

    iput-object p3, p0, Ldsq;->c:Lmqp;

    invoke-static {p4}, Ldtv;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldsq;->b:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p5, p0, Ldsq;->f:Lksm;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lkli;Lcea;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldsq;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Ldsq;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    const-string v0, "frame"

    iget-object v1, p0, Ldsq;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ldtv;->c(Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v0, p0, Ldsq;->f:Lksm;

    iput-object p1, v0, Lksm;->a:Ljava/lang/Object;

    iget-object v0, p0, Ldsq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldtu;

    invoke-virtual {v1, p1, p2}, Ldtu;->d(Lkli;Lcea;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldsq;->e:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkef;

    new-instance p2, Ldsp;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Ldsp;-><init>(Ldsq;I)V

    invoke-interface {p1, p2}, Lkef;->k(Lkee;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldsq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldtu;

    invoke-virtual {v1}, Ldtu;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
