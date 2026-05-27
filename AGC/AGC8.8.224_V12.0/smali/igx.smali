.class public final Ligx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lgft;

.field public final d:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

.field public final e:Lkbc;

.field public final f:Ljvs;

.field public final g:Limc;

.field public h:Ligq;

.field public i:Lmqp;

.field public j:Lmqp;

.field private final k:Landroid/widget/FrameLayout;

.field private final l:Loiw;

.field private final m:Ldhi;

.field private n:Lkad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/viewfinder/Viewfinder"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ligx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgft;Lihg;Lkbc;Loiw;Ljvs;Limc;Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ligx;->i:Lmqp;

    iput-object v0, p0, Ligx;->j:Lmqp;

    iget-object v0, p2, Lihg;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ligx;->k:Landroid/widget/FrameLayout;

    iget-object p2, p2, Lihg;->c:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object p2, p0, Ligx;->d:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object p1, p0, Ligx;->c:Lgft;

    iput-object p3, p0, Ligx;->e:Lkbc;

    iput-object p4, p0, Ligx;->l:Loiw;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligx;->b:Ljava/lang/Object;

    iput-object p5, p0, Ligx;->f:Ljvs;

    iput-object p6, p0, Ligx;->g:Limc;

    iput-object p7, p0, Ligx;->m:Ldhi;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    if-eqz p2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/SurfaceView;IILimc;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Limc;->a(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public static c(IILkab;I)Landroid/util/Size;
    .locals 1

    sget-object v0, Lkab;->a:Lkab;

    invoke-virtual {p2, v0}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lkab;->c:Lkab;

    invoke-virtual {p2, v0}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    div-int/2addr p1, p3

    div-int/2addr p0, p3

    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p1, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    :cond_1
    :goto_0
    div-int/2addr p0, p3

    div-int/2addr p1, p3

    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p0, p1}, Landroid/util/Size;-><init>(II)V

    :goto_1
    return-object p2
.end method

.method private final h()V
    .locals 2

    iget-object v0, p0, Ligx;->h:Ligq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ligq;->close()V

    iput-object v1, p0, Ligx;->h:Ligq;

    :cond_0
    iget-object v0, p0, Ligx;->n:Lkad;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkad;->close()V

    iput-object v1, p0, Ligx;->n:Lkad;

    :cond_1
    iget-object v0, p0, Ligx;->d:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->e()V

    return-void
.end method


