.class public final Lcec;
.super Lcem;
.source "PG"


# instance fields
.field public final a:I

.field private final c:J


# direct methods
.method public constructor <init>(JI)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2}, Lcen;->b(J)I

    move-result v1

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

    :goto_2
    iput p3, p0, Lcec;->a:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x14

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x11

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

    :goto_6
    invoke-static {p3}, Lcdp;->a(I)Landroid/graphics/BlendMode;

    move-result-object v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Lcem;-><init>(Landroid/graphics/ColorFilter;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_10
    iput-wide p1, p0, Lcec;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, La;->p(II)Z

    move-result p0

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

    :goto_1
    if-eq p0, p1, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-wide v5, p1, Lcec;->c:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    return v0

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x20

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

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iget p1, p1, Lcec;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v1, p1, Lcec;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    return v2

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v2

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p0, p0, Lcec;->a:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

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

    :goto_14
    check-cast p1, Lcec;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    :goto_19
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    iget-wide v3, p0, Lcec;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    goto/32 :goto_4

    nop

    :goto_1d
    goto/32 :goto_13

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    :goto_1f
    if-eqz p0, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

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

    :goto_1
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

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

    :goto_3
    const v0, 0xa

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const/16 v4, 0x374

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_e
    return v0

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

    :goto_10
    aput-object v3, v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v0, p0, Lcec;->c:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    :goto_16
    iget p0, p0, Lcec;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "Xor"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_4
    const-string p0, "SrcOver"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_9e

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_53

    nop

    nop

    :goto_b
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p0, "Dst"

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

    :goto_10
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_14

    nop

    :goto_12
    goto/32 :goto_47

    nop

    nop

    :goto_13
    const-string p0, "Unknown"

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_14

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9a

    nop

    nop

    :goto_1b
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_6

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_1e
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_7

    nop

    goto/32 :goto_6a

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string p0, "DstAtop"

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v1, 0x18

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_14

    nop

    :goto_25
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_27
    const-string p0, "ColorDodge"

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p0, "Softlight"

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_2b
    const-string p0, "ColorBurn"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string p0, "Modulate"

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v1, :cond_9

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_30
    const-string p0, "Difference"

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_37
    const/16 v1, 0x17

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_a

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v1, 0x1c

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

    :goto_3a
    const-string p0, "DstOut"

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0, v1}, La;->p(II)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v1, 0x4

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_3d
    const/16 v1, 0x9

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_3e
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_14

    nop

    :goto_43
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_46
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_48
    if-lez v0, :cond_b

    nop

    goto/32 :goto_9c

    nop

    nop

    :cond_b
    goto/32 :goto_9b

    nop

    :goto_49
    const-string v1, "BlendModeColorFilter(color="

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4a
    const-string p0, "DstIn"

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4b
    const/16 v1, 0x1a

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_4d
    const/16 v1, 0x19

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4e
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_c
    goto/32 :goto_8e

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_14

    nop

    nop

    :goto_51
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/16 v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_53
    const/16 v1, 0x14

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_54
    goto/16 :goto_14

    nop

    nop

    :goto_55
    goto/32 :goto_b3

    nop

    nop

    :goto_56
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_4d

    nop

    nop

    :goto_58
    const/16 v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const-string p0, "SrcIn"

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

    :goto_5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_5b
    return-object p0

    nop

    nop

    :goto_5c
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const-string p0, "Exclusion"

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    :cond_d
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_83

    nop

    nop

    :goto_63
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_13

    nop

    nop

    :goto_65
    const/16 p0, 0x29

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_66
    const/16 v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_68
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

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

    :goto_6d
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6f
    const-string p0, "Plus"

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_70
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_12
    goto/32 :goto_76

    nop

    nop

    :goto_72
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_76
    const-string p0, "DstOver"

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_77
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_79
    if-nez v1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7a
    if-nez v1, :cond_14

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const-string p0, "Src"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v1, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez v1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    :cond_16
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

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

    :goto_80
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const-string p0, "Lighten"

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const-string p0, "Screen"

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_87
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_89
    iget-wide v1, p0, Lcec;->c:J

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_8a
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_8b
    sget-object p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->TKuC:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_14

    nop

    nop

    :goto_8d
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const-string p0, "Clear"

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_39

    nop

    nop

    :goto_91
    iget p0, p0, Lcec;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_93
    const/16 v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_96
    const-string p0, "Saturation"

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-nez v1, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_9a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_9b
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_85

    nop

    nop

    :goto_9d
    const-string p0, "Darken"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_14

    nop

    nop

    :goto_a0
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_a1
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    const/16 v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const-string p0, "Hue"

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const-string p0, "SrcOut"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a5
    const-string p0, "Luminosity"

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_a6
    const/16 v1, 0xb

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a8
    const-string p0, "Overlay"

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_a9
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_ab
    goto/16 :goto_14

    nop

    :goto_ac
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    const/16 v1, 0x11

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_ae
    if-nez v1, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v1, v2}, Lcel;->g(J)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_b2
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_b3
    const/16 v1, 0x13

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-nez p0, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_b5
    goto/16 :goto_14

    nop

    :goto_b6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b7
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

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

    :goto_b8
    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b9
    const-string v1, ", blendMode="

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    const-string p0, "SrcAtop"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_be
    if-nez v1, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez v1, :cond_1b

    nop

    goto/32 :goto_60

    nop

    :cond_1b
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    const/4 v1, 0x3

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

    :goto_c2
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_c3
    const-string p0, "HardLight"

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_c4
    const-string p0, "Multiply"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_c5
    invoke-static {p0, v1}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_c6
    if-nez v1, :cond_1c

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_1c
    goto/32 :goto_c4

    nop

    nop

    :goto_c7
    if-nez v1, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1d
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop
.end method
