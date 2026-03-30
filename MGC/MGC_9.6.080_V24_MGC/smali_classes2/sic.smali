.class final Lsic;
.super Lsif;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

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
    invoke-direct {p0, v0, p3}, Lsif;-><init>(Lsia;Ljava/lang/Character;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x40

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lsia;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-direct {v0, p1, p2}, Lsia;-><init>(Ljava/lang/String;[C)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iget-object p0, v0, Lsia;->b:[C

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

    :goto_8
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, La;->au(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

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
    const/4 p0, 0x0

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    array-length p0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

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
.end method


# virtual methods
.method public final a([BLjava/lang/CharSequence;)I
    .locals 7

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_20

    nop

    :goto_1
    goto/32 :goto_38

    nop

    nop

    :goto_2
    and-int/lit16 v5, v5, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3
    if-lt v6, v4, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aput-byte v3, p1, v1

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

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    shl-int/lit8 v2, v2, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    ushr-int/lit8 v5, v2, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v3, v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, v5}, Lsia;->b(C)I

    move-result v4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_d
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_e
    aput-byte v5, p1, v4

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

    nop

    :goto_f
    invoke-direct {p0, p1}, Lsid;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Lsic;->b:Lsia;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v5, p0, Lsic;->b:Lsia;

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

    :goto_14
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    or-int/2addr v2, v3

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

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v6, v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_32

    nop

    nop

    :goto_1a
    add-int/lit8 v1, v1, 0x3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    ushr-int/lit8 v3, v2, 0x10

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1c
    move v0, v6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    shl-int/lit8 v3, v3, 0x6

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v4}, Lsia;->b(C)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_41

    nop

    nop

    :goto_21
    add-int/lit8 v4, v1, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

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

    nop

    :goto_23
    invoke-virtual {v5, v3}, Lsia;->b(C)I

    move-result v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    or-int/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    goto :goto_20

    nop

    nop

    :goto_26
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_27
    int-to-byte v3, v3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lsic;->b:Lsia;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    :goto_2a
    iget-object v2, p0, Lsic;->b:Lsia;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v4, v3}, Lsia;->b(C)I

    move-result v3

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v0, v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p2}, Lsig;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p0, Lsid;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v3, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_36
    move v1, v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_37
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

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

    :goto_38
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v0}, Lsia;->c(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3a
    if-lt v3, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3b
    aput-byte v2, p1, v3

    nop

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

    nop

    :goto_3c
    int-to-byte v5, v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3d
    add-int/lit8 v3, v1, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3e
    int-to-byte v2, v2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_3

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_44
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

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

    nop

    :goto_45
    or-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-lt v0, v2, :cond_4

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    shl-int/lit8 v3, v3, 0xc

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

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

    nop

    :goto_49
    iget-object v4, p0, Lsic;->b:Lsia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4a
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4b
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v0, "Invalid input length "

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

    :goto_4d
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4e
    move v1, v4

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Appendable;[BI)V
    .locals 6

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5, v3}, Lsia;->a(I)C

    move-result v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1
    and-int/lit8 v2, v2, 0x3f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2
    add-int/lit8 v4, v1, 0x2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    ushr-int/lit8 v4, v2, 0x6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    or-int/2addr v2, v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    shl-int/lit8 v3, v3, 0x10

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget-byte v2, p2, v2

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

    :goto_8
    invoke-virtual {v3, v4}, Lsia;->a(I)C

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9
    shl-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_b
    ushr-int/lit8 v3, v2, 0x12

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    and-int/lit8 v4, v4, 0x3f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    or-int/2addr v2, v3

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

    nop

    :goto_12
    invoke-virtual {v3, v4}, Lsia;->a(I)C

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v1, p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    invoke-virtual {p0, p1, p2, v1, p3}, Lsif;->f(Ljava/lang/Appendable;[BII)V

    :goto_16
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_17
    and-int/lit16 v2, v2, 0xff

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    and-int/lit8 v4, v4, 0x3f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr p3, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    aget-byte v3, p2, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    and-int/lit16 v3, v3, 0xff

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

    :goto_1d
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1e
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x16

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1, p3, v0}, Lrrf;->w(III)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, p0, Lsic;->b:Lsia;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    :goto_24
    invoke-virtual {v3, v2}, Lsia;->a(I)C

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v0, v0, -0x3

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

    :goto_26
    if-ge v0, v2, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    array-length v0, p2

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

    :goto_28
    aget-byte v4, p2, v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_2
    goto/32 :goto_34

    nop

    :goto_2a
    ushr-int/lit8 v4, v2, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v1, v1, 0x3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v2, v1, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v3, p0, Lsic;->b:Lsia;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v3, p0, Lsic;->b:Lsia;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_31
    move v0, p3

    nop

    nop

    :goto_32
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v5, p0, Lsic;->b:Lsia;

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

    :goto_34
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_36
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/32 :goto_2b

    nop

    nop
.end method
