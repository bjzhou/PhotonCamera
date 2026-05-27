.class public final Lfgn;
.super Ljava/lang/Object;

# interfaces
.implements Lkxv;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lnou;

.field public final c:Lnph;

.field public final d:Lnou;

.field public final e:Lnou;

.field public final f:Lnou;

.field public final g:Z

.field public final h:Z

.field private final i:Lkxv;

.field private final j:Landroid/media/MediaFormat;

.field private final k:Ljava/util/List;

.field private final l:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/encoder/AddMetaTrackMuxer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfgn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkxv;ZLnou;Lnph;Lnou;Lnou;Lnou;ZLjava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfgn;->i:Lkxv;

    iput-object p6, p0, Lfgn;->e:Lnou;

    iput-object p7, p0, Lfgn;->f:Lnou;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfgn;->k:Ljava/util/List;

    iput-object p9, p0, Lfgn;->l:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lfgn;->b:Lnou;

    iput-object p4, p0, Lfgn;->c:Lnph;

    iput-object p5, p0, Lfgn;->d:Lnou;

    iput-boolean p8, p0, Lfgn;->g:Z

    iput-boolean p2, p0, Lfgn;->h:Z

    new-instance p1, Landroid/media/MediaFormat;

    invoke-direct {p1}, Landroid/media/MediaFormat;-><init>()V

    iput-object p1, p0, Lfgn;->j:Landroid/media/MediaFormat;

    const/4 p3, 0x1

    if-eq p3, p2, :cond_0

    const-string p2, "application/microvideo-image-meta"

    goto :goto_0

    :cond_0
    const-string p2, "application/motionphoto-image-meta"

    :goto_0
    const-string p3, "mime"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lkxy;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfgn;->i:Lkxv;

    invoke-interface {v0}, Lkxv;->a()Lkxy;

    move-result-object v0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iget-object v2, p0, Lfgn;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lfgm;

    invoke-direct {v2, v0, v1}, Lfgm;-><init>(Lkxy;Lnph;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lnou;
    .locals 1

    iget-object v0, p0, Lfgn;->i:Lkxv;

    invoke-interface {v0}, Lkxv;->b()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lfgn;->i:Lkxv;

    invoke-interface {v0}, Lkxv;->c()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lfgn;->i:Lkxv;

    invoke-interface {v0}, Lkxv;->a()Lkxy;

    move-result-object v0

    iget-object v1, p0, Lfgn;->j:Landroid/media/MediaFormat;

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    invoke-interface {v0, v1}, Lkxy;->a(Lnou;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    invoke-interface {v0, v2, v3}, Lkxy;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lfgn;->k:Ljava/util/List;

    invoke-static {v2}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    const/4 v3, 0x5

    :try_start_1
    new-array v3, v3, [Lnou;

    aput-object v2, v3, v1

    iget-object v1, p0, Lfgn;->d:Lnou;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    iget-object v1, p0, Lfgn;->e:Lnou;

    const/4 v4, 0x2

    aput-object v1, v3, v4

    iget-object v1, p0, Lfgn;->b:Lnou;

    const/4 v4, 0x3

    aput-object v1, v3, v4

    iget-object v1, p0, Lfgn;->f:Lnou;

    const/4 v4, 0x4

    aput-object v1, v3, v4

    invoke-static {v3}, Lnsy;->y([Lnou;)Lnou;

    move-result-object v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Lfgl;

    invoke-direct {v3, p0, v2, v0}, Lfgl;-><init>(Lfgn;Lnou;Lkxy;)V

    iget-object v0, p0, Lfgn;->l:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v3, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lfgn;->i:Lkxv;

    invoke-interface {v0}, Lkxv;->d()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
