.class public final Lfbs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:F

.field public d:I

.field public e:F

.field public f:F

.field public g:I

.field public h:I

.field public i:F

.field public j:Z

.field public k:Landroid/graphics/PointF;

.field public l:Landroid/graphics/PointF;

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p13}, Lfbs;->a(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Lfbs;->m:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p11, p0, Lfbs;->j:Z

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

    :goto_2
    iput-object p2, p0, Lfbs;->b:Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    iput-object p12, p0, Lfbs;->k:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput p5, p0, Lfbs;->d:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p6, p0, Lfbs;->e:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p13, p0, Lfbs;->l:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    iput p9, p0, Lfbs;->h:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p7, p0, Lfbs;->f:F

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

    :goto_9
    iput p8, p0, Lfbs;->g:I

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

    :goto_a
    iput p10, p0, Lfbs;->i:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lfbs;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    iput p3, p0, Lfbs;->c:F

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

    :goto_d
    return-void

    nop

    nop
.end method

.method public final hashCode()I
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p0

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

    :goto_1
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lfbs;->m:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5
    int-to-long v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    xor-long/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_28

    nop

    :goto_9
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

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

    nop

    nop

    :goto_b
    add-float/2addr v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const/16 v3, 0x20

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lfbs;->b:Ljava/lang/String;

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

    nop

    :goto_10
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_11
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    iget v1, p0, Lfbs;->e:F

    nop

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

    :goto_13
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v0, v1

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

    nop

    :goto_17
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_19
    iget v1, p0, Lfbs;->d:I

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

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

    :goto_1b
    goto/32 :goto_9

    nop

    :goto_1c
    iget p0, p0, Lfbs;->g:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    :goto_1f
    add-int/2addr v0, v1

    nop

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

    :goto_20
    long-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    iget-object v0, p0, Lfbs;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    ushr-long v3, v1, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Lfbs;->c:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v2, v1, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method
