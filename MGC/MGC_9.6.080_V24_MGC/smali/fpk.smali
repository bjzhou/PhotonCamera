.class public final Lfpk;
.super Lfph;
.source "PG"


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const-string v0, "com.bumptech.glide.load.resource.bitmap.CenterInside"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    sget-object v1, Lfpk;->a:Ljava/nio/charset/Charset;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lfpk;->b:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x10

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

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lfph;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

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
    sget-object p0, Lfpk;->b:[B

    nop

    goto/32 :goto_2

    nop

    nop

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

    nop

    nop

    nop
.end method

.method protected final c(Lfmf;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-le p0, p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2, p3, p4}, Lfqm;->c(Lfmf;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lfqm;->a:Landroid/graphics/Paint;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

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

    :goto_5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return-object p2

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-le p0, p4, :cond_1

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

    :cond_1
    goto/32 :goto_6

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
    instance-of p0, p1, Lfpk;

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

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    const p0, -0x27f31906

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
.end method
