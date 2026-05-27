.class final Lkjx;
.super Lkoy;


# instance fields
.field a:Z

.field final synthetic b:Lkjz;

.field private final c:J


# direct methods
.method public constructor <init>(Lkjz;Lkpb;Lkeg;)V
    .locals 5

    iput-object p1, p0, Lkjx;->b:Lkjz;

    invoke-direct {p0, p2}, Lkoy;-><init>(Lkpb;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkjx;->a:Z

    iget-object v1, p1, Lkjz;->k:Lloi;

    invoke-interface {p2}, Lkpb;->c()I

    move-result v2

    invoke-interface {p2}, Lkpb;->b()I

    move-result v3

    invoke-interface {p2}, Lkpb;->a()I

    move-result p2

    iget-object v1, v1, Lloi;->c:Ljava/lang/Object;

    check-cast v1, Lkic;

    iget-object v1, v1, Lkic;->i:Lkte;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-virtual {v1, v4}, Lkte;->d([Ljava/lang/Object;)V

    iget-object p1, p1, Lkjz;->g:Lkbh;

    invoke-interface {p1}, Lkbh;->b()V

    iget-wide p1, p3, Lkeg;->b:J

    iput-wide p1, p0, Lkjx;->c:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkjx;->a:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkjx;->a:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lkjx;->b:Lkjz;

    iget-object v1, v1, Lkjz;->k:Lloi;

    invoke-virtual {p0}, Lkoy;->c()I

    move-result v2

    invoke-virtual {p0}, Lkoy;->b()I

    move-result v3

    invoke-virtual {p0}, Lkoy;->a()I

    move-result v4

    iget-object v1, v1, Lloi;->c:Ljava/lang/Object;

    check-cast v1, Lkic;

    iget-object v1, v1, Lkic;->j:Lkte;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-virtual {v1, v5}, Lkte;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lkjx;->b:Lkjz;

    iget-object v0, v0, Lkjz;->g:Lkbh;

    invoke-interface {v0}, Lkbh;->a()V

    invoke-super {p0}, Lkoy;->close()V

    iget-object v0, p0, Lkjx;->b:Lkjz;

    invoke-virtual {v0}, Lkjz;->b()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lkjx;->c:J

    return-wide v0
.end method
