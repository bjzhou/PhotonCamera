.class public Lsif;
.super Lsig;
.source "PG"


# instance fields
.field public final b:Lsia;

.field public final c:Ljava/lang/Character;

.field public volatile d:Lsig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {v0, p1, p2}, Lsia;-><init>(Ljava/lang/String;[C)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, p3}, Lsif;-><init>(Lsia;Ljava/lang/Character;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lsia;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsia;Ljava/lang/Character;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lsig;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_3
    iput-object p1, p0, Lsif;->b:Lsia;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xb

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

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x3d

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v1}, Lsia;->d(C)Z

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

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

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    :goto_12
    iput-object p2, p0, Lsif;->c:Ljava/lang/Character;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    if-nez p2, :cond_2

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

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, p1, p2}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    const-string p1, "Padding character %s was already in alphabet"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method


# virtual methods
.method public a([BLjava/lang/CharSequence;)I
    .locals 13

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 v7, v7, 0x8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lsid;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    if-ge v7, v8, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Lsif;->b:Lsia;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_7
    move v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_8
    int-to-byte v9, v9

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v3, 0x0

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

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    shl-long/2addr v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    const-wide/16 v11, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v5, v8, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

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

    :goto_12
    iget-object v1, p0, Lsif;->b:Lsia;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    add-int v7, v1, v5

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

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

    :goto_16
    add-int/2addr v6, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v7, v7, Lsia;->d:I

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

    :goto_18
    add-int/lit8 v7, v7, -0x8

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

    nop

    :goto_19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_44

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Lsia;->c(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    sub-int/2addr v8, v6

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

    :goto_1c
    iget-object v7, p0, Lsif;->b:Lsia;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1d
    iget v5, v7, Lsia;->f:I

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

    :goto_1e
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_20
    const-string v0, "Invalid input length "

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

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

    :goto_22
    move v6, v5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_24
    add-int/lit8 v8, v6, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v7, v6}, Lsia;->b(C)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p2}, Lsig;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_29
    add-int/lit8 v8, v2, 0x1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, p1}, Lsid;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    move v5, v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return v2

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget v8, v7, Lsia;->e:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int/2addr v1, v3

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

    :goto_31
    if-lt v1, v3, :cond_3

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

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_32
    ushr-long v9, v3, v7

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

    :goto_33
    and-long/2addr v9, v11

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_34
    mul-int/lit8 v8, v5, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

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

    :goto_36
    iget v7, v7, Lsia;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_37
    int-to-long v6, v6

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3a
    iget v3, v3, Lsia;->e:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_3

    nop

    nop

    :goto_3d
    goto/32 :goto_6

    nop

    nop

    :goto_3e
    const v0, 0x10

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3f
    move v6, v8

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    mul-int/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_42
    move v2, v1

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_45
    const v1, 0x1f

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_46
    aput-byte v9, p1, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_23

    nop

    :goto_48
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    or-long/2addr v3, v6

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4a
    if-lt v7, v8, :cond_4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-int/lit8 v7, v5, -0x1

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

    :goto_4c
    iget-object v7, p0, Lsif;->b:Lsia;

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

    nop

    :goto_4d
    move v2, v8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_5
    goto/32 :goto_26

    nop

    :goto_4f
    long-to-int v9, v9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public b(Ljava/lang/Appendable;[BI)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const v0, 0x1d

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

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int v2, p3, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    array-length v0, p2

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

    :goto_7
    invoke-static {v1, p3, v0}, Lrrf;->w(III)V

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    goto :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lsif;->b:Lsia;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    iget-object v0, p0, Lsif;->b:Lsia;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    if-lt v1, p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1, p2, v1, v0}, Lsif;->f(Ljava/lang/Appendable;[BII)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, v0, Lsia;->f:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    add-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, v0, Lsia;->f:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final c(I)I
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lsia;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lsif;->b:Lsia;

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

    :goto_2
    mul-long/2addr v0, p0

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

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_4
    long-to-int p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const-wide/16 p0, 0x8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 p0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-long/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x13

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    int-to-long v0, p0

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

    :goto_c
    int-to-long p0, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    div-long/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final d(I)I
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0, v1}, Lrrf;->ae(IILjava/math/RoundingMode;)I

    move-result p1

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

    :goto_2
    mul-int/2addr p0, p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lsif;->b:Lsia;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget v0, v0, Lsia;->f:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

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

    goto/32 :goto_6

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    iget-object p0, p0, Lsif;->b:Lsia;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    return p0

    nop

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

    nop

    :goto_f
    iget p0, p0, Lsia;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x3d

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    add-int/lit8 p0, p0, 0x1

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

    :goto_c
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    if-eqz p0, :cond_1

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

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lsif;->c:Ljava/lang/Character;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    if-gez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    goto/32 :goto_2

    nop

    nop

    :goto_15
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    const/4 p0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_9
    iget-object p1, p1, Lsif;->c:Ljava/lang/Character;

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

    :goto_a
    return v1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
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

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

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

    :goto_e
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v2}, Lsia;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    iget-object v2, p1, Lsif;->b:Lsia;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lsif;->c:Ljava/lang/Character;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    check-cast p1, Lsif;

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

    :goto_14
    return p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lsif;->b:Lsia;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v0, p1, Lsif;

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
.end method

