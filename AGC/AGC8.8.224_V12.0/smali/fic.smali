.class final Lfic;
.super Ljava/lang/Object;

# interfaces
.implements Llel;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lfgv;Llel;I)V
    .locals 0

    iput p3, p0, Lfic;->d:I

    iput-object p1, p0, Lfic;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfic;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfid;Lfhd;I)V
    .locals 0

    iput p3, p0, Lfic;->d:I

    iput-object p1, p0, Lfic;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfic;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lldy;)V
    .locals 3

    iget v0, p0, Lfic;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1}, Lldy;->b()Lldz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfic;->a:Ljava/lang/Object;

    check-cast v1, Lfgv;

    iget-object v1, v1, Lfgv;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lfic;->b:Ljava/lang/Object;

    check-cast p1, Lfid;

    iget-object v0, p1, Lfid;->d:Landroid/os/Handler;

    new-instance v1, Lfib;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lfib;-><init>(Lfid;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Llel;->a(Lldy;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(J)V
    .locals 1

    iget v0, p0, Lfic;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Llel;->b(J)V

    return-void

    :pswitch_0
    sget-boolean p1, Lfgk;->a:Z

    sget-boolean p1, Lfgk;->a:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    iget v0, p0, Lfic;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Llel;->c(Landroid/media/MediaCodec$BufferInfo;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-object v0, v0, Lfid;->l:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_0
    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-object v0, v0, Lfid;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget-object v1, p0, Lfic;->b:Ljava/lang/Object;

    check-cast v1, Lfid;

    iget-object v1, v1, Lfid;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-object v0, v0, Lfid;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :goto_0
    iget-object v0, p0, Lfic;->a:Ljava/lang/Object;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    check-cast v0, Lfgr;

    invoke-virtual {v0, v1, v2}, Lfgr;->f(J)Loxq;

    move-result-object v0

    invoke-virtual {v0}, Loxq;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :cond_2
    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-object v0, v0, Lfid;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-object v0, v0, Lfid;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-object v0, v0, Lfid;->k:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lfic;->b:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-object v0, v0, Lfid;->b:Lfhy;

    invoke-interface {v0, p1}, Lfhy;->b(Landroid/media/MediaCodec$BufferInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lfic;->d:I

    return-void
.end method

.method public final e(I)V
    .locals 0

    iget p1, p0, Lfic;->d:I

    return-void
.end method
