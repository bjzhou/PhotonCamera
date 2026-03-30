.class public final Lrqu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lrqu;->b:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lrqu;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput v0, p0, Lrqu;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(FFF)V
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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lrqu;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lrqu;->b:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lrqu;->a:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Lrqu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrqu;->e(Lrqu;)V

    goto/32 :goto_2

    nop

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

    nop
.end method

.method public static a(Lrqu;Lrqu;)F
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p1, Lrqu;->a:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    iget p1, p1, Lrqu;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    iget v1, p0, Lrqu;->b:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lrqu;->c:F

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

    nop

    :goto_8
    iget v2, p1, Lrqu;->b:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    add-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    add-float/2addr v0, v1

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_d
    iget v0, p0, Lrqu;->a:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-float/2addr p0, p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static b()Lrqu;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lrqu;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lrqu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lrqu;->f(F)V

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()Lrqu;
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v2, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1
    invoke-virtual {v0, v2}, Lrqu;->f(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const v1, 0xb

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    div-double/2addr v3, v1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-virtual {v0, p0}, Lrqu;->e(Lrqu;)V

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-static {v1, v2}, Lqrf;->l(FF)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lrqu;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-static {p0, p0}, Lrqu;->a(Lrqu;Lrqu;)F

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Lrqu;->d(F)Lrqu;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_14
    float-to-double v1, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0}, Lrqu;-><init>(Lrqu;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    double-to-float v1, v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final d(F)Lrqu;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    :goto_4
    iget v1, p0, Lrqu;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Lrqu;->b:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lrqu;->c:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    mul-float/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    mul-float/2addr v1, p1

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

    :goto_b
    invoke-direct {v0, v1, v2, p0}, Lrqu;-><init>(FFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lrqu;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    mul-float/2addr v2, p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lrqu;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Lrqu;->b:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lrqu;->a:F

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
    iput p1, p0, Lrqu;->c:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lrqu;->b:F

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
    iget v0, p1, Lrqu;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iget p1, p1, Lrqu;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_6
    check-cast p1, Lrqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    const-string p1, "Parameter \"rhs\" was null."

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    and-int/2addr p0, v0

    nop

    goto/32 :goto_14

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    and-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    iget v1, p1, Lrqu;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const v0, 0x20

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lqrf;->l(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_10
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, p1}, Lqrf;->l(FF)Z

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p1, Lrqu;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Lrqu;->b:F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    instance-of v0, p1, Lrqu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Lrqu;->c:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Lrqu;->a:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    invoke-static {v1, v2}, Lqrf;->l(FF)Z

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    return p0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eq p0, p1, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_24
    iget v2, p1, Lrqu;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method public final f(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lrqu;->c:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lrqu;->b:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lrqu;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lrqu;->b:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lrqu;->a:F

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

    nop

    :goto_9
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

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

    nop

    :goto_b
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

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

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    iget p0, p0, Lrqu;->c:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-string v0, ", z="

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lrqu;->c:F

    nop

    goto/32 :goto_17

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

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Lrqu;->b:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const-string v3, "[x="

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_d
    const-string v0, ", y="

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    const-string p0, "]"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lrqu;->a:F

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

    nop

    :goto_16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
