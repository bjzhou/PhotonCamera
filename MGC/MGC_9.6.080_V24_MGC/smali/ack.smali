.class public final Lack;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laci;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:Lact;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    invoke-direct {p0, v0, v0, v1}, Lack;-><init>(FFI)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    const/4 v1, 0x7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const v1, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>(FFF)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p1, p3, Lact;->b:D

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p3}, Lact;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    invoke-static {p3}, Lack;->FUYrQGSnSWhNpXIq(Lact;)F

    move-result p1

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

    :goto_3
    goto/32 :goto_16

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ltz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Lack;->obeHlaeLOoQeapDW(Ljava/lang/String;)V

    :goto_9
    goto/32 :goto_1f

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    cmpg-float v1, p1, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_d
    const-string p1, "Spring stiffness constant must be positive."

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmpg-float p1, p1, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    iput p3, p0, Lack;->c:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Lack;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    new-instance p3, Lact;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

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

    :goto_14
    goto/32 :goto_4

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

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, p2}, Lack;->BGxbPWDiYDSGedXX(D)D

    move-result-wide p1

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

    :goto_18
    invoke-static {p1}, Lack;->oHeBQDTHAymwFdmF(Ljava/lang/String;)V

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput p2, p0, Lack;->b:F

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

    :goto_1b
    if-lez p1, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

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

    nop

    :goto_1c
    float-to-double p1, p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    iput-object p3, p0, Lack;->d:Lact;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1f

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

    nop

    nop

    :goto_1f
    iput p1, p3, Lact;->c:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "Damping ratio must be non-negative"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(FFI)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const p2, 0x44bb8000    # 1500.0f

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    if-eq v1, v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p3, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const p3, 0x3c23d70a    # 0.01f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2, p3}, Lack;-><init>(FFF)V

    goto/32 :goto_11

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    and-int/lit8 p3, p3, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    and-int/lit8 v0, p3, 0x1

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

    :goto_f
    goto/32 :goto_12

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AcJbNLJLvOtJDCAD(D)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    const v0, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :goto_8
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static ArqTzDQfCYhkCzed(Laci;)Lafa;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lach;->a(Laci;)Lafa;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static BGxbPWDiYDSGedXX(D)D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

