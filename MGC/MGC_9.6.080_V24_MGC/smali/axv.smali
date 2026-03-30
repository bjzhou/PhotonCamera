.class public final Laxv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laxs;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p1, p0, Laxv;->a:F

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


# virtual methods
.method public final a(JLdpb;)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Laxv;->a:F

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
    invoke-interface {p3, p0}, Ldpb;->cv(F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldpe;->b(FF)Z

    move-result p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

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

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

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

    nop

    :goto_6
    instance-of v1, p1, Laxv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iget p1, p1, Laxv;->a:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v2

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    return v0

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Laxv;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    return v2

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p0, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Laxv;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Laxv;->a:F

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

    :goto_1
    return p0

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Laxv;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    const v1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, ".dp)"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const v0, 0xe

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "CornerSize(size = "

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop
.end method
