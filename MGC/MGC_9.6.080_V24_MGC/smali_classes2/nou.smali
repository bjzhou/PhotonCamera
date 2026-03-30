.class public Lnou;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;

.field private static final b:Lryy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lpfo;->g:Lpfo;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lpfo;->b:Lpfo;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "nou"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    sget-object v2, Lpfo;->e:Lpfo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lnou;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-static {v0, v1, v2, v3}, Lryy;->I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    goto/32 :goto_f

    nop

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    sput-object v0, Lnou;->b:Lryy;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lpfo;->d:Lpfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static a([B)Landroid/graphics/Bitmap;
    .locals 9

    goto/32 :goto_a

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    nop

    nop

    nop

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    array-length v3, p0

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-static {p0, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_5

    nop

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    nop

    const/4 v5, -0x1

    nop

    if-eq v3, v5, :cond_5

    nop

    nop

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    nop

    nop

    if-ne v3, v5, :cond_0

    nop

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    :cond_0
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    nop

    int-to-double v5, v3

    nop

    nop

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    nop

    nop

    int-to-double v7, v3

    nop

    nop

    mul-double/2addr v5, v7

    nop

    nop

    const-wide/high16 v7, 0x40e9000000000000L    # 51200.0

    nop

    nop

    nop

    nop

    div-double/2addr v5, v7

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    nop

    nop

    double-to-int v3, v5

    nop

    nop

    nop

    nop

    const/16 v5, 0x8

    nop

    nop

    nop

    if-gt v3, v5, :cond_1

    nop

    nop

    nop

    nop

    :goto_3
    if-ge v2, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v2, v2

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    add-int/lit8 v3, v3, 0x7

    nop

    nop

    nop

    nop

    nop

    div-int/2addr v3, v5

    nop

    mul-int/lit8 v2, v3, 0x8

    nop

    nop

    nop

    nop

    :cond_2
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    nop

    nop

    nop

    nop

    nop

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    array-length v2, p0

    nop

    nop

    nop

    nop

    invoke-static {p0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    sget-object v2, Lpfo;->a:Lpfo;

    nop

    nop

    nop

    invoke-static {p0}, Lpfv;->a([B)Lcom/google/android/libraries/camera/exif/ExifInterface;

    move-result-object p0

    nop

    invoke-static {p0}, Lpfo;->c(Lcom/google/android/libraries/camera/exif/ExifInterface;)Lpfo;

    move-result-object p0

    nop

    if-eqz p0, :cond_6

    nop

    nop

    nop

    nop

    sget-object v2, Lpfo;->a:Lpfo;

    nop

    nop

    nop

    nop

    nop

    if-ne p0, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    nop

    :cond_3
    invoke-static {p0}, Lpfo;->a(Lpfo;)Lpcg;

    move-result-object v2

    nop

    iget v2, v2, Lpcg;->e:I

    nop

    nop

    sget-object v3, Lnou;->b:Lryy;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p0}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    invoke-static {v1, v2, p0}, Lnou;->b(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_10

    nop

    nop

    :goto_4
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    :goto_5
    return-object v0

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lnou;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const-string v2, "Got oom exception "

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    const v1, 0x1c

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
    return-object v1

    nop

    nop

    :cond_5
    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :cond_6
    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    :catch_0
    move-exception p0

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

    :goto_13
    const/16 v3, 0x1414

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3, v1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop
.end method

.method private static b(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_7
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x5a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_a
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_b
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    const-string p2, "Invalid degrees="

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    if-eq p1, v0, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5, p1, p2, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :goto_12
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    const/4 v2, 0x0

    nop

    move-object v0, p0

    nop

    nop

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    nop

    nop

    if-eq p0, p1, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2b

    nop

    nop

    :goto_13
    goto/16 :goto_34

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    :goto_15
    if-ne p1, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    add-int/lit16 p1, p1, 0x168

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1a
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1b
    div-float/2addr p2, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    goto :goto_26

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    :goto_26
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    :goto_28
    int-to-float p2, p2

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

    :goto_29
    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_2a
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2b
    move-object p0, p1

    nop

    :catch_0
    :cond_9
    :goto_2c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2f
    const/16 v0, 0xb4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v5, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_31
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v5, p2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_33
    goto :goto_2a

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p1, :cond_a

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x1f

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

    :goto_37
    goto/32 :goto_20

    nop

    nop

    :goto_38
    const/high16 p2, -0x40800000    # -1.0f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_39
    rem-int/lit16 p1, p1, 0x168

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v0, 0x10e

    nop

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

    :goto_3b
    const/4 p2, 0x1

    nop

    :goto_3c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v5, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
