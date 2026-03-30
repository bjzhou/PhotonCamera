.class public final Lchk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public synthetic constructor <init>(DDDDD)V
    .locals 15

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    move-wide/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    move-wide/from16 v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    move-wide/from16 v5, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-direct/range {v0 .. v14}, Lchk;-><init>(DDDDDDD)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const-wide/16 v11, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-wide/from16 v7, p7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    move-wide/from16 v9, p9

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    const-wide/16 v13, 0x0

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_12
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(DDDDDDD)V
    .locals 0

    goto/32 :goto_3e

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1
    const-string p1, "Parameter a or g is zero, and c is zero, the transfer function is constant"

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_59

    nop

    nop

    :goto_3
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide p9, p0, Lchk;->e:D

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p1, p9, p10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_3

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

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p3, :cond_4

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_4
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_9
    cmpg-double p0, p9, p5

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

    :goto_a
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p2, "Parameter d must be in the range [0..1], was "

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_51

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3f

    nop

    nop

    :goto_10
    throw p0

    nop

    :goto_11
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    iput-wide p7, p0, Lchk;->d:D

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    if-gez p3, :cond_5

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_16
    cmpl-double p0, p9, p11

    nop

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

    :goto_17
    cmpg-double p0, p3, p5

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_18
    if-lez p0, :cond_6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz p0, :cond_7

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p0, :cond_8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-gez p0, :cond_9

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p1, "The transfer function must be increasing"

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1e
    invoke-static {p7, p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    cmpg-double p0, p1, p5

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

    :goto_20
    throw p0

    nop

    :goto_21
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p0, :cond_a

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6a

    nop

    nop

    :goto_25
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_26
    return-void

    nop

    :goto_27
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2b
    if-gez p0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2f
    iput-wide p11, p0, Lchk;->f:D

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-wide/high16 p11, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_32
    if-gez p0, :cond_c

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_33
    cmpg-double p0, p1, p5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_34
    cmpg-double p3, p7, p5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_35
    cmpg-double p3, p1, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_36
    cmpl-double p0, p9, p5

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_37
    invoke-static {p11, p12}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p9, p10}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_39
    throw p0

    nop

    nop

    :goto_3a
    cmpg-double p0, p1, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3b
    const-string p1, "Parameter a or g is zero, the transfer function is constant"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_3d
    cmpg-double p0, p7, p5

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3f
    cmpg-double p0, p3, p5

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

    :goto_40
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_f

    nop

    :goto_42
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-wide p5, p0, Lchk;->c:D

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_44
    cmpg-double p0, p1, p5

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_45
    goto/16 :goto_2d

    nop

    :goto_46
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const-string p1, "Parameters cannot be NaN"

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_4a
    iput-wide p1, p0, Lchk;->a:D

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-string p1, "Parameter c is zero, the transfer function is constant"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz p0, :cond_d

    nop

    goto/32 :goto_27

    nop

    :cond_d
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput-wide p3, p0, Lchk;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4e
    const-string p1, "The transfer function must be positive or increasing"

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez p0, :cond_e

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz p3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_f
    :goto_51
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const-wide/high16 p5, -0x4000000000000000L    # -2.0

    nop

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

    :goto_53
    if-nez p0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_10
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_54
    cmpg-double p0, p9, p11

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_55
    if-gez p0, :cond_11

    nop

    goto/32 :goto_29

    nop

    :cond_11
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_57
    if-eqz p0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_40

    nop

    nop

    :goto_58
    const-wide/high16 p5, -0x3ff8000000000000L    # -3.0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_59
    const-wide/16 p5, 0x0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_5a
    iput-wide p13, p0, Lchk;->g:D

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    :goto_5c
    cmpg-double p3, p7, p5

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

    :goto_5d
    if-eqz p0, :cond_13

    nop

    goto/32 :goto_27

    nop

    :cond_13
    goto/32 :goto_1e

    nop

    nop

    :goto_5e
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {p13, p14}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

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

    :goto_64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-eqz p0, :cond_14

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez p0, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    :goto_68
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

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

    nop

    :goto_3
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    cmpg-double p0, v0, v2

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

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iget-wide v0, p0, Lchk;->a:D

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    return p0

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final b()Z
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    :goto_6
    cmpg-double p0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p0, Lchk;->a:D

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v0, 0xe

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    :goto_2
    check-cast p1, Lchk;

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    iget-wide v3, p0, Lchk;->d:D

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7
    return v2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    :goto_9
    if-eq p0, p1, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_28

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_e
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v5, p1, Lchk;->b:D

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v5, p1, Lchk;->d:D

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

    :goto_11
    iget-wide v5, p1, Lchk;->e:D

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide v3, p0, Lchk;->e:D

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v1, p1, Lchk;

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

    :goto_16
    iget-wide v3, p0, Lchk;->a:D

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v2

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v5, p1, Lchk;->a:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    return v2

    nop

    :goto_1f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_b

    nop

    nop

    :goto_22
    iget-wide v3, p0, Lchk;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v2

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    :goto_25
    iget-wide v5, p1, Lchk;->f:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    iget-wide v3, p0, Lchk;->b:D

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_27
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    :goto_29
    iget-wide v3, p0, Lchk;->f:D

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return v2

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-wide p0, p1, Lchk;->g:D

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x1d

    nop

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

    :goto_30
    return v2

    nop

    nop

    :goto_31
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-wide v3, p0, Lchk;->g:D

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_34
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    :goto_35
    iget-wide v5, p1, Lchk;->c:D

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

    :goto_36
    return v2

    nop

    nop

    :goto_37
    goto/32 :goto_2

    nop

    nop

    :goto_38
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_7

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3b
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3d
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v1, p0, Lchk;->g:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v1, p0, Lchk;->b:D

    nop

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

    :goto_5
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_16

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v1, p0, Lchk;->f:D

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/2addr v0, v1

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

    :goto_b
    invoke-static {v1, v2}, Lchj;->a(D)I

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v1, p0, Lchk;->e:D

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    iget-wide v1, p0, Lchk;->d:D

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    const v0, 0x16

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

    :goto_f
    iget-wide v1, p0, Lchk;->c:D

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v2}, Lchj;->a(D)I

    move-result v1

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

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_15
    invoke-static {v0, v1}, Lchj;->a(D)I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1e

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

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1c
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    iget-wide v0, p0, Lchk;->a:D

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1, v2}, Lchj;->a(D)I

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_21
    invoke-static {v1, v2}, Lchj;->a(D)I

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1, v2}, Lchj;->a(D)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_23
    invoke-static {v1, v2}, Lchj;->a(D)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v1, p0, Lchk;->d:D

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "TransferParameters(gamma="

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v1, p0, Lchk;->e:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_a
    const v0, 0xd

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v1, p0, Lchk;->b:D

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

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    iget-wide v1, p0, Lchk;->c:D

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const/16 p0, 0x29

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const-string v1, ", c="

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

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_16
    const-string v1, ", a="

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    iget-wide v1, p0, Lchk;->g:D

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    iget-wide v1, p0, Lchk;->f:D

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

    :goto_1b
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    const-string v1, ", d="

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, ", f="

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    const-string v1, ", e="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    iget-wide v1, p0, Lchk;->a:D

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v1, ", b="

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_29
    add-int v0, v0, v1

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
.end method
