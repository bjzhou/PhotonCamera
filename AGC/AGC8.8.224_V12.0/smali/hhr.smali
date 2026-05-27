.class public final Lhhr;
.super Ljava/lang/Object;

# interfaces
.implements Lhib;


# static fields
.field public static final a:Lnak;

.field private static final m:Lj$/time/Duration;


# instance fields
.field public final b:Ldhi;

.field public final c:Lnow;

.field public final d:Lnow;

.field public final e:Ljava/lang/Object;

.field public final f:Lkbc;

.field public final g:Ljava/util/List;

.field public h:Lhhq;

.field public i:Lj$/nio/file/Path;

.field public j:Lhhz;

.field public final k:Linb;

.field public l:Ljew;

.field private final n:Landroid/content/Context;

.field private o:Lhhw;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com/google/android/apps/camera/speechenhancer/SpeechEnhancerControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhhr;->a:Lnak;

    const-wide/16 v0, 0x19

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lhhr;->m:Lj$/time/Duration;

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldhi;Lkbc;)V
    .locals 3

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v0

    const-string v1, "SEnhWorker"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Lnsy;->p(Ljava/util/concurrent/ExecutorService;)Lnow;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lhhr;->e:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lhhr;->g:Ljava/util/List;

    sget-object v2, Lhhq;->a:Lhhq;

    iput-object v2, p0, Lhhr;->h:Lhhq;

    iput-object p1, p0, Lhhr;->n:Landroid/content/Context;

    iput-object p2, p0, Lhhr;->b:Ldhi;

    iput-object p3, p0, Lhhr;->f:Lkbc;

    iput-object v0, p0, Lhhr;->c:Lnow;

    iput-object v1, p0, Lhhr;->d:Lnow;

    new-instance p1, Lhho;

    invoke-direct {p1, p0}, Lhho;-><init>(Lhhr;)V

    iput-object p1, p0, Lhhr;->k:Linb;

    return-void
.end method

.method public static final k(Ljava/lang/Runnable;Lnow;)V
    .locals 1

    invoke-interface {p1, p0}, Lnow;->a(Ljava/lang/Runnable;)Lnou;

    move-result-object p0

    new-instance p1, Lhhp;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lhhp;-><init>(I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p0, p1, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a(Lhia;)Lkad;
    .locals 2

    iget-object v0, p0, Lhhr;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhhr;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lgss;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, v1}, Lgss;-><init>(Lhhr;Lhia;I)V

    return-object v0

    :cond_0
    new-instance p1, Lgnl;

    const/16 v0, 0xe

    invoke-direct {p1, v0}, Lgnl;-><init>(I)V

    return-object p1
.end method

.method public final b()Lj$/time/Duration;
    .locals 1

    sget-object v0, Lhhr;->m:Lj$/time/Duration;

    return-object v0
.end method

