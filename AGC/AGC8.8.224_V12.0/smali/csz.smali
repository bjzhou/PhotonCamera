.class public final Lcsz;
.super Ljava/lang/Object;

# interfaces
.implements Lctd;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lgxr;

.field public c:Ljava/io/FileOutputStream;

.field public final d:Lnph;

.field private final e:Lgxn;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Lkbc;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/file/MediaFileOutputVideo"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcsz;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgxr;Lgxn;Ljava/util/concurrent/Executor;Lkbc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lcsz;->d:Lnph;

    iput-object p1, p0, Lcsz;->b:Lgxr;

    iput-object p2, p0, Lcsz;->e:Lgxn;

    iput-object p3, p0, Lcsz;->f:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcsz;->g:Lkbc;

    new-instance p1, Lcfz;

    const/16 v0, 0x12

    invoke-direct {p1, p0, p2, v0}, Lcfz;-><init>(Lcsz;Lgxn;I)V

    const-string p2, "MFOV#Init"

    invoke-interface {p4, p2, p1}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput p1, p0, Lcsz;->h:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcsz;->e:Lgxn;

    iget-object v0, v0, Lgxn;->a:Lkph;

    invoke-interface {v0}, Lkph;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic b()Lgyb;
    .locals 1

    invoke-static {p0}, Ldgx;->e(Lctd;)Lgyb;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lmqp;
    .locals 1

    iget-object v0, p0, Lcsz;->e:Lgxn;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcsz;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcsz;->h:I

    iget-object v0, p0, Lcsz;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcqf;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcsz;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lmqp;
    .locals 1

    iget-object v0, p0, Lcsz;->b:Lgxr;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lnou;
    .locals 1

    iget-object v0, p0, Lcsz;->d:Lnph;

    return-object v0
.end method

.method public final f()Ljava/io/FileDescriptor;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcsz;->g:Lkbc;

    const-string v1, "MFOV#getFileDescriptor"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcsz;->d:Lnph;

    invoke-virtual {v0}, Lnph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcsz;->g:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v1, Lcsz;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x25b

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Can\'t get file descriptor."

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcsz;->g:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcsz;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput v1, p0, Lcsz;->h:I

    iget-object v0, p0, Lcsz;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcqf;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcsz;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic h()Z
    .locals 5

    invoke-interface {p0}, Lctd;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x30d40

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 0

    return-void
.end method
