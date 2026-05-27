.class public final Lfhv;
.super Ljava/lang/Object;

# interfaces
.implements Lfhl;


# static fields
.field public static final a:[F

.field private static final c:[F


# instance fields
.field public b:Lldf;

.field private final d:Landroid/media/MediaFormat;

.field private e:Llbd;

.field private f:Ldzv;

.field private g:Llec;

.field private h:Landroid/view/Surface;

.field private i:Lleb;

.field private j:Lldc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lfhv;->c:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lfhv;->a:[F

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
        0x3f800000    # 1.0f
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
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0, p1}, Landroid/media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    iput-object v0, p0, Lfhv;->d:Landroid/media/MediaFormat;

    const-string p1, "color-format"

    const v1, 0x7f000789

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhv;->b:Lldf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lldf;->close()V

    :cond_0
    iget-object v0, p0, Lfhv;->j:Lldc;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llbk;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized b()Lnou;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lfhv;->h()V

    iget-object v0, p0, Lfhv;->g:Llec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Llec;->a()Lnou;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lnor;->a:Lnou;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lkxy;Llbd;Llel;Landroid/os/Handler;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lfhv;->e:Llbd;

    const-class v0, Ldzv;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Ldzv;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const-string v1, "gl-guard"

    invoke-static {v1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Ldzv;->b:Ljava/util/concurrent/Executor;

    :cond_0
    new-instance v1, Ldzv;

    sget-object v2, Ldzv;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p2, v2}, Ldzv;-><init>(Llbd;Ljava/util/concurrent/Executor;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lfhv;->f:Ldzv;

    new-instance v0, Lfhq;

    invoke-direct {v0, p1}, Lfhq;-><init>(Lkxy;)V

    invoke-static {v0}, Lktf;->o(Llen;)Llec;

    move-result-object p1

    iget-object v0, p0, Lfhv;->d:Landroid/media/MediaFormat;

    move-object v1, p1

    check-cast v1, Llef;

    invoke-virtual {v1, v0}, Llef;->c(Landroid/media/MediaFormat;)Lleh;

    move-result-object v0

    iput-object p4, v0, Lleh;->c:Landroid/os/Handler;

    const/4 p4, 0x1

    iput-boolean p4, v0, Lleh;->d:Z

    const/4 p4, 0x0

    iput-object p4, v0, Lleh;->e:Landroid/view/Surface;

    invoke-virtual {v0, p3}, Lleh;->b(Llel;)V

    invoke-virtual {v0}, Lleh;->a()Lleb;

    move-result-object p3

    invoke-interface {p3}, Lleb;->a()Landroid/view/Surface;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lfhv;->h:Landroid/view/Surface;

    invoke-static {p4}, Lktf;->k(Ljava/lang/Object;)Llfg;

    move-result-object p4

    iget-object v0, p0, Lfhv;->d:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lfhv;->d:Landroid/media/MediaFormat;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lkym;->d(II)Lkym;

    move-result-object v0

    invoke-static {p2, p4, v0}, Lldc;->k(Llbd;Llfg;Lkym;)Lldc;

    move-result-object p4

    iput-object p4, p0, Lfhv;->j:Lldc;

    invoke-interface {p1}, Llec;->b()V

    invoke-static {p2}, Lldf;->a(Llbd;)Lldf;

    move-result-object p2

    iput-object p2, p0, Lfhv;->b:Lldf;

    iput-object p3, p0, Lfhv;->i:Lleb;

    iput-object p1, p0, Lfhv;->g:Llec;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhv;->i:Lleb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()[F
    .locals 1

    sget-object v0, Lfhv;->c:[F

    return-object v0
.end method

.method public final declared-synchronized f(Lkpb;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lfia;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lfia;-><init>(Lfhv;I)V

    invoke-virtual {p0, p1, v0}, Lfhv;->g(Lkpb;Lfhk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Lkpb;Lfhk;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfhv;->j:Lldc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lfhv;->f:Ldzv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lfhv;->e:Llbd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldzv;->a(Ljava/lang/AutoCloseable;)Ldzu;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v4, v3, Ldzu;->a:Ljava/lang/AutoCloseable;

    if-eqz v4, :cond_0

    new-instance v4, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-virtual {v3}, Ldzu;->a()Ljava/lang/AutoCloseable;

    move-result-object v5

    check-cast v5, Landroid/hardware/HardwareBuffer;

    invoke-direct {v4, v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V

    invoke-virtual {v1, v4}, Ldzv;->a(Ljava/lang/AutoCloseable;)Ldzu;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v1}, Ldzu;->a()Ljava/lang/AutoCloseable;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-static {v2, v4}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v4

    new-instance p1, Lfrk;

    const/4 v6, 0x3

    invoke-direct {p1, v4, v5, v6}, Lfrk;-><init>(JI)V

    sget-object v4, Lfrj;->f:Lfrj;

    invoke-virtual {v0, v4, p1}, Llbk;->e(Llcj;Lkye;)Lkzc;

    move-result-object p1

    sget-object v4, Lkyo;->a:Lkyo;

    invoke-interface {p1, v4}, Lkzc;->h(Lkyo;)V

    invoke-interface {p2, v2, v0}, Lfhk;->a(Llcd;Lldc;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v1}, Ldzu;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_0
    :try_start_6
    invoke-virtual {v3}, Ldzu;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_7
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_8
    invoke-static {p1, p2}, Lfze;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v1}, Ldzu;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-static {p1, p2}, Lfze;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_b
    invoke-virtual {v3}, Ldzu;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p2

    :try_start_c
    invoke-static {p1, p2}, Lfze;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
