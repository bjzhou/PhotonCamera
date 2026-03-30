.class public final Lchi;
.super Lcgb;
.source "PG"


# static fields
.field private static final q:Lcgo;


# instance fields
.field public final d:Lchl;

.field public final e:F

.field public final f:F

.field public final g:Lchk;

.field public final h:[F

.field public final i:[F

.field public final j:[F

.field public final k:Lcgo;

.field public final l:Lubk;

.field public final m:Lcgo;

.field public final n:Lcgo;

.field public final o:Lubk;

.field public final p:Lcgo;

.field private final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lcgu;

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
    sput-object v0, Lchi;->q:Lcgo;

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_3
    invoke-direct {v0}, Lcgu;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;[FLchl;DFFI)V
    .locals 15

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    :goto_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move/from16 v12, p7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v3, v1, v2}, Lcgv;-><init>(D)V

    :goto_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v5, p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_a
    move-object v12, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    new-instance v13, Lchk;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    move/from16 v14, p8

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1, v2}, Lcgw;-><init>(D)V

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    move-object/from16 v7, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    move-object v0, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    sget-object v0, Lchi;->q:Lcgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15
    invoke-direct/range {v4 .. v14}, Lchi;-><init>(Ljava/lang/String;[FLchl;[FLcgo;Lcgo;FFLchk;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x16

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct/range {v0 .. v10}, Lchk;-><init>(DDDDD)V

    goto/32 :goto_27

    nop

    nop

    :goto_18
    move-object v9, v11

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v10, v12

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

    :goto_1c
    move-wide/from16 v1, p4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v6, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_f

    nop

    nop

    :goto_21
    goto/32 :goto_2e

    nop

    nop

    :goto_22
    new-instance v3, Lcgv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_23
    move-object v4, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    cmpg-double v0, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move/from16 v11, p6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_27
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    const-wide/16 v9, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    const v1, 0x6

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

    :goto_2a
    move-object v11, v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2b
    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2d
    sget-object v3, Lchi;->q:Lcgo;

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

    :goto_2e
    new-instance v0, Lcgw;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-wide/from16 v1, p4

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
.end method

.method public constructor <init>(Ljava/lang/String;[FLchl;Lchk;I)V
    .locals 11

    goto/32 :goto_40

    nop

    nop

    :goto_0
    new-instance v0, Lche;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p4}, Lcgx;-><init>(Lchk;)V

    :goto_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p4}, Lchb;-><init>(Lchk;)V

    :goto_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lchb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v10}, Lchi;-><init>(Ljava/lang/String;[FLchl;[FLcgo;Lcgo;FFLchk;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p4}, Lchd;-><init>(Lchk;)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_c
    goto :goto_2

    nop

    :goto_d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p4}, Lchk;->b()Z

    move-result v0

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

    :goto_f
    invoke-direct {v0, p4}, Lchc;-><init>(Lchk;)V

    goto/32 :goto_39

    nop

    nop

    :goto_10
    const/high16 v8, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_11
    cmpg-double v0, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_33

    nop

    nop

    :goto_14
    move/from16 v10, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p4}, Lchk;->a()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p4}, Lcha;-><init>(Lchk;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v3, v9, Lchk;->f:D

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p4}, Lchk;->b()Z

    move-result v0

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1e
    cmpg-double v0, v3, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v0, Lcgx;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    iget-wide v3, v9, Lchk;->f:D

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lchc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_2

    nop

    :goto_28
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, p4}, Lcgy;-><init>(Lchk;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p4}, Lchk;->a()Z

    move-result v0

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

    :goto_2b
    move-object v2, p2

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

    :goto_2c
    cmpg-double v0, v3, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2d
    if-nez v0, :cond_5

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2e
    move-object v9, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Lcha;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_30
    move-object v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v4, 0x0

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

    nop

    nop

    :goto_32
    cmpg-double v0, v3, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_34
    invoke-direct {v0, p4}, Lche;-><init>(Lchk;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    move-object v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_36
    const v1, 0x6

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    :goto_38
    iget-wide v3, v9, Lchk;->g:D

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_4

    nop

    nop

    :goto_3a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3b
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2f

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_7
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Lcgy;

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

    :goto_40
    const v0, 0x20

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_d

    nop

    :goto_42
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object v9, p4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_44
    iget-wide v3, v9, Lchk;->g:D

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
    if-nez v0, :cond_8

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_4

    nop

    nop

    :goto_47
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_48
    const-wide/16 v1, 0x0

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

    :goto_49
    invoke-direct {v0, p4}, Lcgz;-><init>(Lchk;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4a
    move-object v1, p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4b
    new-instance v0, Lcgz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4c
    new-instance v0, Lchd;

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

    :goto_4d
    move-object v3, p3

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;[FLchl;[FLcgo;Lcgo;FFLchk;I)V
    .locals 32

    goto/32 :goto_3f

    nop

    nop

    :goto_0
    cmpg-float v1, v7, v1

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget v1, v10, v12

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget v1, v10, v16

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4
    iget-object v1, v0, Lchi;->i:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_5
    const/4 v8, 0x6

    nop

    nop

    :goto_6
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float v23, v23, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v9, v0, Lchi;->g:Lchk;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput v25, v14, v1

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

    :goto_c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v5, p6

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-float v28, v28, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_34

    nop

    :goto_10
    goto/32 :goto_7f

    nop

    nop

    :goto_11
    iput-object v14, v0, Lchi;->i:[F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v4, p5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-array v10, v9, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v6, :cond_1

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_17
    aget v21, v10, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_18
    div-float/2addr v9, v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v15, 0x1

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_1b
    sub-float v25, v25, v23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    aget v1, v10, v13

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

    :goto_1d
    aget v1, v10, v15

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

    :goto_1e
    mul-float v1, v31, v25

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_1f
    sget-object v1, Lcgp;->d:Lchl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float v23, v1, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v6, v1, Lchi;->k:Lcgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_23
    if-lez v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_24
    goto/32 :goto_41

    nop

    :goto_25
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_26
    sub-float v28, v28, v23

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

    :goto_27
    goto/16 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_c9

    nop

    nop

    :goto_29
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_2a
    invoke-direct {v9, v0}, Lcgs;-><init>(Lchi;)V

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_2b
    sub-float v31, v31, v29

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    aput v18, v14, v12

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_2d
    sub-float v22, v22, v17

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2e
    aget v11, v1, v3

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v2, ", max="

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_30
    array-length v9, v1

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

    :goto_31
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_ad

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_54

    nop

    nop

    :goto_35
    mul-float v31, v31, v28

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput v7, v0, Lchi;->f:F

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v3, :cond_3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v2, v0, Lchi;->d:Lchl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_39
    aget v11, v1, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3a
    move/from16 v15, v16

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_3b
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v2, v1}, Lcgc;->c(Lchl;Lchl;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_3e
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_40
    throw v0

    nop

    :goto_41
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    div-float v31, v20, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_44
    const-string v2, "Invalid range: min="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sub-float v24, v14, v18

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_46
    const-wide v9, 0x300000000L

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget v1, v2, Lchl;->b:F

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

    :goto_48
    new-instance v9, Lchg;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object v5, v0, Lchi;->n:Lcgo;

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

    :goto_4b
    aput v23, v14, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_4c
    move-object/from16 v3, p4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-gtz v9, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :cond_4
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_4e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_4f
    sub-float v24, v24, v19

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_50
    iput-object v9, v0, Lchi;->o:Lubk;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_51
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_9a

    nop

    :cond_5
    :goto_52
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_53
    cmpg-double v6, v2, v6

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_54
    iput-boolean v15, v0, Lchi;->r:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    :goto_56
    iget v9, v2, Lchl;->a:F

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_57
    sub-float v30, v30, v29

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_58
    invoke-direct {v9, v0}, Lchg;-><init>(Lchi;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_59
    div-float v27, v26, v21

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move/from16 v8, p10

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_5c
    const/4 v11, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_5d
    invoke-static {v1, v10, v9}, Lrkm;->bf([F[FI)V

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_5e
    const/high16 v14, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-double/2addr v2, v6

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_60
    sub-float v27, v27, v23

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_61
    mul-float v20, v20, v27

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    sget-object v3, Lcgj;->b:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_63
    aget v18, v10, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_64
    aput v1, v14, v15

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_65
    const/4 v9, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput-object v9, v0, Lchi;->p:Lcgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_68
    const v3, 0x3f666666    # 0.9f

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_69
    const/4 v12, 0x3

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    new-instance v9, Lcgt;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_6b
    sub-float v9, v9, v29

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6c
    invoke-direct {v9, v0}, Lchh;-><init>(Lchi;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v6, v1, Lchi;->n:Lcgo;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v9, :cond_6

    nop

    nop

    goto/32 :goto_a6

    nop

    :cond_6
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance v9, Lcgs;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {v2, v3, v4, v6}, Lchf;->b(DLcgo;Lcgo;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-eqz v8, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_72
    mul-float v18, v18, v25

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_73
    const/4 v1, 0x6

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

    :goto_74
    goto/16 :goto_6

    nop

    nop

    :goto_75
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_76
    aput v9, v14, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_77
    invoke-static {v1}, Lcgc;->e([F)[F

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-eq v10, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    :cond_8
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_79
    aget v17, v10, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_7a
    const/4 v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_7b
    const/16 v14, 0x9

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    mul-float v27, v27, v26

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_7e
    aget v1, v10, v11

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_7f
    sget-object v1, Lcgj;->a:[F

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_80
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_9
    goto/32 :goto_24

    nop

    :goto_81
    invoke-direct {v0, v11, v9, v10, v8}, Lcgb;-><init>(Ljava/lang/String;JI)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move-object/from16 v1, p2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_83
    div-float v25, v9, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_84
    move-object/from16 v9, p9

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_85
    div-float/2addr v1, v3

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-eqz v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_87
    aput v28, v14, v1

    nop

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

    :goto_88
    if-gtz v1, :cond_b

    nop

    nop

    goto/32 :goto_95

    nop

    :cond_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_89
    if-ltz v9, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_c
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    move/from16 v6, p7

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_8b
    aget v19, v10, v12

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-lt v3, v8, :cond_d

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v10}, Lchf;->a([F)F

    move-result v1

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_8f
    sub-float v28, v28, v25

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_90
    mul-float v25, v25, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_91
    aget v9, v10, v3

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

    :goto_92
    iput-object v9, v0, Lchi;->l:Lubk;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_93
    aget v20, v10, v11

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

    nop

    nop

    :goto_94
    aget v1, v10, v1

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_96
    aget v3, v10, v16

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_97
    sub-float v27, v27, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const-string v2, "; min must be strictly < max"

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_99
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    mul-float v28, v28, v30

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_9c
    sub-float v1, v14, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_9d
    new-instance v9, Lchh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_9e
    div-float v30, v18, v19

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

    :goto_9f
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_a0
    div-float v23, v22, v17

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/16 :goto_52

    nop

    nop

    :goto_a6
    goto/32 :goto_29

    nop

    nop

    :goto_a7
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    aput v3, v14, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    mul-float v27, v27, v30

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_aa
    invoke-static {v3}, Lchf;->a([F)F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_ab
    sub-float v26, v26, v21

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_ac
    const-wide/16 v2, 0x0

    nop

    :goto_ad
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    cmpl-float v9, v9, v11

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_af
    cmpl-float v9, v6, v7

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_b0
    sub-float v22, v14, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    sub-float v1, v1, v28

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b2
    sub-float v9, v9, v31

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

    :goto_b3
    aput v27, v14, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_b5
    mul-float v25, v25, v24

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

    :goto_b6
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-direct {v9, v0}, Lcgt;-><init>(Lchi;)V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_b9
    aput v20, v14, v1

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_ba
    const/4 v13, 0x2

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_bb
    new-array v14, v14, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_bc
    move/from16 v7, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_bd
    sget-object v1, Lcgp;->a:Lchl;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_be
    div-float v9, v9, v30

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-eqz v1, :cond_e

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_e
    goto/32 :goto_3e

    nop

    nop

    :goto_c0
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_c1
    div-float v25, v24, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iput-object v10, v0, Lchi;->h:[F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    move-object/from16 v11, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    sget-object v3, Lcgj;->a:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    div-float v27, v28, v21

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_c7
    move/from16 v3, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c8
    sget-object v1, Lcgj;->e:Lchi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_c9
    iput-object v3, v0, Lchi;->i:[F

    nop

    :goto_ca
    goto/32 :goto_4

    nop

    nop

    :goto_cb
    div-float v29, v3, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_cc
    iput v6, v0, Lchi;->e:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_cd
    sub-float v26, v14, v20

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d0
    sub-float v28, v14, v9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    cmpl-float v1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_d2
    cmpg-float v1, v6, v1

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_d3
    const v11, 0x3a83126f    # 0.001f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    aget v9, v10, v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iput-object v4, v0, Lchi;->k:Lcgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-static {v2, v3, v5, v6}, Lchf;->b(DLcgo;Lcgo;)Z

    move-result v6

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d7
    iput-object v1, v0, Lchi;->j:[F

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_d8
    mul-float v3, v3, v23

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_d9
    div-float v28, v28, v27

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_da
    sub-float/2addr v9, v11

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    const-wide v6, 0x3f70101010101010L    # 0.00392156862745098

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iput-object v9, v0, Lchi;->m:Lcgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lchi;->f:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(I)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lchi;->e:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final c(FFF)F
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget p1, p0, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    add-float/2addr v0, p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-interface {v0, v1, v2}, Lcgo;->a(D)D

    move-result-wide v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    invoke-interface {v0, v1, v2}, Lcgo;->a(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lchi;->p:Lcgo;

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
    iget-object v0, p0, Lchi;->p:Lcgo;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    mul-float/2addr p1, p2

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

    :goto_a
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1, v2}, Lcgo;->a(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget v0, p0, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    float-to-double v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x5

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

    :goto_f
    aget p0, p0, p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    double-to-float p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    float-to-double v1, p2

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

    :goto_12
    return v0

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lchi;->i:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    iget-object v0, p0, Lchi;->p:Lcgo;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    float-to-double v1, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    add-float/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    const v1, 0xc

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

    :goto_1a
    mul-float/2addr v0, p1

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

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-float/2addr p0, p3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    double-to-float p3, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_20
    double-to-float p2, v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x19

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(FFF)J
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    mul-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, v1, v2}, Lcgo;->a(D)D

    move-result-wide v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lchi;->p:Lcgo;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const-wide v0, 0xffffffffL

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

    :goto_5
    mul-float/2addr p0, p3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    add-float/2addr v3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_32

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    aget p1, p0, p1

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

    nop

    nop

    :goto_a
    invoke-interface {v0, v1, v2}, Lcgo;->a(D)D

    move-result-wide v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b
    mul-float/2addr v1, p2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    double-to-float p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    and-long/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    float-to-double v1, p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1, v2}, Lcgo;->a(D)D

    move-result-wide v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    mul-float/2addr v2, p3

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

    :goto_11
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x6

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
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    add-float/2addr v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    array-length v0, p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    aget v2, p0, v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x16

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_19
    float-to-double v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lchi;->p:Lcgo;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-long p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    const/16 v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lchi;->p:Lcgo;

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

    :goto_1f
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    float-to-double v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lchi;->i:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    int-to-long p2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_23
    aget v0, p0, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    shl-long/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_25
    mul-float/2addr v3, p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_26
    mul-float/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    aget v1, p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    aget p0, p0, p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2c
    or-long/2addr p0, p2

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

    :goto_2d
    double-to-float p1, v0

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

    nop

    :goto_2e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2f
    const/4 p2, 0x7

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

    :goto_30
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    return-wide p0

    nop

    :goto_32
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_33
    add-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_34
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget v3, p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_36
    double-to-float p2, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public final e(FFFFLcgb;)J
    .locals 8

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget v7, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3
    add-float/2addr v7, p1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v6, 0x7

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

    :goto_5
    invoke-static {p3, v0, p0, p4, p5}, Lcen;->e(FFFFLcgb;)J

    move-result-wide p0

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

    :goto_6
    invoke-interface {p0, p1, p2}, Lcgo;->a(D)D

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v3, p3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    invoke-interface {p3, v0, v1}, Lcgo;->a(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p3, p0, Lchi;->m:Lcgo;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget v6, v0, v6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    float-to-double v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lchi;->m:Lcgo;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    aget v4, v0, v4

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

    :goto_f
    return-wide p0

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    :goto_11
    iget-object v0, p0, Lchi;->m:Lcgo;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    mul-float/2addr v1, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    aget v5, v0, v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lchi;->j:[F

    nop

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

    nop

    :goto_15
    mul-float/2addr v6, p3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-float/2addr p1, p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    float-to-double v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_18
    add-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    add-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1a
    const/16 p2, 0x8

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    const v0, 0x19

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    const/4 p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1d
    float-to-double p1, v7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    mul-float/2addr v5, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    aget v1, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v2, p2

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

    :goto_21
    aget v3, v0, v3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    :goto_24
    mul-float/2addr v7, p1

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

    nop

    :goto_25
    invoke-interface {v0, v1, v2}, Lcgo;->a(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_26
    aget p2, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_27
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr v4, p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    add-float/2addr v4, v6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v5, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aget v2, v0, v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-float/2addr v1, v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    aget p1, v0, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_10

    nop

    :goto_30
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_31
    double-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    add-float/2addr v7, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v7, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_35
    mul-float/2addr p2, p3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_36
    double-to-float p0, p0

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

    :goto_37
    double-to-float p3, v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lchi;->k:Lcgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v2, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lchi;->n:Lcgo;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2b

    nop

    :goto_6
    iget v3, p0, Lchi;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    iget-object v3, p1, Lchi;->d:Lchl;

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

    :goto_14
    iget-object p0, p1, Lchi;->g:Lchk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Lchi;->g:Lchk;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_18
    if-ne v2, v3, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x6

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

    :goto_1a
    return v0

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-super {p0, p1}, Lcgb;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lchi;->h:[F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_20
    iget-object v2, p1, Lchi;->g:Lchk;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_21
    return v0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3b

    nop

    nop

    :goto_23
    iget-object v2, p0, Lchi;->d:Lchl;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_2

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_26
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_27
    iget v2, p1, Lchi;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v2, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    :goto_2c
    if-eq p0, p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Lchi;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return p0

    nop

    :goto_2f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lchi;->n:Lcgo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_31
    return v1

    nop

    nop

    :goto_32
    goto/32 :goto_23

    nop

    nop

    :goto_33
    return v1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

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

    nop

    :goto_36
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_7

    nop

    goto/32 :goto_2b

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    :goto_38
    iget-object v3, p1, Lchi;->h:[F

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

    :goto_39
    iget v3, p0, Lchi;->f:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3a
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    :goto_3b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, p1, Lchi;->k:Lcgo;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v2, :cond_9

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_41

    nop

    nop

    :goto_3e
    if-eqz v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3f
    return p0

    nop

    :goto_40
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_41
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto :goto_40

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v2, p1, Lchi;->e:F

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

    :goto_46
    if-eqz v2, :cond_b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final f()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lchi;->r:Z

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final hashCode()I
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Lchl;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lchi;->h:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_34

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

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

    :goto_8
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    :goto_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    cmpg-float v2, v1, v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lchi;->n:Lcgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr v0, p0

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0}, Lcgb;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_11
    add-int/2addr v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lchi;->k:Lcgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_14
    goto :goto_9

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_18
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lchi;->d:Lchl;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move v1, v4

    nop

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

    :goto_1c
    add-int/2addr v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1d
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lchi;->g:Lchk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    iget-object v1, p0, Lchi;->g:Lchk;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_23
    iget v1, p0, Lchi;->e:F

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

    :goto_24
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_25
    move v1, v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lchk;->hashCode()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/2addr v0, v1

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

    :goto_2e
    if-lez v0, :cond_4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    cmpg-float v3, v1, v2

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

    :goto_33
    return v0

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_36
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_38
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_39
    iget v1, p0, Lchi;->f:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
