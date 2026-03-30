.class public final Lrgx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:I


# instance fields
.field public final a:Z

.field public final b:I

.field private final d:I

.field private final e:I

.field private final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    long-to-int v0, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput v0, Lrgx;->c:I

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

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

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
    return-void

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const v3, 0x7f040277

    nop

    nop

    nop

    nop

    goto/32 :goto_9

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
    goto/32 :goto_14

    nop

    nop

    :goto_4
    invoke-static {p1, v2, v1}, Lrgw;->g(Landroid/content/Context;II)I

    move-result v2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput v3, p0, Lrgx;->e:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v3, v1}, Lrgw;->g(Landroid/content/Context;II)I

    move-result v3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    iput v1, p0, Lrgx;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v4, v1}, Lrgw;->g(Landroid/content/Context;II)I

    move-result v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    const v0, 0x7f040279

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    iput v2, p0, Lrgx;->d:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Lrgx;->a:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    const v2, 0x7f040278

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    :goto_15
    invoke-static {p1, v0, v1}, Lqqy;->l(Landroid/content/Context;IZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_17
    const v0, 0x3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    const v4, 0x7f0401c5

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

    :goto_1a
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    iput p1, p0, Lrgx;->f:F

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
.method public final a(IF)I
    .locals 4

    goto/32 :goto_28

    nop

    nop

    :goto_0
    invoke-static {p1, v2, p2}, Lrgw;->h(IIF)I

    move-result p1

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

    :goto_1
    iget p0, p0, Lrgx;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    cmpg-float v2, p2, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Ldtz;->c(II)I

    move-result p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    :goto_5
    invoke-static {p1, v2}, Ldtz;->d(II)I

    move-result p1

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

    :goto_6
    float-to-double v2, p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p2}, Ldtz;->d(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const/high16 v0, 0x40000000    # 2.0f

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_9
    if-gtz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    sget p2, Lrgx;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-gtz v2, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v0, 0x42c80000    # 100.0f

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

    :goto_d
    div-float/2addr p2, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    div-float/2addr p2, v0

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

    :goto_11
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_12
    double-to-float p2, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    const/high16 v0, 0x40900000    # 4.5f

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_18
    iget v2, p0, Lrgx;->d:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    cmpg-float v2, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_23

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

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

    :goto_1d
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-float/2addr p2, v0

    nop

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

    :goto_1f
    invoke-static {p1, v0}, Ldtz;->d(II)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    :goto_21
    const/16 v2, 0xff

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_2d

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    return p0

    nop

    :goto_25
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_26
    mul-float/2addr p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x18

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

    :goto_29
    cmpl-float p2, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    if-lez v2, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    iget v0, p0, Lrgx;->f:F

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move p2, v1

    nop

    :goto_2d
    goto/32 :goto_2f

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

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

    :goto_2f
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final b(IF)I
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

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

    :goto_1
    invoke-static {p1, v0}, Ldtz;->d(II)I

    move-result v0

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

    :goto_2
    iget-boolean v0, p0, Lrgx;->a:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    const v0, 0xa

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
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2}, Lrgx;->a(IF)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0xff

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Lrgx;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
