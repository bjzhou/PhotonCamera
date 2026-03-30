.class public final Ldhv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    sput-wide v0, Ldhv;->a:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v1, 0xc

    nop

    goto/32 :goto_1

    nop

    nop

    nop

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

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    sget-wide v0, Ldps;->a:J

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop
.end method

.method public static final a(Ldhu;IIJLdoj;Ldhx;Ldny;IILdok;)Ldhu;
    .locals 18

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, v0, Ldhu;->b:I

    nop

    nop

    :goto_1
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ldhu;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3
    if-nez v10, :cond_0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Ldhu;->i:Ldok;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_5
    move/from16 p8, v6

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_6
    if-eqz v8, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v12, v13, v14, v15}, La;->q(JJ)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static/range {p3 .. p4}, Ldps;->b(J)J

    move-result-wide v14

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

    :goto_9
    invoke-static {v6, v11}, La;->p(II)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_a
    move/from16 p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    :goto_c
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v8, v10}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_e
    invoke-static {v7, v10}, La;->p(II)Z

    move-result v10

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

    :goto_f
    iget-object v10, v0, Ldhu;->d:Ldoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_10
    if-nez v10, :cond_2

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_2
    :goto_11
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_12
    invoke-static {v1, v9}, La;->p(II)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    :goto_14
    if-eqz v10, :cond_4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_15
    move v7, v4

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v10}, La;->p(II)Z

    move-result v10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    move/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1d
    move-wide/from16 v12, p3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v10, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_1f
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 p10, v8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_7c

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_7
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_24
    if-nez v5, :cond_8

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

    :cond_8
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_25
    invoke-static {v4, v10}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_26
    invoke-static {v6, v11}, La;->p(II)Z

    move-result v10

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v5, v10}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

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

    :goto_28
    const-wide/16 v12, 0x0

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

    :goto_29
    if-nez v3, :cond_9

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 p5, v3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_2b
    iget v1, v0, Ldhu;->a:I

    nop

    :goto_2c
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_2d
    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v10, :cond_b

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :cond_b
    :goto_2f
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_30
    move/from16 p1, v1

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

    :goto_31
    if-eqz v10, :cond_c

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :cond_c
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v10, :cond_d

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_d
    goto/32 :goto_2b

    nop

    nop

    :goto_33
    if-nez v4, :cond_e

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_e
    goto/32 :goto_76

    nop

    nop

    :goto_34
    move-object/from16 v4, p6

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_35
    move-object/from16 p0, v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-wide/from16 p3, v12

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_37
    move/from16 p9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_38
    move/from16 v6, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_39
    if-nez v10, :cond_f

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_f
    :goto_3a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v5, v4

    nop

    :goto_3c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v7, v9}, La;->p(II)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3e
    const/high16 v9, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v6, v10}, La;->p(II)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_40
    iget-wide v12, v0, Ldhu;->c:J

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v10, v0, Ldhu;->e:Ldhx;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v3, :cond_10

    nop

    goto/32 :goto_8a

    nop

    :cond_10
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_44
    invoke-static/range {p3 .. p4}, Ldps;->b(J)J

    move-result-wide v14

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

    :goto_45
    invoke-direct/range {p0 .. p10}, Ldhu;-><init>(IIJLdoj;Ldhx;Ldny;IILdok;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz v10, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_11
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v10, :cond_12

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_12
    :goto_49
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4a
    move-object/from16 v0, p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object v8, v0

    nop

    nop

    :goto_4c
    goto/32 :goto_2

    nop

    nop

    :goto_4d
    const/4 v11, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v3, p5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4f
    invoke-static {v2, v10}, La;->p(II)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const-wide/16 v16, 0x0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget v10, v0, Ldhu;->b:I

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v10, v0, Ldhu;->f:Ldny;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_53
    if-eqz v10, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_54
    move-object v10, v4

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_56
    if-eqz v10, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_57
    cmp-long v10, v14, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_58
    iget-object v4, v0, Ldhu;->f:Ldny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_59
    move-wide/from16 v12, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5a
    iget-object v10, v0, Ldhu;->e:Ldhx;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_5b
    goto/16 :goto_7c

    nop

    :goto_5c
    goto/32 :goto_7b

    nop

    nop

    :goto_5d
    if-eqz v10, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_83

    nop

    nop

    :goto_5e
    invoke-static {v3, v10}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_72

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz v10, :cond_16

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_16
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_62
    goto :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move-object/from16 p7, v5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_65
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_67
    iget v10, v0, Ldhu;->a:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_68
    move-wide/from16 v12, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_55

    nop

    :goto_6a
    goto/32 :goto_54

    nop

    nop

    :goto_6b
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_6c
    invoke-static {v2, v9}, La;->p(II)Z

    move-result v10

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    move-object/from16 v5, p7

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

    :goto_6e
    move-object/from16 p6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_6f
    invoke-static {v2, v9}, La;->p(II)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_70
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_71
    if-nez v10, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_17
    :goto_72
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_73
    iget-object v10, v0, Ldhu;->i:Ldok;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_74
    iget v10, v0, Ldhu;->h:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget v4, v0, Ldhu;->g:I

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_76
    iget v4, v0, Ldhu;->h:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_77
    iget-wide v14, v0, Ldhu;->c:J

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_78
    move v6, v4

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_7a
    cmp-long v10, v14, v16

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_7b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_44

    nop

    nop

    :goto_7d
    invoke-static {v7, v9}, La;->p(II)Z

    move-result v10

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

    :goto_7e
    invoke-static {v1, v9}, La;->p(II)Z

    move-result v10

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_19

    nop

    :goto_80
    move/from16 v7, p9

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_81
    if-nez v4, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_18
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move-object/from16 v8, p10

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_83
    iget v10, v0, Ldhu;->g:I

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

    :goto_84
    if-nez v8, :cond_19

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v10, :cond_1a

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_1a
    :goto_86
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_87
    if-nez v10, :cond_1b

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_88
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v3, v0, Ldhu;->d:Ldoj;

    nop

    :goto_8a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-eqz v10, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_40

    nop

    nop

    nop
.end method
