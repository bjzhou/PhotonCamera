.class public final synthetic Leer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lech;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Legh;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leho;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leio;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lejk;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lejo;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Leke;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lekg;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lelj;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lelk;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljvk;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljwb;I)V
    .locals 0

    iput p2, p0, Leer;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leer;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Leer;->b:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lelj;

    iget-object v1, v1, Lelj;->c:Lfak;

    invoke-virtual {v1, v0}, Lfak;->e(Lfaz;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lelk;->g()V

    return-void

    :pswitch_1
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Lekg;

    iget-object v1, v0, Lekg;->d:Lejt;

    iget-object v2, v0, Lekg;->i:Lcom/google/android/libraries/vision/opengl/Texture;

    iget-object v0, v0, Lekg;->h:Lekc;

    iget v3, v0, Lekc;->a:I

    iget v0, v0, Lekc;->b:I

    mul-int v3, v3, v0

    div-int/lit16 v3, v3, 0x7e90

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-int v9, v3

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->getName()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v8

    move-object v5, v1

    check-cast v5, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;

    iget v10, v5, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->a:I

    iget v11, v5, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->b:F

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->initialize(IIIIIF)V

    return-void

    :pswitch_2
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Lekg;

    iget-object v0, v0, Lekg;->d:Lejt;

    invoke-interface {v0}, Lejt;->release()V

    return-void

    :pswitch_3
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Leke;

    invoke-virtual {v0}, Leke;->f()V

    return-void

    :pswitch_4
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Lejk;

    iget-object v0, v0, Lejk;->c:Lflf;

    sget-object v1, Lika;->d:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_5
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Lejl;

    invoke-virtual {v0}, Lejl;->a()V

    return-void

    :pswitch_6
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Leio;

    invoke-virtual {v0, v5, v5}, Leio;->h(ZI)V

    return-void

    :pswitch_7
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Leio;

    iget-object v1, v0, Leio;->b:Lekg;

    invoke-virtual {v1}, Lekg;->close()V

    iget-object v0, v0, Leio;->o:Leji;

    invoke-virtual {v0}, Leji;->close()V

    return-void

    :pswitch_8
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :pswitch_9
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Leho;

    iget-object v0, v0, Leho;->a:Lflf;

    sget-object v1, Lika;->d:Lika;

    invoke-interface {v0, v1}, Lflf;->b(Lika;)Z

    return-void

    :pswitch_a
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Legh;

    iget-object v7, v4, Legh;->g:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    move-object v4, v0

    check-cast v4, Legh;

    iget-object v4, v4, Legh;->e:Ldhi;

    sget-object v8, Ldhg;->o:Ldhj;

    invoke-interface {v4, v8}, Ldhi;->l(Ldhj;)Z

    move-result v4

    move-object v8, v0

    check-cast v8, Legh;

    iget-object v8, v8, Legh;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    check-cast v8, Legh;

    iget-boolean v8, v8, Legh;->j:Z

    if-ne v8, v4, :cond_0

    sget-object v0, Legh;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x5a6

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Already initialized."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v7

    return-void

    :cond_0
    move-object v8, v0

    check-cast v8, Legh;

    iget-object v8, v8, Legh;->f:Lgpc;

    invoke-interface {v8}, Lgpc;->a()J

    move-result-wide v8

    cmp-long v10, v8, v1

    if-nez v10, :cond_1

    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->d:Lkbc;

    const-string v2, "PortraitSegmenter#init"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->f:Lgpc;

    invoke-interface {v1}, Lgpc;->b()V

    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->d:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    :cond_1
    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->d:Lkbc;

    const-string v2, "FusionZoomController#loadModelAsset"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    if-eqz v4, :cond_2

    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->e:Ldhi;

    sget-object v2, Ldhg;->E:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->e:Ldhi;

    sget-object v2, Ldhg;->D:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    move-object v2, v0

    check-cast v2, Legh;

    iget-object v2, v2, Legh;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    invoke-static {v2, v8, v9, v10, v11}, Lcom/google/android/apps/camera/hdrplus/fusion/jni/FusionZoomControllerNative;->loadModelIntoCache(IJJ)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :try_start_4
    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->d:Lkbc;

    const-string v2, "FusionZoomController#init"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object v8, v0

    check-cast v8, Legh;

    invoke-virtual {v8}, Legh;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/android/apps/camera/hdrplus/fusion/jni/FusionZoomControllerNative;->initialize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v4, :cond_4

    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    :goto_1
    move-object v1, v0

    check-cast v1, Legh;

    iput-boolean v3, v1, Legh;->j:Z

    move-object v1, v0

    check-cast v1, Legh;

    iget-object v1, v1, Legh;->d:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    check-cast v0, Legh;

    iget-object v0, v0, Legh;->b:Ljvk;

    invoke-virtual {v0, v6}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to load model into SuperResProcessor"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_7
    const-class v2, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v1

    :cond_6
    :goto_2
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_1
    move-exception v0

    :try_start_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to initialize Fusion Zoom"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to open model asset file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :pswitch_d
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    invoke-virtual {v0, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    invoke-virtual {v0, v6}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->f()V

    return-void

    :pswitch_10
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v7, v4, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->e:Ljava/lang/Object;

    monitor-enter v7

    :try_start_a
    move-object v4, v0

    check-cast v4, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v4, v4, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v0, Lnbk;->a:Lnbc;

    monitor-exit v7

    return-void

    :cond_7
    move-object v4, v0

    check-cast v4, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v4, v4, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->b:Lgpc;

    invoke-interface {v4}, Lgpc;->a()J

    move-result-wide v8

    cmp-long v4, v8, v1

    if-nez v4, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    const-string v2, "PortraitSegmenter#init"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->b:Lgpc;

    invoke-interface {v1}, Lgpc;->b()V

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    :cond_8
    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    const-string v2, "DeblurFusionController#loadModelIntoCache"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    sget-object v1, Lnbk;->a:Lnbc;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "deblur_01_25_2023_v0.tflite.uncompressed"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v10

    invoke-static {v2, v8, v9, v10, v11}, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->loadModelIntoCache(IJJ)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v2, :cond_b

    if-eqz v1, :cond_9

    :try_start_d
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_9
    :try_start_e
    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    const-string v2, "DeblurFusionController#init"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->initialize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->c:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    move-object v1, v0

    check-cast v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v1, v1, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "FalconController"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x556

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Failed to initialize DeblurFusionController."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    check-cast v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;

    iget-object v0, v0, Lcom/google/android/apps/camera/hdrplus/deblurfusion/DeblurFusionControllerImpl;->g:Ljvk;

    invoke-virtual {v0, v6}, Ljvk;->bn(Ljava/lang/Object;)V

    :goto_3
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    return-void

    :cond_b
    :try_start_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to load model into FusionProcessor"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_c

    :try_start_10
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v1

    :try_start_11
    const-class v2, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_4

    :catch_3
    move-exception v1

    :cond_c
    :goto_4
    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catch_4
    move-exception v0

    :try_start_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to initialize Fusion Deblur"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to open Fusion Deblur model asset file"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_5
    move-exception v0

    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    throw v0

    :pswitch_11
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    invoke-virtual {v0, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Lech;

    iget-object v1, v0, Lech;->d:Lkbc;

    const-string v2, "writeDebugMetadata"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    sget-object v1, Lebo;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    sget-object v2, Lebo;->a:Ljava/util/List;

    invoke-static {v2}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v2

    sget-object v4, Lebo;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v1, :cond_11

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lebn;

    iget-object v7, v6, Lebn;->a:Ljava/lang/String;

    iget-object v8, v6, Lebn;->b:Lnqq;

    iget v9, v6, Lebn;->c:I

    iget-object v6, v6, Lebn;->d:Lkoq;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Result frame "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lnqq;->b:Lnqq;

    if-ne v8, v10, :cond_d

    const-string v8, "payload_burst_actual_hal3.txt"

    goto :goto_6

    :cond_d
    sget-object v10, Lnqq;->c:Lnqq;

    if-ne v8, v10, :cond_e

    const-string v8, "viewfinder_actual_hal3.txt"

    goto :goto_6

    :cond_e
    sget-object v10, Lnqq;->a:Lnqq;

    if-ne v8, v10, :cond_f

    const-string v8, "unknown_actual_hal3.txt"

    goto :goto_6

    :cond_f
    const-string v8, ""

    :goto_6
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_15
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v10, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v8, Ljava/io/BufferedWriter;

    invoke-direct {v8, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    :try_start_16
    invoke-interface {v6}, Lkoq;->f()Ljava/util/List;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9, v11}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "\n"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v11, "    %s\n"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v11, v12}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v11, "        %s\n"

    new-array v12, v5, [Ljava/lang/Object;

    invoke-interface {v6, v10}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcdy;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v3

    invoke-static {v11, v12}, Lkba;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_7

    :cond_10
    :try_start_17
    invoke-virtual {v8}, Ljava/io/Writer;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6

    goto :goto_8

    :catch_6
    move-exception v6

    :try_start_18
    sget-object v8, Lcdy;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->b()Lnaz;

    move-result-object v8

    const-string v9, "dumpMetadata - Failed to close writer."

    const/16 v10, 0x38

    invoke-static {v8, v9, v10, v6}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    goto :goto_8

    :catchall_6
    move-exception v6

    goto :goto_9

    :catch_7
    move-exception v6

    :try_start_19
    sget-object v9, Lcdy;->a:Lnak;

    invoke-virtual {v9}, Lnaf;->b()Lnaz;

    move-result-object v9

    check-cast v9, Lnah;

    invoke-interface {v9, v6}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const/16 v9, 0x39

    invoke-interface {v6, v9}, Lnah;->G(I)Lnaz;

    move-result-object v6

    check-cast v6, Lnah;

    const-string v9, "dumpMetadata - Failed to dump metadata"

    invoke-interface {v6, v9}, Lnah;->o(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    invoke-virtual {v8}, Ljava/io/Writer;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8

    goto :goto_8

    :catch_8
    move-exception v6

    :try_start_1b
    sget-object v8, Lcdy;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->b()Lnaz;

    move-result-object v8

    const-string v9, "dumpMetadata - Failed to close writer."

    const/16 v10, 0x3a

    invoke-static {v8, v9, v10, v6}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_8
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a

    goto :goto_b

    :goto_9
    :try_start_1c
    invoke-virtual {v8}, Ljava/io/Writer;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_9

    goto :goto_a

    :catch_9
    move-exception v7

    :try_start_1d
    sget-object v8, Lcdy;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->b()Lnaz;

    move-result-object v8

    const-string v9, "dumpMetadata - Failed to close writer."

    const/16 v10, 0x3b

    invoke-static {v8, v9, v10, v7}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_a
    throw v6
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    :catch_a
    move-exception v6

    sget-object v7, Lcdy;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->b()Lnaz;

    move-result-object v7

    const-string v8, "Could not write capture data to file."

    const/16 v9, 0x3c

    invoke-static {v7, v8, v9, v6}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_11
    iget-object v0, v0, Lech;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_7
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    throw v0

    :pswitch_13
    iget-object v0, p0, Leer;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    invoke-virtual {v0, v6}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
