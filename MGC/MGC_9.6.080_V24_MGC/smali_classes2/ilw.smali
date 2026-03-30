.class final Lilw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/googlex/gcam/YuvImage;

.field public final b:Lcom/google/googlex/gcam/InterleavedImageU8;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lilw;->a:Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    goto/32 :goto_3

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lilw;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lilw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_6
    iget-object v1, p0, Lilw;->a:Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    const/4 v0, 0x1

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

    :goto_8
    instance-of v1, p1, Lilw;

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
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    iget-object p0, p1, Lilw;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    :goto_11
    iget-object p1, p1, Lilw;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    :goto_14
    goto/32 :goto_18

    nop

    nop

    :goto_15
    goto/16 :goto_28

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    const v1, 0xb

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    iget-object p0, p0, Lilw;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p1, Lilw;->a:Lcom/google/googlex/gcam/YuvImage;

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

    :goto_1e
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    if-eq p1, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    :goto_20
    if-eqz p0, :cond_7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, p1, Lilw;->a:Lcom/google/googlex/gcam/YuvImage;

    nop

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

    :goto_22
    return v2

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    :goto_25
    goto/16 :goto_14

    nop

    :goto_26
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_e

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    xor-int/2addr v0, p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    xor-int p0, v0, v1

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
    iget-object v0, p0, Lilw;->a:Lcom/google/googlex/gcam/YuvImage;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_d
    mul-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    const p0, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_4

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_15
    iget-object p0, p0, Lilw;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

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
    const-string p0, "}"

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

    :goto_2
    const-string p0, ", "

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_6
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lilw;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->FUHTywiJBuWKad:Ljava/lang/String;

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

    :goto_14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lilw;->a:Lcom/google/googlex/gcam/YuvImage;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop
.end method
