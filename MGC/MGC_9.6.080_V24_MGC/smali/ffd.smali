.class public final Lffd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

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

    :goto_1
    new-instance v0, Landroid/graphics/PointF;

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

    :goto_2
    sput-object v0, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static a(FFF)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method static b(FF)I
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    float-to-int p0, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

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

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_5
    if-nez v1, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    mul-int/2addr p1, v0

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

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    div-int v0, p0, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ltz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_c
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    :goto_e
    sub-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    xor-int v2, p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v1, p0, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p1, Landroid/graphics/PointF;->x:F

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

    :goto_8
    add-float/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_4

    nop

    nop

    :goto_c
    iget p0, p0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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
.end method

.method public static d(Lfbv;ILjava/util/List;Lfbv;Lfaj;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p4}, Lfaj;->g()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
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

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p4}, Lfbv;->c(Lfbw;)Lfbv;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3, p0}, Lfbv;->b(Ljava/lang/String;)Lfbv;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0, p1}, Lfbv;->d(Ljava/lang/String;I)Z

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-interface {p4}, Lfaj;->g()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(I)I
    .locals 1

    goto/32 :goto_4

    nop

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
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0xff

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
