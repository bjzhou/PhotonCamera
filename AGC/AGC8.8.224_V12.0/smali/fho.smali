.class public final Lfho;
.super Ljava/lang/Object;

# interfaces
.implements Lkxv;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lkxv;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/lang/Object;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/encoder/SanitizerMuxer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfho;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkxv;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfho;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfho;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfho;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Lfho;->f:Z

    iput-object p1, p0, Lfho;->b:Lkxv;

    return-void
.end method


# virtual methods
.method public final a()Lkxy;
    .locals 3

    iget-boolean v0, p0, Lfho;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lfho;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lfhn;

    iget-object v2, p0, Lfho;->b:Lkxv;

    invoke-interface {v2}, Lkxv;->a()Lkxy;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lfhn;-><init>(Lfho;Lkxy;)V

    iget-object v2, p0, Lfho;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lfho;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Lnou;
    .locals 1

    iget-object v0, p0, Lfho;->b:Lkxv;

    invoke-interface {v0}, Lkxv;->b()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lfho;->b:Lkxv;

    invoke-interface {v0}, Lkxv;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lfho;->b:Lkxv;

    invoke-interface {v0}, Lkxv;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfho;->f:Z

    return-void
.end method
