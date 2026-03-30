.class public final Lfpa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field private final a:Lfqd;

.field private final b:I

.field private final c:I

.field private final d:Lfjc;

.field private final e:Lfpu;

.field private final f:Z

.field private final g:Lfjq;


# direct methods
.method public constructor <init>(IILfjp;)V
    .locals 1

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lfpx;->a:Lfjo;

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

    :goto_1
    iput-object v0, p0, Lfpa;->a:Lfqd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lfpu;

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    check-cast p1, Lfjq;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lfpa;->g:Lfjq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lfjc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-static {}, Lfqd;->a()Lfqd;

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

    nop

    :goto_9
    sget-object p1, Lfpx;->d:Lfjo;

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

    :goto_a
    iput-object p1, p0, Lfpa;->d:Lfjc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p2, 0x1

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lfpa;->e:Lfpu;

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

    :goto_e
    sget-object p1, Lfpx;->d:Lfjo;

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

    :goto_f
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Lfpx;->b:Lfjo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p1, Lfpu;->f:Lfjo;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    iput p1, p0, Lfpa;->b:I

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

    :goto_15
    iput p2, p0, Lfpa;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p3, p1}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p3, p1}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p3, p1}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean p2, p0, Lfpa;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p3, p1}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p3, p1}, Lfjp;->b(Lfjo;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 5

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p3, 0x3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-float/2addr v0, p3

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-eq v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lfpa;->c:I

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

    :goto_9
    iget v0, p0, Lfpa;->b:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v1, -0x80000000

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

    :goto_b
    mul-float/2addr v1, v0

    nop

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

    :goto_c
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_e
    iget v2, p0, Lfpa;->c:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq p0, p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p3, Lfjq;->b:Lfjq;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1, p3}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

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

    :goto_16
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2a

    nop

    nop

    :goto_1c
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v3, v4, v0, v2}, Lfpu;->a(IIII)F

    move-result v0

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

    nop

    :goto_1e
    if-nez p0, :cond_3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    :goto_20
    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    goto/32 :goto_3d

    nop

    nop

    :goto_21
    if-nez p3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    iget-object p3, p0, Lfpa;->a:Lfqd;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v3

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    sget-object p0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_17

    nop

    nop

    :goto_2b
    sget-object p0, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p3, v0, v1, v2, v3}, Lfqd;->b(IIZZ)Z

    move-result p3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2e
    iget v0, p0, Lfpa;->b:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2f
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    :goto_30
    invoke-direct {p3}, Lfoz;-><init>()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lfpa;->e:Lfpu;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lfpa;->g:Lfjq;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_34
    iget-boolean v2, p0, Lfpa;->f:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_35
    new-instance p3, Lfoz;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_36
    sget-object v0, Lfjc;->b:Lfjc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v3}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    :goto_39
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3b
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3c
    const v1, 0xd

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

    :goto_3d
    goto :goto_47

    nop

    :goto_3e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq p3, v0, :cond_7

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    :goto_40
    if-eq v0, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_28

    nop

    :goto_42
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    nop

    :goto_44
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p3, p0, Lfpa;->d:Lfjc;

    nop

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

    nop

    :goto_46
    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    :goto_47
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop
.end method