# virtual methods
.method public final d()Lmqp;
    .locals 3

    iget-object v0, p0, Ligx;->c:Lgft;

    invoke-interface {v0}, Lgft;->f()Lkab;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v0}, Ligx;->e(ZILkab;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final e(ZILkab;)Lmqp;
    .locals 10

    iget-object v0, p0, Ligx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ligx;->h:Ligq;

    if-nez v1, :cond_0

    sget-object p1, Ligx;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0x1096

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "getScreenshot(): the surfaceViewAdapter is null"

    invoke-interface {p1, p2}, Lnah;->o(Ljava/lang/String;)V

    sget-object p1, Lmpx;->a:Lmpx;

    monitor-exit v0

    return-object p1

    :cond_0
    iget-object v3, v1, Ligq;->b:Landroid/view/SurfaceView;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v6, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    :try_start_1
    iget-object v0, p0, Ligx;->e:Lkbc;

    const-string v1, "getScreenshot"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Ligx;->i:Lmqp;

    new-instance v1, Ligv;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p3

    move v8, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Ligv;-><init>(Ligx;Landroid/util/Size;Lkab;ZI)V

    invoke-virtual {v0, v1}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v0

    new-instance v7, Ligw;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ligw;-><init>(Ligx;Landroid/view/SurfaceView;Lkab;ZI)V

    invoke-virtual {v0, v7}, Lmqp;->d(Lmrl;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmqp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Ligx;->e:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Ligx;->e:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final f(Lihb;Lmqp;Ljava/lang/Integer;)Lnou;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iput-object v2, v1, Ligx;->i:Lmqp;

    iget-object v2, v1, Ligx;->e:Lkbc;

    const-string v3, "swapAndStartSurfaceViewViewfinder"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Ligx;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct/range {p0 .. p0}, Ligx;->h()V

    iget-object v3, v1, Ligx;->l:Loiw;

    check-cast v3, Lesa;

    invoke-virtual {v3}, Lesa;->a()Lesv;

    move-result-object v3

    new-instance v4, Ligo;

    iget-object v5, v1, Ligx;->j:Lmqp;

    invoke-direct {v4, v0, v5}, Ligo;-><init>(Lihb;Lmqp;)V

    iput-object v4, v3, Lesv;->d:Ljava/lang/Object;

    iget-object v4, v3, Lesv;->d:Ljava/lang/Object;

    const-class v5, Ligo;

    invoke-static {v4, v5}, Llho;->I(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v4, v3, Lesv;->a:Lesh;

    iget-object v5, v3, Lesv;->b:Lerz;

    iget-object v6, v3, Lesv;->c:Lese;

    iget-object v3, v3, Lesv;->d:Ljava/lang/Object;

    new-instance v7, Lhqq;

    move-object v8, v3

    check-cast v8, Ligo;

    const/16 v9, 0xd

    invoke-direct {v7, v8, v9}, Lhqq;-><init>(Ligo;I)V

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v16

    new-instance v7, Lhqq;

    check-cast v3, Ligo;

    const/16 v8, 0xc

    invoke-direct {v7, v3, v8}, Lhqq;-><init>(Ligo;I)V

    invoke-static {v7}, Logj;->b(Loiw;)Loiw;

    move-result-object v19

    iget-object v3, v4, Lesh;->ez:Loiw;

    new-instance v7, Ligs;

    invoke-direct {v7, v3}, Ligs;-><init>(Loiw;)V

    iget-object v11, v5, Lerz;->n:Loiw;

    iget-object v12, v4, Lesh;->p:Loiw;

    iget-object v13, v6, Lese;->g:Loiw;

    iget-object v14, v5, Lerz;->p:Loiw;

    iget-object v15, v4, Lesh;->hP:Loiw;

    iget-object v3, v4, Lesh;->f:Loiw;

    iget-object v4, v4, Lesh;->h:Loiw;

    new-instance v5, Lgbw;

    const/16 v21, 0xa

    const/16 v22, 0x0

    move-object v10, v5

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v7

    invoke-direct/range {v10 .. v22}, Lgbw;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[I)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ligq;

    iput-object v3, v1, Ligx;->h:Ligq;

    iget-object v3, v1, Ligx;->d:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iget-object v4, v1, Ligx;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->f(Landroid/view/View;)V

    iget-object v3, v1, Ligx;->h:Ligq;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljuh;->a()V

    iget-object v3, v3, Ligq;->g:Lnph;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Ligx;->m:Ldhi;

    sget-object v4, Ldho;->bU:Ldhj;

    invoke-interface {v2, v4}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Ligx;->f:Ljvs;

    new-instance v4, Lglh;

    const/16 v5, 0xf

    invoke-direct {v4, v1, v0, v5}, Lglh;-><init>(Ligx;Lihb;I)V

    sget-object v0, Ljuh;->a:Ljui;

    invoke-interface {v2, v4, v0}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    iput-object v0, v1, Ligx;->n:Lkad;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Ligx;->d:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iget-object v0, v0, Lihb;->a:Lkaf;

    iget v4, v0, Lkaf;->a:I

    iget v0, v0, Lkaf;->b:I

    move-object/from16 v5, p3

    invoke-virtual {v2, v4, v0, v5}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->g(IILjava/lang/Integer;)V

    :goto_0
    iget-object v0, v1, Ligx;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-object v3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Ligx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ligx;->h()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
