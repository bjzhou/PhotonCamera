.class public final Lkna;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Llsd;

.field public final b:Llse;

.field public final c:F

.field public final d:Lrss;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Llsd;Llse;FLrss;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkna;->b:Llse;

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

    :goto_2
    iput p5, p0, Lkna;->e:I

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_4
    iput p6, p0, Lkna;->f:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object p1, p0, Lkna;->a:Llsd;

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

    :goto_6
    iput-object p4, p0, Lkna;->d:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput p3, p0, Lkna;->c:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static a()Lkna;
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v6, 0x0

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

    :goto_1
    sget-object v1, Llsd;->a:Llsd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v4, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v7, Lkna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v0, 0x1f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v2, Llse;->a:Llse;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, v7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

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

    :goto_a
    const v1, 0x14

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

    nop

    :goto_b
    return-object v7

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-direct/range {v0 .. v6}, Lkna;-><init>(Llsd;Llse;FLrss;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v0, 0x17

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lkna;->d:Lrss;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lkna;->b:Llse;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d
    cmpl-float v1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v3, p1, Lkna;->c:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, p1, Lkna;->f:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v3, :cond_5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Lkna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1a
    if-eq v1, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_32

    nop

    nop

    :goto_1c
    goto/32 :goto_31

    nop

    nop

    :goto_1d
    const v1, 0x7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_1f
    instance-of v1, p1, Lkna;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    move v1, v0

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

    nop

    :goto_21
    if-nez v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_33

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Lkna;->e:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v3, p1, Lkna;->a:Llsd;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_8

    nop

    nop

    :goto_27
    if-eq v1, v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c

    nop

    nop

    :goto_28
    add-int v0, v0, v1

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

    :goto_29
    if-eq v1, v3, :cond_b

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2a
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    :goto_2d
    iget v1, p0, Lkna;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2e
    iget-object p1, p1, Lkna;->d:Lrss;

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

    nop

    :goto_2f
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_30
    iget-object v1, p0, Lkna;->a:Llsd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, p1, Lkna;->d:Lrss;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_34
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_36
    iget v1, p0, Lkna;->f:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_37
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v3, p1, Lkna;->b:Llse;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3a
    iget v3, p1, Lkna;->e:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iget v1, v1, Llse;->h:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    nop

    :goto_6
    const v0, 0x9

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
    iget p0, p0, Lkna;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lkna;->a:Llsd;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    iget-object v1, p0, Lkna;->b:Llse;

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

    :goto_d
    return v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit16 v0, v0, 0x20f

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

    :goto_10
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    iget v0, v0, Llsd;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_14
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, ", lensFocusDistance="

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkna;->b:Llse;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, ", controlAfState="

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

    :goto_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Lkna;->c:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1b

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

    :goto_12
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    :goto_18
    const-string v3, "{controlAfMode="

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p0, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->spWrPrtn:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lkna;->a:Llsd;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
