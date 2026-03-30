.class public final Lrki;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrkk;


# instance fields
.field private final a:Lrkk;

.field private final b:F


# direct methods
.method public constructor <init>(FLrkk;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Lrki;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lrki;->b:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto :goto_9

    nop

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

    nop

    :goto_6
    iget-object p2, p2, Lrki;->a:Lrkk;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lrki;->a:Lrkk;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p2, Lrki;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-float/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    instance-of v0, p2, Lrki;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    iget v0, v0, Lrki;->b:F

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
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrki;->b:F

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

    :goto_1
    add-float/2addr p1, p0

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

    :goto_2
    invoke-interface {v0, p1}, Lrkk;->a(Landroid/graphics/RectF;)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrki;->a:Lrkk;

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

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v1, p1, Lrki;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_3
    cmpl-float p0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

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

    :goto_5
    return v2

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p1, Lrki;->a:Lrkk;

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

    :goto_d
    if-eq p0, p1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_11
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    iget p0, p0, Lrki;->b:F

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    iget p1, p1, Lrki;->b:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lrki;->a:Lrkk;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Lrki;

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

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

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
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrki;->b:F

    nop

    nop

    goto/32 :goto_5

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
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
    iget-object v0, p0, Lrki;->a:Lrkk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

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

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

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
.end method
