.class public final Lexl;
.super Ljava/lang/Object;

# interfaces
.implements Lgpx;


# static fields
.field private static final c:Lnak;


# instance fields
.field public final a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/io/File;

.field private final f:Ljava/util/concurrent/Semaphore;

.field private volatile g:Z

.field private final h:Ljava/util/List;

.field private final i:Lfbz;

.field private final j:Ldzf;

.field private final k:I

.field private final l:Ldym;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/lightcycle/panorama/processing/LightCycleStitchTask"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lexl;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Lfbz;Ldzf;Ldym;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lexl;->f:Ljava/util/concurrent/Semaphore;

    iput-boolean v1, p0, Lexl;->g:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lexl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iput-object p2, p0, Lexl;->i:Lfbz;

    iget-object p2, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    iput-object p2, p0, Lexl;->d:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    iget-object v0, p2, Lgxa;->d:Lgxv;

    invoke-virtual {v0}, Lgxv;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lexl;->e:Ljava/io/File;

    invoke-virtual {p2}, Lgwp;->s()Ljava/lang/String;

    iget p1, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->j:I

    iput p1, p0, Lexl;->k:I

    iput-object p3, p0, Lexl;->j:Ldzf;

    iput-object p4, p0, Lexl;->l:Ldym;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lexl;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lgpw;
    .locals 1

    iget-object v0, p0, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    invoke-virtual {v0}, Lgwp;->h()Lgxy;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightCycleStitchTask-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljzs;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lexl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v1, p0

    iget-object v2, v1, Lexl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lexl;->h()V

    sget-object v4, Lewr;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateNewStitchingSession()I

    move-result v4

    iget-object v5, v1, Lexl;->e:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v8, v1, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v8, v8, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    sget-object v9, Lkae;->b:Lkae;

    invoke-virtual {v8, v9}, Lgwp;->b(Lkae;)V

    new-instance v8, Lexk;

    invoke-direct {v8, v1, v6, v7, v5}, Lexk;-><init>(Lexl;JLjava/io/File;)V

    sget-object v5, Lewr;->c:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->RenderNextSession(I)Z

    iget-object v4, v1, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v4, v4, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->h:Ljava/lang/String;

    sget v7, Leyb;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v7, 0x2

    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v11, ","

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    if-ne v11, v7, :cond_0

    aget-object v11, v10, v3

    aget-object v10, v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v8, v9

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    goto :goto_2

    :catch_2
    move-exception v0

    :cond_2
    :goto_2
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :catch_3
    move-exception v0

    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    const/4 v4, 0x0

    goto :goto_4

    :catch_4
    move-exception v0

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    :try_start_7
    const-string v11, "cropped_area_width"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "full_pano_width"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    int-to-float v11, v11

    int-to-float v10, v10

    div-float/2addr v11, v10

    mul-float v10, v11, v9

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_9
    iget v11, v1, Lexl;->k:I

    if-ne v11, v7, :cond_6

    cmpl-float v9, v10, v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    const/4 v11, 0x2

    goto :goto_6

    :cond_5
    const/4 v9, 0x0

    const/4 v11, 0x2

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    if-ne v11, v2, :cond_8

    const/high16 v11, 0x428c0000    # 70.0f

    cmpl-float v11, v10, v11

    if-gez v11, :cond_7

    goto :goto_7

    :cond_7
    const/4 v11, 0x1

    goto :goto_8

    :cond_8
    :goto_7
    if-eqz v9, :cond_9

    const/4 v11, 0x1

    goto :goto_8

    :cond_9
    const/4 v11, 0x0

    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v5

    iget v5, v1, Lexl;->k:I

    const/16 v6, 0xc

    if-ne v5, v7, :cond_a

    goto :goto_a

    :cond_a
    const/4 v7, 0x3

    if-ne v5, v7, :cond_b

    :goto_9
    goto :goto_a

    :cond_b
    const/4 v7, 0x5

    if-ne v5, v7, :cond_c

    goto :goto_9

    :cond_c
    const/4 v7, 0x4

    if-ne v5, v7, :cond_d

    goto :goto_9

    :cond_d
    const/4 v6, 0x6

    const/4 v7, 0x1

    :goto_a
    iget-object v5, v1, Lexl;->i:Lfbz;

    long-to-float v12, v12

    const v13, 0x3a83126f    # 0.001f

    mul-float v12, v12, v13

    invoke-interface {v5, v6, v7, v12, v10}, Lfbz;->au(IIFF)V

    iget v5, v1, Lexl;->k:I

    if-eq v5, v2, :cond_f

    if-eqz v9, :cond_e

    const/4 v5, 0x1

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    goto :goto_b

    :cond_f
    const/4 v5, 0x1

    :goto_b
    iget-object v6, v1, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v6, v6, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    invoke-virtual {v6}, Lgwp;->h()Lgxy;

    move-result-object v6

    iget-object v7, v1, Lexl;->l:Ldym;

    invoke-virtual {v7, v6}, Ldym;->b(Lgxy;)Lmqp;

    move-result-object v7

    sget-object v9, Lmpx;->a:Lmpx;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldyj;

    iget-object v6, v6, Ldyj;->a:Lgxt;

    iget-wide v6, v6, Lgxt;->a:J

    iget-object v10, v1, Lexl;->j:Ldzf;

    invoke-interface {v10, v6, v7}, Ldzf;->a(J)Lmqp;

    move-result-object v10

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldyy;

    invoke-virtual {v6}, Ldyy;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v9

    goto :goto_c

    :cond_10
    sget-object v10, Lexl;->c:Lnak;

    invoke-virtual {v10}, Lnaf;->b()Lnaz;

    move-result-object v10

    check-cast v10, Lnah;

    const/16 v12, 0x7f6

    invoke-interface {v10, v12}, Lnah;->G(I)Lnaz;

    move-result-object v10

    check-cast v10, Lnah;

    const-string v12, "special type not found for mediastore id = %d"

    invoke-interface {v10, v12, v6, v7}, Lnah;->q(Ljava/lang/String;J)V

    goto :goto_c

    :cond_11
    sget-object v7, Lexl;->c:Lnak;

    invoke-virtual {v7}, Lnaf;->b()Lnaz;

    move-result-object v7

    const-string v10, "no processing media found for shot %s"

    const/16 v12, 0x7f5

    invoke-static {v7, v10, v6, v12}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_c
    iget-object v6, v1, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v6, v6, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    invoke-virtual {v6}, Lgwp;->d()J

    move-result-wide v6

    iget-object v10, v1, Lexl;->e:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lexl;->d:Ljava/lang/String;

    iget v13, v1, Lexl;->k:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-ne v13, v2, :cond_12

    const/4 v13, 0x1

    goto :goto_d

    :cond_12
    const/4 v13, 0x0

    :goto_d
    if-eqz v10, :cond_3a

    :try_start_a
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_13

    goto/16 :goto_1a

    :cond_13
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v12, Leya;->a:Leya;

    invoke-virtual {v14, v12}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    array-length v14, v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-lez v14, :cond_14

    :try_start_b
    aget-object v12, v12, v3

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_e

    :cond_14
    const/4 v12, 0x0

    :goto_e
    :try_start_c
    new-instance v14, Landroid/media/ExifInterface;

    invoke-direct {v14, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_15

    new-instance v15, Landroid/media/ExifInterface;

    invoke-direct {v15, v12}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v12, "Make"

    invoke-virtual {v15, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "Make"

    invoke-virtual {v14, v15, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_15
    const-string v12, "Make"

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v14, v12, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v10, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const-string v15, "ImageWidth"

    iget v3, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ImageLength"

    iget v12, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v3, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v15, v2, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v15, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v15, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Lkfg;->E(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-"

    const-string v15, "+"

    if-gez v3, :cond_16

    goto :goto_10

    :cond_16
    move-object v12, v15

    :goto_10
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move v15, v13

    int-to-long v12, v6

    :try_start_d
    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lkfg;->F(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v12

    const-wide/16 v16, 0x3c

    rem-long v12, v12, v16

    invoke-static {v12, v13}, Lkfg;->F(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DateTime"

    invoke-virtual {v14, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DateTimeOriginal"

    invoke-virtual {v14, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DateTimeDigitized"

    invoke-virtual {v14, v6, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SubSecTime"

    invoke-virtual {v14, v2, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SubSecTimeOriginal"

    invoke-virtual {v14, v2, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SubSecTimeDigitized"

    invoke-virtual {v14, v2, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "OffsetTime"

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "OffsetTimeOriginal"

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "OffsetTimeDigitized"

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_22

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v16, v2

    const-string v2, "location_altitude"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v12}, Leyb;->a(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v2, v16

    goto :goto_11

    :cond_17
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v13, "location_latitude"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {v12}, Leyb;->a(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v2, v16

    goto :goto_11

    :cond_18
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v13, "location_longitude"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v12}, Leyb;->a(Ljava/util/Map$Entry;)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v2, v16

    goto :goto_11

    :cond_19
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v13, "location_provider"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "GPSProcessingMethod"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v2, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_1a
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v13, "location_time"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {v12}, Leyb;->e(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v8

    move-object/from16 v2, v16

    goto :goto_11

    :cond_1b
    :goto_12
    move-object/from16 v2, v16

    goto :goto_11

    :cond_1c
    const-wide/16 v12, 0x0

    if-eqz v3, :cond_1e

    const-string v2, "GPSAltitudeRef"

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpg-double v3, v16, v12

    if-gez v3, :cond_1d

    const-string v3, "1"

    goto :goto_13

    :cond_1d
    const-string v3, "0"

    :goto_13
    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    if-eqz v6, :cond_21

    if-eqz v7, :cond_21

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Leyb;->c(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v3, v16, v12

    if-ltz v3, :cond_1f

    const-string v3, "N"

    goto :goto_14

    :cond_1f
    const-string v3, "S"

    :goto_14
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Leyb;->c(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v7, v16, v12

    if-ltz v7, :cond_20

    const-string v7, "E"

    goto :goto_15

    :cond_20
    const-string v7, "W"

    :goto_15
    if-eqz v2, :cond_21

    if-eqz v6, :cond_21

    const-string v12, "GPSLatitude"

    invoke-virtual {v14, v12, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GPSLatitudeRef"

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GPSLongitude"

    invoke-virtual {v14, v2, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "GPSLongitudeRef"

    invoke-virtual {v14, v2, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    if-eqz v8, :cond_22

    const-string v2, "UTC"

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy:MM:dd"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v6, "GPSDateStamp"

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v6, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v2, "GPSTimeStamp"

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_16

    :catch_6
    move-exception v0

    goto :goto_16

    :catch_7
    move-exception v0

    move v15, v13

    :goto_16
    if-nez v5, :cond_23

    :try_start_e
    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v2, :cond_3a

    :cond_23
    :try_start_f
    sget v2, Lkrm;->a:I

    invoke-static {}, Lbet;->a()Lber;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v5, :cond_37

    :try_start_10
    const-string v3, "UsePanoramaViewer"

    invoke-interface {v2, v3, v11}, Lber;->j(Ljava/lang/String;Z)V

    const-string v3, "IsPhotosphere"

    move v5, v15

    invoke-interface {v2, v3, v5}, Lber;->j(Ljava/lang/String;Z)V

    const-string v3, "http://ns.google.com/photos/1.0/panorama/"

    const-string v5, "ProjectionType"

    const-string v6, "equirectangular"

    invoke-interface {v2, v3, v5, v6}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v4, :cond_36

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/String;

    const-string v1, "full_pano_width"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto :goto_17

    :cond_24
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "full_pano_height"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto :goto_17

    :cond_25
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "cropped_area_width"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto :goto_17

    :cond_26
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "cropped_area_height"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto :goto_17

    :cond_27
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "cropped_area_top"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto/16 :goto_17

    :cond_28
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "cropped_area_left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto/16 :goto_17

    :cond_29
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "first_photo_time"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static/range {v17 .. v17}, Leyb;->e(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v12

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto/16 :goto_17

    :cond_2a
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "last_photo_time"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static/range {v17 .. v17}, Leyb;->e(Ljava/util/Map$Entry;)Ljava/util/Date;

    move-result-object v13

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto/16 :goto_17

    :cond_2b
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "source_photos_count"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto/16 :goto_17

    :cond_2c
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "pose_heading"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto/16 :goto_17

    :cond_2d
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "yaw_correction_deg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static/range {v17 .. v17}, Leyb;->b(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto/16 :goto_17

    :cond_2e
    move-object/from16 v1, p0

    move-object/from16 v3, v19

    goto/16 :goto_17

    :cond_2f
    if-eqz v4, :cond_30

    if-eqz v5, :cond_30

    const-string v1, "CroppedAreaImageHeightPixels"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lber;->k(Ljava/lang/String;I)V

    const-string v1, "CroppedAreaImageWidthPixels"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lber;->k(Ljava/lang/String;I)V

    :cond_30
    if-eqz v6, :cond_31

    if-eqz v7, :cond_31

    const-string v1, "FullPanoHeightPixels"

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lber;->k(Ljava/lang/String;I)V

    const-string v1, "FullPanoWidthPixels"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lber;->k(Ljava/lang/String;I)V

    :cond_31
    if-eqz v8, :cond_32

    if-eqz v11, :cond_32

    const-string v1, "CroppedAreaTopPixels"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lber;->k(Ljava/lang/String;I)V

    const-string v1, "CroppedAreaLeftPixels"

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lber;->k(Ljava/lang/String;I)V

    :cond_32
    if-eqz v12, :cond_33

    new-instance v1, Lbez;

    const-string v3, "GMT"

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v1, v12, v3}, Lbez;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    const-string v3, "http://ns.google.com/photos/1.0/panorama/"

    const-string v4, "FirstPhotoDate"

    invoke-interface {v2, v3, v4, v1}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    if-eqz v13, :cond_34

    new-instance v1, Lbez;

    const-string v3, "GMT"

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v1, v13, v3}, Lbez;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    const-string v3, "http://ns.google.com/photos/1.0/panorama/"

    const-string v4, "LastPhotoDate"

    move-object v5, v2

    check-cast v5, Lbff;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v1, v6}, Lbff;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbfs;)V

    :cond_34
    if-eqz v14, :cond_35

    const-string v1, "SourcePhotosCount"

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lber;->k(Ljava/lang/String;I)V

    :cond_35
    if-eqz v15, :cond_36

    if-eqz v16, :cond_36

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x2d0

    rem-int/lit16 v1, v1, 0x168

    int-to-double v3, v1

    const-string v1, "http://ns.google.com/photos/1.0/panorama/"

    const-string v5, "PoseHeadingDegrees"

    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object v3, v2

    check-cast v3, Lbff;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v5, v6, v4}, Lbff;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbfs;)V

    :cond_36
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v10, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const-string v4, "LargestValidInteriorRectLeft"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lber;->k(Ljava/lang/String;I)V

    const-string v4, "LargestValidInteriorRectTop"

    invoke-interface {v2, v4, v5}, Lber;->k(Ljava/lang/String;I)V

    const-string v4, "LargestValidInteriorRectWidth"

    invoke-interface {v2, v4, v3}, Lber;->k(Ljava/lang/String;I)V

    const-string v3, "LargestValidInteriorRectHeight"

    invoke-interface {v2, v3, v1}, Lber;->k(Ljava/lang/String;I)V

    :cond_37
    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lkrm;->j(Lber;Ljava/lang/String;)V

    :cond_38
    invoke-static {v10}, Lkrm;->h(Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Lbeq; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v1, :cond_3a

    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Lbeq; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    new-instance v3, Lkrk;

    invoke-direct {v3, v1}, Lkrk;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Lkrm;->f(Lkrl;ZZ)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lkrm;->i(Lber;)[B

    move-result-object v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-nez v2, :cond_39

    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Lbeq; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_1a

    :cond_39
    :try_start_14
    invoke-static {v3, v2}, Lkrm;->a(Ljava/util/List;[B)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Lbeq; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lbeq; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    invoke-static {v1, v3}, Lkrm;->g(Ljava/io/OutputStream;Ljava/util/List;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Lbeq; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_1a

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto :goto_18

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_1a
    invoke-static {v2, v1}, Lkwp;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_18
    throw v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8
    .catch Lbeq; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :catch_8
    move-exception v0

    goto :goto_1a

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto :goto_19

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_1c
    invoke-static {v2, v1}, Lkwp;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_19
    throw v2
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_9
    .catch Lbeq; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    :catch_9
    move-exception v0

    move-object v1, v0

    :try_start_1d
    const-string v2, "XmpUtil"

    const-string v3, "Could not read file: "

    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_a
    move-exception v0

    move-object v1, v0

    const-string v2, "XmpUtil"

    const-string v3, "Could not find file: "

    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catch Lbeq; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    goto :goto_1a

    :catch_b
    move-exception v0

    move-object v1, v0

    :try_start_1e
    invoke-virtual {v1}, Lbeq;->getLocalizedMessage()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    goto :goto_1a

    :catchall_6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1c

    :cond_3a
    :goto_1a
    move-object/from16 v1, p0

    iget-object v2, v1, Lexl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_1f
    iget-object v3, v1, Lexl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v1, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    invoke-virtual {v3}, Lgwp;->A()V

    iget-object v3, v1, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v3, v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    invoke-virtual {v3}, Lgwp;->G()V

    iget-object v3, v1, Lexl;->h:Ljava/util/List;

    invoke-static {v3}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljzs;

    invoke-interface {v4, v1}, Ljzs;->a(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_3b
    monitor-exit v2

    return-void

    :catchall_7
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    throw v3

    :catchall_8
    move-exception v0

    :goto_1c
    move-object v2, v0

    iget-object v3, v1, Lexl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    :try_start_20
    iget-object v4, v1, Lexl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, v1, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v4, v4, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    invoke-virtual {v4}, Lgwp;->A()V

    iget-object v4, v1, Lexl;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v4, v4, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    invoke-virtual {v4}, Lgwp;->G()V

    iget-object v4, v1, Lexl;->h:Ljava/util/List;

    invoke-static {v4}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljzs;

    invoke-interface {v5, v1}, Ljzs;->a(Ljava/lang/Object;)V

    goto :goto_1d

    :cond_3c
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    throw v2

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_21
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    goto :goto_1f

    :goto_1e
    throw v2

    :goto_1f
    goto :goto_1e
.end method

.method public final e(Ljzs;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lexl;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized f()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lexl;->g:Z

    iget-object v0, p0, Lexl;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lexl;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexl;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()V
    .locals 4

    iget-boolean v0, p0, Lexl;->g:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lexl;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lexl;->c:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Failed to acquire waitLock."

    const/16 v3, 0x7f7

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :cond_0
    return-void
.end method
