.class public final Lcgc;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field private static final a:Lnak;

.field private static final b:[F


# instance fields
.field private final c:Llbd;

.field private final d:Lldf;

.field private e:Z

.field private volatile f:Lldc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/aizoom/AiZoomPreviewRenderer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcgc;->a:Lnak;

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcgc;->b:[F

    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
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
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lbkc;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcgc;->f:Lldc;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcgc;->e:Z

    const-string p2, "BobaRenderer"

    invoke-virtual {p1, p2}, Lbkc;->r(Ljava/lang/String;)Llbd;

    move-result-object p1

    iput-object p1, p0, Lcgc;->c:Llbd;

    invoke-static {p1}, Lldf;->a(Llbd;)Lldf;

    move-result-object p1

    iput-object p1, p0, Lcgc;->d:Lldf;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/view/SurfaceView;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcgc;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcgc;->f:Lldc;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgc;->c:Llbd;

    invoke-static {v0, p1}, Lldc;->l(Llbd;Landroid/view/SurfaceView;)Lldc;

    move-result-object p1

    iput-object p1, p0, Lcgc;->f:Lldc;

    :cond_0
    iget-object p1, p0, Lcgc;->f:Lldc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkxc;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lkxc;-><init>(Lldc;I[B[B)V

    sget-object v1, Lfrj;->d:Lfrj;

    new-instance v2, Lkyh;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lkyh;-><init>(Ljava/lang/Runnable;I)V

    invoke-virtual {p1, v1, v2}, Llbk;->e(Llcj;Lkye;)Lkzc;

    move-result-object p1

    sget-object v0, Lkyo;->a:Lkyo;

    invoke-interface {p1, v0}, Lkzc;->h(Lkyo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object p1, Lcgc;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    sget-object v0, Lnbk;->a:Lnbc;

    const-string v1, "BobaRenderer"

    invoke-interface {p1, v0, v1}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p1

    const-string v0, "Error clearing target view, already closed."

    const/16 v1, 0x77

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lkpb;Landroid/view/SurfaceView;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcgc;->e:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcgc;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    sget-object p2, Lnbk;->a:Lnbc;

    const-string v0, "BobaRenderer"

    invoke-interface {p1, p2, v0}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p1

    const-string p2, "Error rendering image, already closed."

    const/16 v0, 0x7b

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcgc;->f:Lldc;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcgc;->c:Llbd;

    invoke-static {v0, p2}, Lldc;->l(Llbd;Landroid/view/SurfaceView;)Lldc;

    move-result-object p2

    iput-object p2, p0, Lcgc;->f:Lldc;

    :cond_1
    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz p1, :cond_2

    :try_start_2
    new-instance p2, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v0, p0, Lcgc;->c:Llbd;

    invoke-static {v0, p2}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Lcgc;->d:Lldf;

    iget-object v2, p0, Lcgc;->f:Lldc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcgc;->b:[F

    invoke-virtual {v1, v0, v2, v3}, Lldf;->f(Llcd;Lldc;[F)V

    iget-object v1, p0, Lcgc;->c:Llbd;

    invoke-static {v1}, Lktf;->u(Llbd;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Llbk;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Llbk;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-static {v1, v0}, Lbze;->ak(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_9
    invoke-virtual {p2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-static {v0, p2}, Lbze;->ak(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p2

    :try_start_b
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-static {p2, p1}, Lbze;->ak(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw p2

    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_3
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcgc;->e:Z

    if-nez v0, :cond_1

    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lcgc;->f:Lldc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcgc;->f:Lldc;

    invoke-virtual {v0}, Llbk;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcgc;->f:Lldc;

    :cond_0
    iget-object v0, p0, Lcgc;->d:Lldf;

    invoke-virtual {v0}, Lldf;->c()V

    iget-object v0, p0, Lcgc;->c:Llbd;

    invoke-interface {v0}, Llbd;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcgc;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcgc;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "BobaRenderer"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v1, "Already closed."

    const/16 v2, 0x78

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
