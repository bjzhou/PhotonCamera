.class public final Lfpl;
.super Lfph;
.source "PG"


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    sput-object v0, Lfpl;->b:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lfpl;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Lfph;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    sget-object p0, Lfpl;->b:[B

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
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final c(Lfmf;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

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

    nop

    :goto_1
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

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

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float p4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    sub-float v2, p3, p4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    div-float v1, p3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Lfqm;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p2, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

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

    :goto_12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Lfqm;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p3, p3, p3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget-object p3, Lfqm;->b:Landroid/graphics/Paint;

    nop

    nop

    invoke-virtual {v0, p4, v1, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {v0}, Lfqm;->e(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v3, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_14
    mul-float/2addr p4, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    move-object p4, p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_19
    sget-object p3, Lfqm;->c:Ljava/util/concurrent/locks/Lock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    div-float v2, p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1, v0, v2, p4}, Lfmf;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_38

    nop

    :cond_1
    goto/32 :goto_37

    nop

    :goto_1e
    sub-float v0, p3, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-float/2addr p4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr v2, v4

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_23
    const v0, 0xc

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    invoke-direct {v3, v2, v0, p4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_31

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_29
    invoke-interface {p1, p0, p0, v0}, Lfmf;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    int-to-float v0, v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    div-float/2addr p3, v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    mul-float/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x11

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2f
    div-float/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p2}, Lfqm;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object p4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p4, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_35
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_36
    int-to-float p3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_37
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_39
    invoke-interface {p1, p4}, Lfmf;->d(Landroid/graphics/Bitmap;)V

    :goto_3a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    instance-of p0, p1, Lfpl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const p0, 0x41aadb8c

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
.end method
