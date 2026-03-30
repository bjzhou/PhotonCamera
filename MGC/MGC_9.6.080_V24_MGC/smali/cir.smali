.class public final Lcir;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lciq;

.field public static b:I


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:Lcjw;

.field public final i:J

.field public final j:I

.field public final k:Z

.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    sput-object v0, Lcir;->a:Lciq;

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
    return-void

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lciq;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lciq;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(FFFFLcjw;JIZI)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p9, p0, Lcir;->k:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p6, p0, Lcir;->i:J

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p5, p0, Lcir;->h:Lcjw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput p2, p0, Lcir;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    iput-object v0, p0, Lcir;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const-string v0, ""

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    iput p10, p0, Lcir;->l:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iput p3, p0, Lcir;->f:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p8, p0, Lcir;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iput p1, p0, Lcir;->d:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iput p4, p0, Lcir;->g:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v3}, Ldpe;->b(FF)Z

    move-result v1

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

    :goto_1
    iget v3, p1, Lcir;->d:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean p1, p1, Lcir;->k:Z

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lcir;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v3}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Lcir;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    return v2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p1, Lcir;->f:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    check-cast p1, Lcir;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    cmpg-float v1, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p0, p1, :cond_2

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1b
    return v2

    nop

    nop

    :goto_1c
    goto/32 :goto_35

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p0, Lcir;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1, v3}, Ldpe;->b(FF)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_20
    iget-object v3, p1, Lcir;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_22
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_23
    return v2

    nop

    nop

    :goto_24
    goto/32 :goto_1e

    nop

    nop

    :goto_25
    iget v1, p0, Lcir;->j:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_27
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_28
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_29
    iget v3, p1, Lcir;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2a
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_8
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_34

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide v5, p1, Lcir;->i:J

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return v2

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_17

    nop

    nop

    :goto_32
    if-eqz v1, :cond_a

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1d

    nop

    nop

    :goto_35
    iget-boolean p0, p0, Lcir;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_36
    iget v3, p1, Lcir;->j:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_37
    iget-wide v3, p0, Lcir;->i:J

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v1, p0, Lcir;->h:Lcjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_39
    iget v3, p1, Lcir;->e:F

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return v2

    nop

    :goto_3b
    goto/32 :goto_43

    nop

    nop

    :goto_3c
    if-eqz v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3d
    return v2

    nop

    nop

    :goto_3e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3f
    instance-of v1, p1, Lcir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v1, p0, Lcir;->g:F

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_41
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v1, p0, Lcir;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v3, p1, Lcir;->h:Lcjw;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_45
    const v0, 0x18

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

    nop

    :goto_46
    cmpg-float v1, v1, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lcjw;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lcir;->j:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4
    iget v1, p0, Lcir;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Lcir;->g:F

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    :goto_8
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_e
    iget-boolean v1, p0, Lcir;->k:Z

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_14
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Lcir;->f:F

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    add-int/2addr v0, v1

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

    :goto_1a
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    add-int/2addr v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    iget-wide v1, p0, Lcir;->i:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lcir;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_23
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_25
    invoke-static {v1}, La;->o(Z)I

    move-result p0

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

    :goto_26
    invoke-static {v1, v2}, La;->r(J)I

    move-result v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, p0, Lcir;->h:Lcjw;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v1, p0, Lcir;->e:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x18

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

    :goto_2a
    mul-int/lit8 v0, v0, 0x1f

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
.end method
