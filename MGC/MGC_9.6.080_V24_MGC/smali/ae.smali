.class public final Lae;
.super Landroid/media/Image$Plane;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/ar/core/ArImage;

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/ar/core/ArImage;JI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lae;->a:Lcom/google/ar/core/ArImage;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-wide p2, p0, Lae;->b:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Lae;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RpHwDaqZTfnONJvV(Lcom/google/ar/core/ArImage;JJI)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetPixelStride(JJI)I

    move-result v0

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

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static TyoFlJEjrixQZAhe(Lcom/google/ar/core/ArImage;JJI)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetRowStride(JJI)I

    move-result v0

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
    return v0

    nop

    nop

    nop
.end method

.method public static YSFxBeypKRscFIug(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static aMtjmyrnTkdrggUf(Lcom/google/ar/core/ArImage;JJI)Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetBuffer(JJI)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 6

    goto/32 :goto_e

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-static {p0}, Lae;->YSFxBeypKRscFIug(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v0 .. v5}, Lae;->aMtjmyrnTkdrggUf(Lcom/google/ar/core/ArImage;JJI)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget-object v1, v0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iget-wide v3, p0, Lae;->b:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lae;->a:Lcom/google/ar/core/ArImage;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v5, p0, Lae;->c:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop
.end method

.method public final getPixelStride()I
    .locals 6

    goto/32 :goto_11

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const-string v0, "Unknown error in ArImage.Plane.getPixelStride()."

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v3, p0, Lae;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

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

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, v0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

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

    :goto_11
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    iget v5, p0, Lae;->c:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    return p0

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    invoke-static/range {v0 .. v5}, Lae;->RpHwDaqZTfnONJvV(Lcom/google/ar/core/ArImage;JJI)I

    move-result p0

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

    nop

    :goto_16
    iget-object v0, p0, Lae;->a:Lcom/google/ar/core/ArImage;

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
.end method

.method public final getRowStride()I
    .locals 6

    goto/32 :goto_12

    nop

    nop

    :goto_0
    const-string v0, "Unknown error in ArImage.Plane.getRowStride()."

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_16

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object v1, v0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v3, p0, Lae;->b:J

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-static/range {v0 .. v5}, Lae;->TyoFlJEjrixQZAhe(Lcom/google/ar/core/ArImage;JJI)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v5, p0, Lae;->c:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lae;->a:Lcom/google/ar/core/ArImage;

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

    :goto_14
    iget-wide v1, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
