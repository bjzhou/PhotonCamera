.class public final Ldys;
.super Ldyp;
.source "PG"


# instance fields
.field public p:Ldyt;

.field private q:F

.field private r:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ldyr;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldys;->p:Ldyt;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

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

    :goto_3
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Ldys;->q:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2}, Ldyp;-><init>(Ljava/lang/Object;Ldyr;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean p1, p0, Ldys;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lltd;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Ldys;->q:F

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

    :goto_3
    invoke-direct {p0, p1}, Ldyp;-><init>(Lltd;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ldys;->p:Ldyt;

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

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean p1, p0, Ldys;->r:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final e(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final f()V
    .locals 5

    goto/32 :goto_18

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

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

    :goto_4
    iget v3, p0, Ldys;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ldyt;->a()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ldys;->p:Ldyt;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    float-to-double v1, v1

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    float-to-double v3, v3

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

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_f
    iput-wide v1, v0, Ldyt;->d:D

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

    :goto_10
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ldyp;->b()F

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    const-string v0, "Final position of the spring cannot be greater than the max value."

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

    :goto_13
    float-to-double v1, v1

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

    nop

    :goto_14
    iput-wide v1, v0, Ldyt;->c:D

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

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
    throw p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide v3, 0x404f400000000000L    # 62.5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, "Final position of the spring cannot be less than the min value."

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

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_22
    invoke-super {p0}, Ldyp;->f()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

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

    :goto_24
    cmpl-double v3, v1, v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_27
    iget v3, p0, Ldys;->o:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_28
    float-to-double v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-double/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-gez v1, :cond_2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    cmpg-double v1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final g(J)Z
    .locals 20

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    :goto_1
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v1, v0, Ldys;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4
    sub-float/2addr v1, v5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, v0, Ldys;->o:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, v0, Ldys;->h:F

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iget-object v6, v0, Ldys;->p:Ldyt;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ltz v1, :cond_0

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

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    :goto_a
    float-to-double v7, v5

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_b
    float-to-double v14, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    move-wide/from16 v16, v5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    invoke-virtual {v6}, Ldyt;->a()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    div-long v18, p1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_10
    float-to-double v7, v1

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    float-to-double v5, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    iget-boolean v1, v0, Ldys;->r:Z

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_13
    const-wide/16 v11, 0x2

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

    :goto_14
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {v13 .. v19}, Ldyt;->b(DDJ)Ldyl;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ldyt;->a()F

    move-result v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    float-to-double v14, v5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_19
    move-wide/from16 v18, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, v0, Ldys;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v13, v0, Ldys;->p:Ldyt;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v0, Ldys;->p:Ldyt;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v5, v1, Ldyl;->a:F

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1e
    iget-object v13, v0, Ldys;->p:Ldyt;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v6, v0, Ldys;->p:Ldyt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_20
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v6, v1}, Ldyt;->d(F)V

    goto/32 :goto_28

    nop

    nop

    :goto_22
    iget v5, v0, Ldys;->h:F

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_25
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_27
    iput v1, v0, Ldys;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v5, v0, Ldys;->q:F

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2a
    iget v1, v0, Ldys;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    invoke-virtual/range {v6 .. v12}, Ldyt;->b(DDJ)Ldyl;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_2c
    float-to-double v7, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput v1, v0, Ldys;->i:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2e
    return v2

    nop

    :goto_2f
    goto/32 :goto_3e

    nop

    nop

    :goto_30
    iget v1, v1, Ldyl;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_1

    nop

    goto/32 :goto_2f

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_7

    nop

    :goto_33
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput v5, v0, Ldys;->i:F

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_35
    iput v4, v0, Ldys;->h:F

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v6, v0, Ldys;->p:Ldyt;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_37
    cmpl-float v6, v1, v5

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_38
    float-to-double v9, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_39
    if-nez v1, :cond_2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v5, v1, Ldyl;->a:F

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v1, v0, Ldys;->i:F

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    cmpl-float v1, v1, v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3d
    iget v1, v0, Ldys;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v1, v0, Ldys;->q:F

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, v0, Ldys;->p:Ldyt;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_42
    iget v1, v1, Ldyl;->b:F

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

    :goto_43
    iput v5, v0, Ldys;->i:F

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    :goto_45
    iget v5, v0, Ldys;->n:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_46
    cmpg-double v1, v7, v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Ldyt;->a()F

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_48
    iget v7, v0, Ldys;->q:F

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_49
    iput v4, v0, Ldys;->h:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4a
    move-wide/from16 v16, v5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-wide v9, v6, Ldyt;->d:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_4c
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4d
    move-wide/from16 v11, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4e
    iput v1, v0, Ldys;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget v1, v1, Ldyl;->b:F

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_50
    return v3

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_52
    cmpg-double v5, v7, v9

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v6, v7}, Ldyt;->d(F)V

    goto/32 :goto_5b

    nop

    nop

    :goto_54
    if-nez v6, :cond_4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget v1, v0, Ldys;->h:F

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget v1, v0, Ldys;->q:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_58
    if-ltz v5, :cond_5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-wide v5, v6, Ldyt;->c:D

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5b
    iput v5, v0, Ldys;->q:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5c
    invoke-virtual/range {v13 .. v19}, Ldyt;->b(DDJ)Ldyl;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5d
    iget v5, v1, Ldyl;->a:F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5e
    float-to-double v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_5f
    iput-boolean v3, v0, Ldys;->r:Z

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    add-int v0, v0, v1

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

    :goto_61
    const/4 v2, 0x1

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

    nop

    :goto_62
    iget-object v6, v0, Ldys;->p:Ldyt;

    nop

    goto/32 :goto_48

    nop

    nop
.end method

.method public final l(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Ldyp;->m:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ldyt;->d(F)V

    goto/32 :goto_c

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ldys;->p:Ldyt;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Ldys;->q:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p1}, Ldyt;-><init>(F)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Ldys;->p:Ldyt;

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ldyt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ldyp;->f()V

    goto/32 :goto_6

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ldys;->p:Ldyt;

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
.end method

.method public final m()V
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_15

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
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const-string v0, "Animations may only be started on the same thread as the animation handler"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    cmpl-double v0, v0, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ldys;->p:Ldyt;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    iget-wide v0, v0, Ldyt;->b:D

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    :goto_f
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    :goto_10
    new-instance p0, Landroid/util/AndroidRuntimeException;

    nop

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

    :goto_11
    iget-boolean v0, p0, Ldys;->m:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ldyc;->b()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Ldys;->r:Z

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_19
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    const v0, 0x14

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    const-string v0, "Spring animations can only come to an end when there is damping"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
