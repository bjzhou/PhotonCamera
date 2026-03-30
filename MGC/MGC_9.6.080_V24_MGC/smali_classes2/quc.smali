.class final Lquc;
.super Lque;
.source "PG"


# instance fields
.field private final b:Ljava/util/Random;

.field private final c:J

.field private final d:Lqtq;

.field private final e:Lsrr;


# direct methods
.method public constructor <init>(Luqi;Ljava/util/Random;Lqtq;Lsrr;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lquc;->e:Lsrr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lquc;->b:Ljava/util/Random;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p1, p0, Lquc;->c:J

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

    :goto_4
    iget-wide p1, p1, Luqi;->c:J

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

    :goto_5
    iput-object p3, p0, Lquc;->d:Lqtq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Lque;-><init>(Luqi;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 12

    goto/32 :goto_47

    nop

    nop

    :goto_0
    aput-short v4, v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lqtq;->b:[S

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_3
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v2, p0, Lquc;->c:J

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v0, p0, Lquc;->c:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    const-wide/16 v7, 0xf

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_a
    iput-wide v7, v0, Lqtq;->d:J

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    mul-double/2addr p0, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    iget-object p1, v0, Lqtq;->a:[S

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_11
    aput-short v4, v5, v2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    long-to-int v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_14
    add-int/2addr v1, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v7, v0, Lqtq;->d:J

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_17
    long-to-double v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_18
    iget-wide v3, v0, Lqtq;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_19
    if-ltz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v5, v9, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    const/16 p1, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1f
    int-to-short v10, v10

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-short v11, v11

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_21
    const/16 v4, 0x7fff

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lquc;->e:Lsrr;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_23
    goto :goto_2d

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-wide p0

    nop

    nop

    :goto_27
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-wide/32 v3, 0xdbba00

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_29
    add-int/2addr v2, v6

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2a
    aget-short v6, v5, v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v2, p1, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2c
    move v5, v6

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v6, 0x0

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-wide v2, 0x408f400000000000L    # 1000.0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_31
    aget-short p1, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_32
    if-lt v3, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_33
    shr-int/2addr v11, v10

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v9, v0, Lqtq;->a:[S

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_35
    int-to-long v0, p1

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_38
    invoke-interface {v1}, Lsrr;->a()Lj$/time/Instant;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_39
    ushr-int/lit8 v2, v1, 0x18

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

    :goto_3a
    invoke-virtual {v1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3b
    int-to-double v0, v3

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3d
    div-double/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3e
    aget-short v11, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v5, v0, Lqtq;->a:[S

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_40
    cmp-long v5, v1, v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-long/2addr v7, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_42
    double-to-int p1, v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aput-short v11, v9, v5

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_45
    ushr-int/lit8 v1, v1, 0x10

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

    :goto_46
    div-long/2addr v1, v3

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

    :goto_47
    const v0, 0x8

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_48
    if-nez v0, :cond_5

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_49
    and-int/lit16 v1, v1, 0xff

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lquc;->b:Ljava/util/Random;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4b
    const-wide/16 p0, -0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

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

    :goto_4d
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v3, v0, Lqtq;->b:[S

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

    :goto_4f
    aput-short v10, v9, v5

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Lquc;->d:Lqtq;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_27

    nop

    nop

    :goto_52
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_53
    shr-int v10, v11, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_54
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_51

    nop

    :goto_55
    mul-long/2addr v1, v3

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    nop

    :goto_57
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_58
    if-eq v6, p1, :cond_7

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    aget-short v3, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_5a
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v2, v0, Lqtq;->c:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_5c
    sub-long/2addr v1, v3

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

    :goto_5d
    const/16 v9, 0x100

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5e
    return-wide v0

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_61
    int-to-short v4, v4

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_62
    mul-int/2addr v1, v2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const v1, 0x3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_64
    int-to-double v0, v3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_67
    add-int/lit8 v3, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_68
    aget-short v11, v9, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_69
    long-to-double v2, v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_6a
    if-gez v5, :cond_8

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

    :cond_8
    goto/32 :goto_46

    nop

    nop

    :goto_6b
    iget-object v9, v0, Lqtq;->b:[S

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_6c
    cmpg-double p0, p0, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6d
    aget-short v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop
.end method

.method public final b(Ljava/lang/Long;)Luqi;
    .locals 5

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p0, v1, Luqi;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v2, v1, Luqi;->b:I

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
    check-cast p0, Luqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, La;->L(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lquc;->a:Luqi;

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

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

    :goto_10
    const/4 p0, 0x1

    nop

    nop

    :goto_11
    goto/32 :goto_24

    nop

    nop

    :goto_12
    iget-wide v3, v0, Luqi;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    :goto_19
    or-int/lit8 v2, v2, 0x2

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

    :goto_1a
    check-cast v1, Luqi;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p0, p0, Luqi;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_1e
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    iput-wide p0, v1, Luqi;->c:J

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

    :goto_21
    if-eqz p0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput p0, v1, Luqi;->b:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1c

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_24
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_26
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_27
    sget-object v0, Luqi;->a:Luqi;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_29
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2a
    iget p0, v1, Luqi;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Luqi;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    or-int/lit8 p0, p0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2d
    iget v2, v1, Luqi;->b:I

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lquc;->a:Luqi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_31
    add-int/lit8 p0, p0, -0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_32
    cmp-long v0, v1, v3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_8

    nop

    nop

    :goto_35
    iget-object v0, p0, Lquc;->a:Luqi;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop
.end method

.method public final c(Ljava/lang/Long;)Luqi;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lquc;->d()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lque;->e()Luqi;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lquc;->b(Ljava/lang/Long;)Luqi;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final d()Z
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    if-gtz p0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
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

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    cmp-long p0, v0, v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x5

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

    :goto_11
    iget-wide v0, p0, Lquc;->c:J

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
.end method
