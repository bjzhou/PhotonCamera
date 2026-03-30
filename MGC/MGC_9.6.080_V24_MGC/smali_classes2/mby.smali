.class final Lmby;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkiu;


# instance fields
.field final synthetic a:Lprw;

.field final synthetic b:Loiq;


# direct methods
.method public constructor <init>(Loiq;Lprw;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmby;->b:Loiq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmby;->a:Lprw;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/RuntimeException;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lmby;->a:Lprw;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget-object p0, p0, Lmby;->b:Loiq;

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

    :goto_5
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    const-string v1, "HDR processing failed:"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lmbz;->a:Lsdb;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p1}, Lmed;->a(Landroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    const/16 v2, 0x107d

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop
.end method

.method public final b(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 10

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    iget-object p1, p0, Lmby;->a:Lprw;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v8, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Loiq;->b:Ljava/lang/Object;

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

    :goto_d
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_f
    iget-object p0, p0, Lmby;->b:Loiq;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    int-to-float p2, p2

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

    :goto_17
    goto :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    invoke-static {p2}, Lsgj;->x(Lsxp;)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Lcom/google/googlex/gcam/ShotMetadata;->e()Lsxp;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0, v0}, Lmed;->a(Landroid/graphics/Bitmap;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x4

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

    :goto_1f
    invoke-virtual {v8, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v9, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

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

    :goto_24
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lmbz;->a:Lsdb;

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

    :goto_2
    invoke-interface {p0, p1}, Lmed;->a(Landroid/graphics/Bitmap;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_d

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object p1, p0, Lmby;->a:Lprw;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Loiq;->b:Ljava/lang/Object;

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

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    const-string p2, "Got unexpected YUV buffer."

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

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const/16 p2, 0x1082

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lmby;->b:Loiq;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final d(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_3
    invoke-interface {p0, p1}, Lmed;->a(Landroid/graphics/Bitmap;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "Got unexpected YUV HardwareBuffer."

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const/4 p1, 0x0

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

    :goto_8
    iget-object p0, p0, Lmby;->b:Loiq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
