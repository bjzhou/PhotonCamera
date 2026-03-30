.class public final Lfpx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfjo;

.field public static final b:Lfjo;

.field public static final c:Lfjo;

.field public static final d:Lfjo;

.field public static final e:Lfpw;

.field private static final h:Ljava/util/Queue;


# instance fields
.field public final f:Ljava/util/List;

.field public final g:Lfmm;

.field private final i:Lfmf;

.field private final j:Landroid/util/DisplayMetrics;

.field private final k:Lfqd;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    :goto_0
    new-instance v1, Lfpv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1}, Lfpv;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, "image/x-ico"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    const v1, 0x13

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

    nop

    :goto_4
    sput-object v1, Lfpx;->h:Ljava/util/Queue;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    sget-object v1, Lfjo;->a:Lfjn;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-direct {v0, v2, v3, v1}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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
    new-instance v1, Lfjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    sget-object v3, Lfjo;->a:Lfjn;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v4, v1, v3}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v2, Lfpx;->c:Lfjo;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lfjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v2, Lfjo;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v2, Lfjo;->a:Lfjn;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    sput-object v0, Lfpx;->b:Lfjo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Lfjc;->c:Lfjc;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_26

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    new-instance v2, Lfjo;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_20
    sput-object v1, Lfpx;->a:Lfjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_21
    sput-object v1, Lfpx;->e:Lfpw;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_22
    const-string v3, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_24
    const-string v4, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    const-string v2, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "image/vnd.wap.wbmp"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v1, v3, v0, v2}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_20

    nop

    nop

    :goto_2d
    const-string v4, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2e
    sget-object v0, Lfpu;->a:Lfpu;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_30
    sget-object v3, Lfjo;->a:Lfjn;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sput-object v2, Lfpx;->d:Lfjo;

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

    :goto_33
    const/4 v3, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_34
    invoke-direct {v2, v4, v1, v3}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lfmf;Lfmm;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lfqd;->a()Lfqd;

    move-result-object v0

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

    nop

    nop

    :goto_1
    invoke-static {p4}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lfpx;->g:Lfmm;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lfpx;->k:Lfqd;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iput-object p2, p0, Lfpx;->j:Landroid/util/DisplayMetrics;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p3}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lfpx;->i:Lfmf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lfpx;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private static b(D)I
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    cmpg-double v2, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_a

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
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v2, :cond_1

    nop

    nop

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

    :goto_9
    div-double p0, v0, p0

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    mul-double/2addr p0, v0

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

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    long-to-int p0, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method private static c(D)I
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

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

    :goto_2
    double-to-int p0, p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

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

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    add-double/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static d(Lfqf;Landroid/graphics/BitmapFactory$Options;Lfpw;Lfmf;)Landroid/graphics/Bitmap;
    .locals 14

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_17

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_23

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const-string v3, "Exception decoding bitmap, outWidth: "

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_6
    sget-object v1, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface/range {p2 .. p2}, Lfpw;->b()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    move-object v1, p1

    nop

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

    :goto_9
    throw v0

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v7, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Lfqf;->d()V

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-interface {p0, p1}, Lfqf;->b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v8, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    if-nez v9, :cond_1

    nop

    nop

    nop

    nop

    move-object v2, v10

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    :cond_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v11

    nop

    nop

    new-instance v12, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    nop

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    new-instance v13, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outHeight: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", outMimeType: "

    nop

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", inBitmap: "

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-direct {v0, v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    nop

    :catch_1
    :try_start_2
    throw v0

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    const-string v2, "["

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    const-string v4, " ("

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v1, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

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

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    :goto_20
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_3
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    move-object/from16 v3, p3

    nop

    invoke-interface {v3, v2}, Lfmf;->d(Landroid/graphics/Bitmap;)V

    iput-object v10, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {p0 .. p3}, Lfpx;->d(Lfqf;Landroid/graphics/BitmapFactory$Options;Lfpw;Lfmf;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_23
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static declared-synchronized e()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    return-object v1

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v1

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    :try_start_0
    sget-object v1, Lfpx;->h:Ljava/util/Queue;

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    nop

    monitor-exit v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit v0

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

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1}, Lfpx;->g(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-class v0, Lfpx;

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

    :goto_c
    const v1, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

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
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    :try_start_3
    monitor-exit v1

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method private static f(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lfpx;->g(Landroid/graphics/BitmapFactory$Options;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    sget-object v0, Lfpx;->h:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private static g(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_b
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

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

    :goto_c
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    nop

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

    nop

    :goto_11
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

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

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

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
.end method

.method private static h(I)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    const/16 v0, 0x5a

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const/16 v0, 0x10e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-ne p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_a
    const/4 p0, 0x0

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
.end method

.method private static i(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

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

    :goto_2
    const/4 p0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ne v0, p0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private static j(Lfqf;Landroid/graphics/BitmapFactory$Options;Lfpw;Lfmf;)[I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

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

    :goto_3
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-static {p0, p1, p2, p3}, Lfpx;->d(Lfqf;Landroid/graphics/BitmapFactory$Options;Lfpw;Lfmf;)Landroid/graphics/Bitmap;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    filled-new-array {p0, p1}, [I

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfqf;IILfjp;Lfpw;)Lflx;
    .locals 25

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v8}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2
    invoke-static {v7}, Lfpx;->f(Landroid/graphics/BitmapFactory$Options;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    move v5, v12

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

    :goto_4
    move-object/from16 v17, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lfpx;->e()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    move v5, v12

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_7
    move v2, v15

    nop

    nop

    nop

    nop

    :goto_8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    iget-object v12, v1, Lfpx;->i:Lfmf;

    nop

    nop

    nop

    invoke-static {v0, v7, v3, v12}, Lfpx;->j(Lfqf;Landroid/graphics/BitmapFactory$Options;Lfpw;Lfmf;)[I

    move-result-object v12

    nop

    nop

    aget v13, v12, v15

    nop

    nop

    nop

    aget v12, v12, v14

    nop

    nop

    nop

    iget-object v15, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const/4 v15, -0x1

    nop

    if-eq v13, v15, :cond_0

    nop

    nop

    nop

    if-ne v12, v15, :cond_1

    nop

    nop

    move v12, v15

    nop

    nop

    nop

    :cond_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-interface/range {p1 .. p1}, Lfqf;->a()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    sget-object v16, Lfqm;->a:Landroid/graphics/Paint;

    nop

    packed-switch v15, :pswitch_data_0

    const/16 v16, 0x0

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    :pswitch_0
    const/16 v16, 0x10e

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :pswitch_1
    const/16 v16, 0x5a

    nop

    nop

    goto :goto_9

    nop

    nop

    :pswitch_2
    const/16 v16, 0xb4

    nop

    nop

    :goto_9
    invoke-static {v15}, Lfqm;->g(I)Z

    move-result v14

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const-class v8, [B

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v2, Lfpx;->g:Lfmm;

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

    :goto_c
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_d
    const v0, 0x5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move/from16 v21, v14

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_43

    nop

    nop

    :goto_11
    const/high16 v7, 0x10000

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v12, v9

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_13
    move-object v2, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_15
    move/from16 v15, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v6}, Lfmm;->c(Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object/from16 v20, v8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v11, Lfpx;->c:Lfjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_67

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_1a
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v2, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v2, Lfpx;->g:Lfmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v10, Lfpu;->f:Lfjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_8

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v6}, Lfmm;->c(Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v9}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v10}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v12, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_24
    iput-object v6, v7, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_25
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v12}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-gtz v13, :cond_3

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v8, Lfjc;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_29
    throw v0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :goto_2a
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    :goto_2c
    check-cast v6, [B

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_6f

    nop

    nop

    nop

    :goto_2e
    :try_start_1
    invoke-static/range {v16 .. v16}, Lfpx;->h(I)Z

    move-result v8

    nop

    nop

    nop

    move/from16 v16, v2

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-eq v2, v8, :cond_5

    nop

    nop

    move/from16 v21, v14

    nop

    nop

    nop

    move v14, v12

    nop

    nop

    nop

    goto :goto_2f

    nop

    :cond_5
    move/from16 v21, v14

    nop

    nop

    move v14, v13

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eq v2, v8, :cond_6

    nop

    move v2, v13

    nop

    goto :goto_30

    nop

    :cond_6
    move v2, v12

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v10, v2, v14, v15, v9}, Lfpu;->a(IIII)F

    move-result v8

    nop

    nop

    nop

    nop

    nop

    const/16 v22, 0x0

    nop

    cmpg-float v22, v8, v22

    nop

    nop

    nop

    if-lez v22, :cond_11

    nop

    invoke-virtual {v10, v2, v14, v15, v9}, Lfpu;->b(IIII)I

    move-result v4

    nop

    int-to-float v5, v2

    nop

    nop

    nop

    nop

    nop

    mul-float v1, v8, v5

    nop

    nop

    nop

    nop

    nop

    move/from16 v23, v12

    nop

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    nop

    nop

    float-to-double v12, v1

    nop

    nop

    nop

    invoke-static {v12, v13}, Lfpx;->c(D)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    int-to-float v12, v14

    nop

    nop

    nop

    nop

    nop

    mul-float v13, v8, v12

    nop

    nop

    nop

    nop

    nop

    move/from16 p3, v9

    nop

    move-object/from16 v24, v10

    nop

    float-to-double v9, v13

    nop

    invoke-static {v9, v10}, Lfpx;->c(D)I

    move-result v9

    nop

    nop

    nop

    div-int v1, v2, v1

    nop

    nop

    div-int v9, v14, v9

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    if-ne v4, v10, :cond_7

    nop

    nop

    nop

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto :goto_31

    nop

    nop

    nop

    :cond_7
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    :goto_31
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-ne v4, v10, :cond_8

    nop

    nop

    int-to-float v4, v1

    nop

    nop

    nop

    nop

    const/high16 v9, 0x3f800000    # 1.0f

    nop

    div-float v8, v9, v8

    nop

    nop

    nop

    nop

    nop

    cmpg-float v4, v4, v8

    nop

    nop

    nop

    nop

    nop

    if-gez v4, :cond_8

    nop

    nop

    nop

    nop

    add-int/2addr v1, v1

    nop

    nop

    :cond_8
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    nop

    nop

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    if-ne v6, v4, :cond_9

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    nop

    div-float/2addr v5, v4

    nop

    nop

    nop

    float-to-double v5, v5

    nop

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    double-to-int v5, v5

    nop

    nop

    div-float/2addr v12, v4

    nop

    nop

    nop

    nop

    nop

    float-to-double v8, v12

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    double-to-int v4, v8

    nop

    nop

    nop

    div-int/2addr v1, v2

    nop

    if-lez v1, :cond_f

    nop

    nop

    nop

    div-int/2addr v5, v1

    nop

    nop

    nop

    nop

    div-int/2addr v4, v1

    nop

    nop

    nop

    goto/16 :goto_34

    nop

    nop

    :cond_9
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    if-eq v6, v4, :cond_e

    nop

    nop

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    nop

    if-ne v6, v4, :cond_a

    nop

    nop

    nop

    goto :goto_33

    nop

    nop

    :cond_a
    invoke-virtual {v6}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_b

    nop

    nop

    nop

    int-to-float v1, v1

    nop

    nop

    div-float/2addr v5, v1

    nop

    nop

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    nop

    nop

    nop

    div-float/2addr v12, v1

    nop

    nop

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_34

    nop

    nop

    nop

    nop

    :cond_b
    rem-int v4, v2, v1

    nop

    nop

    if-nez v4, :cond_d

    nop

    nop

    nop

    nop

    rem-int v4, v14, v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    nop

    goto :goto_32

    nop

    nop

    :cond_c
    div-int v5, v2, v1

    nop

    nop

    div-int v4, v14, v1

    nop

    nop

    nop

    goto :goto_34

    nop

    :cond_d
    :goto_32
    invoke-static {v0, v7, v3, v11}, Lfpx;->j(Lfqf;Landroid/graphics/BitmapFactory$Options;Lfpw;Lfmf;)[I

    move-result-object v1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    aget v5, v1, v2

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    aget v4, v1, v2

    nop

    goto :goto_34

    nop

    nop

    :cond_e
    :goto_33
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    div-float/2addr v5, v1

    nop

    nop

    float-to-double v4, v5

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    nop

    nop

    nop

    double-to-int v5, v4

    nop

    nop

    nop

    nop

    div-float/2addr v12, v1

    nop

    nop

    nop

    float-to-double v1, v12

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    nop

    nop

    nop

    double-to-int v4, v1

    nop

    nop

    nop

    :cond_f
    :goto_34
    move/from16 v12, p3

    nop

    nop

    nop

    move-object/from16 v10, v24

    nop

    nop

    nop

    invoke-virtual {v10, v5, v4, v15, v12}, Lfpu;->a(IIII)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    float-to-double v1, v1

    nop

    nop

    nop

    invoke-static {v1, v2}, Lfpx;->b(D)I

    move-result v4

    nop

    nop

    nop

    int-to-double v5, v4

    nop

    nop

    nop

    mul-double/2addr v5, v1

    nop

    nop

    invoke-static {v5, v6}, Lfpx;->c(D)I

    move-result v5

    nop

    nop

    nop

    int-to-float v6, v5

    nop

    int-to-float v4, v4

    nop

    nop

    div-float/2addr v6, v4

    nop

    nop

    nop

    nop

    nop

    float-to-double v8, v6

    nop

    nop

    nop

    div-double v8, v1, v8

    nop

    nop

    nop

    nop

    nop

    int-to-double v4, v5

    nop

    nop

    nop

    nop

    nop

    mul-double/2addr v8, v4

    nop

    nop

    nop

    nop

    invoke-static {v8, v9}, Lfpx;->c(D)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    nop

    invoke-static {v1, v2}, Lfpx;->b(D)I

    move-result v1

    nop

    nop

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lfpx;->i(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_10

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    nop

    nop

    :goto_35
    move-object/from16 v2, p0

    nop

    nop

    nop

    move/from16 v1, v22

    nop

    nop

    nop

    nop

    move/from16 v5, v23

    nop

    goto/16 :goto_6f

    nop

    nop

    :cond_10
    const/4 v1, 0x0

    nop

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    nop

    nop

    nop

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    nop

    nop

    nop

    goto :goto_35

    nop

    nop

    :cond_11
    move/from16 v23, v12

    nop

    nop

    move/from16 v22, v13

    nop

    nop

    move v12, v9

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " from: "

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source: ["

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v23

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], target: ["

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x8

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

    :goto_38
    sget-object v8, Lfpx;->a:Lfjo;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v6, v7, v8}, Lfmm;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v3, p5

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v14, 0x1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_3c
    check-cast v11, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v4, "x"

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v1, v13

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2, v12}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-object v0

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2a

    nop

    :goto_42
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_43
    move/from16 v16, v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move/from16 p4, v15

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v6, v1, Lfpx;->g:Lfmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_46
    move v2, v14

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_47
    check-cast v10, Lfpu;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4a
    move v1, v13

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move/from16 v16, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4c
    check-cast v9, Lfjq;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4d
    move-object v2, v1

    nop

    :goto_4e
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4f
    const/high16 v6, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v7}, Lfpx;->f(Landroid/graphics/BitmapFactory$Options;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-string v5, "Cannot scale with factor: "

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_52
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_53
    move-object/from16 v6, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_54
    move/from16 v21, v14

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_55
    invoke-virtual {v2, v11}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_56
    if-nez v4, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_12
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto :goto_58

    nop

    nop

    :catch_0
    :goto_57
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    nop

    nop

    :goto_58
    iput-object v4, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    iget-object v4, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    nop

    if-ne v4, v6, :cond_13

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    nop

    nop

    nop

    goto :goto_5a

    nop

    :goto_59
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    iput-object v4, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    :cond_13
    :goto_5a
    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    nop

    nop

    nop

    nop

    if-ltz v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    if-ltz v5, :cond_14

    nop

    nop

    nop

    nop

    if-eqz v19, :cond_14

    nop

    nop

    nop

    move v9, v12

    nop

    goto :goto_5c

    nop

    nop

    nop

    nop

    :cond_14
    invoke-static {v7}, Lfpx;->i(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_15

    nop

    nop

    nop

    nop

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    nop

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    nop

    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    nop

    nop

    nop

    nop

    int-to-float v6, v6

    nop

    nop

    div-float/2addr v4, v6

    nop

    nop

    goto :goto_5b

    nop

    nop

    :cond_15
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    nop

    int-to-float v1, v1

    nop

    int-to-float v6, v6

    nop

    div-float/2addr v1, v6

    nop

    float-to-double v8, v1

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    double-to-int v1, v8

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    div-float/2addr v5, v6

    nop

    float-to-double v5, v5

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    nop

    nop

    double-to-int v5, v5

    nop

    nop

    nop

    int-to-float v1, v1

    nop

    mul-float/2addr v1, v4

    nop

    nop

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v15

    nop

    nop

    nop

    int-to-float v1, v5

    nop

    nop

    nop

    nop

    mul-float/2addr v1, v4

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-lez v15, :cond_18

    nop

    nop

    nop

    nop

    nop

    if-lez v9, :cond_18

    nop

    nop

    nop

    nop

    iget-object v1, v2, Lfpx;->i:Lfmf;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    nop

    if-ne v4, v5, :cond_16

    nop

    goto :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_16
    iget-object v4, v7, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_17

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    nop

    :cond_17
    invoke-interface {v1, v15, v9, v4}, Lfmf;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    :cond_18
    :goto_5d
    if-eqz v18, :cond_1a

    nop

    sget-object v1, Lfjq;->b:Lfjq;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, v18

    nop

    nop

    if-ne v9, v1, :cond_19

    nop

    nop

    nop

    iget-object v1, v7, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    nop

    if-eqz v1, :cond_19

    nop

    nop

    nop

    nop

    iget-object v1, v7, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_19

    nop

    nop

    nop

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    nop

    nop

    nop

    nop

    nop

    goto :goto_5e

    nop

    :cond_19
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    nop

    nop

    :goto_5e
    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    nop

    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    iget-object v1, v2, Lfpx;->i:Lfmf;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v7, v3, v1}, Lfpx;->d(Lfqf;Landroid/graphics/BitmapFactory$Options;Lfpw;Lfmf;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, v2, Lfpx;->i:Lfmf;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1, v0}, Lfpw;->a(Lfmf;Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_1c

    nop

    nop

    nop

    nop

    iget-object v1, v2, Lfpx;->j:Landroid/util/DisplayMetrics;

    nop

    nop

    nop

    nop

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    nop

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-static/range {p4 .. p4}, Lfqm;->g(I)Z

    move-result v1

    nop

    if-nez v1, :cond_1b

    nop

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_60

    nop

    nop

    nop

    :cond_1b
    new-instance v13, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x3d4c0000    # -90.0f

    nop

    nop

    const/high16 v3, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    const/high16 v4, 0x43340000    # 180.0f

    nop

    nop

    nop

    nop

    nop

    const/high16 v5, -0x40800000    # -1.0f

    nop

    packed-switch p4, :pswitch_data_1

    goto :goto_5f

    nop

    nop

    nop

    nop

    :pswitch_3
    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5f

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    invoke-virtual {v13, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    invoke-virtual {v13, v5, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5f

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    invoke-virtual {v13, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5f

    nop

    :pswitch_6
    invoke-virtual {v13, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    invoke-virtual {v13, v5, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5f

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v13, v5, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_5f

    nop

    nop

    :pswitch_8
    invoke-virtual {v13, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_5f

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v5, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_5f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    nop

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    :goto_60
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_1d

    nop

    iget-object v3, v2, Lfpx;->i:Lfmf;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lfmf;->d(Landroid/graphics/Bitmap;)V

    goto :goto_61

    nop

    nop

    nop

    nop

    :cond_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    :goto_61
    iget-object v0, v2, Lfpx;->i:Lfmf;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, Lfqg;->g(Landroid/graphics/Bitmap;Lfmf;)Lfqg;

    move-result-object v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_62
    move-object/from16 v8, v20

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-nez v13, :cond_1e

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget-object v9, Lfpx;->b:Lfjo;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_65
    if-ne v8, v4, :cond_1f

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_1f
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lfqf;->c()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v4

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-eq v15, v6, :cond_20

    nop

    goto/32 :goto_68

    nop

    :cond_20
    :try_start_4
    invoke-static/range {v16 .. v16}, Lfpx;->h(I)Z

    move-result v15

    nop

    nop

    nop

    nop

    if-eqz v15, :cond_21

    nop

    nop

    move-object/from16 v18, v9

    nop

    nop

    move v15, v12

    nop

    nop

    nop

    nop

    nop

    goto :goto_69

    nop

    nop

    :cond_21
    move-object/from16 v18, v9

    nop

    nop

    nop

    nop

    nop

    move v15, v13

    nop

    nop

    nop

    goto :goto_69

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move-object/from16 v6, v17

    nop

    nop

    nop

    goto/16 :goto_4e

    nop

    nop

    :goto_68
    move-object/from16 v18, v9

    nop

    :goto_69
    move/from16 v9, p3

    nop

    nop

    nop

    nop

    nop

    if-ne v9, v6, :cond_23

    nop

    invoke-static/range {v16 .. v16}, Lfpx;->h(I)Z

    move-result v6

    nop

    if-eqz v6, :cond_22

    nop

    nop

    nop

    nop

    nop

    move v9, v13

    nop

    nop

    nop

    nop

    nop

    goto :goto_6a

    nop

    nop

    :cond_22
    move v9, v12

    nop

    nop

    nop

    :cond_23
    :goto_6a
    invoke-interface/range {p1 .. p1}, Lfqf;->c()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v6

    nop

    nop

    nop

    nop

    move/from16 v19, v11

    nop

    nop

    iget-object v11, v1, Lfpx;->i:Lfmf;

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6b
    move-object/from16 v2, p4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_42

    nop

    :goto_6d
    if-lez v12, :cond_24

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-object/from16 v2, p0

    nop

    nop

    nop

    nop

    :goto_6f
    :try_start_5
    iget-object v4, v2, Lfpx;->k:Lfqd;

    nop

    nop

    nop

    nop

    move/from16 v8, v16

    nop

    nop

    nop

    nop

    nop

    move/from16 v6, v21

    nop

    nop

    nop

    invoke-virtual {v4, v15, v12, v8, v6}, Lfqd;->b(IIZZ)Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_25

    nop

    nop

    nop

    nop

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    nop

    iput-object v4, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    nop

    nop

    nop

    nop

    goto/16 :goto_5a

    nop

    nop

    :cond_25
    sget-object v4, Lfjc;->a:Lfjc;

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v12, Lfpx;->d:Lfjo;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop
.end method
