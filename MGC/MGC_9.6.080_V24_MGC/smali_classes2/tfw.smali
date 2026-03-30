.class public final Ltfw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltdy;


# instance fields
.field private final a:Lteh;

.field private final b:Ltej;

.field private final c:Ltfi;

.field private final d:Ljava/util/List;

.field private final e:I


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltfw;->b:Ltej;

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
    and-int/lit16 v0, v0, 0x88

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltej;->c:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

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

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_d
    const/4 p0, 0x0

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

    :goto_e
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

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

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_20

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Ltej;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1}, Ltdc;->b()Z

    move-result p1

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

    :goto_19
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_1a
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0, p2}, Ltej;->c(Ljava/lang/Class;Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    return p0

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Ltej;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Ltdc;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_9

    nop

    nop

    :goto_26
    iget-wide v0, p0, Ltej;->b:D

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

    :goto_27
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_19

    nop

    nop

    :goto_28
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    :goto_29
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    :goto_2c
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2d
    if-eqz p2, :cond_7

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(Ltdj;Lthm;Ljava/lang/Class;ZZ)Ltfu;
    .locals 26

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, v11

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v12, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_5
    invoke-virtual {v12, v11}, Ltdj;->a(Lthm;)Ltdx;

    move-result-object v10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8b

    nop

    nop

    :goto_7
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ltdo;

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_d
    invoke-virtual {v12, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_e
    move-object/from16 v0, p0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_f
    if-eq v5, v10, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    :cond_0
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_11
    move-object/from16 v25, v12

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v10, v11, Lthm;->a:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    :cond_1
    goto/32 :goto_f9

    nop

    nop

    :goto_17
    invoke-direct {v11, v10}, Lthm;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_19
    sget-object v12, Lthh;->a:Lthe;

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_99

    nop

    nop

    :goto_1b
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_1c
    move/from16 p4, v5

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

    :goto_1d
    const v1, 0x1d

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1e
    move v8, v9

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    invoke-static {v1, v6, v0, v5}, Ltfw;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_20
    new-instance v2, Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_21
    throw v1

    nop

    nop

    :goto_22
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_23
    move-object/from16 v17, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_24
    move v9, v15

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v10, v8

    nop

    :goto_26
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v7, v12

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

    nop

    :goto_28
    if-nez v9, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v12}, Ltea;->a()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v18, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v12, v5

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    array-length v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_2d
    goto/16 :goto_f5

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2f
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_30
    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v22, v10

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object v0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_ef

    nop

    nop

    :goto_34
    iget-object v5, v0, Ltfw;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_35
    if-nez v8, :cond_4

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_4
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v13, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_38
    goto/16 :goto_94

    nop

    nop

    :goto_39
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_80

    nop

    nop

    :goto_3b
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_81

    nop

    nop

    :goto_3d
    iget-object v0, v4, Lthm;->b:Ljava/lang/reflect/Type;

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

    :goto_3e
    const/4 v10, 0x0

    nop

    nop

    :goto_3f
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v0, v1}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v9, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_113

    nop

    nop

    :goto_43
    const/4 v11, 0x0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_45
    const/16 v24, 0x0

    nop

    :goto_46
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-class v12, Ltea;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v12

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v9, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_4b
    if-nez p5, :cond_6

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_6
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz v10, :cond_7

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

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4d
    throw v0

    nop

    nop

    :goto_4e
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-int/lit8 v14, v18, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_52
    instance-of v9, v10, Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v12, v0, Ltfw;->a:Lteh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v10, 0x4

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz v12, :cond_8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v12}, Ltea;->b()[Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_5b
    iget-object v0, v10, Ltfs;->a:Ljava/lang/reflect/Field;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move/from16 v5, p4

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move v14, v9

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_107

    nop

    nop

    nop

    :goto_60
    move/from16 v5, p4

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

    :goto_61
    goto/16 :goto_cc

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_66
    iget-object v0, v0, Ltfs;->a:Ljava/lang/reflect/Field;

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

    :goto_67
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

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

    :goto_68
    if-nez v22, :cond_a

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_69
    new-instance v11, Lthm;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v1, v8, v0, v5}, Ltfw;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_6b
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_100

    nop

    :cond_b
    goto/32 :goto_ff

    nop

    :goto_6c
    if-nez v16, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_a6

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_5b

    nop

    nop

    :goto_6f
    move/from16 v5, p4

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

    nop

    :goto_70
    iget-object v10, v4, Lthm;->b:Ljava/lang/reflect/Type;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_72
    move-object/from16 v21, v11

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_73
    if-eqz v12, :cond_d

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_c2

    nop

    nop

    :goto_74
    invoke-virtual {v13, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-object/from16 v17, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-nez v12, :cond_e

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_77
    move-object/from16 v20, p1

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object/from16 v19, v6

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_7a
    invoke-direct {v4, v0}, Lthm;-><init>(Ljava/lang/reflect/Type;)V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move v5, v9

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_7c
    move-object/from16 v19, v6

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_7d
    aget-object v13, v7, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move-object/from16 v5, v19

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_7f
    const/4 v9, 0x0

    nop

    :goto_80
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const-string v2, " (supertype of "

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_82
    move-object/from16 v0, p0

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

    :goto_83
    const v0, 0x13

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_84
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_85
    new-instance v11, Ltfs;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_86
    if-nez v10, :cond_f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_87
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_88
    new-instance v3, Ljava/util/LinkedHashMap;

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

    nop

    :goto_89
    return-object v0

    nop

    :goto_8a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move-object/from16 v18, v10

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

    :goto_8c
    move-object/from16 v12, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_105

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_8f
    invoke-static {v5}, Lshf;->q(Ljava/util/List;)I

    move-result v5

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_90
    if-gtz v10, :cond_10

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object v10, v11

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

    :goto_92
    if-eqz v12, :cond_11

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_11
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_93
    move-object v6, v1

    nop

    :goto_94
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-eqz v0, :cond_12

    nop

    goto/32 :goto_fe

    nop

    :cond_12
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const-string v3, "@SerializedName on "

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    array-length v9, v12

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_98
    move v14, v9

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_b4

    nop

    nop

    :goto_9a
    invoke-virtual {v13, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_9b
    move-object/from16 v25, v12

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_9d
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_9e
    move-object/from16 v19, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_9f
    move-object v11, v13

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_a0
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_88

    nop

    nop

    :goto_a1
    if-eqz v10, :cond_13

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_6d

    nop

    nop

    :goto_a2
    move-object v7, v12

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

    :goto_a3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_a4
    invoke-direct {v0, v2}, Ltfu;-><init>(Ljava/util/Map;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    :goto_a6
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_109

    nop

    nop

    :goto_a8
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_a9
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_b2

    nop

    nop

    :goto_aa
    move-object/from16 v17, v7

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_ab
    const-class v10, Ltdz;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    new-instance v0, Ltfu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_ad
    if-nez v8, :cond_14

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_14
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-ne v5, v10, :cond_15

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    :cond_15
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_af
    move-object/from16 v6, v25

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_105

    nop

    :goto_b1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b2
    move-object/from16 v4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_b3
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_b4
    if-lt v14, v15, :cond_16

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v0, v13, v9}, Ltfw;->23ce148e54b083367f51e25c7971761em(Ljava/lang/reflect/Field;Z)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget v12, v0, Ltfw;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_b7
    const/4 v10, 0x3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b8
    const-string v4, "ReflectionAccessFilter does not permit using reflection for "

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object v6, v4, Lthm;->a:Ljava/lang/Class;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_ba
    const-string v0, " is not supported"

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

    :goto_bb
    check-cast v10, Ltfs;

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

    :goto_bc
    invoke-virtual {v12, v6, v13}, Lthe;->b(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v12

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_bd
    iget-object v10, v0, Ltfw;->c:Ltfi;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_be
    move-object v12, v11

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

    nop

    nop

    :goto_bf
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_c2
    invoke-static {v13}, Lthh;->g(Ljava/lang/reflect/AccessibleObject;)V

    :goto_c3
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_c4
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_c5
    throw v0

    nop

    :goto_c6
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_c7
    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_c8
    const-class v8, Ltea;

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

    :goto_c9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ba

    nop

    nop

    :goto_ca
    invoke-static {v12, v9}, Lthh;->e(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-static {v7, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_cc
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    new-instance v1, Ltdo;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_ce
    const-class v7, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_cf
    move-object v12, v11

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    if-ne v6, v7, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_c0

    nop

    nop

    :goto_d2
    move-object/from16 v17, v7

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_d3
    move v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_d4
    check-cast v0, Ltfs;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_d5
    const/4 v9, 0x0

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    const/16 v24, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d8
    add-int/lit8 v12, v12, -0x1

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    move-object/from16 v18, v10

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_da
    check-cast v22, Ltdz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_dd
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_de
    const/16 v23, 0x0

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_df
    move/from16 v15, v24

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    const-string v1, "). Register a TypeAdapter for this type or adjust the access filter."

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move-object/from16 v6, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    move v9, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_e3
    if-eqz v16, :cond_18

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_fb

    nop

    nop

    :goto_e4
    move/from16 p4, v5

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_e5
    if-eqz v9, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_19
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    move-object/from16 v19, v6

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual/range {v18 .. v23}, Ltfi;->b(Lteh;Ltdj;Lthm;Ltdz;Z)Ltdx;

    move-result-object v10

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e8
    move-object/from16 v13, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_e9
    move/from16 v18, v14

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    array-length v15, v7

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_d0

    nop

    nop

    :goto_ed
    goto/32 :goto_f4

    nop

    nop

    :goto_ee
    check-cast v8, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_ef
    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_f1
    const-class v8, Ltea;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_f2
    move v5, v8

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_f3
    invoke-static {v0, v5, v4}, Ltee;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_f4
    move v8, v10

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    if-nez v8, :cond_1a

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

    nop

    :cond_1a
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    new-instance v4, Lthm;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f9
    invoke-static {v12}, Lthh;->g(Ljava/lang/reflect/AccessibleObject;)V

    :goto_fa
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    if-eqz v10, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    invoke-direct/range {v10 .. v15}, Ltfs;-><init>(Ljava/lang/reflect/Field;ZLtdx;ZZ)V

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_fd
    goto/16 :goto_4e

    nop

    :goto_fe
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_100
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_101
    move-object v5, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_102
    move/from16 p4, v5

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_103
    if-ne v6, v1, :cond_1c

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_104
    throw v0

    nop

    nop

    nop

    :goto_105
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    move v15, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_107
    sget-object v0, Ltfu;->a:Ltfu;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_108
    move-object/from16 v7, v17

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    move/from16 v18, v14

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

    :goto_10b
    if-eqz v5, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    :cond_1d
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_10c
    check-cast v12, Ltea;

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_10d
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-direct {v0, v13, v8}, Ltfw;->23ce148e54b083367f51e25c7971761em(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_10f
    goto/16 :goto_4e

    nop

    nop

    :goto_110
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_111
    if-nez v12, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_d8

    nop

    nop

    :goto_112
    move-object/from16 v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_114
    if-nez v8, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    :cond_1f
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_115
    invoke-static {v10, v6, v12}, Ltee;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop
.end method

.method public constructor <init>(Lteh;ILtej;Ltfi;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Ltfw;->c:Ltfi;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ltfw;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p3, p0, Ltfw;->b:Ltej;

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

    :goto_5
    iput-object p1, p0, Ltfw;->a:Lteh;

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
    iput-object p5, p0, Ltfw;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V
    .locals 2

    goto/32 :goto_14

    nop

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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, " is not accessible and ReflectionAccessFilter does not permit making it accessible. Register a TypeAdapter for the declaring type, adjust the access filter or increase the visibility of the element and its declaring type."

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-direct {p1, p0}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_4
    new-instance p1, Ltdo;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    move-object v0, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    nop

    goto/32 :goto_e

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

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_8
    invoke-static {p1, v1}, Lthh;->e(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Ljava/lang/reflect/Member;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    throw p1

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const v1, 0x1c

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

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    invoke-static {p1, p0}, Lshf;->p(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    const v0, 0x17

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    if-eq v1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_16
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

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

    nop
.end method

.method private static d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Ljava/lang/IllegalArgumentException;
    .locals 3

    goto/32 :goto_21

    nop

    nop

    :goto_0
    const-string p0, " declares multiple JSON fields named \'"

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
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p0, "\nSee "

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_d
    const-string p0, "duplicate-fields"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, "\'; conflict is caused by fields "

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

    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    invoke-static {p2}, Lthh;->d(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    invoke-static {p3}, Lthh;->d(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-static {p0}, Lshf;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    const-string p0, " and "

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    const-string v2, "Class "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ltdj;Lthm;)Ltdx;
    .locals 10

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v8, v7, p0, v0}, Ltfv;-><init>(Ljava/lang/Class;Ltfu;Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    :goto_4
    iget-object v1, p0, Ltfw;->a:Lteh;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ltfw;->d:Ljava/util/List;

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

    :goto_6
    const/4 v6, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_7
    move-object v2, p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    :goto_e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    move-object v3, p2

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

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x0

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

    nop

    :goto_14
    new-instance p0, Ltfq;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_15
    move-object v4, v7

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

    :goto_16
    invoke-virtual {v1, p2}, Lteh;->a(Lthm;)Ltet;

    move-result-object v8

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

    nop

    :goto_17
    new-instance p0, Ltdo;

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

    :goto_18
    invoke-direct/range {v1 .. v6}, Ltfw;->33f5b80483094659737b73d90f80a8a4m(Ltdj;Lthm;Ljava/lang/Class;ZZ)Ltfu;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_19
    return-object v8

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    new-instance v8, Ltfv;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    invoke-static {v7}, Lthh;->h(Ljava/lang/Class;)Z

    move-result v0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v2, p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1f
    invoke-direct/range {v1 .. v6}, Ltfw;->33f5b80483094659737b73d90f80a8a4m(Ltdj;Lthm;Ljava/lang/Class;ZZ)Ltfu;

    move-result-object p0

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

    :goto_20
    move v5, v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v7, p1, p2}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    goto/16 :goto_e

    nop

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    :goto_27
    goto/32 :goto_30

    nop

    :goto_28
    const-class v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_29
    move-object v4, v7

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

    :goto_2a
    move-object v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2b
    const-string p1, "ReflectionAccessFilter does not permit using reflection for "

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2f
    goto/32 :goto_12

    nop

    nop

    :goto_30
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_31
    move-object v1, p0

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

    :goto_32
    move v5, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_33
    return-object v9

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_17

    nop

    nop

    :goto_35
    sget-object v1, Lthh;->a:Lthe;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Lshf;->q(Ljava/util/List;)I

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v7}, Lthe;->c(Ljava/lang/Class;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p0, p1}, Ltdo;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    :goto_3a
    const/4 v0, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string p2, ". Register a TypeAdapter for this type or adjust the access filter."

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v9, v8, p0}, Ltft;-><init>(Ltet;Ltfu;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v9, Ltft;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_40
    iget-object v7, p2, Lthm;->a:Ljava/lang/Class;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0}, Ltfq;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method
