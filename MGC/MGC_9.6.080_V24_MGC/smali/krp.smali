.class public final Lkrp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llqs;


# instance fields
.field final synthetic a:Lsuu;

.field final synthetic b:Lpcg;

.field final synthetic c:Lsuu;


# direct methods
.method public constructor <init>(Lsuu;Lpcg;Lsuu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkrp;->b:Lpcg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkrp;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p3, p0, Lkrp;->c:Lsuu;

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
.method public final a(Llrf;Llxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-string p1, "No URI expected for thumbnail generation"

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
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final b(Llrf;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final c(Llrf;Llto;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "No compressed result expected for thumbnail generation"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw p0

    nop

    nop
.end method

.method public final d(Llrf;Lfdo;)V
    .locals 10

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v3}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v5, 0x0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xf

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p2, [I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-eq p1, p2, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_9
    iget-object v1, p1, Llrf;->b:Llre;

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

    :goto_a
    const/4 v4, 0x0

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

    :goto_b
    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_23

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    iget-object p0, p0, Lkrp;->a:Lsuu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v9, 0x1

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

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_19
    iget v1, v1, Llre;->a:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v2, v1, Llre;->b:I

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

    :goto_1b
    iget p1, p1, Llrf;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lkrp;->c:Lsuu;

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

    :goto_1d
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    iget p1, p1, Lpcg;->e:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    iget-object p2, p2, Lfdo;->a:Ljava/lang/Object;

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

    :goto_21
    iget-object p1, p0, Lkrp;->b:Lpcg;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p2, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    if-eq p1, p2, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_27
    new-instance v8, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_28
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method
