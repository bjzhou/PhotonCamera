.class public Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;
.super Lqlq;
.source "PG"


# instance fields
.field private final b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xe

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

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    sget p0, Lcom/google/android/libraries/oliveoil/util/JniUtil;->a:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Lqlq;-><init>(Lqhe;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

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

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v3, v1}, Lqhf;-><init>(Lqfd;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lqhf;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    mul-int/lit8 v1, v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->c:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v3, v1, v2}, Lqfd;-><init>(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    if-eq v1, v2, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    new-instance v3, Lqfd;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method private static native lockBitmapPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
.end method

.method private static native unlockBitmapPixels(Landroid/graphics/Bitmap;)V
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/nio/ByteBuffer;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    :try_start_0
    iget v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->c:I

    nop

    nop

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    iput v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->c:I

    nop

    nop

    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    sget-object v1, Landroidx/viewpager2/widget/jY/lIiWb;->DtdJRNvWSLzwwC:Ljava/lang/String;

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_1
    iget v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->c:I

    nop

    add-int/lit8 v1, v0, 0x1

    nop

    nop

    nop

    nop

    iput v1, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->c:I

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->lockBitmapPixels(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->d:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->d:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop
.end method

.method public final declared-synchronized b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

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

    nop

    :goto_1
    throw v0

    nop

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

    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->d:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_0
    const/4 v0, 0x0

    nop

    :goto_3
    invoke-static {v0}, Lrrf;->x(Z)V

    iget v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->c:I

    nop

    nop

    nop

    nop

    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->c:I

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    iget-object v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->b:Landroid/graphics/Bitmap;

    nop

    nop

    invoke-static {v0}, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->unlockBitmapPixels(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    nop

    nop

    iput-object v0, p0, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;->d:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
