.class public final Lfpj;
.super Lfph;
.source "PG"


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    sget-object v1, Lfpj;->a:Ljava/nio/charset/Charset;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lfpj;->b:[B

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    sget-object v0, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->uxDNBqHaXiS:Ljava/lang/String;

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

    :goto_a
    rem-int v0, v0, v1

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

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

    :goto_e
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lfph;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lfpj;->b:[B

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    goto/32 :goto_1

    nop

    nop
.end method

.method protected final c(Lfmf;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v2, v0

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

    :goto_2
    move v6, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2, p1}, Lfqm;->f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    sub-float/2addr v2, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    invoke-static {p2}, Lfqm;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

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

    :goto_b
    int-to-float v0, v0

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    :goto_d
    invoke-interface {p1, p3, p4, v0}, Lfmf;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    sget-object p0, Lfqm;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xb

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

    nop

    :goto_11
    move-object p2, p1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

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

    nop

    :goto_15
    mul-float/2addr v3, v5

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    if-eq p0, p3, :cond_1

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-gt v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_18
    int-to-float v0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    move v4, v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    mul-float/2addr v2, v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v0, v6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne p0, p4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    :goto_1f
    goto/32 :goto_2e

    nop

    nop

    :goto_20
    mul-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    sub-float/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

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

    :goto_23
    float-to-int v1, v4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_24
    goto :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_3e

    nop

    nop

    :goto_26
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_27
    invoke-static {p2, p1, p0}, Lfqm;->d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_29
    div-float v0, v3, v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 v5, 0x3f000000    # 0.5f

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

    :goto_2b
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2c
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2d
    int-to-float v3, p3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    mul-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_30
    mul-int/2addr v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_31
    int-to-float v1, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-float/2addr v0, v5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move v0, v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_34
    float-to-int v0, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-float/2addr v4, v5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_37
    int-to-float v2, p4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_39

    nop

    :goto_3b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    :goto_40
    mul-int/2addr v0, p4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    instance-of p0, p1, Lfpj;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p0, -0x23bf86f2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method
