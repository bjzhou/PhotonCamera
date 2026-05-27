.class public final Lfhe;
.super Ljava/lang/Object;

# interfaces
.implements Lkxy;


# instance fields
.field public final a:I

.field public final synthetic b:Lfhf;

.field private final c:Lkxy;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lfhf;Lkxy;I)V
    .locals 1

    iput-object p1, p0, Lfhe;->b:Lfhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lfhe;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lfhe;->c:Lkxy;

    iput p3, p0, Lfhe;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lnou;)V
    .locals 2

    new-instance v0, Ldje;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Ldje;-><init>(Lfhe;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {p1, v0, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lfhe;->c:Lkxy;

    invoke-interface {v0, p1}, Lkxy;->a(Lnou;)V

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-object v0, p0, Lfhe;->c:Lkxy;

    invoke-interface {v0, p1, p2}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object p1, p0, Lfhe;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    rem-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lfhe;->b:Lfhf;

    iget-object p1, p1, Lfhf;->c:Ldhi;

    sget-object p2, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->f()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfhe;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    iget-object v0, p0, Lfhe;->c:Lkxy;

    invoke-interface {v0}, Lkxy;->close()V

    return-void
.end method
