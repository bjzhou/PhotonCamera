.class public final Ljxg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljww;


# static fields
.field public static final a:[F

.field private static final c:[F


# instance fields
.field public b:Lqjw;

.field private final d:Landroid/media/MediaFormat;

.field private e:Lqht;

.field private f:Lihe;

.field private g:Landroid/view/Surface;

.field private h:Lqku;

.field private i:Lqjs;

.field private j:Lqau;


# direct methods
.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljxg;->b:Lqjw;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqjw;->close()V

    :cond_1
    iget-object v0, p0, Ljxg;->i:Lqjs;

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqia;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    sput-object v0, Ljxg;->a:[F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-array v0, v0, [F

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x15

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    sput-object v1, Ljxg;->c:[F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ljxg;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p0, "color-format"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    invoke-direct {v0, p1}, Landroid/media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const p1, 0x7f000789

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized b()Lsui;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Ljxg;->19e596a3e324281407eb5c11093c0152m()V

    iget-object v0, p0, Ljxg;->h:Lqku;

    nop

    if-eqz v0, :cond_0

    nop

    invoke-virtual {v0}, Lqku;->a()Lsui;

    move-result-object v0

    nop

    goto :goto_1

    nop

    nop

    nop

    :cond_0
    sget-object v0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lqep;Lqht;Lqkz;Landroid/os/Handler;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iput-object p2, p0, Ljxg;->e:Lqht;

    nop

    nop

    nop

    nop

    nop

    const-class v0, Lihe;

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lihe;->b:Ljava/util/concurrent/Executor;

    nop

    if-nez v1, :cond_0

    nop

    nop

    const-string v1, "gl-guard"

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    nop

    nop

    sput-object v1, Lihe;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    :cond_0
    new-instance v1, Lihe;

    nop

    nop

    nop

    nop

    sget-object v2, Lihe;->b:Ljava/util/concurrent/Executor;

    nop

    invoke-direct {v1, p2, v2}, Lihe;-><init>(Lqht;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Ljxg;->f:Lihe;

    nop

    nop

    new-instance v0, Ljxb;

    nop

    invoke-direct {v0, p1}, Ljxb;-><init>(Lqep;)V

    new-instance p1, Lqku;

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lqku;-><init>(Lqlb;)V

    iget-object v0, p0, Ljxg;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lqku;->c(Landroid/media/MediaFormat;)Lqkv;

    move-result-object v0

    nop

    iput-object p4, v0, Lqkv;->c:Landroid/os/Handler;

    nop

    const/4 p4, 0x1

    nop

    iput-boolean p4, v0, Lqkv;->d:Z

    nop

    nop

    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    iput-object p4, v0, Lqkv;->e:Landroid/view/Surface;

    nop

    nop

    invoke-virtual {v0, p3}, Lqkv;->a(Lqkz;)V

    invoke-virtual {v0}, Lqkv;->b()Lqau;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p3, Lqau;->b:Ljava/lang/Object;

    nop

    check-cast p4, Lqkp;

    nop

    nop

    iget-object p4, p4, Lqkp;->c:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Ljxg;->g:Landroid/view/Surface;

    nop

    nop

    new-instance v0, Lqlw;

    nop

    invoke-direct {v0, p4}, Lqlw;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Ljxg;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    const-string v1, "height"

    nop

    const-string v2, "width"

    nop

    nop

    invoke-virtual {p4, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    invoke-virtual {p4, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p4

    nop

    nop

    nop

    new-instance v1, Lqfd;

    nop

    nop

    invoke-direct {v1, v2, p4}, Lqfd;-><init>(II)V

    invoke-static {p2, v0, v1}, Lqjs;->k(Lqht;Lqlt;Lqfd;)Lqjs;

    move-result-object p4

    nop

    iput-object p4, p0, Ljxg;->i:Lqjs;

    nop

    nop

    nop

    invoke-virtual {p1}, Lqku;->b()V

    new-instance p4, Lqjw;

    nop

    nop

    nop

    invoke-direct {p4, p2}, Lqjw;-><init>(Lqht;)V

    iput-object p4, p0, Ljxg;->b:Lqjw;

    nop

    nop

    nop

    iput-object p3, p0, Ljxg;->j:Lqau;

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Ljxg;->h:Lqku;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljxg;->j:Lqau;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final e()[F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object p0, Ljxg;->c:[F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final declared-synchronized f(Lprw;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :try_start_1
    new-instance v0, Ljxj;

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Ljxj;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Ljxg;->g(Lprw;Ljwv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized g(Lprw;Ljwv;)V
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljxg;->i:Lqjs;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ljxg;->f:Lihe;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Ljxg;->e:Lqht;

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    nop

    nop

    new-instance v4, Lihd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v3}, Lihd;-><init>(Lihe;Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v4, Lihd;->a:Ljava/lang/AutoCloseable;

    nop

    nop

    if-eqz v3, :cond_0

    nop

    new-instance v3, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lihd;->a()Ljava/lang/AutoCloseable;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V

    new-instance v5, Lihd;

    nop

    nop

    nop

    invoke-direct {v5, v1, v3}, Lihd;-><init>(Lihe;Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v5}, Lihd;->a()Ljava/lang/AutoCloseable;

    move-result-object v1

    nop

    check-cast v1, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v1}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    nop

    new-instance p1, Lkhz;

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    invoke-direct {p1, v2, v3, v6}, Lkhz;-><init>(JI)V

    new-instance v2, Lkhy;

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lkhy;-><init>(I)V

    invoke-virtual {v0, v2, p1}, Lqia;->d(Lqja;Lqeu;)Lqfs;

    move-result-object p1

    nop

    nop

    sget-object v2, Lqff;->a:Lqff;

    nop

    nop

    nop

    invoke-interface {p1, v2}, Lqfs;->g(Lqff;)V

    invoke-interface {p2, v1, v0}, Ljwv;->a(Lqiu;Lqjs;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Lqia;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    invoke-virtual {v5}, Lihd;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto :goto_2

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p2

    nop

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    :try_start_7
    invoke-virtual {v1}, Lqia;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    goto :goto_8

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p2

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_0
    :goto_9
    :try_start_9
    invoke-virtual {v4}, Lihd;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception p1

    nop

    nop

    :try_start_a
    invoke-virtual {v4}, Lihd;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_12

    nop

    nop

    nop

    :catchall_5
    move-exception p2

    nop

    nop

    nop

    nop

    nop

    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw p1

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {v5}, Lihd;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
