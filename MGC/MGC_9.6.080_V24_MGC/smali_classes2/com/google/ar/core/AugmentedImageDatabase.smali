.class public Lcom/google/ar/core/AugmentedImageDatabase;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Session;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0x6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, v0, v1}, Lcom/google/ar/core/AugmentedImageDatabase;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeCreate(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lcom/google/ar/core/AugmentedImageDatabase;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeSymbolTableHandle:J

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

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide p2, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

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

    nop
.end method

.method static convertBitmapToGrayscaleDirectBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr v5, v4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lt v3, v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_b
    new-instance v0, Landroid/graphics/ColorMatrix;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_22

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    move v3, v1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_18
    int-to-byte v6, v6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v4, v1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_21
    return-object v0

    nop

    :goto_22
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    :goto_24
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    mul-int/2addr v5, v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_26
    goto :goto_1c

    nop

    :goto_27
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2d
    new-instance v3, Landroid/graphics/Canvas;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_16

    nop

    :goto_2f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v3, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/32 :goto_6

    nop

    nop

    :goto_31
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_32
    if-lt v4, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    :goto_33
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static deserialize(Lcom/google/ar/core/Session;Ljava/io/InputStream;)Lcom/google/ar/core/AugmentedImageDatabase;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcom/google/ar/core/AugmentedImageDatabase;->loadDirectByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, v0, v1}, Lcom/google/ar/core/AugmentedImageDatabase;-><init>(Lcom/google/ar/core/Session;J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    :goto_6
    new-instance p1, Lcom/google/ar/core/AugmentedImageDatabase;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, p1}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeDeserialize(JLjava/nio/ByteBuffer;)J

    move-result-wide v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_e
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method private static loadDirectByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    array-length v0, p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, -0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x2000

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const/16 v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    new-array v1, v1, [B

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    :goto_1b
    return-object v0

    nop

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method private native nativeAddImage(JJLjava/lang/String;Ljava/nio/ByteBuffer;III)I
.end method

.method private native nativeAddImageEntry(JJJ)I
.end method

.method private native nativeAddImageWithPhysicalSize(JJLjava/lang/String;Ljava/nio/ByteBuffer;IIIF)I
.end method

.method private static native nativeCreate(J)J
.end method

.method private static native nativeDeserialize(JLjava/nio/ByteBuffer;)J
.end method

.method private native nativeGetNumImages(JJ)I
.end method

.method private native nativeReleaseDatabase(JJ)V
.end method

.method private native nativeSerialize(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeSetDetectedRegionAtTime(JJIJLjava/lang/Object;I)V
.end method


# virtual methods
.method public addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 11

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v4, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/ar/core/AugmentedImageDatabase;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v6, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v10}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeAddImage(JJLjava/lang/String;Ljava/nio/ByteBuffer;III)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

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

    :goto_e
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

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

    :goto_f
    invoke-static {p2}, Lcom/google/ar/core/AugmentedImageDatabase;->convertBitmapToGrayscaleDirectBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

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

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public addImage(Ljava/lang/String;Landroid/graphics/Bitmap;F)I
    .locals 12

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget-wide v4, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    invoke-static {p2}, Lcom/google/ar/core/AugmentedImageDatabase;->convertBitmapToGrayscaleDirectBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-direct/range {v1 .. v11}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeAddImageWithPhysicalSize(JJLjava/lang/String;Ljava/nio/ByteBuffer;IIIF)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    move-object v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v11, p3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/ar/core/AugmentedImageDatabase;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    nop

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

    :goto_12
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    return p0

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public addImageEntry(Lcom/google/ar/core/AugmentedImageDatabaseEntry;)I
    .locals 8

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iget-wide v6, p1, Lcom/google/ar/core/AugmentedImageDatabaseEntry;->nativeHandle:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/ar/core/AugmentedImageDatabase;->session:Lcom/google/ar/core/Session;

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

    :goto_4
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeAddImageEntry(JJJ)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v4, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method protected finalize()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x0

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

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmp-long v2, v0, v2

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

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeReleaseDatabase(JJ)V

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeSymbolTableHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x13

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_10
    const v0, 0x9

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public getNumImages()I
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x18

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

    :goto_2
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/ar/core/AugmentedImageDatabase;->session:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeGetNumImages(JJ)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public serialize(Ljava/io/OutputStream;)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

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

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/ar/core/AugmentedImageDatabase;->session:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeSerialize(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

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

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const v0, 0x18

    nop

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

    :goto_c
    invoke-interface {p1, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto/32 :goto_4

    nop

    nop

    :goto_d
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public setDetectedRegionAtTime(IJ[FLcom/google/ar/core/Coordinates2d;)V
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    move-object v8, p4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lcom/google/ar/core/AugmentedImageDatabase;->session:Lcom/google/ar/core/Session;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    move-wide v6, p2

    nop

    goto/32 :goto_1

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

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v3, p0, Lcom/google/ar/core/AugmentedImageDatabase;->nativeHandle:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget v9, p5, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x18

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

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

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_11
    move v5, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v0 .. v9}, Lcom/google/ar/core/AugmentedImageDatabase;->nativeSetDetectedRegionAtTime(JJIJLjava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop
.end method
