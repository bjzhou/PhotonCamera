.class public final Ldnv;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation runtime Luax;
.end annotation


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 8

    goto/32 :goto_3c

    nop

    nop

    :goto_0
    goto/16 :goto_4f

    nop

    nop

    :goto_1
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "Strategy.Simple"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "Strategy.Balanced"

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
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "LineBreak(strategy="

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 p0, 0x29

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_8
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_9
    const-string v5, "WordBreak.None"

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_a
    const-string v5, "WordBreak.Phrase"

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Ldnw;->b(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_4f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Ldnw;->c(I)I

    move-result p0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "Strictness.Loose"

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_11
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2e

    nop

    nop

    :goto_13
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_16
    const-string v1, "Strategy.Unspecified"

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_17
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v5, "Invalid"

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1a
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, v2}, La;->p(II)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "Strategy.HighQuality"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v7}, La;->p(II)Z

    move-result v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, ", wordBreak="

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, v7}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_21
    return-object p0

    nop

    :goto_22
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p0, v6}, La;->p(II)Z

    move-result p0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, ", strictness="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_26
    const/4 v7, 0x2

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

    :goto_27
    goto/16 :goto_4f

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_2e

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    goto :goto_2e

    nop

    nop

    :goto_2c
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2d
    move-object v1, v5

    nop

    :goto_2e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p0, :cond_8

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    :goto_31
    const/4 v4, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v5, "WordBreak.Unspecified"

    nop

    nop

    :goto_33
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_2e

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_36
    invoke-static {v1, v2}, La;->p(II)Z

    move-result v3

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_a

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_16

    nop

    nop

    :goto_3a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_50

    nop

    nop

    :goto_3c
    const v0, 0x15

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1, v3}, La;->p(II)Z

    move-result v3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3f
    invoke-static {v1, v4}, La;->p(II)Z

    move-result v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_40
    const-string v1, "Strictness.None"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_42
    const-string v1, "Strictness.Normal"

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_43
    if-nez v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_b
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_33

    nop

    :goto_45
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_2e

    nop

    :goto_47
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {p0}, Ldnw;->a(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_3b

    nop

    nop

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    :goto_4b
    if-nez v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_4d
    invoke-static {v1, v4}, La;->p(II)Z

    move-result v3

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

    nop

    :goto_4e
    move-object v1, v5

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_3

    nop

    nop

    :goto_50
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_51
    invoke-static {v1, v7}, La;->p(II)Z

    move-result v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const-string v1, "Strictness.Strict"

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

    nop

    :goto_53
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_54
    invoke-static {v1, v6}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_58
    goto :goto_4f

    nop

    nop

    :goto_59
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5a
    invoke-static {v1, v6}, La;->p(II)Z

    move-result v1

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

    :goto_5b
    const/4 v6, 0x0

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

    :goto_5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v1, "Strictness.Unspecified"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5e
    invoke-static {p0, v2}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
