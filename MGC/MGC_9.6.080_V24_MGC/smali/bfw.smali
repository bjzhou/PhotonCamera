.class public final Lbfw;
.super Luci;
.source "PG"

# interfaces
.implements Lubp;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lbgp;

.field final synthetic c:Lubo;

.field final synthetic d:Lakz;

.field final synthetic e:Z

.field final synthetic f:Laoa;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lbgp;Lubo;Lakz;ZLaoa;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object p3, p0, Lbfw;->c:Lubo;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lbfw;->d:Lakz;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lbfw;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    const/4 p1, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lbfw;->f:Laoa;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lbfw;->b:Lbgp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-boolean p5, p0, Lbfw;->e:Z

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


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v3, Lbfv;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    check-cast v6, Ldpb;

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v4, v5}, Lbnx;->d(F)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, v0, Lbfw;->c:Lubo;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const-string v1, "You must have at least one anchor."

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v4, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2}, Lbgp;->l()Z

    move-result v16

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1, v4}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v4, v0, Lbfw;->b:Lbgp;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1}, Lblm;->g()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_e
    check-cast v8, Lubo;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_f
    invoke-interface {v1}, Lblm;->g()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_10
    invoke-interface {v1, v9}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_11
    const-string v1, "You cannot have two anchors mapped to the same state."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_12
    check-cast v18, Lubp;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_13
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

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

    :goto_14
    iget-object v12, v2, Lbgp;->n:Lakp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_15
    invoke-interface {v1, v3}, Lblm;->x(Ljava/lang/Object;)V

    :goto_16
    goto/32 :goto_67

    nop

    nop

    :goto_17
    invoke-direct {v3, v0, v10}, Lbfv;-><init>(Lbgp;Ltzy;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v2, Lbll;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_19
    or-int/2addr v3, v4

    nop

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

    nop

    :goto_1a
    invoke-interface {v1}, Lblm;->g()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1b
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_1d
    iget-object v5, v0, Lbfw;->a:Ljava/util/Map;

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

    :goto_1e
    move-object v6, v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_81

    nop

    nop

    :goto_21
    if-eq v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_84

    nop

    nop

    :goto_22
    invoke-static {v3}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, v0, Lbfw;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    throw v0

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_6e

    nop

    nop

    :goto_26
    invoke-interface {v1, v9}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_27
    invoke-interface {v1, v4}, Lblm;->x(Ljava/lang/Object;)V

    :goto_28
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_2a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_2b
    sget-object v2, Lbll;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v1}, Lblm;->o()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    or-int/2addr v3, v4

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v7, v0, Lbfw;->c:Lubo;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct/range {v3 .. v8}, Lbft;-><init>(Lbgp;Ljava/util/Map;Ldpb;Lubo;Ltzy;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v1, v2}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_33
    or-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, v0, Lbfw;->a:Ljava/util/Map;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v1, v6}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_37
    const v2, 0x29934e9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1, v2}, Lblm;->v(I)V

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_39
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v1, v2}, Lblm;->f(Lbmb;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_3b
    add-int v0, v0, v1

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

    :goto_3c
    check-cast v4, Lbnn;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Lbgp;->d()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_3e
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableElement;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0x18

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v3, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object v11, v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_25

    nop

    :goto_45
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v1, Lblm;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Lbgp;->h()Ljava/util/Map;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_48
    throw v0

    nop

    nop

    :goto_49
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, v0, Lbfw;->b:Lbgp;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_5d

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4c
    invoke-direct/range {v11 .. v18}, Landroidx/compose/foundation/gestures/DraggableElement;-><init>(Lakp;Lakz;ZLaoa;ZLubp;Lubp;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v2, v2, Lbgp;->e:Lbnx;

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

    :goto_4e
    if-eq v8, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :cond_4
    :goto_4f
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v2, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v4, v2, Lbgp;->c:Lbnx;

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

    :goto_53
    or-int/2addr v3, v4

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

    :goto_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_55
    new-instance v11, Lbft;

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

    :goto_56
    const-string v1, "The initial value must have an associated anchor."

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v1, v4}, Lblm;->E(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    :goto_59
    invoke-interface {v1, v2}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5a
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_6
    goto/32 :goto_62

    nop

    :goto_5b
    if-eqz v3, :cond_7

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_7
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5c
    if-eq v4, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_8
    :goto_5d
    goto/32 :goto_70

    nop

    nop

    :goto_5e
    invoke-interface {v1, v10}, Lblm;->C(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_5f
    const/high16 v4, 0x42fa0000    # 125.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_61
    iget-object v2, v0, Lbfw;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_64
    sget-object v3, Lbll;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object v3, v11

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sget-object v17, Laki;->a:Lubp;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_67
    move-object/from16 v18, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v10, 0x0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v1, v11}, Lblm;->x(Ljava/lang/Object;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_6d
    move-object/from16 v1, p1

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v2, v0, Lbfw;->a:Ljava/util/Map;

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

    :goto_6f
    invoke-static {v3, v4}, Lbfx;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v3

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

    :goto_70
    new-instance v4, Lbnn;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_71
    iget-object v2, v0, Lbfw;->b:Lbgp;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_72
    iget-boolean v14, v0, Lbfw;->e:Z

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

    nop

    nop

    :goto_73
    check-cast v1, Lbzz;

    nop

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

    nop

    :goto_74
    new-instance v3, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_75
    or-int/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v3, v0, Lbfw;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-interface {v1, v4}, Lblm;->z(F)Z

    move-result v4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_78
    invoke-interface {v1}, Lblm;->h()Luad;

    move-result-object v3

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v13, v0, Lbfw;->d:Lakz;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_7a
    sget-object v2, Lbzz;->c:Lbzv;

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

    :goto_7b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7c
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_9
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v15, v0, Lbfw;->f:Laoa;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v4, v0, Lbfw;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_82
    const v1, 0x16

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_83
    invoke-interface {v2, v3}, Lbnx;->d(F)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_84
    sget-object v2, Ldbf;->c:Lbox;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_85
    iget-object v2, v0, Lbfw;->b:Lbgp;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_86
    invoke-direct {v4, v3, v8}, Lbnn;-><init>(Luad;Lubo;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_87
    if-eq v3, v2, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_a
    :goto_88
    goto/32 :goto_3

    nop

    nop

    :goto_89
    move-object v8, v11

    nop

    nop

    :goto_8a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v9, v0, Lbfw;->b:Lbgp;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
