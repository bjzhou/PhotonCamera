.class public final Labq;
.super Labt;
.source "PG"


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Labq;->a:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Labq;->b:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Labt;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static CHETIIzAvVkSmDff(F)I
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
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

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

.method public static MHmdViBHqLGvnaXQ(F)I
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

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

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
.end method

.method public static aZMFdAdIWxaKhGXF(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bqOKKEEHPnkAPRlB(Ljava/lang/StringBuilder;F)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static eHfJWAgmePKrNXWL(Ljava/lang/StringBuilder;F)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

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
    return-object v0

    nop
.end method

.method public static flYXTZTWgffNgaiq(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Labq;->b:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    iget p0, p0, Labq;->a:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

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
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c()Labt;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    new-instance p0, Labq;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v0}, Labq;-><init>(FF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    iput v0, p0, Labq;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput v0, p0, Labq;->b:F

    nop

    goto/32 :goto_3

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
.end method

.method public final e(IF)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput p2, p0, Labq;->b:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

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
    return-void

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
    return-void

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    iput p2, p0, Labq;->a:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Labq;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    iget p1, p1, Labq;->b:F

    nop

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
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    cmpg-float v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_1

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

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    const v0, 0x1b

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

    nop

    :goto_8
    cmpg-float p0, p1, p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    instance-of v0, p1, Labq;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const v1, 0xe

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Labq;->a:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget p0, p0, Labq;->b:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p1, Labq;->a:F

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

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_18
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-static {v0}, Labq;->CHETIIzAvVkSmDff(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p0}, Labq;->MHmdViBHqLGvnaXQ(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    add-int/2addr v0, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Labq;->b:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Labq;->a:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

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
    goto/32 :goto_b

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Labq;->aZMFdAdIWxaKhGXF(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Labq;->eHfJWAgmePKrNXWL(Ljava/lang/StringBuilder;F)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Labq;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->SmpicwxcZZG:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Labq;->flYXTZTWgffNgaiq(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_d
    const v1, 0x14

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, p0}, Labq;->bqOKKEEHPnkAPRlB(Ljava/lang/StringBuilder;F)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "AnimationVector2D: v1 = "

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    iget p0, p0, Labq;->b:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method
