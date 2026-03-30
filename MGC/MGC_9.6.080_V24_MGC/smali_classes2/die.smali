.class public final Ldie;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldhe;

.field public final b:Ldij;

.field public final c:Ljava/util/List;

.field public final d:I

.field public final e:Z

.field public final f:I

.field public final g:Ldpb;

.field public final h:Ldpq;

.field public final i:Ldko;

.field public final j:J


# direct methods
.method public constructor <init>(Ldhe;Ldij;Ljava/util/List;IZILdpb;Ldpq;Ldko;J)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ldie;->c:Ljava/util/List;

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
    iput-boolean p5, p0, Ldie;->e:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p9, p0, Ldie;->i:Ldko;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput p6, p0, Ldie;->f:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ldie;->a:Ldhe;

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
    iput-object p7, p0, Ldie;->g:Ldpb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iput-object p8, p0, Ldie;->h:Ldpq;

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
    iput-object p2, p0, Ldie;->b:Ldij;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    iput p4, p0, Ldie;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iput-wide p10, p0, Ldie;->j:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Ldie;->b:Ldij;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Ldie;->f:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-static {v3, v4, p0, p1}, La;->q(JJ)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v3}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    :goto_8
    goto/32 :goto_2c

    nop

    nop

    :goto_9
    iget-object v3, p1, Ldie;->i:Ldko;

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

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    iget-boolean v3, p1, Ldie;->e:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v1, v3, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_e
    if-ne v1, v3, :cond_1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, p1, Ldie;->a:Ldhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_10
    iget-object v3, p1, Ldie;->g:Ldpb;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Ldie;->g:Ldpb;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Ldie;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_29

    nop

    :goto_1b
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Ldie;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, p1, Ldie;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    :goto_22
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    :goto_24
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_26
    return v2

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Ldie;->h:Ldpq;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2c
    iget v1, p0, Ldie;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2d
    return v2

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_20

    nop

    nop

    :goto_2f
    iget-boolean v1, p0, Ldie;->e:Z

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_30
    instance-of v1, p1, Ldie;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return v0

    nop

    nop

    :goto_32
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_33
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_48

    nop

    nop

    :goto_34
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_35
    iget v3, p1, Ldie;->d:I

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

    :goto_36
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_37
    iget-object v3, p1, Ldie;->h:Ldpq;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_38
    if-eqz p0, :cond_7

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_39
    if-eq p0, p1, :cond_8

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    :goto_3a
    if-eqz v1, :cond_9

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

    :cond_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3b
    if-eqz v1, :cond_a

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

    :cond_a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3c
    iget-wide p0, p1, Ldie;->j:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v3, p1, Ldie;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3e
    const/4 v0, 0x1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3f
    return v2

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-wide v3, p0, Ldie;->j:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_43
    return v2

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Ldie;->a:Ldhe;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, p1, Ldie;->b:Ldij;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1e

    nop

    nop

    :goto_48
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_0

    nop

    nop

    :goto_4a
    return v2

    nop

    :goto_4b
    goto/32 :goto_4c

    nop

    nop

    :goto_4c
    iget-object v1, p0, Ldie;->i:Ldko;

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
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    nop

    nop

    :goto_1
    add-int/2addr v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Ldie;->h:Ldpq;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    :goto_5
    goto/32 :goto_2b

    nop

    nop

    :goto_6
    iget-wide v1, p0, Ldie;->j:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    add-int/2addr v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-static {v1, v2}, La;->r(J)I

    move-result p0

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
    iget-boolean v1, p0, Ldie;->e:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_c
    iget-object v1, p0, Ldie;->b:Ldij;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    add-int/2addr v0, v1

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

    :goto_11
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    const v0, 0xd

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

    :goto_13
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_15
    iget v1, p0, Ldie;->f:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ldhe;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Ldie;->g:Ldpb;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_18
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Ldpq;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, La;->o(Z)I

    move-result v1

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

    :goto_21
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Ldij;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    mul-int/lit8 v0, v0, 0x1f

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

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_25
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_27
    iget-object v1, p0, Ldie;->i:Ldko;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2a
    iget v1, p0, Ldie;->d:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ldie;->a:Ldhe;

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, ", fontFamilyResolver="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Ldie;->b:Ldij;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const-string v1, ", density="

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "TextLayoutInput(text="

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

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

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_a
    const-string v1, ", softWrap="

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x10

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->fcu:Ljava/lang/String;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, ", maxLines="

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v1, p0, Ldie;->j:J

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    :goto_18
    const-string v1, ", placeholders="

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    iget-object v1, p0, Ldie;->g:Ldpb;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Ldie;->h:Ldpq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Ldie;->f:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Ldie;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v2}, Ldoy;->e(J)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Ldie;->a:Ldhe;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Ldol;->a(I)Ljava/lang/String;

    move-result-object v1

    nop

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

    :goto_28
    const-string v1, ", constraints="

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Ldie;->i:Ldko;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2b
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v1, ", overflow="

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

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean v1, p0, Ldie;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v1, ", style="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_26

    nop

    nop

    :goto_36
    const/16 p0, 0x29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_38
    iget v1, p0, Ldie;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method