.method public static BzKEBahuzhAPioFH(Lact;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lact;->a()F

    move-result v0

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

.method public static DJHSfiaBiXDidYsm(D)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static DWEDFbiAQKjAqIFT(D)D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    const v0, 0x14

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

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

    :goto_a
    goto/32 :goto_8

    nop
.end method

.method public static FQXuHPbXLofCDTAT(D)D
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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
    goto/32 :goto_6

    nop
.end method

.method public static FUYrQGSnSWhNpXIq(Lact;)F
    .locals 1

    goto/32 :goto_1

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
    invoke-virtual {p0}, Lact;->a()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static HHSkBcqhvpHgUgCz(D)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    return-wide v0

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

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_4

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static IdDGdEilBTCXPoaV(D)D
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x13

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public static JeFistVODAKUBorE(D)D
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static KlDIrFUQJpHyxQQW(D)D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v0, 0x16

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    const v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static KuZAlTZuhpsxOJdK(D)D
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x15

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static OjXOPocWCgSwtoDF(D)D
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const v0, 0x9

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method public static SeGEUmlYuRYoKxrU(D)D
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

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

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public static SffXZXqxTczLubcV(I)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static StcHWLKFJxtJHFqP(D)D
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const v1, 0x12

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    const v0, 0x1a

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_4

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
.end method

.method public static TLVWvqGjjlhDIFeH(D)D
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    const v1, 0x1b

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static TOngHvEcbIatJjRo(D)D
    .locals 2

    goto/32 :goto_5

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

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public static TTCHYPQRFyUXqZkS(DD)D
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v1, 0x5

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

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop
.end method

.method public static VvjLLbvkiPYCWUxm(D)D
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public static WUxqZlyikvnENeMz(D)D
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

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

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop
.end method

.method public static WarZKljVJWqBFcUk(D)D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1b

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

    :goto_7
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XIHudscIbNfkCmtJ(D)D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

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

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v0, 0xc

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v1, 0x3

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
.end method

.method public static XJaedgFbVPhlmfds(D)D
    .locals 2

    goto/32 :goto_5

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

    goto/32 :goto_1

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

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

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xb

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

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v1, 0x17

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public static XmuojjDmwJpQvGdb(D)D
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v1, 0xa

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

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

    :goto_4
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static ZOEAqWyYnniIrjiW(D)D
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public static ZPwKbAhjhdcQzKwI(D)D
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    return-wide v0

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
.end method

.method public static cXecQVlWxuqhEGIf(D)D
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    goto/32 :goto_1

    nop
.end method

.method public static dGsWSQvnEEASiOAz(D)D
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    const v0, 0x2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static dSAPvytdOrtJyIhF(D)D
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v1, 0x17

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

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

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

    :goto_a
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static hbNjHRniWwWXyNNn(Lact;FFJ)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lact;->b(FFJ)J

    move-result-wide v0

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
    const v1, 0x4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static ihHRVafZfwmYoxOd(D)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

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

.method public static jYbDYhpJKSTNCwoq(I)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    nop

    nop

    goto/32 :goto_1

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

.method public static jofUdbcSRGviBrhP(D)D
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const v0, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static kQDgPaCFGDJCpqCh(D)D
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    const v1, 0x1a

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

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    const v0, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static nuSXJBvpMsVsLmrE(D)D
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const v0, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public static nxspVmoHLNtWszZt(D)D
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const v0, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_4

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

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

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
.end method

.method public static oHeBQDTHAymwFdmF(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lacs;->a(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static obeHlaeLOoQeapDW(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {p0}, Lacs;->a(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static odiSDyfoncAlTxAd(D)D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sWAGpzahKhJdcDnE(Lact;FFJ)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    return-wide v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v1, 0x16

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lact;->b(FFJ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static uPnZMZKpqeqNNYVo(D)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

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

    :goto_1
    return-wide v0

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public static ubIbmLAufYrjmIwq(D)D
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop
.end method

.method public static vpmzolZWIgyWrrCW(DD)D
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

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
    return-wide v0

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v0, 0x10

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

    :goto_7
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public static weMpbjlhMcsoflif(D)D
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xc

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

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static wnbOGVmxYZfUuBCW(D)D
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :goto_4
    goto/32 :goto_2

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    :goto_7
    const v0, 0x17

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static wuRiKOIPbjzjgtNW(D)D
    .locals 2

    goto/32 :goto_9

    nop

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

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v1, 0x5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :goto_9
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop
.end method

.method public static xNiHtJMCzOOSKzAv(D)D
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

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

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static xtEksFOqbzYOGDgb(D)D
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xe

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static ylpEwVpRMJQltndI(D)D
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    nop

    nop

    nop

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1c

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

    :goto_3
    const v1, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static zlnkHWstPWTnpOay(D)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    return-wide v0

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const v1, 0x1b

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
.end method


# virtual methods
.method public final bridge synthetic a(Laee;)Lafa;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0}, Lack;->ArqTzDQfCYhkCzed(Laci;)Lafa;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b(FFF)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

.method public final c(JFFF)F
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    div-long/2addr p1, v0

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x5

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

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    long-to-int p0, p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    :goto_9
    const/16 p2, 0x20

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
    iget-object p0, p0, Lack;->d:Lact;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    iput p4, p0, Lact;->a:F

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

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const-wide/32 v0, 0xf4240

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    shr-long/2addr p0, p2

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lack;->jYbDYhpJKSTNCwoq(I)F

    move-result p0

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

    :goto_11
    invoke-static {p0, p3, p5, p1, p2}, Lack;->hbNjHRniWwWXyNNn(Lact;FFJ)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final d(JFFF)F
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p3, p5, p1, p2}, Lack;->sWAGpzahKhJdcDnE(Lact;FFJ)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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
    goto/32 :goto_10

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    const-wide/32 v0, 0xf4240

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
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v0, 0x1d

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

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    iput p4, p0, Lact;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lack;->d:Lact;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    and-long/2addr p0, p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const-wide p2, 0xffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    div-long/2addr p1, v0

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

    :goto_f
    return p0

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Lack;->SffXZXqxTczLubcV(I)F

    move-result p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    long-to-int p0, p0

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

    nop
.end method

.method public final e(FFF)J
    .locals 33

    goto/32 :goto_11b

    nop

    nop

    :goto_0
    double-to-long v0, v11

    nop

    nop

    :goto_1
    goto/32 :goto_f7

    nop

    nop

    :goto_2
    div-double/2addr v14, v7

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_3
    move-wide/from16 v31, v20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sub-double v18, v18, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_7e

    nop

    :goto_7
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide v29, 0x7fffffffffffffffL

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    move-wide/from16 v5, p1

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_a
    and-long v18, v18, v29

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_b
    invoke-static {v9, v10}, Lack;->TOngHvEcbIatJjRo(D)D

    move-result-wide v12

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d0

    nop

    nop

    :goto_d
    div-float v4, p3, v0

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_e
    mul-double/2addr v5, v11

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v14, v15}, Lack;->XJaedgFbVPhlmfds(D)D

    move-result-wide v14

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-double/2addr v13, v7

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_11
    add-double v7, v18, v14

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v0, v1, :cond_0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_ef

    nop

    nop

    :goto_13
    invoke-static {v5, v6}, Lack;->kQDgPaCFGDJCpqCh(D)D

    move-result-wide v9

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

    :goto_14
    move-wide v11, v5

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_15
    const-wide v24, 0x7fefffffffffffffL    # Double.MAX_VALUE

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_16
    div-double v0, v20, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Lack;->KlDIrFUQJpHyxQQW(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v9, v10}, Lack;->xtEksFOqbzYOGDgb(D)D

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_1a
    invoke-static {v11, v12}, Lack;->nuSXJBvpMsVsLmrE(D)D

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    div-double/2addr v11, v13

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v9, v10}, Lack;->ZOEAqWyYnniIrjiW(D)D

    move-result-wide v9

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

    :goto_1d
    move-wide/from16 v5, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1e
    div-double v13, v13, v27

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_1f
    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_20
    and-long v7, v7, v29

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v11, v12}, Lack;->jofUdbcSRGviBrhP(D)D

    move-result-wide v24

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmpg-double v0, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-gtz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_fa

    nop

    nop

    :goto_25
    if-eqz v2, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_26
    and-long v7, v7, v29

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_27
    mul-double v24, v7, v11

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_28
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    add-double v16, v7, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_2b
    if-ltz v2, :cond_3

    nop

    nop

    goto/32 :goto_123

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-wide/from16 v5, p1

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ltz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_2e
    if-gtz v2, :cond_5

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_be

    nop

    nop

    nop

    :goto_2f
    mul-double/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v14, v15}, Lack;->XmuojjDmwJpQvGdb(D)D

    move-result-wide v14

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_31
    if-gtz v0, :cond_6

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_32
    move-wide v11, v14

    nop

    :goto_33
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-ltz v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v7, v8}, Lack;->wnbOGVmxYZfUuBCW(D)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-double v11, v0, v16

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_39
    mul-double v27, v14, v7

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :cond_8
    goto/32 :goto_c5

    nop

    :goto_3b
    move-object/from16 v0, p0

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_3c
    cmpg-float v3, v1, v3

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    div-double v11, v20, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_3e
    invoke-static {v0, v1}, Lack;->uPnZMZKpqeqNNYVo(D)J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3f
    sub-double v0, v16, v7

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v2, :cond_9

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

    :cond_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    cmpl-double v2, v3, v5

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_b5

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v11, 0x6

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-double v7, v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_47
    invoke-static {v14, v15}, Lack;->AcJbNLJLvOtJDCAD(D)J

    move-result-wide v18

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_48
    div-double v14, v20, v9

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v11, v12, v14, v15}, Lack;->TTCHYPQRFyUXqZkS(DD)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    mul-double/2addr v13, v7

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    cmpl-double v2, v13, v5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-wide v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    and-long v18, v18, v29

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_4e
    float-to-double v14, v4

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_51
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_54
    invoke-static {v9, v10}, Lack;->cXecQVlWxuqhEGIf(D)D

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_63

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_9f

    nop

    nop

    :goto_57
    invoke-static {v7, v8}, Lack;->ihHRVafZfwmYoxOd(D)Z

    move-result v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-wide/from16 p1, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_59
    if-gtz v2, :cond_a

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5a
    mul-double v0, v0, v18

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5b
    cmpl-double v0, v1, v20

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_5c
    iget v0, v0, Lack;->c:F

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

    :goto_5d
    mul-double v14, v9, v7

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_5e
    sub-double/2addr v9, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_5f
    invoke-static {v11, v12}, Lack;->ylpEwVpRMJQltndI(D)D

    move-result-wide v11

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_60
    cmpl-double v0, v9, v5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_61
    mul-double v13, v7, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_62
    move/from16 v2, v26

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-ltz v2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_124

    nop

    nop

    nop

    :goto_65
    invoke-static/range {v27 .. v28}, Lack;->FQXuHPbXLofCDTAT(D)D

    move-result-wide v27

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_66
    div-double v11, v11, v16

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_67
    if-gtz v1, :cond_c

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

    :cond_c
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_68
    cmpg-double v2, v13, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_69
    div-double v5, v3, v14

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-ltz v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    mul-double v14, v5, v7

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_6c
    add-double v13, v27, v13

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v1, v2}, Lack;->XIHudscIbNfkCmtJ(D)D

    move-result-wide v13

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_6e
    const-wide v13, 0x3f1a36e2eb1c432dL    # 1.0E-4

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_6f
    return-wide v0

    nop

    nop

    :goto_70
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    mul-double/2addr v13, v3

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

    :goto_72
    invoke-static {v9, v10}, Lack;->VvjLLbvkiPYCWUxm(D)D

    move-result-wide v9

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-eqz v2, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    mul-double/2addr v11, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_75
    div-double v9, v18, v0

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_76
    add-double/2addr v3, v14

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-lez v2, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    :cond_f
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_78
    if-ltz v2, :cond_10

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_79
    const/16 v26, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_7a
    cmpg-double v11, v9, v5

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_7b
    div-double v20, v20, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_7c
    neg-double v13, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7f
    add-double v9, v9, v18

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_80
    move-wide v11, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_81
    move-wide v9, v7

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_83
    iget v1, v1, Lact;->c:F

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_84
    cmp-long v2, v18, v27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_85
    sub-double/2addr v3, v9

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v3, v4}, Lack;->ZPwKbAhjhdcQzKwI(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_88
    move-wide v11, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v3, v4}, Lack;->WUxqZlyikvnENeMz(D)D

    move-result-wide v0

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_8a
    invoke-static {v11, v12}, Lack;->ubIbmLAufYrjmIwq(D)D

    move-result-wide v24

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    add-double/2addr v0, v14

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_8e
    div-double v13, v18, v13

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static/range {v24 .. v25}, Lack;->dSAPvytdOrtJyIhF(D)D

    move-result-wide v26

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_90
    invoke-static {v0, v1}, Lack;->DWEDFbiAQKjAqIFT(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    mul-double/2addr v13, v9

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {v11, v12}, Lack;->HHSkBcqhvpHgUgCz(D)J

    move-result-wide v18

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_93
    invoke-static {v0, v1}, Lack;->StcHWLKFJxtJHFqP(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_94
    add-double v13, v13, v26

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_95
    cmpg-double v2, v13, v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static/range {v20 .. v21}, Lack;->nxspVmoHLNtWszZt(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_97
    div-double/2addr v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {v13, v14}, Lack;->DJHSfiaBiXDidYsm(D)Z

    move-result v2

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_99
    invoke-static {v7, v8}, Lack;->TLVWvqGjjlhDIFeH(D)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_9a
    iget-object v1, v0, Lack;->d:Lact;

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    mul-double v14, v5, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_9d
    neg-double v7, v11

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_9e
    sub-double v27, v7, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_9f
    div-double v9, v9, v16

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    div-double/2addr v11, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v13, v14}, Lack;->WarZKljVJWqBFcUk(D)D

    move-result-wide v13

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const-wide v0, 0x8637bd05af6L

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_a3
    mul-double/2addr v9, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    mul-double/2addr v11, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a5
    move/from16 v0, v26

    nop

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_a7
    sub-double v1, v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    neg-double v13, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_a9
    sub-double v5, v11, v5

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_aa
    cmpl-double v1, v24, v22

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    div-float/2addr v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_ac
    mul-double/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    add-double/2addr v5, v3

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_ae
    cmp-long v2, v18, v27

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_af
    cmpl-double v2, v7, v5

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_e0

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_1d

    nop

    nop

    :goto_b2
    move-wide v5, v11

    nop

    :goto_b3
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_b4
    move/from16 v0, v26

    nop

    :goto_b5
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-static {v11, v12}, Lack;->odiSDyfoncAlTxAd(D)D

    move-result-wide v11

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_b7
    if-lt v2, v11, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    goto :goto_b3

    nop

    :goto_ba
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move-wide v12, v5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    if-ltz v0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_12
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    move-wide v0, v5

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_be
    mul-double v27, v16, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_bf
    mul-double v9, v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_c0
    div-double v9, v9, v16

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_c1
    mul-double v5, v14, v11

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    mul-double v9, v16, v14

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    mul-double/2addr v3, v3

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_c4
    mul-double/2addr v14, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_c7
    cmpg-double v0, v1, v20

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_c8
    add-double v9, v7, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    mul-double v13, v18, v16

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

    :goto_ca
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_cb
    float-to-double v1, v1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    goto/16 :goto_ee

    nop

    nop

    :goto_cd
    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_ce
    sub-double/2addr v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_cf
    if-gtz v2, :cond_13

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    if-ltz v11, :cond_14

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    cmpg-double v0, v3, v5

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    mul-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_d5
    cmpg-double v11, v14, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    cmpg-double v2, v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_d7
    move-wide v0, v9

    nop

    nop

    :goto_d8
    goto/32 :goto_11

    nop

    nop

    :goto_d9
    cmpg-double v2, v7, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_da
    const/16 v1, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_db
    div-double/2addr v5, v9

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    cmp-long v2, v7, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_dd
    sub-double/2addr v7, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_de
    cmp-long v2, v7, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_df
    move-wide/from16 v20, v31

    nop

    :goto_e0
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-static {v9, v10}, Lack;->zlnkHWstPWTnpOay(D)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    mul-double v16, v16, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-static {v9, v10}, Lack;->KuZAlTZuhpsxOJdK(D)D

    move-result-wide v9

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static {v7, v8}, Lack;->weMpbjlhMcsoflif(D)D

    move-result-wide v9

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    if-eqz v0, :cond_15

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-static/range {v24 .. v25}, Lack;->SeGEUmlYuRYoKxrU(D)D

    move-result-wide v24

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_e7
    if-ltz v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_b9

    nop

    nop

    :goto_e8
    mul-double v26, v26, v9

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_e9
    neg-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-eqz v3, :cond_17

    nop

    goto/32 :goto_8c

    nop

    :cond_17
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_eb
    cmpl-double v1, v24, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_ec
    goto/32 :goto_c6

    nop

    :goto_ed
    move-wide v9, v5

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_ef
    mul-double v1, v16, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-static {v1}, Lack;->BzKEBahuzhAPioFH(Lact;)F

    move-result v2

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_f1
    sub-double/2addr v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f2
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f3
    mul-double v1, v1, v18

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_f4
    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f5
    add-double v13, v13, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    neg-double v7, v7

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_f7
    const-wide/32 v2, 0xf4240

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_f8
    if-ltz v2, :cond_18

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_18
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    const-wide v0, 0x408f400000000000L    # 1000.0

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    const/16 v1, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_fb
    sub-double v14, v14, v18

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    move-wide v5, v0

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_bd

    nop

    nop

    :goto_fe
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    goto/16 :goto_4

    nop

    nop

    :goto_100
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_101
    sub-float v3, p1, p2

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_102
    float-to-double v3, v3

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_103
    if-ltz v11, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_19
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    neg-double v11, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_105
    invoke-static {v0, v1}, Lack;->dGsWSQvnEEASiOAz(D)D

    move-result-wide v0

    nop

    nop

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

    :goto_106
    float-to-double v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_107
    mul-double v9, v16, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_108
    invoke-static {v13, v14}, Lack;->IdDGdEilBTCXPoaV(D)D

    move-result-wide v13

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_109
    add-double v5, v5, v31

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_10a
    mul-double/2addr v5, v9

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_10b
    if-eqz v11, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10c
    cmpg-double v0, v0, v13

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    sub-double/2addr v11, v5

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

    nop

    nop

    :goto_10e
    mul-double v24, v24, v5

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_10f
    add-double v11, v11, v27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    goto/16 :goto_4

    nop

    nop

    :goto_111
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_112
    neg-double v14, v14

    nop

    nop

    :goto_113
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    mul-double v27, v27, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_115
    div-double v7, v20, v14

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_116
    if-ltz v0, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :cond_1b
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_117
    invoke-static {v9, v10}, Lack;->wuRiKOIPbjzjgtNW(D)D

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    move-wide/from16 v20, v31

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_119
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_11a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    goto/16 :goto_a6

    nop

    nop

    :goto_11d
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    div-double/2addr v14, v9

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    if-lt v0, v1, :cond_1c

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_120
    mul-double v27, v27, v3

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

    :goto_121
    if-ltz v2, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_1d
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_122
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_123
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-static {v0, v1, v9, v10}, Lack;->vpmzolZWIgyWrrCW(DD)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    neg-double v7, v7

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_126
    mul-double v0, v16, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_127
    invoke-static {v1, v2}, Lack;->xNiHtJMCzOOSKzAv(D)D

    move-result-wide v1

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    if-gtz v0, :cond_1e

    nop

    goto/32 :goto_11d

    nop

    :cond_1e
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    mul-double v18, v16, v3

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_12a
    sub-double v9, v7, v9

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-static {v13, v14}, Lack;->JeFistVODAKUBorE(D)D

    move-result-wide v13

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12c
    div-double v0, v0, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_12d
    invoke-static {v7, v8}, Lack;->OjXOPocWCgSwtoDF(D)D

    move-result-wide v7

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_12e
    div-double/2addr v13, v1

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_130
    mul-double/2addr v7, v11

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_131
    mul-double v7, v16, v11

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_132
    cmpg-double v2, v14, v5

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_133
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_134
    div-double v0, v0, v16

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_135
    add-double v1, v1, v24

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    mul-double v18, v3, v16

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_137
    mul-double/2addr v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_138
    const-wide/high16 v27, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final synthetic f()Lafg;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lafg;-><init>(Laci;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    new-instance v0, Lafg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop
.end method
