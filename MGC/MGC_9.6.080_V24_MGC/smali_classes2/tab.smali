.class public Ltab;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Landroid/util/Size;

.field private final c:Lcom/google/ar/core/Pose;

.field private final d:Ltsi;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(FFF)Ltsl;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    add-float/2addr p1, p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0, p3}, Ltsm;-><init>(FFF)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    iget-object v2, v1, Ltsi;->b:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr p3, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

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

    :goto_7
    iget-object v2, p0, Ltab;->d:Ltsi;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-float/2addr v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_b
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ltsi;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const v0, 0xe

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

    :goto_e
    invoke-static {v2, v0, v1}, Ltsi;->b(Ltsi;Ltsi;Ltsi;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    add-float/2addr p3, p3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Ltab;->b:Landroid/util/Size;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    sub-float/2addr v0, p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    div-float/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    add-float/2addr v0, p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v1, v2}, Ltsi;-><init>([F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Ltcw;->e(Lcom/google/ar/core/Pose;)Ltsi;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v2, Ltsi;->a:[F

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

    :goto_1b
    invoke-virtual {v1, p0}, Ltsi;->a(Ltsm;)Ltsl;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Ltab;->b:Landroid/util/Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    iget-object v0, p0, Ltab;->c:Lcom/google/ar/core/Pose;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    new-instance p0, Ltsm;

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

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_5

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 p2, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v2, v0, v2, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    div-float/2addr p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    iget-object v0, p0, Ltab;->b:Landroid/util/Size;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_28
    add-float/2addr p1, p2

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

    :goto_29
    int-to-float v0, v0

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ltab;->a:Lsdb;

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

    :goto_1
    const-string v0, "tab"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
.end method

.method public constructor <init>(Landroid/util/Size;Lcom/google/ar/core/Pose;Ltsi;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltab;->b:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ltab;->c:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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

    :goto_4
    iput-object p3, p0, Ltab;->d:Ltsi;

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(FF)Lrqt;
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Ltab;->23ce148e54b083367f51e25c7971761em(FFF)Ltsl;

    move-result-object v0

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

    :goto_1
    invoke-static {p0, v0}, Ltsl;->g(Ltsl;Ltsl;)Ltsl;

    move-result-object p0

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

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    new-instance p2, Lrqu;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Ltsl;->c:F

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

    :goto_8
    iget v2, v0, Ltsl;->b:F

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    :goto_a
    iget v2, p0, Ltsl;->b:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, p2, v0}, Lrqt;-><init>(Lrqu;Lrqu;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, v0, Ltsl;->a:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Lrqt;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    new-instance v0, Lrqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    iget v0, v0, Ltsl;->c:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1, v2, p0}, Lrqu;-><init>(FFF)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p2, v1, v2, v0}, Lrqu;-><init>(FFF)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Ltsl;->a:F

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

    :goto_18
    invoke-virtual {p0}, Ltsl;->e()Ltsl;

    move-result-object p0

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

    :goto_19
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_1a
    invoke-direct {p0, p1, p2, v1}, Ltab;->23ce148e54b083367f51e25c7971761em(FFF)Ltsl;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    const v0, 0xe

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a([FF)Lcom/google/ar/core/Pose;
    .locals 8

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3}, Ltsl;->f(F)Ltsl;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget v3, p0, Ltsl;->b:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ltsl;->e()Ltsl;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const-string p1, "Camera direction and ray direction are orthogonal."

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, p1}, Ltsl;->a(Ltsl;Ltsl;)F

    move-result v1

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

    :goto_5
    div-float/2addr p2, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_7
    aput v6, v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v3, v4, p1}, Ltsl;-><init>(FFF)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v4, p1, Lrqu;->b:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ltsj;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    iget p0, p0, Ltsl;->c:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_47

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Ltcw;->h([F)Ltsl;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Ltab;->c:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_10
    if-ltz v3, :cond_0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Ltab;->c:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_12
    invoke-direct {p1}, Ltsj;-><init>()V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_13
    aget p1, p1, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, Ltsl;->d(Ltsl;Ltsl;)Ltsl;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    const/4 p0, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_16
    iget v3, p1, Ltsj;->b:F

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_17
    iget p1, p1, Lrqu;->c:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput p1, v7, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v1, p1}, Ltab;->da190e616797844b591057d0190e7728m(FF)Lrqt;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    aput v3, v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v3, p1, Lrqu;->a:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lrqt;->a()Lrqu;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Ltsl;->e()Ltsl;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1f
    aput v1, v5, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_20
    check-cast p0, Lscz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    iget p1, p1, Ltsj;->d:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_22
    const/16 p1, 0x15a4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

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

    nop

    nop

    :goto_24
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_26
    new-array v7, v7, [F

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_d

    nop

    nop

    :goto_28
    new-instance p2, Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_29
    float-to-double v3, v3

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

    :goto_2a
    invoke-virtual {p1, p2}, Ltsl;->f(F)Ltsl;

    move-result-object p1

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

    :goto_2b
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    nop

    :goto_2c
    const/4 v4, 0x3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Lcom/google/ar/core/Pose;->getZAxis()[F

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_31
    cmpg-double v3, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v7, 0x4

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_33
    new-array v5, v4, [F

    nop

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

    nop

    :goto_34
    new-instance v1, Ltsl;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-wide v5, 0x3ee4f8b588e368f1L    # 1.0E-5

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p2, v5, v7}, Lcom/google/ar/core/Pose;-><init>([F[F)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    aput v3, v7, v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aput p0, v7, v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0}, Ltcw;->g(Lcom/google/ar/core/Pose;)Ltsl;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3c
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p0, Ltab;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3e
    iget v6, p1, Ltsj;->c:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_41
    iget p0, p1, Ltsj;->a:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_42
    aget v1, p1, v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aput p0, v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Ltsj;->b()V

    goto/32 :goto_28

    nop

    nop

    :goto_45
    iget v1, p0, Ltsl;->a:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_46
    return-object p2

    nop

    :goto_47
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_48
    const/high16 v3, -0x40800000    # -1.0f

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
.end method

.method public final b(Ltsl;Landroid/graphics/RectF;)Ltsk;
    .locals 6

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v2, p1}, Lqau;-><init>(Lrqu;Lrqu;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v4, p1, Ltsl;->b:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ltsl;->b()F

    move-result p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lrqu;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    const-string p1, "Unable to get plane size."

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

    :goto_5
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    invoke-direct {p2, p0, p1}, Ltsk;-><init>(FF)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p1, 0x15a5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Ltab;->a:Lsdb;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iget v0, p2, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2f

    nop

    nop

    :goto_c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget v3, v0, v3

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    if-nez p1, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lqau;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ltsl;->b()F

    move-result p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_14
    iget p1, p2, Landroid/graphics/RectF;->left:F

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_15
    const/4 v4, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v3, p1, Ltsl;->a:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p2, Ltsk;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

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

    :goto_1a
    goto/32 :goto_c

    nop

    :goto_1b
    invoke-static {p1, v0}, Ltsl;->g(Ltsl;Ltsl;)Ltsl;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v2, p2, v1}, Ltab;->c(FFLqau;)Ltsl;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Lrqu;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->getZAxis()[F

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_20
    invoke-direct {p1, v3, v4, v0}, Lrqu;-><init>(FFF)V

    goto/32 :goto_0

    nop

    nop

    :goto_21
    const v1, 0x14

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x2

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

    :goto_23
    iget p1, p1, Ltsl;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_24
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lscz;

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

    :goto_26
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    return-object p2

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_29

    nop

    :goto_2b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2d
    iget v2, p2, Landroid/graphics/RectF;->right:F

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    :goto_2f
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_30
    invoke-static {p0, v0}, Ltsl;->g(Ltsl;Ltsl;)Ltsl;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_31
    iget v0, p2, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v0, v2, v1}, Ltab;->c(FFLqau;)Ltsl;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v2, v3, v4, p1}, Lrqu;-><init>(FFF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Ltab;->c:Lcom/google/ar/core/Pose;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_36
    aget v0, v0, v5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_37
    aget v4, v0, v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, p1, v0, v1}, Ltab;->c(FFLqau;)Ltsl;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method final c(FFLqau;)Ltsl;
    .locals 6

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    new-instance p3, Lrqu;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p3}, Lrqu;->e(Lrqu;)V

    goto/32 :goto_3b

    nop

    nop

    :goto_2
    iget p1, v0, Lrqu;->c:F

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

    :goto_3
    new-instance v0, Lrqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p3, Lqau;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5
    sub-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Lrqt;->a:Lrqu;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p2, p3, p1}, Ltsl;-><init>(FFF)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Lrqu;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_9
    iget v0, v0, Lrqu;->c:F

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

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p3, p3, Lqau;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    float-to-double v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_e
    iget v5, v1, Lrqu;->b:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, v1, Lrqu;->c:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p3, v0, v1, p2}, Lrqu;-><init>(FFF)V

    goto/32 :goto_1

    nop

    nop

    :goto_11
    iget p2, p2, Lrqu;->c:F

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_12
    add-float/2addr p2, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    iget v4, v0, Lrqu;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    iget-object v0, p0, Lrqt;->a:Lrqu;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    iget v3, v0, Lrqu;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    invoke-virtual {p0, p3}, Lrqu;->d(F)Lrqu;

    move-result-object p0

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

    :goto_17
    sub-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_19
    check-cast v0, Lrqu;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lrqt;->a()Lrqu;

    move-result-object p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p3, p1}, Lrqu;-><init>(Lrqu;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p2, p1}, Lrqu;-><init>(Lrqu;)V

    goto/32 :goto_29

    nop

    nop

    :goto_1f
    sub-float/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    iget v4, v1, Lrqu;->a:F

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    iget p3, p3, Lrqu;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p2, Lrqu;->a:F

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_25
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    iget v2, p0, Lrqu;->b:F

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_27
    invoke-direct {v0, p1}, Lrqu;-><init>(Lrqu;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, p2, Lrqu;->b:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget p2, p2, Lrqu;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_2b
    iget-object v0, p3, Lqau;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2c
    add-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2d
    const v1, 0x12

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    div-float/2addr p3, p2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    cmpl-double v0, v2, v4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v2, v3, v4, v0}, Lrqu;-><init>(FFF)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_32
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

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

    :goto_33
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_34
    new-instance p2, Lrqu;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget p0, p0, Lrqu;->c:F

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

    :goto_36
    if-gtz v0, :cond_2

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

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_37
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_a

    nop

    nop

    :goto_39
    check-cast p3, Lrqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p1}, Lrqu;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance p0, Ltsl;

    nop

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

    :goto_3c
    cmpl-float p2, p3, p2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v1, v0}, Lrqu;-><init>(Lrqu;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3f
    iget v1, p0, Lrqu;->a:F

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_40
    invoke-static {v0, p2}, Lrqu;->a(Lrqu;Lrqu;)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_41
    invoke-static {v2, p3}, Lrqu;->a(Lrqu;Lrqu;)F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_42
    new-instance v2, Lrqu;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_43
    new-instance p1, Lrqu;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_44
    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {p0, p1, p2}, Ltab;->da190e616797844b591057d0190e7728m(FF)Lrqt;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Lrqt;->b:Lrqu;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Lrqu;

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

    :goto_49
    new-instance p3, Lrqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method
