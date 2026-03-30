.class public final Layv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ldhe;

.field public b:Z

.field public c:Layn;

.field private final d:Ldhe;


# direct methods
.method public constructor <init>(Ldhe;Ldhe;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Layv;->a:Ldhe;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Layv;->d:Ldhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Layv;->b:Z

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
    return-void

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Layv;->c:Layn;

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


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

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
    instance-of v1, p1, Layv;

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

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    :goto_7
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    check-cast p1, Layv;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Layv;->d:Ldhe;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v3, p1, Layv;->b:Z

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

    :goto_e
    return v2

    nop

    :goto_f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    :goto_12
    const/4 v2, 0x0

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

    nop

    :goto_13
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    :goto_15
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    return v2

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p1, Layv;->c:Layn;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1e

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    :goto_23
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v3, p1, Layv;->a:Ldhe;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, p1, Layv;->d:Ldhe;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v1, p0, Layv;->b:Z

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

    :goto_28
    iget-object p0, p0, Layv;->c:Layn;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2a
    iget-object v1, p0, Layv;->a:Ldhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Layv;->a:Ldhe;

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

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Layn;->hashCode()I

    move-result p0

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-static {v1}, La;->o(Z)I

    move-result v1

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
    iget-boolean v1, p0, Layv;->b:Z

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

    :goto_7
    const v1, 0x12

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Layv;->c:Layn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Layv;->d:Ldhe;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ldhe;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v0, v1

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

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_12
    mul-int/lit8 v0, v0, 0x1f

    nop

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

    :goto_13
    const v0, 0x9

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ldhe;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    add-int/2addr v0, p0

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_c

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

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

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

    nop

    :goto_5
    const-string v1, ", isShowingSubstitution="

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    iget-object v1, p0, Layv;->d:Ldhe;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, ", layoutCache="

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p0, 0x29

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

    :goto_9
    iget-boolean v1, p0, Layv;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

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

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_d
    iget-object p0, p0, Layv;->c:Layn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->BML:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    :goto_11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Layv;->a:Ldhe;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    const-string v1, "TextSubstitutionValue(original="

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x11

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x13

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
