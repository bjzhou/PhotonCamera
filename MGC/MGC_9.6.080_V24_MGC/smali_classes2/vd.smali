.class public final Lvd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lur;


# instance fields
.field public final a:Lov;

.field public final b:Lvc;

.field public final c:Lulh;

.field private final d:Loy;


# direct methods
.method public constructor <init>(Lejk;Loy;Lov;La;Lvg;Ljava/util/List;)V
    .locals 14

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    if-nez v6, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2
    move-object v3, v4

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

    :goto_3
    invoke-static {v7, v6}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

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
    invoke-static {v10, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v9, v1, Lejk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v9, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_8
    const-string v2, " until "

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const-string v2, " frames have been completed."

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iget-wide v2, v11, Lup;->a:J

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

    :goto_c
    const-string v2, "Capture processing has been disabled for "

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_d
    move-object v4, v5

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

    :goto_e
    move-object v5, v8

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_1
    goto/32 :goto_6e

    nop

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_11
    iput-object v12, v11, Lup;->b:Lvc;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_12
    goto :goto_1f

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5b

    nop

    nop

    :goto_14
    const v0, 0x2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "GraphLoop has already been set!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_16
    iput-object v2, v0, Lvd;->a:Lov;

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

    :goto_17
    move-object v9, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, v0, Lvd;->c:Lulh;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1d
    move-object v6, v7

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_20
    move-object v1, v12

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

    nop

    :goto_21
    goto/32 :goto_6f

    nop

    :goto_22
    invoke-static {v1}, Luli;->a(Ljava/lang/Object;)Lulh;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_24
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "CXCP"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x19

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    filled-new-array {v2, v11}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_28
    move-object/from16 v2, p3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_29
    iget-object v4, v2, Lov;->i:Ljava/util/Map;

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_2a
    sget-object v8, Lsa;->a:Ljava/util/Map;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2}, Lrkm;->aZ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2c
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2e
    invoke-static {v11}, Lrkm;->af(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

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

    nop

    :goto_2f
    if-nez v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_3d

    nop

    :goto_31
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_32
    throw v0

    nop

    :goto_33
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v9, v8}, Lrkm;->ay(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_51

    nop

    :goto_36
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_37
    int-to-long v11, v8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_38
    move-object v13, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v6, :cond_3

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

    :cond_3
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3c
    move v6, v2

    nop

    :goto_3d
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3e
    check-cast v13, Lufp;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v8, Ljava/util/Set;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    :goto_41
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    :goto_45
    invoke-direct {v9, v11, v12}, Lup;-><init>(J)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object/from16 v2, p5

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_27

    nop

    nop

    :goto_48
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object v1, p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v8, v9

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    :goto_4e
    if-nez v8, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v11, v9

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_50
    move-object v11, v7

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_52
    if-eqz v11, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    :goto_53
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object/from16 v3, p2

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_55
    if-eq v2, v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_7
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_58
    new-instance v9, Lup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_59
    invoke-static {v7, v6}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

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

    :goto_5a
    if-eqz v8, :cond_8

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v1, v11, Lup;->b:Lvc;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_5c
    move-object/from16 v2, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5e
    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    :goto_5f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_61
    iput-object v3, v0, Lvd;->d:Loy;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_64
    iget-object v1, v1, Lejk;->c:Ljava/lang/Object;

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

    nop

    :goto_65
    move v6, v10

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

    :goto_66
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v12, Lvc;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_68
    iget-object v5, v2, Lov;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_69
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6a
    sget-object v1, Lpt;->a:Lpt;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_6c
    move-object/from16 v6, p4

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v12, v10}, Lvc;->e(Z)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    :goto_71
    sget-object v2, Lse;->a:Lpx;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput-object v12, v0, Lvd;->b:Lvc;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct/range {v1 .. v9}, Lvc;-><init>(Loy;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;La;Ljava/util/List;Lufs;Lufp;)V

    goto/32 :goto_73

    nop

    nop

    :goto_75
    sget-object v8, Lse;->c:Lpx;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method


# virtual methods
.method public final a(Lpq;)V
    .locals 4

    goto/32 :goto_14

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

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    sget-object v2, Lpt;->a:Lpt;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    :goto_3
    move-object v2, p1

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1b

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v3, v2, Lpu;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget-object v0, p0, Lvd;->c:Lulh;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_12

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

    :goto_f
    check-cast v2, La;

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

    :goto_10
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    move-object v2, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    :goto_16
    invoke-virtual {v0}, Lulh;->b()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    instance-of v2, v2, Lpt;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2}, Lulh;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object p0, p0, Lvd;->c:Lulh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lulh;->d(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lps;->a:Lps;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lulh;->d(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lvd;->c:Lulh;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lvc;->f(Lve;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lvd;->b:Lvc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_10
    sget-object v1, Lpt;->a:Lpt;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lvd;->b:Lvc;

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
    invoke-virtual {p0}, Lvc;->close()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final e(Lqk;)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4
    iget-object p1, p0, Lvc;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit v0

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

    :goto_6
    goto/32 :goto_16

    nop

    nop

    :goto_7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_9
    iget-object v0, p0, Lvc;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lvc;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Luv;->q()V

    goto/32 :goto_18

    nop

    nop

    :goto_c
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_12

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

    nop

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    const v0, 0x20

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lvd;->b:Lvc;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    check-cast v1, Luv;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_14

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lvc;->d:Lqk;

    nop

    iput-object p1, p0, Lvc;->d:Lqk;

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    goto :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lvc;->e:Lhwy;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lux;

    nop

    nop

    nop

    invoke-direct {v2, p1}, Lux;-><init>(Lqk;)V

    invoke-virtual {v1, v2}, Lhwy;->i(Ljava/lang/Object;)Z

    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v1, p0, Lvc;->e:Lhwy;

    nop

    nop

    nop

    nop

    new-instance v2, Luy;

    nop

    nop

    iget-object v3, p0, Lvc;->c:Lve;

    nop

    invoke-direct {v2, v3}, Luy;-><init>(Lve;)V

    invoke-virtual {v1, v2}, Lhwy;->i(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :catchall_0
    move-exception p0

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

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x29

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v0, 0x17

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

    :goto_7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget-object p0, p0, Lvd;->d:Loy;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "GraphProcessor(cameraGraph: "

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop
.end method
