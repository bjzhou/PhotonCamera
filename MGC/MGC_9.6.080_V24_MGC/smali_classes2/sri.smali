.class public final Lsri;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1c

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
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static a(DLjava/math/RoundingMode;)J
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3c

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_28

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_50

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_3d

    nop

    nop

    :goto_5
    invoke-static {v0}, Lrrf;->ab(Z)V

    :goto_6
    :pswitch_3
    goto/32 :goto_27

    nop

    nop

    :goto_7
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/lang/ArithmeticException;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1}, Lsri;->b(D)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    goto/32 :goto_49

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    :goto_10
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_4b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, Lrrf;->ah(D)Z

    move-result v0

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

    :goto_15
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    move v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :goto_18
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    double-to-long v2, p0

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

    :goto_1a
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_1b
    cmpl-double v0, p0, v4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    and-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1d
    new-instance p0, Ljava/lang/ArithmeticException;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1e
    return-wide p0

    nop

    nop

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    sub-double v6, p0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    const-string p0, " and rounding mode "

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_23
    invoke-static {p0, p1}, Lsri;->b(D)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_24
    double-to-long v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_25
    double-to-long v2, p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_26
    goto :goto_28

    nop

    :pswitch_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-wide v4, p0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_31

    nop

    nop

    :goto_29
    sget-object v0, Lsrh;->a:[I

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ltz v0, :cond_3

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_6d

    nop

    nop

    :goto_2b
    goto/16 :goto_6

    nop

    :goto_2c
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    const-string v2, "rounded value is out of range for input "

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2f
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_30
    if-gtz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_31
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_32
    double-to-long p0, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_33
    if-gtz v0, :cond_6

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_65

    nop

    :goto_35
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string p1, "input is infinite or NaN"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_37
    long-to-double v4, v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p0, p1}, Lsri;->b(D)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-wide/16 v4, 0x1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    cmpl-double v0, v6, v2

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

    :goto_3b
    cmpl-double v0, v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3c
    add-long/2addr v2, v4

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3d
    cmpl-double v0, p0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3e
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_70

    nop

    nop

    :goto_42
    sub-double v6, p0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_45
    add-double v4, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_7

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    throw v0

    nop

    nop

    :goto_49
    goto/32 :goto_1d

    nop

    nop

    :goto_4a
    move v0, v2

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-ltz v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4f
    cmpl-double v0, p0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {p0, p1}, Lsri;->b(D)Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_51
    aget v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    cmpg-double v3, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_53
    const v1, 0x14

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

    :goto_54
    sub-double/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_28

    nop

    nop

    :pswitch_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_56
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_40

    nop

    :goto_5a
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_5c
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5e
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v2, 0x0

    nop

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

    :goto_60
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_1

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_62
    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_63

    nop

    nop

    :goto_63
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v0, -0x1

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_72

    nop

    nop

    :goto_66
    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_25

    nop

    nop

    :goto_69
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-ltz v0, :cond_b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b

    nop

    nop

    :goto_6b
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3f

    nop

    :goto_6c
    cmpg-double v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_6d
    move v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_72
    int-to-long v4, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_73
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(D)Z
    .locals 7

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v5, -0x3ff

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lrrf;->ah(D)Z

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    or-long/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide v5, 0xfffffffffffffL

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    if-gt v0, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    const-wide/high16 v5, 0x10000000000000L

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    const-string v3, "not a normal value"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmpl-double v0, p0, v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    add-long/2addr v3, v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    and-long/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_20

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    rsub-int/lit8 v0, v0, 0x34

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

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v1, v2

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return v2

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1f

    nop

    nop

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, p1}, Lrrf;->ah(D)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    const v0, 0x3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    :goto_29
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_2

    nop

    nop
.end method
