.class final Lfgt;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public b:J

.field public c:J

.field public d:Z

.field public e:Z

.field final synthetic f:Lfgu;

.field private final g:Lkxy;


# direct methods
.method public constructor <init>(Lfgu;Lkxy;J)V
    .locals 6

    iput-object p1, p0, Lfgt;->f:Lfgu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfgt;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfgt;->d:Z

    iput-boolean v0, p0, Lfgt;->e:Z

    iput-object p2, p0, Lfgt;->g:Lkxy;

    iput-wide p3, p0, Lfgt;->a:J

    iget-wide v0, p1, Lfgu;->d:J

    iput-wide v0, p0, Lfgt;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    iget-wide v4, p1, Lfgu;->e:J

    cmp-long p2, v0, v4

    if-gez p2, :cond_1

    iget-object p2, p1, Lfgu;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lloi;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lloi;->b:Ljava/lang/Object;

    check-cast p2, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long p2, v4, p3

    if-ltz p2, :cond_0

    goto :goto_1

    :cond_0
    iput-wide v0, p0, Lfgt;->c:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(JZ)V
    .locals 10

    iget-object v0, p0, Lfgt;->f:Lfgu;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lfgt;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-wide p1, p0, Lfgt;->b:J

    iput-boolean p3, p0, Lfgt;->d:Z

    iget-wide v1, p0, Lfgt;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    :goto_0
    iget-object p3, p0, Lfgt;->f:Lfgu;

    iget-wide v5, p3, Lfgu;->e:J

    cmp-long v7, v1, v5

    if-gez v7, :cond_5

    iget-wide v5, p3, Lfgu;->d:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_4

    iget-object p3, p3, Lfgu;->a:Lkaq;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packet at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " was likely dropped too early"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lkaq;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p3, p3, Lfgu;->b:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lloi;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p3, Lloi;->b:Ljava/lang/Object;

    check-cast v5, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v7, p1, v5

    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p3, Lloi;->b:Ljava/lang/Object;

    check-cast v5, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v7, p0, Lfgt;->a:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    iput-wide v1, p0, Lfgt;->c:J

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p3, v1, v2}, Lfgt;->c(Lloi;J)V

    :cond_4
    :goto_1
    add-long/2addr v1, v3

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lfgt;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final b()V
    .locals 6

    iget-boolean v0, p0, Lfgt;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lfgt;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfgt;->f:Lfgu;

    iget-wide v1, v0, Lfgu;->c:J

    iget-wide v3, p0, Lfgt;->b:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-boolean v0, v0, Lfgu;->f:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lfgt;->a:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, p0, Lfgt;->g:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfgt;->e:Z

    :cond_2
    return-void
.end method

.method public final c(Lloi;J)V
    .locals 5

    iget-boolean v0, p0, Lfgt;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfgt;->f:Lfgu;

    iget-object v0, v0, Lfgu;->a:Lkaq;

    iget-object v1, p1, Lloi;->b:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writing packet <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lfgt;->g:Lkxy;

    iget-object v1, p1, Lloi;->c:Ljava/lang/Object;

    iget-object p1, p1, Lloi;->b:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, p1}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iput-wide p2, p0, Lfgt;->c:J

    return-void
.end method