.method final f(Ljava/lang/Appendable;[BII)V
    .locals 7

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    or-long/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1
    iget-object p2, p0, Lsif;->b:Lsia;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/2addr p2, v4

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lsif;->b:Lsia;

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

    nop

    :goto_6
    iget-object v0, p0, Lsif;->b:Lsia;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_8
    iget p2, p2, Lsia;->d:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p2, p0, Lsif;->b:Lsia;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, v0, Lsia;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_b
    add-int/2addr v1, p2

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

    :goto_c
    add-int/lit8 p2, p4, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p3, Lsia;->d:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_e
    iget v0, v0, Lsia;->d:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p3, v0, v1}, Lrrf;->w(III)V

    goto/32 :goto_5

    nop

    nop

    :goto_10
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    iget-object p2, p0, Lsif;->c:Ljava/lang/Character;

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

    :goto_12
    goto :goto_1b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/2addr v1, v0

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

    :goto_18
    add-int v5, p3, v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p3, p0, Lsif;->b:Lsia;

    nop

    nop

    :goto_1b
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1c
    if-lt v0, p4, :cond_1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    mul-int/2addr p2, v4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    goto/32 :goto_2f

    nop

    nop

    :goto_21
    const/16 v4, 0x8

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v1, v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    and-int/lit16 v5, v5, 0xff

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_24
    ushr-long v5, v2, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget-byte v5, p2, v5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v6, v0, Lsia;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    array-length v1, p2

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

    :goto_29
    iget-object v0, p0, Lsif;->b:Lsia;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2a
    add-int v0, p3, p4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2b
    goto/32 :goto_4

    nop

    nop

    :goto_2c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    mul-int/lit8 v0, p4, 0x8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v5}, Lsia;->a(I)C

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 p2, 0x3d

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_30
    if-nez p2, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    :goto_31
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    shl-long/2addr v2, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_33
    move v0, v1

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_35
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_21

    nop

    nop

    :goto_37
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_38
    goto :goto_36

    nop

    :goto_39
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3b
    iget-object p2, p0, Lsif;->c:Ljava/lang/Character;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3c
    long-to-int v5, v5

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

    :goto_3d
    sub-int/2addr v0, v1

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

    :goto_3e
    iget p2, p2, Lsia;->f:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3f
    if-le p4, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_5

    nop

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

    :cond_5
    goto/32 :goto_2b

    nop

    :goto_41
    int-to-long v5, v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x12

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    and-int/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_34

    nop

    :goto_46
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_47
    sub-int v0, p2, v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_49
    const/4 v1, 0x0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/2addr p0, v0

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

    :goto_1
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    iget-object v0, p0, Lsif;->c:Ljava/lang/Character;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-object p0, p0, Lsif;->b:Lsia;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lsia;->hashCode()I

    move-result p0

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const-string p0, ".omitPadding()"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    iget-object p0, p0, Lsif;->c:Ljava/lang/Character;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

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

    :goto_7
    goto/32 :goto_21

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    iget-object v1, p0, Lsif;->c:Ljava/lang/Character;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lsif;->b:Lsia;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v2, 0x8

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    iget v1, v1, Lsia;->d:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    const-string p0, "\')"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    rem-int/2addr v2, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    iget-object v1, p0, Lsif;->b:Lsia;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "BaseEncoding."

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

    nop

    :goto_17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    goto/32 :goto_4

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v1, ".withPadChar(\'"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
