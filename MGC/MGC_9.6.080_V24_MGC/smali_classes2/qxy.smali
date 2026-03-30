.class final Lqxy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lqwp;

.field public final b:Lqwb;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqwp;Lqwb;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqxy;->a:Lqwp;

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

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqxy;->b:Lqwb;

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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltkg;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    iget-object p1, p1, Lqxy;->b:Lqwb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_6
    check-cast p1, Lqxy;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    return v2

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lqxy;->a:Lqwp;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p1, Lqxy;->a:Lqwp;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

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

    :goto_f
    return v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p1, Lqxy;->a:Lqwp;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    return v0

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    const v0, 0x10

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
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_16
    if-eq p1, p0, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    instance-of v1, p1, Lqxy;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lqxy;->b:Lqwb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ltkg;->j()I

    move-result p0

    nop

    goto/32 :goto_f

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_18

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_7
    const v1, 0xf4243

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    move p0, v1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lqxy;->a:Lqwp;

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

    :goto_e
    xor-int/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    goto :goto_c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Ltkg;->aT:I

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

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lqxy;->b:Lqwb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v1, p0, Ltkg;->aT:I

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x12

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    xor-int/2addr v0, v1

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

    :goto_1f
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Ltkg;->j()I

    move-result v1

    nop

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

    :goto_21
    const v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    nop

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    iget-object v0, p0, Lqxy;->b:Lqwb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_6
    const-string v2, "{"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lqxy;->a:Lqwp;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    const v0, 0x11

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

    :goto_d
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->eiQOOLKHXrarfOd:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    const v1, 0x20

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

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string p0, "}"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method
