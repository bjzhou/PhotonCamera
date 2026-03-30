.class public final Landroidx/compose/foundation/layout/PaddingElement;
.super Lcui;
.source "PG"


# instance fields
.field private final a:F

.field private final b:F

.field private final d:F

.field private final e:F


# direct methods
.method public synthetic constructor <init>(FFFF)V
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    const-string p0, "Padding must be non-negative"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

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

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_2
    if-ltz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p4, v1}, Landroidx/compose/foundation/layout/PaddingElement;->fgwNjcSKTVGThcqh(FF)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_2
    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-ltz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p2, p0, Landroidx/compose/foundation/layout/PaddingElement;->b:F

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v1, 0x7fc00000    # Float.NaN

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

    nop

    :goto_a
    iput p4, p0, Landroidx/compose/foundation/layout/PaddingElement;->e:F

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    cmpl-float p1, p3, p0

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
    invoke-direct {p0}, Lcui;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmpl-float v0, p1, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/PaddingElement;->NjZDXXuFCTAYMLjR(FF)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10
    if-ltz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_11
    invoke-static {p3, v1}, Landroidx/compose/foundation/layout/PaddingElement;->QQfvdSsNlgZzioqF(FF)Z

    move-result p1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    if-ltz v0, :cond_5

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput p1, p0, Landroidx/compose/foundation/layout/PaddingElement;->a:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Landroidx/compose/foundation/layout/PaddingElement;->pAYMcVXdaeXMranv(Ljava/lang/String;)V

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float p0, p4, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    cmpl-float p1, p2, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p2, v1}, Landroidx/compose/foundation/layout/PaddingElement;->AgYBUptMfjYgPeGk(FF)Z

    move-result p1

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

    :goto_1e
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x11

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_21
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_7
    :goto_22
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_8
    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    iput p3, p0, Landroidx/compose/foundation/layout/PaddingElement;->d:F

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_27
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AbSNhqVbhpdCKcFt(FF)Z
    .locals 1

    goto/32 :goto_1

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
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static AgYBUptMfjYgPeGk(FF)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

    move-result v0

    nop

    nop

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
.end method

.method public static DBLXJkkzotUzCrqv(Z)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0}, La;->o(Z)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static NjZDXXuFCTAYMLjR(FF)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

    move-result v0

    nop

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
.end method

.method public static PhcEusNDtpguHZNK(F)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

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

.method public static QQfvdSsNlgZzioqF(FF)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static SxZZcrqngdGxcVyn(F)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

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
.end method

.method public static TivujFHdPthBgWLg(FF)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static fgwNjcSKTVGThcqh(FF)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

    move-result v0

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
.end method

.method public static hkbvrBcdtvzwaQOq(F)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

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

.method public static hsPiNnwtrKGAZPXG(FF)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

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
.end method

.method public static iypdLFFQiekBmnbd(FF)Z
    .locals 1

    goto/32 :goto_1

    nop

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
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static pAYMcVXdaeXMranv(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Laqy;->a(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static xhePeZacRPcKYGgv(F)I
    .locals 1

    goto/32 :goto_1

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
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Lbzy;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1c

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

    :goto_6
    goto/32 :goto_4

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

    :goto_8
    new-instance v0, Lapu;

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

    :goto_9
    invoke-direct {v0, v1, v2, v3, p0}, Lapu;-><init>(FFFF)V

    goto/32 :goto_1

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget v2, p0, Landroidx/compose/foundation/layout/PaddingElement;->b:F

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget v3, p0, Landroidx/compose/foundation/layout/PaddingElement;->d:F

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final bridge synthetic b(Lbzy;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->b:F

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
    iput v0, p1, Lapu;->b:F

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

    :goto_2
    iput v0, p1, Lapu;->c:F

    nop

    goto/32 :goto_4

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

    :goto_4
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iput v0, p1, Lapu;->a:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean p0, p1, Lapu;->e:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->a:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    iput p0, p1, Lapu;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->d:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lapu;

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
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->e:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_4
    iget p1, p1, Landroidx/compose/foundation/layout/PaddingElement;->e:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->d:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingElement;

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

    nop

    nop

    :goto_8
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->d:F

    nop

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

    :goto_9
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingElement;->iypdLFFQiekBmnbd(FF)Z

    move-result v1

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

    :goto_a
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->b:F

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    check-cast p1, Landroidx/compose/foundation/layout/PaddingElement;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingElement;->AbSNhqVbhpdCKcFt(FF)Z

    move-result v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    const v0, 0x2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingElement;->TivujFHdPthBgWLg(FF)Z

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v0

    nop

    :goto_13
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/PaddingElement;->hsPiNnwtrKGAZPXG(FF)Z

    move-result p0

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    if-nez v1, :cond_3

    nop

    goto/32 :goto_1f

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

    :goto_19
    if-nez v1, :cond_4

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    :goto_1e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    :goto_20
    goto :goto_15

    nop

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_25
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_27
    iget v2, p1, Landroidx/compose/foundation/layout/PaddingElement;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_2

    nop

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

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroidx/compose/foundation/layout/PaddingElement;->DBLXJkkzotUzCrqv(Z)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_18

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingElement;->e:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingElement;->PhcEusNDtpguHZNK(F)I

    move-result v1

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

    :goto_b
    const/4 p0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Landroidx/compose/foundation/layout/PaddingElement;->a:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingElement;->xhePeZacRPcKYGgv(F)I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    const v1, 0x20

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Landroidx/compose/foundation/layout/PaddingElement;->SxZZcrqngdGxcVyn(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->b:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_16
    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingElement;->hkbvrBcdtvzwaQOq(F)I

    move-result v1

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

    :goto_17
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_1a
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    iget v1, p0, Landroidx/compose/foundation/layout/PaddingElement;->d:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
