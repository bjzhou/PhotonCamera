.class public final Lace;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lace;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0, p1, v0, p2}, Lace;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "selector"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v4, 0x1

    add-int/lit8 v5, v0, 0x1

    const/16 v0, 0x14

    new-array v6, v0, [[I

    new-array v0, v0, [I

    const/4 v7, 0x0

    move-object v8, v6

    const/4 v9, 0x0

    move-object v6, v0

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v4, :cond_27

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    const/4 v11, 0x3

    if-ge v10, v5, :cond_1

    if-eq v0, v11, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v8

    goto/16 :goto_16

    :cond_1
    :goto_1
    const/4 v12, 0x2

    if-ne v0, v12, :cond_26

    if-gt v10, v5, :cond_26

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "item"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Laao;->a:[I

    if-nez v3, :cond_2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v10, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v2, v0, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v10, v0

    :goto_2
    const/4 v0, -0x1

    invoke-virtual {v10, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const v14, -0xff01

    if-eq v13, v0, :cond_5

    sget-object v0, Lace;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/TypedValue;

    if-nez v15, :cond_3

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1, v13, v15, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v0, v15, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x1c

    if-lt v0, v12, :cond_4

    iget v0, v15, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x1f

    if-gt v0, v12, :cond_4

    goto :goto_3

    :cond_4
    :try_start_0
    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lace;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v10, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v10, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_4
    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v12, :cond_6

    invoke-virtual {v10, v4, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_5

    :cond_6
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v10, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_5

    :cond_7
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_5
    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    const/high16 v15, -0x40800000    # -1.0f

    if-eqz v14, :cond_8

    invoke-virtual {v10, v12, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    goto :goto_6

    :cond_8
    const/4 v12, 0x4

    invoke-virtual {v10, v12, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    :goto_6
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v10

    new-array v12, v10, [I

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v10, :cond_b

    invoke-interface {v2, v15}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v13

    const v7, 0x10101a5

    if-eq v13, v7, :cond_a

    const v7, 0x101031f

    if-eq v13, v7, :cond_a

    const v7, 0x7f04003a

    if-eq v13, v7, :cond_a

    const v7, 0x7f040369

    if-eq v13, v7, :cond_a

    add-int/lit8 v7, v4, 0x1

    const/4 v1, 0x0

    invoke-interface {v2, v15, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v19

    if-nez v19, :cond_9

    neg-int v13, v13

    :cond_9
    aput v13, v12, v4

    move v4, v7

    :cond_a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    const/4 v7, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_b
    invoke-static {v12, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v1

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    cmpl-float v10, v14, v7

    if-ltz v10, :cond_c

    cmpg-float v10, v14, v4

    if-gtz v10, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    :goto_8
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v13, v11, v12

    if-nez v13, :cond_e

    if-nez v10, :cond_d

    move-object v4, v1

    move v15, v5

    move-object/from16 v27, v8

    const/16 v17, 0x1

    goto/16 :goto_13

    :cond_d
    const/4 v10, 0x1

    :cond_e
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v12, v11

    float-to-int v11, v12

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-static {v11, v13, v12}, Laax;->d(III)I

    move-result v11

    if-eqz v10, :cond_22

    invoke-static {v0}, Lacc;->b(I)Lacc;

    move-result-object v0

    iget v10, v0, Lacc;->a:F

    iget v0, v0, Lacc;->b:F

    float-to-double v12, v0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v12, v19

    sget-object v12, Laco;->a:Laco;

    if-ltz v15, :cond_21

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    move v15, v5

    int-to-double v4, v13

    const-wide/16 v20, 0x0

    cmpg-double v13, v4, v20

    if-lez v13, :cond_20

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    cmpl-double v13, v4, v20

    if-ltz v13, :cond_f

    move-object v4, v1

    move-object/from16 v27, v8

    const/16 v17, 0x1

    goto/16 :goto_11

    :cond_f
    cmpg-float v4, v10, v7

    if-gez v4, :cond_10

    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    const/high16 v4, 0x43b40000    # 360.0f

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_9
    move v10, v0

    const/4 v5, 0x0

    const/4 v13, 0x1

    const/16 v20, 0x0

    :goto_a
    sub-float v22, v20, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const v23, 0x3ecccccd    # 0.4f

    cmpl-float v22, v22, v23

    if-ltz v22, :cond_1e

    const/high16 v22, 0x447a0000    # 1000.0f

    const/high16 v23, 0x447a0000    # 1000.0f

    const/16 v24, 0x0

    const/high16 v25, 0x42c80000    # 100.0f

    const/16 v26, 0x0

    :goto_b
    sub-float v27, v24, v25

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const v28, 0x3c23d70a    # 0.01f

    const/high16 v29, 0x40000000    # 2.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_18

    sub-float v27, v25, v24

    div-float v27, v27, v29

    add-float v7, v24, v27

    invoke-static {v7, v10, v4}, Lacc;->c(FFF)Lacc;

    move-result-object v2

    sget-object v3, Laco;->a:Laco;

    invoke-virtual {v2, v3}, Lacc;->a(Laco;)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Lacd;->a(I)F

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Lacd;->a(I)F

    move-result v27

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Lacd;->a(I)F

    move-result v30

    sget-object v31, Lacd;->d:[[F

    const/16 v17, 0x1

    aget-object v31, v31, v17

    const/16 v18, 0x0

    aget v32, v31, v18

    mul-float v3, v3, v32

    aget v32, v31, v17

    mul-float v27, v27, v32

    const/16 v16, 0x2

    aget v31, v31, v16

    mul-float v30, v30, v31

    add-float v3, v3, v27

    add-float v3, v3, v30

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v3, v3, v19

    const v27, 0x3c111aa7

    cmpg-float v27, v3, v27

    if-gtz v27, :cond_11

    const v27, 0x4461d2f7

    mul-float v3, v3, v27

    move/from16 v30, v7

    move-object/from16 v27, v8

    goto :goto_c

    :cond_11
    move/from16 v30, v7

    move-object/from16 v27, v8

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    const/high16 v7, 0x42e80000    # 116.0f

    mul-float v3, v3, v7

    const/high16 v7, -0x3e800000    # -16.0f

    add-float/2addr v3, v7

    :goto_c
    sub-float v7, v14, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3e4ccccd    # 0.2f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_12

    invoke-static {v2}, Lacc;->b(I)Lacc;

    move-result-object v2

    iget v8, v2, Lacc;->c:F

    move/from16 v31, v7

    iget v7, v2, Lacc;->b:F

    invoke-static {v8, v7, v4}, Lacc;->c(FFF)Lacc;

    move-result-object v7

    iget v8, v2, Lacc;->d:F

    move/from16 v32, v4

    iget v4, v7, Lacc;->d:F

    sub-float/2addr v8, v4

    iget v4, v2, Lacc;->e:F

    move/from16 v33, v10

    iget v10, v7, Lacc;->e:F

    sub-float/2addr v4, v10

    iget v10, v2, Lacc;->f:F

    iget v7, v7, Lacc;->f:F

    sub-float/2addr v10, v7

    mul-float v8, v8, v8

    mul-float v4, v4, v4

    add-float/2addr v8, v4

    mul-float v10, v10, v10

    add-float/2addr v8, v10

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move-object v4, v1

    move-object v10, v2

    const-wide v1, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v7, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double v1, v1, v7

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v7, v1, v2

    if-gtz v7, :cond_13

    move/from16 v23, v1

    move-object/from16 v26, v10

    move/from16 v22, v31

    goto :goto_d

    :cond_12
    move/from16 v32, v4

    move/from16 v33, v10

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v4, v1

    :cond_13
    :goto_d
    const/4 v1, 0x0

    cmpl-float v7, v22, v1

    if-nez v7, :cond_15

    cmpl-float v7, v23, v1

    if-eqz v7, :cond_14

    goto :goto_e

    :cond_14
    move-object/from16 v3, v26

    goto :goto_10

    :cond_15
    :goto_e
    cmpg-float v7, v3, v14

    if-ltz v7, :cond_16

    move/from16 v25, v30

    :cond_16
    cmpg-float v3, v3, v14

    move-object/from16 v2, p2

    if-gez v3, :cond_17

    move-object/from16 v3, p3

    move-object v1, v4

    move-object/from16 v8, v27

    move/from16 v24, v30

    goto :goto_f

    :cond_17
    move-object/from16 v3, p3

    move-object v1, v4

    move-object/from16 v8, v27

    :goto_f
    move/from16 v4, v32

    move/from16 v10, v33

    const/4 v7, 0x0

    goto/16 :goto_b

    :cond_18
    move/from16 v32, v4

    move-object/from16 v27, v8

    move/from16 v33, v10

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/high16 v19, 0x42c80000    # 100.0f

    move-object v4, v1

    const/4 v1, 0x0

    move-object/from16 v3, v26

    :goto_10
    if-eqz v13, :cond_1a

    if-eqz v3, :cond_19

    invoke-virtual {v3, v12}, Lacc;->a(Laco;)I

    move-result v0

    goto/16 :goto_12

    :cond_19
    sub-float v3, v0, v20

    div-float v3, v3, v29

    add-float v10, v20, v3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v1, v4

    move-object/from16 v8, v27

    move/from16 v4, v32

    const/4 v7, 0x0

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_1a
    if-eqz v3, :cond_1b

    move-object v5, v3

    :cond_1b
    if-eqz v3, :cond_1c

    move/from16 v20, v33

    :cond_1c
    if-nez v3, :cond_1d

    move/from16 v0, v33

    :cond_1d
    sub-float v3, v0, v20

    div-float v3, v3, v29

    add-float v10, v20, v3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v1, v4

    move-object/from16 v8, v27

    move/from16 v4, v32

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_1e
    move-object v4, v1

    move-object/from16 v27, v8

    const/16 v17, 0x1

    if-nez v5, :cond_1f

    invoke-static {v14}, Lacd;->b(F)I

    move-result v0

    goto :goto_12

    :cond_1f
    invoke-virtual {v5, v12}, Lacc;->a(Laco;)I

    move-result v0

    goto :goto_12

    :cond_20
    move-object v4, v1

    move-object/from16 v27, v8

    const/16 v17, 0x1

    goto :goto_11

    :cond_21
    move-object v4, v1

    move v15, v5

    move-object/from16 v27, v8

    const/16 v17, 0x1

    :goto_11
    invoke-static {v14}, Lacd;->b(F)I

    move-result v0

    goto :goto_12

    :cond_22
    move-object v4, v1

    move v15, v5

    move-object/from16 v27, v8

    const/16 v17, 0x1

    :goto_12
    const v1, 0xffffff

    and-int/2addr v0, v1

    shl-int/lit8 v1, v11, 0x18

    or-int/2addr v0, v1

    :goto_13
    add-int/lit8 v1, v9, 0x1

    array-length v2, v6

    if-le v1, v2, :cond_23

    invoke-static {v9}, Laaq;->d(I)I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v6, v3, v2, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v2

    :cond_23
    aput v0, v6, v9

    move-object/from16 v2, v27

    array-length v0, v2

    if-le v1, v0, :cond_24

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v9}, Laaq;->d(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v0

    goto :goto_14

    :cond_24
    move-object v8, v2

    :goto_14
    aput-object v4, v8, v9

    check-cast v8, [[I

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v9, v1

    move v5, v15

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_25
    move v15, v5

    move-object v2, v8

    const/16 v17, 0x1

    goto :goto_15

    :cond_26
    move v15, v5

    move-object v2, v8

    const/16 v17, 0x1

    :goto_15
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object v8, v2

    move v5, v15

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_27
    move-object v2, v8

    :goto_16
    new-array v0, v9, [I

    new-array v1, v9, [[I

    const/4 v3, 0x0

    invoke-static {v6, v3, v0, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v3, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    :cond_28
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :goto_17
    throw v1

    :goto_18
    goto :goto_17
.end method
