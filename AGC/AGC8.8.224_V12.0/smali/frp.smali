.class public final Lfrp;
.super Ljava/lang/Object;

# interfaces
.implements Lfri;


# instance fields
.field private final a:Landroid/media/MediaFormat;

.field private final b:Llbd;

.field private final c:Lgvb;

.field private final d:Lkli;

.field private e:Lfpq;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Llbd;Lgvb;Lkli;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfrp;->e:Lfpq;

    iput-object p1, p0, Lfrp;->a:Landroid/media/MediaFormat;

    iput-object p2, p0, Lfrp;->b:Llbd;

    iput-object p3, p0, Lfrp;->c:Lgvb;

    iput-object p4, p0, Lfrp;->d:Lkli;

    return-void
.end method

.method private final c()V
    .locals 5

    iget-object v0, p0, Lfrp;->a:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lfrp;->a:Landroid/media/MediaFormat;

    iget-object v1, p0, Lfrp;->b:Llbd;

    const-string v2, "mime"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-static {v1}, Lldf;->a(Llbd;)Lldf;

    move-result-object v3

    new-instance v4, Lfpo;

    invoke-direct {v4, v2, v0, v1, v3}, Lfpo;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Llbd;Lldf;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v2, Lfpt;

    invoke-direct {v2, v0, v4}, Lfpt;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lfpq;)V

    new-instance v0, Lfps;

    invoke-direct {v0, v2, v1}, Lfps;-><init>(Lfpq;I)V

    new-instance v1, Lfps;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lfps;-><init>(Lfpq;I)V

    iput-object v1, p0, Lfrp;->e:Lfpq;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create image encoder!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Lkxy;Lkab;)Lfpz;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lfrp;->e:Lfpq;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lfrp;->c()V

    :cond_0
    new-instance p2, Lfpr;

    iget-object v1, p0, Lfrp;->e:Lfpq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lfrp;->c:Lgvb;

    iget-object v2, p0, Lfrp;->d:Lkli;

    invoke-interface {v2}, Lkli;->k()Lklv;

    move-result-object v2

    invoke-interface {v0, v2}, Lgvb;->h(Lklv;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lfsc;->d:Lbkb;

    move-object v3, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lfsc;->c:Lbkb;

    move-object v3, v0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lfpr;-><init>(Lfpq;Lkxy;Lbkb;[B[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lfrp;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrp;->e:Lfpq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfpq;->close()V

    :cond_0
    iget-object v0, p0, Lfrp;->b:Llbd;

    invoke-interface {v0}, Llbd;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
