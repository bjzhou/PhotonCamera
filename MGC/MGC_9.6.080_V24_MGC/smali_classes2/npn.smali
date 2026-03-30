.class public final Lnpn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v2, p0, Lnpn;->a:[I

    nop

    nop

    aget-object v4, v0, v1

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    aput v4, v2, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    array-length v1, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const-string v0, "\\."

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    nop

    :goto_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    :goto_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_2

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_3

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_10
    throw p1

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    array-length v2, v0

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
    const v0, 0x17

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v3, "Unrecognized version name is found: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    throw p1

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1c
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    new-array v1, v1, [I

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    :goto_22
    if-ge v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_23
    iput-object v1, p0, Lnpn;->a:[I

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

    :goto_24
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lnpn;)I
    .locals 8

    goto/32 :goto_18

    nop

    nop

    :goto_0
    goto/32 :goto_30

    nop

    :goto_1
    aget v3, v6, v1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    array-length v1, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    return v4

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_32

    nop

    nop

    :goto_5
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    return v4

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    return v5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_38

    nop

    nop

    :goto_b
    if-lt v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

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

    :goto_c
    return v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    if-lt v1, v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lt v3, v1, :cond_2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    iget-object v1, p1, Lnpn;->a:[I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_13
    if-gtz p0, :cond_3

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v1, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v2, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    if-gtz p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p1, Lnpn;->a:[I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    aget p1, p1, v1

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

    :goto_1b
    if-ltz p1, :cond_7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    array-length v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    array-length v7, v6

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_20
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_21
    array-length v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_22
    if-lt v3, v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_23
    return v4

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_2e

    nop

    nop

    :goto_26
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_27
    aget v2, v2, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v4, -0x1

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

    :goto_29
    return v5

    nop

    nop

    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lnpn;->a:[I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v1, v0

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    :goto_2f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Lnpn;->a:[I

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

    :goto_32
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_33
    aget p0, p0, v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_34
    array-length v1, p0

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

    nop

    :goto_35
    iget-object v6, p1, Lnpn;->a:[I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_36
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    :goto_37
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_38
    if-ltz p0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x15

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_10

    nop

    :goto_3b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3d
    if-gt v2, v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lnpn;->a(Lnpn;)I

    move-result p0

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lnpn;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
