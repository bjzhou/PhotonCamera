.class public final Lkfi;
.super Lkfg;


# instance fields
.field private a:Z

.field private final b:Lkfg;


# direct methods
.method public constructor <init>(Lkfg;[B[B)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lkfi;->a:Z

    iput-object p1, p0, Lkfi;->b:Lkfg;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkfi;->a:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkfi;->a:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkfi;->b:Lkfg;

    invoke-virtual {v0, p1}, Lkfg;->bC(Lkou;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bD(JI)V
    .locals 1

    iget-object v0, p0, Lkfi;->b:Lkfg;

    invoke-virtual {v0, p1, p2, p3}, Lkfg;->bD(JI)V

    return-void
.end method

.method public final bh(Lkfj;J)V
    .locals 1

    iget-object v0, p0, Lkfi;->b:Lkfg;

    invoke-virtual {v0, p1, p2, p3}, Lkfg;->bh(Lkfj;J)V

    return-void
.end method

.method public final bi(Lkkp;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkfi;->a:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkfi;->a:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lkfi;->b:Lkfg;

    invoke-virtual {v0, p1}, Lkfg;->bi(Lkkp;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final br(Lkoq;)V
    .locals 1

    iget-object v0, p0, Lkfi;->b:Lkfg;

    invoke-virtual {v0, p1}, Lkfg;->br(Lkoq;)V

    return-void
.end method

.method public final bs(JI)V
    .locals 1

    iget-object v0, p0, Lkfi;->b:Lkfg;

    invoke-virtual {v0, p1, p2, p3}, Lkfg;->bs(JI)V

    return-void
.end method

.method public final bt(JIJ)V
    .locals 6

    iget-object v0, p0, Lkfi;->b:Lkfg;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lkfg;->bt(JIJ)V

    return-void
.end method

.method public final bu(JLjava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lkfi;->b:Lkfg;

    invoke-virtual {v0, p1, p2, p3}, Lkfg;->bu(JLjava/util/Set;)V

    return-void
.end method

.method public final bv(Lkeg;)V
    .locals 1

    iget-object v0, p0, Lkfi;->b:Lkfg;

    invoke-virtual {v0, p1}, Lkfg;->bv(Lkeg;)V

    return-void
.end method
