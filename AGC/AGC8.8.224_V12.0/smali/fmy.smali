.class final Lfmy;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lfng;


# direct methods
.method public constructor <init>(Lfng;)V
    .locals 0

    iput-object p1, p0, Lfmy;->a:Lfng;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lfmy;->a:Lfng;

    iget v1, v0, Lfng;->Q:I

    iget-object v0, v0, Lfng;->s:Lcgy;

    invoke-interface {v0}, Lcgy;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f08024d

    goto :goto_0

    :cond_0
    const v1, 0x7f080247

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v0, p0, Lfmy;->a:Lfng;

    iget-object v0, v0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lkaf;->h(II)Lkaf;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgwp;->S(Lkaf;)V

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f14044b

    invoke-static {v5, v4}, Ljpw;->h(I[Ljava/lang/Object;)Ligf;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgwp;->Q(Ligf;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v5, v4

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lgwp;->X(Landroid/graphics/Bitmap;I)V

    iget-object v4, p0, Lfmy;->a:Lfng;

    iget-object v4, v4, Lfng;->z:Lgwf;

    invoke-interface {v4, v0}, Lgwf;->e(Lgxl;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lfmy;->a:Lfng;

    iget-wide v6, v6, Lfng;->O:J

    sub-long/2addr v4, v6

    iget-object v0, v0, Lgxa;->d:Lgxv;

    invoke-virtual {v0}, Lgxv;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lgxv;->a()Ljava/io/File;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lfmy;->a:Lfng;

    iget-object v0, v0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    invoke-virtual {v0}, Lgxa;->K()V

    iget-object v0, p0, Lfmy;->a:Lfng;

    iget-object v1, v0, Lfng;->u:Lfbz;

    iget v2, v0, Lfng;->p:I

    iget v0, v0, Lfng;->N:I

    long-to-float v3, v4

    const v4, 0x3a83126f    # 0.001f

    mul-float v3, v3, v4

    invoke-interface {v1, v2, v0, v3}, Lfbz;->aA(IIF)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    const-class v4, Ljava/lang/Throwable;

    const-string v5, "addSuppressed"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Throwable;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    :try_start_5
    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Temporary session file not usable."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    sget-object v0, Lfng;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Could not write temporary panorama image."

    const/16 v2, 0x947

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method
