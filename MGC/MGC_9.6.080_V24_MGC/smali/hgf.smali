.class public final Lhgf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "hgf"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

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

    :goto_3
    sput-object v0, Lhgf;->a:Lsdb;

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

    nop

    nop
.end method

.method public static a(Ljava/net/URI;)Lrss;
    .locals 17

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v4}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    nop

    :goto_2
    goto/32 :goto_9b

    nop

    nop

    :goto_3
    if-nez v5, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const-string v7, "/"

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    nop

    :goto_a
    goto/32 :goto_4d

    nop

    nop

    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v5, "shc"

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_d
    const/16 v3, 0x3d5

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_e
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_2
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_b5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gt v5, v7, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    :cond_3
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_12
    const-string v5, "web."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v3, v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_14
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6e

    nop

    nop

    :goto_16
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

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

    nop

    :goto_18
    const-string v7, "//"

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, ":"

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1a
    invoke-static {v6}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v6

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_1d
    const-string v5, "ftp."

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_21
    move v6, v2

    nop

    nop

    :goto_22
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_23
    if-eq v8, v9, :cond_7

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_7
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_25
    invoke-static {v6}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v6

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v1, "https"

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    :cond_8
    goto/32 :goto_3a

    nop

    nop

    :goto_28
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_ad

    nop

    nop

    :goto_2b
    if-nez v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

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

    :goto_2d
    goto/16 :goto_3c

    nop

    :goto_2e
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v3, v3, -0x16

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v6, :cond_a

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-gt v3, v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_34
    const-string v2, "\u2026"

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_35
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_36
    move v7, v5

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_38
    move v5, v2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v7, :cond_d

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3a
    if-nez v15, :cond_e

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_28

    nop

    nop

    :goto_3b
    move v7, v2

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_92

    nop

    :goto_3e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_63

    nop

    :goto_40
    goto/32 :goto_62

    nop

    nop

    :goto_41
    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_44
    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v4, "fido"

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

    :goto_47
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_48
    const-string v6, "#\u2026"

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

    nop

    :goto_49
    return-object v0

    nop

    :goto_4a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 v8, 0x19

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz v6, :cond_10

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-string v1, "http"

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v7, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_52
    move v1, v2

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_53
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_54
    add-int/lit8 v7, v7, -0x1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_c7

    nop

    nop

    :goto_5a
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_3c

    nop

    nop

    :goto_5c
    goto/32 :goto_47

    nop

    nop

    :goto_5d
    if-nez v5, :cond_11

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_5f
    if-gt v5, v7, :cond_12

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_61
    return-object v0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move v2, v4

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_66
    if-gt v5, v7, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    :cond_13
    goto/32 :goto_12

    nop

    nop

    :goto_67
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    return-object v0

    nop

    nop

    :goto_6a
    goto/32 :goto_ab

    nop

    nop

    :goto_6b
    if-nez v5, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    :goto_6d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6e
    move-object v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_70
    if-eqz v6, :cond_15

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    :cond_15
    goto/32 :goto_7e

    nop

    nop

    :goto_71
    const-string v5, "www"

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_72
    if-eq v7, v9, :cond_16

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-static {v0, v1}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_75
    if-nez v5, :cond_17

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-ge v7, v4, :cond_18

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_99

    nop

    nop

    :goto_77
    const-string v2, "Failed to build intermediate barcode URI"

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_78
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_1b

    nop

    nop

    :goto_7a
    add-int/lit8 v7, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v5, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v7, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v1, Lhgf;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_7e
    const-string v6, "?\u2026"

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_7f
    if-gt v5, v7, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz v15, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :cond_1c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1d

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/net/URI;

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    invoke-direct {v5, v7, v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto :goto_83

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    :goto_81
    new-instance v5, Ljava/net/URI;

    nop

    nop

    nop

    if-eq v3, v1, :cond_1e

    nop

    move-object v8, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_82

    nop

    :cond_1e
    const/4 v7, 0x0

    nop

    nop

    nop

    move-object v8, v7

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getPort()I

    move-result v11

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v7, v5

    nop

    nop

    move-object v10, v6

    nop

    nop

    nop

    nop

    move-object v12, v15

    nop

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    nop
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_83
    goto/32 :goto_6

    nop

    nop

    :goto_84
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_85
    add-int/2addr v3, v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_86
    move v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-lez v0, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    :cond_1f
    goto/32 :goto_78

    nop

    :goto_8a
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8e
    add-int/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_8f
    add-int/lit8 v7, v7, 0x1

    nop

    :goto_90
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    :goto_92
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_a7

    nop

    nop

    :goto_94
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_95
    move-object v5, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_96
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

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

    :goto_9a
    invoke-static {v0, v1}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

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

    :goto_9b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_9c
    if-gt v6, v3, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_9e
    if-nez v1, :cond_21

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :cond_21
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const-string v5, "wap."

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

    :goto_a0
    if-le v7, v8, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_20

    nop

    nop

    :goto_a1
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-lt v5, v7, :cond_23

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_1c

    nop

    nop

    :goto_a4
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_a6
    invoke-static/range {v16 .. v16}, Lrrf;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a8
    const-string v5, "home."

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_50

    nop

    :goto_aa
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_ac
    const v0, 0x1a

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_ad
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const-string v0, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_af
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const/4 v7, 0x5

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

    :goto_b1
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b8
    if-nez v1, :cond_24

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v6, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_25
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_ba
    if-eqz v6, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    :cond_26
    :goto_bb
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_bd
    const-string v6, "/\u2026"

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

    :goto_be
    invoke-virtual/range {p0 .. p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-static {v0, v5}, Lrrf;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_c4
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_c6
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_46

    nop

    nop

    :goto_c8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_c9
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_ca
    rem-int v0, v0, v1

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    if-nez v15, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    :cond_27
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    const/4 v3, 0x1

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_ce
    const/16 v9, 0x2e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_cf
    if-gt v5, v7, :cond_28

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_28
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_d0
    if-lt v5, v8, :cond_29

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_b3

    nop

    nop
.end method
