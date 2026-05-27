.class public final Lkxe;
.super Ljava/lang/Object;

# interfaces
.implements Lkpf;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lkpf;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Throwable;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/HashMap;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/lang/Runnable;

.field private final i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/microvideo/gcamuxer/AsyncMediaMuxerWrapper"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lkxe;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkpf;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkxe;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lkxe;->d:Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkxe;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkxe;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lkxe;->j:I

    iput-object p1, p0, Lkxe;->b:Lkpf;

    new-instance p1, Lkxd;

    invoke-static {p2}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lkxd;-><init>(Lkxe;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lkxc;

    invoke-direct {p1, p2, v0}, Lkxc;-><init>(Ljava/util/concurrent/ExecutorService;I)V

    iput-object p1, p0, Lkxe;->h:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkxe;->i:Z

    return-void
.end method

.method private final j()V
    .locals 3

    iget-object v0, p0, Lkxe;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkxe;->d:Ljava/lang/Throwable;

    const/4 v2, 0x0

    iput-object v2, p0, Lkxe;->d:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Lkxj;

    invoke-direct {v2, v1}, Lkxj;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final k()V
    .locals 4

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    new-instance v2, Lkxa;

    invoke-direct {v2, v0}, Lkxa;-><init>(Lnph;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lnph;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    sget-object v1, Lkxe;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Waiting for muxer interrupted / timed out"

    const/16 v3, 0x1172

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;)I
    .locals 5

    iget-object v0, p0, Lkxe;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lkxe;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkxe;->j:I

    iget-object v2, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    new-instance v3, Lpi;

    const/16 v4, 0x13

    invoke-direct {v3, p0, p1, v1, v4}, Lpi;-><init>(Lkxe;Landroid/media/MediaFormat;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lkgc;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, Lkgc;-><init>(Lkxe;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lkxe;->j()V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lkxe;->b:Lkpf;

    new-instance v2, Lkxc;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lkxc;-><init>(Lkpf;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lkxe;->k()V

    iget-boolean v0, p0, Lkxe;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkxe;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-direct {p0}, Lkxe;->j()V

    return-void
.end method

.method public final d(FF)V
    .locals 2

    iget-object v0, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lkxb;

    invoke-direct {v1, p0, p1, p2}, Lkxb;-><init>(Lkxe;FF)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lkxe;->j()V

    return-void
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lgcm;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, Lgcm;-><init>(Lkxe;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lkxe;->j()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Llbl;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Llbl;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lkxe;->j()V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lkxe;->b:Lkpf;

    new-instance v2, Lkcu;

    const/16 v3, 0x14

    invoke-direct {v2, v1, v3}, Lkcu;-><init>(Lkpf;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lkxe;->k()V

    invoke-direct {p0}, Lkxe;->j()V

    return-void
.end method

.method public final h(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    invoke-direct {p0}, Lkxe;->j()V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lkxe;->g:Ljava/util/concurrent/Executor;

    new-instance v0, Lepj;

    const/4 v6, 0x2

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lepj;-><init>(Lkxe;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
