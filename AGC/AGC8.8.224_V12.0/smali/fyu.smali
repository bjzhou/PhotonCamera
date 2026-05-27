.class final Lfyu;
.super Ljava/lang/Object;

# interfaces
.implements Lfyy;


# instance fields
.field private final a:Lfyy;

.field private final b:Lnou;

.field private final c:Leid;

.field private final d:Lva;


# direct methods
.method public constructor <init>(Lfyy;Lnou;Leid;Lva;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfyu;->a:Lfyy;

    iput-object p2, p0, Lfyu;->b:Lnou;

    iput-object p3, p0, Lfyu;->c:Leid;

    iput-object p4, p0, Lfyu;->d:Lva;

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 5

    iget-object v0, p0, Lfyu;->c:Leid;

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v1

    iget-object v3, v0, Leid;->b:Ljava/lang/Object;

    check-cast v3, Lva;

    iget-object v3, v3, Lva;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Leid;->a:Ljava/lang/Object;

    check-cast v4, Lfyw;

    iget-object v4, v4, Lfyw;->d:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Leid;->b:Ljava/lang/Object;

    check-cast v2, Lva;

    iget-object v2, v2, Lva;->c:Ljava/lang/Object;

    iget-object v0, v0, Leid;->a:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lkpb;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkma;

    invoke-direct {v0, p1, v2}, Lkma;-><init>(Lkpb;I)V

    iget-object v1, p0, Lfyu;->d:Lva;

    new-instance v2, Lfws;

    new-instance v3, Lkmb;

    invoke-direct {v3, v0}, Lkmb;-><init>(Lkpb;)V

    invoke-direct {v2, v3, p2}, Lfws;-><init>(Lkpb;Lnou;)V

    invoke-virtual {v1, v2}, Lva;->o(Lkpb;)V

    iget-object v1, p0, Lfyu;->a:Lfyy;

    new-instance v2, Lkmb;

    invoke-direct {v2, v0}, Lkmb;-><init>(Lkpb;)V

    invoke-interface {v1, v2, p2}, Lfyy;->a(Lkpb;Lnou;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkpb;->a()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    new-instance v0, Lkma;

    invoke-direct {v0, p1, v2}, Lkma;-><init>(Lkpb;I)V

    iget-object v1, p0, Lfyu;->d:Lva;

    new-instance v2, Lfws;

    new-instance v3, Lkmb;

    invoke-direct {v3, v0}, Lkmb;-><init>(Lkpb;)V

    invoke-direct {v2, v3, p2}, Lfws;-><init>(Lkpb;Lnou;)V

    invoke-virtual {v1, v2}, Lva;->r(Lkpb;)V

    iget-object v1, p0, Lfyu;->a:Lfyy;

    new-instance v2, Lkmb;

    invoke-direct {v2, v0}, Lkmb;-><init>(Lkpb;)V

    invoke-interface {v1, v2, p2}, Lfyy;->a(Lkpb;Lnou;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfyu;->a:Lfyy;

    invoke-interface {v0, p1, p2}, Lfyy;->a(Lkpb;Lnou;)V

    :goto_0
    iget-object v0, p0, Lfyu;->d:Lva;

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lva;->q(JLnou;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 5

    iget-object v0, p0, Lfyu;->b:Lnou;

    iget-object v1, p0, Lfyu;->c:Leid;

    new-instance v2, Lfof;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lfof;-><init>(Leid;I[B)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v2, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lfyu;->a:Lfyy;

    invoke-interface {v0}, Lfyy;->close()V

    return-void
.end method