.method public final c()V
    .locals 10

    const-string v0, "avenh_camera"

    :try_start_0
    iget-object v1, p0, Lhhr;->n:Landroid/content/Context;

    const-string v2, "You must provide a valid context in order to use the bundled model in an Android app."

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/google/babelfish/device/avenh/l2l/modelutils/androidmodelextractor/AndroidModelExtractor;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v3, v0}, Lj$/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lhhr;->i:Lj$/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lhhr;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Failed to extract the directory of streaming model assets."

    const/16 v3, 0xe2e

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhhr;->h:Lhhq;

    sget-object v2, Lhhq;->e:Lhhq;

    invoke-virtual {v1, v2}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lhfi;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lhfi;-><init>(Lhhr;I)V

    iget-object v2, p0, Lhhr;->d:Lnow;

    invoke-static {v1, v2}, Lhhr;->k(Ljava/lang/Runnable;Lnow;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(Lhhz;)V
    .locals 1

    iput-object p1, p0, Lhhr;->j:Lhhz;

    new-instance v0, Lhhw;

    iget p1, p1, Lhhz;->a:I

    invoke-direct {v0, p1}, Lhhw;-><init>(I)V

    iput-object v0, p0, Lhhr;->o:Lhhw;

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhhr;->h:Lhhq;

    sget-object v2, Lhhq;->a:Lhhq;

    invoke-virtual {v1, v2}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lhfi;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lhfi;-><init>(Lhhr;I)V

    iget-object v1, p0, Lhhr;->d:Lnow;

    invoke-static {v0, v1}, Lhhr;->k(Ljava/lang/Runnable;Lnow;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final g(Ljava/nio/ByteBuffer;IIIJLmqp;)V
    .locals 11

    move-object v10, p0

    move-wide/from16 v0, p5

    iget-object v2, v10, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v10, Lhhr;->h:Lhhq;

    sget-object v4, Lhhq;->e:Lhhq;

    invoke-virtual {v3, v4}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v10, Lhhr;->o:Lhhw;

    iget-wide v3, v2, Lhhw;->b:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iput-wide v0, v2, Lhhw;->b:J

    const-wide/16 v0, 0x0

    move-wide v7, v0

    goto :goto_0

    :cond_1
    sub-long/2addr v0, v3

    iget v2, v2, Lhhw;->a:I

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/Duration;->toNanos()J

    move-result-wide v4

    mul-long v2, v2, v0

    div-long/2addr v2, v4

    move-wide v7, v2

    :goto_0
    invoke-static {p1}, Lcom/google/googlex/gcam/BufferUtils;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    new-instance v0, Lhhm;

    move-object v1, v0

    move-object v2, p0

    move v3, p4

    move v4, p2

    move v5, p3

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lhhm;-><init>(Lhhr;IIILjava/nio/ByteBuffer;JLmqp;)V

    iget-object v1, v10, Lhhr;->d:Lnow;

    invoke-static {v0, v1}, Lhhr;->k(Ljava/lang/Runnable;Lnow;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhhr;->h:Lhhq;

    sget-object v2, Lhhq;->b:Lhhq;

    invoke-virtual {v1, v2}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lhhr;->h:Lhhq;

    sget-object v3, Lhhq;->f:Lhhq;

    invoke-virtual {v1, v3}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    const-string v1, "Cannot start from %s"

    iget-object v3, p0, Lhhr;->h:Lhhq;

    invoke-static {v2, v1, v3}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lhhn;

    invoke-direct {v0, p0}, Lhhn;-><init>(Lhhr;)V

    iget-object v1, p0, Lhhr;->d:Lnow;

    invoke-static {v0, v1}, Lhhr;->k(Ljava/lang/Runnable;Lnow;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhhr;->h:Lhhq;

    sget-object v2, Lhhq;->d:Lhhq;

    invoke-virtual {v1, v2}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhhr;->h:Lhhq;

    sget-object v2, Lhhq;->e:Lhhq;

    invoke-virtual {v1, v2}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lhhq;->f:Lhhq;

    iput-object v1, p0, Lhhr;->h:Lhhq;

    new-instance v1, Lhfi;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lhfi;-><init>(Lhhr;I)V

    iget-object v2, p0, Lhhr;->d:Lnow;

    invoke-static {v1, v2}, Lhhr;->k(Ljava/lang/Runnable;Lnow;)V

    iget-object v1, p0, Lhhr;->o:Lhhw;

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v1, Lhhw;->b:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lhhr;->p:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j(Ljava/nio/ByteBuffer;)Z
    .locals 3

    iget-object v0, p0, Lhhr;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhhr;->h:Lhhq;

    sget-object v2, Lhhq;->d:Lhhq;

    invoke-virtual {v1, v2}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lhhq;->e:Lhhq;

    iput-object v1, p0, Lhhr;->h:Lhhq;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lhhr;->h:Lhhq;

    sget-object v2, Lhhq;->e:Lhhq;

    invoke-virtual {v1, v2}, Lhhq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/google/googlex/gcam/BufferUtils;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance v0, Lhdg;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, v1}, Lhdg;-><init>(Lhhr;Ljava/nio/ByteBuffer;I)V

    iget-object p1, p0, Lhhr;->d:Lnow;

    invoke-static {v0, p1}, Lhhr;->k(Ljava/lang/Runnable;Lnow;)V

    iget-boolean p1, p0, Lhhr;->p:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lhhr;->p:Z

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
