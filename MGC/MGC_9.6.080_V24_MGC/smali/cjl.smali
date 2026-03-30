.class public final Lcjl;
.super Lcjn;
.source "PG"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    goto/32 :goto_8

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

    goto/32 :goto_b

    nop

    nop

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

    nop

    nop

    :goto_2
    return-void

    nop

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v0, v1}, Lcjn;-><init>(ZZI)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    iput p1, p0, Lcjl;->a:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
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

    :goto_c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_9
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_a
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    instance-of v1, p1, Lcjl;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    const/4 v0, 0x1

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

    :goto_12
    const/4 v2, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    const v0, 0x19

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Lcjl;

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

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    :goto_17
    iget p1, p1, Lcjl;->a:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget p0, p0, Lcjl;->a:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

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

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lcjl;->a:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_1

    nop

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

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    const v0, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const-string v1, "RelativeVerticalTo(dy="

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lcjl;->a:F

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 p0, 0x29

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

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
