.class public final Lurp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Luri;


# instance fields
.field public final a:Lurt;

.field public final b:Lurh;

.field public c:Z


# direct methods
.method public constructor <init>(Lurt;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lurp;->b:Lurh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lurp;->a:Lurt;

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
    invoke-direct {p1}, Lurh;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lurh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
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

    nop

    :goto_2
    const/4 v1, 0x0

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

    :goto_3
    invoke-interface {v0}, Lurt;->close()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v3, 0x1e2

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

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    iput-boolean v0, p0, Lurp;->c:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x13

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
    iget-object p0, p0, Lurp;->b:Lurh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lurp;->a:Lurt;

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

    nop

    :goto_11
    invoke-static {v3, p0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v0, p0, Lurp;->c:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final d(Lurj;)J
    .locals 16

    goto/32 :goto_77

    nop

    nop

    :goto_0
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    int-to-long v10, v10

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_3
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v10, v6, Lurh;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_5
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    cmp-long v3, v10, v12

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

    :goto_7
    iget v8, v7, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_68

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    if-ltz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    :cond_0
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v8, v12, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    :cond_1
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_c
    if-ltz v12, :cond_2

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :cond_2
    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v4, v5, v0}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v14, 0x0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :cond_3
    goto/32 :goto_b1

    nop

    :goto_11
    move-wide v4, v2

    nop

    nop

    :goto_12
    goto/32 :goto_95

    nop

    nop

    :goto_13
    iget v8, v7, Lurq;->c:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_16
    add-long/2addr v10, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_17
    add-long/2addr v8, v12

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmp-long v8, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    iget-object v12, v7, Lurq;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1b
    goto/16 :goto_106

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_4d

    nop

    nop

    :goto_1d
    cmp-long v2, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_1f
    int-to-long v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_20
    add-long/2addr v12, v8

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

    :goto_21
    aget-byte v14, v2, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0xf

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_23
    cmp-long v12, v10, v4

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_bf

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_28
    iget v9, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v8, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2a
    add-long/2addr v13, v10

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v9, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    :cond_5
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_2c
    if-lt v11, v10, :cond_6

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :cond_6
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v1, p1

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_2f
    if-eqz v7, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_31
    sub-int/2addr v11, v6

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_a7

    nop

    nop

    :goto_34
    iget-object v3, v0, Lurp;->a:Lurt;

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_35
    cmp-long v12, v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_36
    iget-wide v12, v6, Lurh;->b:J

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_37
    if-eq v13, v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_8
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_5f

    nop

    nop

    :goto_39
    goto/32 :goto_8b

    nop

    nop

    :goto_3a
    sub-long v12, v10, v4

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

    :goto_3b
    long-to-int v11, v13

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v2, v7, Lurq;->b:I

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    long-to-int v9, v12

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v8, v7, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-wide v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_43
    if-eq v2, v13, :cond_9

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_44
    int-to-long v8, v8

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_45
    aget-byte v12, v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d9

    nop

    nop

    :goto_47
    iget-object v7, v7, Lurq;->f:Lurq;

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_48
    move v15, v8

    nop

    nop

    :goto_49
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_4a
    sub-long/2addr v8, v10

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_4b
    iget v13, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    cmp-long v12, v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_4d
    const/4 v8, 0x0

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v2, v1, Lurj;->b:[B

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

    :goto_4f
    goto/16 :goto_3f

    nop

    :goto_50
    goto/32 :goto_85

    nop

    nop

    :goto_51
    if-eqz v7, :cond_a

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v2, v0, Lurp;->b:Lurh;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_53
    int-to-long v13, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_54
    move-wide v12, v4

    nop

    :goto_55
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-wide v12, v6, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_57
    goto/16 :goto_cc

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_80

    nop

    nop

    :goto_59
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    int-to-long v13, v13

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5c
    goto :goto_61

    nop

    :goto_5d
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_5e
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_60
    iget v6, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_62
    sub-long/2addr v13, v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_63
    const-string v0, "fromIndex < 0: "

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_64
    iget-wide v14, v6, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_65
    move-wide v8, v6

    nop

    :goto_66
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_67
    move-wide v10, v4

    nop

    nop

    :goto_68
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    :goto_6a
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_6b
    goto :goto_66

    nop

    nop

    :goto_6c
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6e
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6f
    sub-int/2addr v9, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_70
    add-long/2addr v13, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_71
    move-wide v8, v4

    nop

    nop

    :goto_72
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const-wide/16 v6, -0x1

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_74
    sub-long/2addr v10, v2

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_75
    if-lt v15, v13, :cond_b

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_77
    const v0, 0x1a

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_78
    goto/16 :goto_3c

    nop

    :goto_79
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sub-long/2addr v12, v10

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move-wide v10, v12

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_7d
    iget v8, v7, Lurq;->c:I

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_7e
    add-long v12, v10, v8

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

    nop

    :goto_7f
    int-to-long v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual/range {p1 .. p1}, Lurj;->b()I

    move-result v8

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-lt v15, v14, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_82
    add-long/2addr v2, v6

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    cmp-long v14, v10, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_84
    move-wide v2, v8

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_85
    iget v3, v7, Lurq;->c:I

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_86
    if-ltz v14, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    add-long/2addr v10, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_d4

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_6d

    nop

    nop

    :goto_8a
    if-lez v10, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_8b
    iget v10, v7, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_8c
    sub-int/2addr v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_8d
    if-eq v13, v9, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_92

    nop

    nop

    :goto_8e
    aget-byte v9, v14, v8

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_8f
    sub-int/2addr v3, v8

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_91
    iget-wide v12, v6, Lurh;->b:J

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_92
    goto/16 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v1, v8}, Lurj;->a(I)B

    move-result v8

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v6, v0, Lurp;->b:Lurh;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_96
    iget-object v7, v7, Lurq;->f:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_97
    if-ltz v12, :cond_10

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_98
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    move-wide v2, v10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9b
    iget-boolean v2, v0, Lurp;->c:Z

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    return-wide v8

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_9e
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    cmp-long v7, v4, v2

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    int-to-long v2, v12

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_a1
    iget-object v7, v7, Lurq;->f:Lurq;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sub-int/2addr v8, v2

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    int-to-long v2, v8

    nop

    nop

    :goto_a4
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-ltz v12, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_a6
    iget v2, v7, Lurq;->b:I

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget v2, v7, Lurq;->b:I

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_33

    nop

    :goto_a9
    goto/32 :goto_6e

    nop

    nop

    :goto_aa
    add-long/2addr v8, v2

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    sub-int/2addr v8, v9

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

    :goto_ad
    sub-int/2addr v10, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_ae
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_af
    if-eq v12, v14, :cond_12

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :cond_12
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual/range {p1 .. p1}, Lurj;->b()I

    move-result v2

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_b1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget v12, v7, Lurq;->c:I

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

    :goto_b4
    if-gtz v12, :cond_13

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    array-length v13, v2

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    aget-byte v8, v9, v15

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    array-length v14, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_49

    nop

    nop

    :goto_b9
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_ba
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget v15, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_bc
    iget-object v7, v7, Lurq;->f:Lurq;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_bd
    add-int/lit8 v15, v15, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_c2
    if-lt v11, v10, :cond_14

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_c3
    aget-byte v13, v12, v11

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v7, v7, Lurq;->g:Lurq;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_c5
    if-ne v9, v2, :cond_15

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    int-to-long v12, v12

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_c7
    invoke-virtual {v1, v15}, Lurj;->a(I)B

    move-result v3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_c8
    if-eq v8, v13, :cond_16

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

    :cond_16
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c9
    long-to-int v8, v8

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    if-eqz v7, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :cond_17
    :goto_cc
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_cd
    iget v10, v7, Lurq;->c:I

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_ce
    iget-object v12, v7, Lurq;->a:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_cf
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    int-to-long v10, v8

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d1
    iget v10, v7, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_d2
    iget v12, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_d3
    move v15, v14

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_72

    nop

    :goto_d6
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_d7
    add-int/lit8 v15, v15, 0x1

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_d8
    const-wide/16 v10, 0x2000

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_d9
    move-wide v2, v10

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_da
    if-eqz v2, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1

    nop

    nop

    :goto_db
    iget v11, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    if-lt v9, v8, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v1, v14}, Lurj;->a(I)B

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_de
    add-long/2addr v2, v10

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget v9, v7, Lurq;->b:I

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_e0
    iget v8, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_e1
    int-to-long v8, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e2
    invoke-interface {v3, v2, v10, v11}, Lurt;->e(Lurh;J)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_e3
    iget-object v7, v7, Lurq;->f:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_12

    nop

    nop

    :goto_e7
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v1, v15}, Lurj;->a(I)B

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iget v13, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_ea
    cmp-long v12, v2, v12

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    const/4 v8, 0x0

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    aget-byte v13, v12, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_ed
    iget-object v14, v7, Lurq;->a:[B

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_ee
    if-ne v13, v8, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    cmp-long v10, v8, v4

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_f2
    iget v10, v7, Lurq;->b:I

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f0

    nop

    nop

    :goto_f4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    iget-object v7, v6, Lurh;->a:Lurq;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_f6
    iget-object v9, v1, Lurj;->b:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget v6, v7, Lurq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_f8
    int-to-long v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    move-wide v10, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_fa
    const/4 v13, 0x2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    sub-int/2addr v12, v2

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    const-string v1, "closed"

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_fd
    int-to-long v6, v11

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    goto/16 :goto_a4

    nop

    :goto_ff
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-wide v8, v2, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_101
    if-gez v7, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    :cond_1b
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_102
    sub-int/2addr v8, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    add-long/2addr v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_104
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_105
    move-wide v10, v4

    nop

    nop

    nop

    nop

    :goto_106
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v3, v7, Lurq;->a:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    long-to-int v11, v13

    nop

    :goto_10c
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iget v12, v7, Lurq;->c:I

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    goto :goto_10c

    nop

    nop

    :goto_10f
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_110
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_2f

    nop

    nop

    :goto_112
    sub-long/2addr v13, v2

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_113
    if-eqz v2, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    :cond_1c
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lurh;J)J
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    const-string p1, "closed"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    :goto_4
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    if-eqz p3, :cond_0

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

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_6
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const-wide/16 v0, 0x2000

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_a
    iget-wide v0, p2, Lurh;->b:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    iget-wide p2, p2, Lurh;->b:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lurp;->b:Lurh;

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

    :goto_e
    invoke-virtual {p0, p1, p2, p3}, Lurh;->e(Lurh;J)J

    move-result-wide p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    invoke-interface {p3, p2, v0, v1}, Lurt;->e(Lurh;J)J

    move-result-wide p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long p2, p2, v2

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

    :goto_12
    iget-object p0, p0, Lurp;->b:Lurh;

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

    :goto_13
    iget-object p2, p0, Lurp;->b:Lurh;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_15
    iget-object p3, p0, Lurp;->a:Lurt;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-wide v2

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    return-wide p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0xa

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    iget-boolean p2, p0, Lurp;->c:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    cmp-long p3, v0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final isOpen()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lurp;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    return p0

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(J)Z
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v2, -0x1

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

    nop

    :goto_4
    iget-object v1, p0, Lurp;->a:Lurt;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    if-gez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    const-string p0, "byteCount < 0: "

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

    :goto_b
    iget-wide v1, v0, Lurh;->b:J

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_19

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v0, 0x0

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

    :goto_10
    throw p0

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    :goto_15
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    const v0, 0x3

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

    :goto_17
    iget-boolean v0, p0, Lurp;->c:Z

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

    :goto_18
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ltz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1, v0, v2, v3}, Lurt;->e(Lurh;J)J

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    cmp-long v1, v1, p1

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

    :goto_1d
    const-wide/16 v2, 0x2000

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    :goto_1f
    iget-object v0, p0, Lurp;->b:Lurh;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_24
    throw p1

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1e

    nop

    nop

    :goto_26
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    :goto_27
    goto/32 :goto_1f

    nop

    nop

    :goto_28
    const-string p1, "closed"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p1, p2, p0}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1, v0, v2, v3}, Lurt;->e(Lurh;J)J

    move-result-wide v0

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

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const/4 p0, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    const-wide/16 v2, -0x1

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

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    iget-object p0, p0, Lurp;->b:Lurh;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x2000

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lurp;->b:Lurh;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lurp;->a:Lurt;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_14
    const v0, 0x17

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Lurh;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    iget-wide v1, v0, Lurh;->b:J

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

    :goto_1a
    cmp-long v1, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    iget-object p0, p0, Lurp;->a:Lurt;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x19

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
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, ")"

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

    :goto_f
    const-string v1, "buffer("

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop
.end method
