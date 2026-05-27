.class final Lfhs;
.super Ljava/lang/Object;

# interfaces
.implements Lkxy;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lkxy;

.field final synthetic c:Lfhu;


# direct methods
.method public constructor <init>(Lfhu;Lnph;Lkxy;)V
    .locals 0

    iput-object p1, p0, Lfhs;->c:Lfhu;

    iput-object p2, p0, Lfhs;->a:Lnph;

    iput-object p3, p0, Lfhs;->b:Lkxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnou;)V
    .locals 1

    iget-object v0, p0, Lfhs;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->f(Lnou;)Z

    iget-object v0, p0, Lfhs;->b:Lkxy;

    invoke-interface {v0, p1}, Lkxy;->a(Lnou;)V

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    iget-object v0, p0, Lfhs;->b:Lkxy;

    invoke-interface {v0, p1, p2}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object p1, p0, Lfhs;->a:Lnph;

    invoke-virtual {p1}, Lnph;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lfhu;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Configured format not yet available for packet; stats might be inaccurate"

    const/16 v0, 0x907

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-object p1, p0, Lfhs;->a:Lnph;

    invoke-virtual {p1}, Lnph;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object p1, p0, Lfhs;->a:Lnph;

    invoke-static {p1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lflb;->b()V

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lllj;->q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lfhs;->c:Lfhu;

    iget-object p1, p1, Lfhu;->b:Lfht;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lfhs;->c:Lfhu;

    iget-object v0, v0, Lfhu;->b:Lfht;

    iget v1, v0, Lfht;->b:I

    if-nez v1, :cond_3

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lfht;->c:J

    :cond_3
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfhs;->c:Lfhu;

    iget-object v0, v0, Lfhu;->b:Lfht;

    iget v1, v0, Lfht;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfht;->a:I

    :cond_4
    iget-object v0, p0, Lfhs;->c:Lfhu;

    iget-object v0, v0, Lfhu;->b:Lfht;

    iget v1, v0, Lfht;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfht;->b:I

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, p0, Lfhs;->c:Lfhu;

    iget-object v3, v3, Lfhu;->b:Lfht;

    iget-wide v3, v3, Lfht;->c:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lfht;->c:J

    iget-object v0, p0, Lfhs;->c:Lfhu;

    iget-object v0, v0, Lfhu;->b:Lfht;

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object p2, p0, Lfhs;->c:Lfhu;

    iget-object p2, p2, Lfhu;->b:Lfht;

    iget-wide v3, p2, Lfht;->d:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lfht;->d:J

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    const-string v0, "... we just checked for isDone."

    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfhs;->b:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V

    return-void
.end method
