.class public final Lcny;
.super Ljava/lang/Object;

# interfaces
.implements Ldss;
.implements Lkad;


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F

.field public static final e:Lnak;


# instance fields
.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Llbd;

.field public final i:Ljava/util/concurrent/Executor;

.field public j:Lldf;

.field public final k:Ldhi;

.field public l:Z

.field public final m:Ljava/util/Deque;

.field private final n:Lbkc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcny;->a:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcny;->b:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcny;->c:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcny;->d:[F

    const-string v0, "com/google/android/apps/camera/brella/features/LowResImageExtractor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcny;->e:Lnak;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lbkc;Ljava/util/concurrent/Executor;Ldhi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcny;->f:Ljava/lang/Object;

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcny;->g:Ljava/lang/Object;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcny;->l:Z

    iput-object p1, p0, Lcny;->n:Lbkc;

    iput-object p2, p0, Lcny;->i:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcny;->k:Ldhi;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lcny;->m:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcny;->g:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcny;->m:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcny;->m:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcnx;

    iget-object v1, v1, Lcnx;->a:Lkeb;

    invoke-interface {v1}, Lkeb;->close()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final b(Lkeb;Lkfj;)V
    .locals 1

    invoke-interface {p1}, Lkeb;->a()Lkeb;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcnw;

    invoke-direct {v0, p0, p1, p2}, Lcnw;-><init>(Lcny;Lkeb;Lkfj;)V

    invoke-interface {p1, v0}, Lkeb;->k(Lkfg;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcny;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcny;->l:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcny;->n:Lbkc;

    const-string v2, "low-res"

    invoke-virtual {v1, v2}, Lbkc;->r(Ljava/lang/String;)Llbd;

    move-result-object v1

    iput-object v1, p0, Lcny;->h:Llbd;

    invoke-static {v1}, Lldf;->a(Llbd;)Lldf;

    move-result-object v1

    iput-object v1, p0, Lcny;->j:Lldf;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcny;->l:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcny;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lclr;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lclr;-><init>(Lcny;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
