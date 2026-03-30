.class public final Ldtq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    new-instance v0, Ljava/lang/ThreadLocal;

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

    :goto_3
    sput-object v0, Ldtq;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0, p2}, Ldtq;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

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

    :goto_1
    if-ne v1, v2, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const/4 v2, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    const-string p1, "No start tag found"

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

    :goto_13
    goto/32 :goto_16

    nop

    nop

    :goto_14
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_18
    const/4 v2, 0x1

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
.end method

.method public static b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 36

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_61

    nop

    nop

    :goto_1
    move/from16 v3, v29

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e7

    nop

    nop

    :goto_3
    goto/16 :goto_10c

    nop

    nop

    :catch_0
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_4
    add-float/2addr v9, v12

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5
    const/16 v17, 0x1

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v7, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b6

    nop

    nop

    :goto_7
    if-gt v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_1
    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v9, v1, Ldto;->d:F

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

    :goto_9
    sub-float v22, v7, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_a
    move/from16 v9, v27

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float v7, v14, v4

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_c
    and-int/2addr v0, v10

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_f
    if-nez v14, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_ce

    nop

    nop

    :goto_10
    move/from16 v3, v29

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_11
    sub-float/2addr v9, v4

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x0

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_13
    const v29, 0x3c111aa7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_14
    const-string v10, "item"

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmpg-float v30, v3, v30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    :goto_16
    aput-object v35, v6, v8

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_17
    const/16 v26, 0x0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f2

    nop

    nop

    :goto_19
    invoke-virtual {v9, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_1a
    iget v10, v15, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v15, Landroid/util/TypedValue;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Ldto;->a(Ldty;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_17c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_fe

    nop

    nop

    :goto_1f
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_21
    const v7, 0x101031f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_3
    :goto_23
    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v1, p2

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v34, v5

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_7e

    nop

    nop

    :goto_28
    goto/32 :goto_40

    nop

    nop

    :goto_29
    invoke-static {v3, v9, v4}, Ldto;->c(FFF)Ldto;

    move-result-object v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Ldtp;->a(I)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-gt v0, v1, :cond_4

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_185

    nop

    nop

    nop

    :goto_2c
    aput v13, v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_2d
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_2e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2f
    move/from16 v9, v27

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

    :goto_30
    invoke-virtual {v10, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_31
    goto/32 :goto_164

    nop

    nop

    :goto_32
    cmpl-float v27, v27, v28

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v1, [Ljava/lang/Object;

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

    :goto_34
    const/16 v12, 0x1c

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v4

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v0, v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_37
    move-object/from16 v1, p2

    nop

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

    :goto_38
    invoke-virtual {v9, v12, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move/from16 v4, v32

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_3b
    if-eqz v7, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_3d
    new-instance v2, Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v13, :cond_6

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :cond_6
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_40
    invoke-static {v12, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v12

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v7, v4, 0x1

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_1d8

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_cb

    nop

    nop

    :goto_45
    if-eqz v15, :cond_7

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_16e

    nop

    nop

    :goto_46
    move-object/from16 v35, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-ne v9, v11, :cond_8

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_48
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-array v1, v8, [[I

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move/from16 v32, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_194

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_193

    nop

    nop

    :goto_4d
    if-gez v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    :cond_9
    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_4e
    mul-float/2addr v0, v0

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_4f
    const/16 v17, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-lt v10, v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_a
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object/from16 v2, v26

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_54
    const/high16 v13, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_55
    move/from16 v31, v9

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    :goto_56
    const/high16 v12, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_57
    if-ne v13, v7, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    :goto_58
    move/from16 v24, v23

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-object/from16 v34, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v2, :cond_c

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_ac

    nop

    nop

    :goto_5c
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    :goto_5d
    goto/16 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_5f
    move/from16 v29, v3

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_60
    const/16 v17, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    :goto_62
    move/from16 v33, v12

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 v0, v35

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    :goto_64
    cmpl-float v3, v24, v0

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

    :goto_65
    move-object/from16 v34, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move-object v6, v1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_16

    nop

    nop

    :goto_68
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_69
    cmpg-double v4, v4, v20

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

    nop

    :goto_6a
    add-float v12, v7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const v0, 0xffffff

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

    :goto_6c
    move/from16 v3, v29

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_6d
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_66

    nop

    nop

    :goto_6e
    add-float v2, v2, v27

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move/from16 v33, v12

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_70
    iget v10, v15, Landroid/util/TypedValue;->type:I

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

    :goto_71
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_72
    cmpg-float v5, v10, v4

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_73
    if-eqz v5, :cond_d

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    :goto_75
    cmpg-float v29, v2, v29

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    move/from16 v4, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v12, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :cond_e
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_78
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    :goto_79
    move/from16 v23, v22

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_7b
    add-float v9, v22, v27

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_7d
    move v15, v4

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_1a1

    nop

    nop

    :goto_7f
    invoke-virtual {v0, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

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

    nop

    :goto_80
    move/from16 v29, v3

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    nop

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

    :goto_82
    iget v3, v1, Ldto;->c:F

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-eq v9, v12, :cond_f

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_15d

    nop

    nop

    :goto_84
    div-float v27, v27, v28

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_85
    move/from16 v23, v30

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_86
    move-object/from16 v2, p3

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_8a
    sget-object v13, Ldty;->a:Ldty;

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_8b
    iget v3, v3, Ldto;->f:F

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v6, [[I

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    move-object/from16 v15, v34

    nop

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

    :goto_8e
    move-object/from16 v0, p0

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

    :goto_8f
    if-eqz v3, :cond_10

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

    nop

    :cond_10
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    move-object/from16 v34, v15

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    aput v10, v5, v8

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    :goto_92
    const v14, -0xff01

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_93
    move/from16 v24, v0

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

    nop

    :goto_94
    if-nez v7, :cond_11

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_95
    invoke-static/range {v27 .. v27}, Ldtp;->a(I)F

    move-result v27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    :goto_96
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_1ad

    nop

    :goto_98
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_99
    mul-float v2, v2, v29

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    :goto_9a
    move-object/from16 v35, v0

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    move/from16 v7, v33

    nop

    :goto_9c
    goto/32 :goto_150

    nop

    nop

    nop

    :goto_9d
    if-nez v12, :cond_12

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    :cond_12
    goto/32 :goto_d7

    nop

    nop

    :goto_9e
    if-ltz v5, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    :goto_a0
    move-object/from16 v26, v9

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_a1
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_a2
    if-gez v22, :cond_14

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_a3
    const v7, 0x7f0403a1

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v27

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    move/from16 v29, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_a6
    aget v32, v31, v17

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    :goto_a7
    if-ne v13, v7, :cond_15

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_15
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a8
    const-string v4, "selector"

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    :goto_a9
    move/from16 v32, v4

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    move-object/from16 v34, v5

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v9, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

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

    nop

    :goto_ac
    invoke-virtual {v2, v13}, Ldto;->a(Ldty;)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_ad
    if-nez v2, :cond_16

    nop

    goto/32 :goto_9c

    nop

    nop

    :cond_16
    goto/32 :goto_9b

    nop

    nop

    :goto_ae
    invoke-static {v9, v12, v4}, Ldto;->c(FFF)Ldto;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_af
    float-to-double v12, v7

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_b0
    invoke-static {v8}, Ldsw;->X(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_b1
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_b2
    add-float v2, v2, v30

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

    :goto_b3
    const v23, 0x3ecccccd    # 0.4f

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_b4
    move/from16 v30, v3

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_b5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_b6
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_b7
    const/16 v17, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_b8
    if-nez v20, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_5b

    nop

    nop

    :goto_b9
    cmpg-float v7, v14, v9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    :goto_bb
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    aget v32, v31, v18

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    const/high16 v15, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_be
    goto/16 :goto_1df

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_1de

    nop

    nop

    nop

    :goto_c0
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c2
    move-object/from16 v15, v34

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    const-wide v3, 0x3ff68f5c28f5c28fL    # 1.41

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_c4
    move v8, v7

    nop

    :goto_c5
    goto/32 :goto_9f

    nop

    nop

    :goto_c6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    move/from16 v3, v29

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    aget-object v31, v31, v17

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_c9
    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/32 :goto_169

    nop

    nop

    :goto_ca
    const/16 v5, 0x14

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v5, v13}, Ldto;->a(Ldty;)I

    move-result v10

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_cc
    goto/16 :goto_142

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_157

    nop

    nop

    :goto_ce
    invoke-virtual {v9, v12, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_d0
    if-gez v2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    :cond_18
    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    :goto_d1
    move-object/from16 v34, v5

    nop

    :goto_d2
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    move/from16 v29, v3

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    move/from16 v9, v27

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d6
    const v30, 0x3e4ccccd    # 0.2f

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

    :goto_d7
    invoke-virtual {v9, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    add-float/2addr v2, v3

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_180

    nop

    nop

    nop

    :goto_da
    const/high16 v28, 0x40000000    # 2.0f

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    if-ne v13, v7, :cond_19

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_19
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_dc
    const/high16 v11, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    move-object/from16 v35, v0

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_de
    const/high16 v3, -0x3e800000    # -16.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_df
    new-array v1, v1, [I

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    :goto_e0
    const/4 v7, 0x0

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    cmpl-float v13, v11, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    add-float/2addr v9, v0

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_e3
    goto/16 :goto_155

    nop

    nop

    nop

    :goto_e4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e5
    int-to-double v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    :goto_e6
    if-gtz v27, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    sget-object v2, Ldty;->a:Ldty;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    const v29, 0x4461d2f7

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_ec
    move v4, v7

    nop

    nop

    :goto_ed
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    :goto_ef
    const/4 v12, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_f0
    const/16 v12, 0x1f

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_f1
    array-length v1, v5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_f2
    sub-float v27, v22, v25

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-gtz v4, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    if-ne v13, v10, :cond_1c

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    if-le v10, v12, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    const/high16 v4, 0x43b40000    # 360.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    :goto_f7
    const/4 v0, 0x0

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    const/high16 v27, 0x42c80000    # 100.0f

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_f9
    if-nez v2, :cond_1e

    nop

    goto/32 :goto_1af

    nop

    :cond_1e
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_fa
    if-ge v10, v12, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_fb
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_fc
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_fd
    move-object v5, v1

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

    :goto_fe
    const/4 v7, 0x1

    nop

    :goto_ff
    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    move-object/from16 v0, v35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_101
    shl-int/lit8 v1, v11, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_102
    move v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_103
    const/4 v10, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_104
    const/16 v18, 0x0

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_105
    mul-float/2addr v2, v3

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

    :goto_106
    int-to-double v4, v12

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    :goto_107
    aget v31, v31, v16

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :goto_109
    move/from16 v29, v3

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_10a
    const/high16 v9, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    nop

    nop

    nop

    :goto_10c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10d
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_10e
    sub-float v2, v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    :goto_10f
    goto/16 :goto_18

    nop

    nop

    :goto_110
    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    :goto_112
    invoke-interface {v1, v15, v0}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v19

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_113
    iget v4, v3, Ldto;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_114
    float-to-double v2, v2

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_156

    nop

    nop

    :goto_116
    sub-float/2addr v12, v15

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_117
    move/from16 v29, v3

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_118
    move/from16 v25, v9

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_119
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_11a
    new-array v0, v8, [I

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

    nop

    :goto_11b
    move/from16 v27, v9

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_11c
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_11d
    if-eqz v19, :cond_20

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v9, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    double-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_120
    move v4, v7

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_121
    invoke-static {v1}, Ldto;->b(I)Ldto;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_122
    if-gez v12, :cond_21

    nop

    goto/32 :goto_1e9

    nop

    nop

    :cond_21
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_123
    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

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

    nop

    nop

    :goto_124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    :goto_125
    move/from16 v3, v29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-static {v6, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    div-float v2, v2, v27

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_128
    goto/16 :goto_1cd

    nop

    nop

    nop

    :goto_129
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    nop

    nop

    nop

    invoke-static {v0, v10, v2}, Ldtq;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    goto/16 :goto_1d8

    nop

    :goto_12b
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_12c
    float-to-double v3, v9

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    move v11, v13

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_12e
    goto/16 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_130
    move-object/from16 v15, v34

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    :goto_131
    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_132
    if-nez v4, :cond_22

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_133
    cmpl-float v3, v23, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_134
    move/from16 v10, v33

    nop

    nop

    :goto_135
    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_136
    sget-object v31, Ldtp;->d:[[F

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

    :goto_137
    goto/16 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    :goto_138
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_13a
    int-to-float v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    :goto_13b
    move-object/from16 v35, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_13c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_13d
    sub-float/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    move-object/from16 v0, p0

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    sub-float v2, v10, v7

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    :goto_140
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_141
    const/16 v20, 0x1

    nop

    nop

    nop

    :goto_142
    goto/32 :goto_9

    nop

    nop

    :goto_143
    add-float/2addr v12, v11

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_144
    iget v9, v1, Ldto;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_145
    move/from16 v17, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_146
    move/from16 v4, v32

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_147
    iget v10, v7, Ldto;->a:F

    nop

    goto/32 :goto_19c

    nop

    nop

    :goto_148
    goto/16 :goto_196

    nop

    nop

    nop

    :goto_149
    goto/32 :goto_195

    nop

    nop

    nop

    :goto_14a
    goto/16 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    goto/32 :goto_80

    nop

    nop

    :goto_14c
    move-object/from16 v34, v15

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    invoke-virtual {v9, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    nop

    nop

    :goto_14e
    goto/32 :goto_1dd

    nop

    nop

    nop

    :goto_14f
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    if-eqz v2, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_151
    move/from16 v4, v17

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_152
    move/from16 v29, v3

    nop

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

    :goto_153
    add-int/lit8 v15, v15, 0x1

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_154
    goto/16 :goto_1d8

    nop

    :goto_155
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    cmpg-float v3, v0, v1

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_157
    move-object/from16 v35, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_158
    invoke-virtual {v9, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_159
    move-object/from16 v2, p3

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

    :goto_15a
    iget v0, v1, Ldto;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_15b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_15c
    if-ne v13, v7, :cond_24

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    if-le v10, v3, :cond_25

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_15e
    mul-float v2, v2, v32

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_15f
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_160
    const v7, 0x10101a5

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_161
    goto/16 :goto_39

    nop

    :goto_162
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_163
    cmpl-double v4, v4, v20

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v0, v13, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_165
    mul-float/2addr v9, v9

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_166
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_167
    const/16 v12, 0xff

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_168
    mul-float/2addr v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_169
    return-object v2

    nop

    nop

    nop

    nop

    :goto_16a
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_16b
    neg-int v13, v13

    nop

    :goto_16c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_16d
    move/from16 v29, v3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16e
    new-instance v15, Landroid/util/TypedValue;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16f
    const v1, 0xc

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

    :goto_170
    cmpl-float v22, v22, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_171
    move/from16 v3, v29

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_172
    const/high16 v3, 0x42e80000    # 116.0f

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_173
    move-object/from16 v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_174
    float-to-int v11, v12

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_175
    move-object/from16 v0, v35

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_176
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_177
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_178
    goto/32 :goto_1aa

    nop

    nop

    :goto_179
    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_17a
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_17b
    or-int v10, v0, v1

    nop

    nop

    nop

    :goto_17c
    goto/32 :goto_36

    nop

    nop

    :goto_17d
    move-object/from16 v35, v0

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_17e
    move-object/from16 v35, v0

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_17f
    if-lez v3, :cond_26

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_180
    sub-float v3, v14, v2

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_181
    if-lez v29, :cond_27

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    :cond_27
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_182
    goto/16 :goto_c5

    nop

    :goto_183
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_184
    sub-float v27, v25, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_185
    invoke-static {v8}, Ldsw;->X(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_186
    move/from16 v32, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    cmpg-float v2, v2, v14

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_188
    const/high16 v13, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_189
    invoke-interface {v1, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    const v28, 0x3c23d70a    # 0.01f

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_18c
    const/16 v16, 0x2

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_18d
    add-float v12, v7, v2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    const/16 v16, 0x2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_190
    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_191
    sget-object v10, Ldtq;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    :goto_192
    new-array v12, v9, [I

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_193
    invoke-virtual {v2, v1, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    nop

    :goto_194
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_195
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_196
    goto/32 :goto_56

    nop

    nop

    :goto_197
    invoke-static {v5, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_fd

    nop

    nop

    :goto_198
    mul-float v30, v30, v31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_199
    move/from16 v22, v31

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    :goto_19a
    invoke-static {v5, v2, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_126

    nop

    nop

    :goto_19b
    iget v12, v1, Ldto;->e:F

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    iget v7, v7, Ldto;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_19d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_19e
    move-object v15, v5

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_19f
    if-ltz v2, :cond_28

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_1a0
    move-object/from16 v5, v34

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_1a1
    if-lt v15, v9, :cond_29

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_29
    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    move-object v9, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    invoke-static/range {v30 .. v30}, Ldtp;->a(I)F

    move-result v30

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_1a4
    new-array v5, v5, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1a5
    goto/16 :goto_14e

    nop

    nop

    nop

    nop

    :goto_1a6
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1a7
    mul-double/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    :goto_1a8
    new-array v6, v5, [[I

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    throw v0

    nop

    nop

    nop

    :goto_1aa
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_1ab
    double-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_1ac
    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    nop

    :goto_1ad
    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :goto_1ae
    move-object v5, v2

    nop

    :goto_1af
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    const/high16 v22, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    move/from16 v12, v33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_1b2
    iget v15, v3, Ldto;->e:F

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_1b3
    move/from16 v29, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_1b4
    invoke-static {v11, v13, v12}, Ldvu;->z(III)I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_1b5
    move-object/from16 v34, v15

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_1b7
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    move/from16 v9, v27

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    div-float v2, v2, v28

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_1ba
    mul-float v27, v27, v32

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    goto/16 :goto_14e

    nop

    nop

    nop

    :goto_1bc
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_1bd
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    :goto_1be
    invoke-static {v10}, Ldto;->b(I)Ldto;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_1bf
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_1c0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    const-string v2, ": invalid color state list tag "

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    if-ltz v30, :cond_2a

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_121

    nop

    nop

    :goto_1c3
    const/16 v20, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    invoke-static {v14}, Ldtp;->b(F)I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_1c5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_1c6
    if-gez v7, :cond_2b

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    div-float v2, v2, v28

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    move/from16 v33, v12

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    goto/16 :goto_142

    nop

    nop

    nop

    :goto_1cb
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    goto/16 :goto_10c

    nop

    :goto_1cd
    goto/32 :goto_10b

    nop

    nop

    :goto_1ce
    if-ne v9, v4, :cond_2c

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1cf
    mul-float/2addr v12, v11

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    if-eqz v2, :cond_2d

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_1d1
    array-length v1, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d2
    if-lez v0, :cond_2e

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_178

    nop

    :goto_1d3
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v30

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_1d4
    const/16 v17, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_1d6
    move v10, v7

    nop

    goto/32 :goto_1e3

    nop

    nop

    :goto_1d7
    const/16 v17, 0x1

    nop

    nop

    nop

    nop

    :goto_1d8
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1d9
    if-nez v9, :cond_2f

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    invoke-static {v14}, Ldtp;->b(F)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1db
    sget-object v9, Ldtc;->a:[I

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    :goto_1dc
    const v7, 0x7f04003b

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_1de
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_1df
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    move-object/from16 v35, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_1e1
    const-wide/16 v20, 0x0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_1e2
    move/from16 v31, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    move v12, v10

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e5
    move/from16 v25, v31

    nop

    nop

    nop

    nop

    :goto_1e6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    move/from16 v4, v32

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    :goto_1e8
    goto/16 :goto_d2

    nop

    nop

    nop

    nop

    :goto_1e9
    goto/32 :goto_1e0

    nop

    nop

    nop

    :goto_1ea
    cmpg-double v12, v12, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop
.end method
