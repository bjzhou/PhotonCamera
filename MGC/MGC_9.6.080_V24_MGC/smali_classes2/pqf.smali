.class final Lpqf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqh;


# instance fields
.field private a:[D

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [D

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    iput-object v0, p0, Lpqf;->a:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput v0, p0, Lpqf;->b:I

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
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    aput-wide v2, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    array-length v2, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v2, v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2a

    nop

    nop

    :goto_7
    goto/32 :goto_27

    nop

    nop

    :goto_8
    iget v1, p0, Lpqf;->b:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    if-gtz v3, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lpqf;->a:[D

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v3, -0x7ffffff7

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

    nop

    :goto_d
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    :goto_f
    sub-int v3, v2, v0

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

    :goto_10
    iget p1, p0, Lpqf;->b:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lpqf;->a:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    iput p1, p0, Lpqf;->b:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    iget-object v0, p0, Lpqf;->a:[D

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

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

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

    :goto_16
    if-ltz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    const v2, 0x7fffffff

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    shr-int/lit8 v3, v2, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_24

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Lpqf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    const v0, 0x1e

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

    nop

    :goto_1e
    new-instance p0, Ljava/lang/OutOfMemoryError;

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

    :goto_1f
    sub-int v3, v0, v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    const v2, 0x7ffffff7

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

    :goto_23
    throw p0

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-gt v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gtz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p1, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-gez v0, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

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

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_5

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop
.end method

.method public final b(Lpqm;[Ljava/lang/Object;)V
    .locals 17

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_0
    iget-wide v11, v8, Lpqq;->b:D

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1
    move/from16 v16, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    div-double/2addr v13, v6

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_3
    add-double/2addr v6, v9

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    const/4 v6, 0x0

    nop

    :goto_5
    goto/32 :goto_4b

    nop

    nop

    :goto_6
    move-object/from16 v5, p1

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

    :goto_7
    iput-wide v3, v8, Lpqq;->e:D

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

    :goto_8
    iget-wide v11, v8, Lpqq;->d:D

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v11, v8, Lpqq;->d:D

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    nop

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

    :goto_d
    add-int/lit8 v7, v6, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_f
    invoke-direct {v8, v3, v4}, Lpqq;-><init>(D)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1c

    nop

    nop

    :goto_11
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_12
    int-to-double v1, v7

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_13
    iget v3, v0, Lpqf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    iget-object v6, v5, Lpqm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    iget-object v1, v8, Lpqq;->f:[D

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    if-ltz v11, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_19
    add-double/2addr v11, v9

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-double v11, v3, v11

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1b
    iput-wide v3, v8, Lpqq;->c:D

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    if-eqz v8, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_57

    nop

    nop

    :goto_1e
    iput-wide v6, v8, Lpqq;->a:D

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    if-lt v2, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v6, Lnar;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    cmpl-double v11, v3, v11

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v3, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v8, Lpqq;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput-wide v11, v1, v6

    nop

    nop

    :goto_26
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_27
    iget-wide v11, v8, Lpqq;->c:D

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    if-gtz v11, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2b
    aget-wide v11, v1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2e
    iget-wide v11, v8, Lpqq;->d:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_30
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iput-wide v3, v8, Lpqq;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_33
    check-cast v3, Ljava/util/TreeMap;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_34
    invoke-static/range {p2 .. p2}, Lpqc;->a([Ljava/lang/Object;)Lpqc;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_35
    move/from16 v16, v2

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

    nop

    :goto_36
    mul-double/2addr v13, v15

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

    :goto_37
    add-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v8, Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_39
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2a

    nop

    nop

    :goto_3b
    aget-wide v3, v3, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_5

    nop

    nop

    :goto_3d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v3, v6, Lnar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3f
    check-cast v8, Lpqr;

    nop

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

    :goto_40
    iget-object v3, v0, Lpqf;->a:[D

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v8, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_42
    iget-wide v6, v8, Lpqq;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_43
    add-int/lit8 v2, v16, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_44
    iget-object v8, v6, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_45
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

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

    :goto_46
    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_49
    add-double/2addr v13, v6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4a
    iget-wide v13, v8, Lpqq;->d:D

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v7, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4c
    add-double/2addr v11, v6

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

    :goto_4d
    cmpg-double v11, v3, v11

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    :goto_4f
    div-double v6, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_50
    const v0, 0x3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_51
    mul-double/2addr v13, v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_52
    mul-double/2addr v11, v13

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_53
    cmpl-double v1, v11, v13

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move v6, v7

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-gtz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_56
    if-lt v6, v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    :goto_57
    new-instance v8, Lpqq;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move/from16 v2, v16

    nop

    goto/32 :goto_3c

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpqf;->a:[D

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
.end method
