.class public final Lacn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:Ljava/util/WeakHashMap;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lacn;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lacn;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lacn;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;ILacl;)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x4

    invoke-virtual {p2, p0}, Lacl;->c(I)V

    return-void

    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lacn;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILacl;ZZ)Landroid/graphics/Typeface;

    return-void
.end method

.method public static b(Landroid/content/Context;ILandroid/util/TypedValue;ILacl;ZZ)Landroid/graphics/Typeface;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lacn;->c(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILacl;ZZ)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_1

    if-nez p4, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Font resource ID #0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not be retrieved."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static c(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILacl;ZZ)Landroid/graphics/Typeface;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_35

    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v2, "res/"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v12, -0x3

    const/4 v13, 0x0

    if-nez v2, :cond_1

    if-eqz v10, :cond_0

    invoke-virtual {v10, v12}, Lacl;->c(I)V

    :cond_0
    return-object v13

    :cond_1
    iget v2, v1, Landroid/util/TypedValue;->assetCookie:I

    sget-object v3, Lact;->a:Lxe;

    invoke-static {v7, v8, v11, v2, v9}, Lact;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lxe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_3

    if-eqz v10, :cond_2

    invoke-virtual {v10, v2}, Lacl;->d(Landroid/graphics/Typeface;)V

    :cond_2
    return-object v2

    :cond_3
    if-eqz p7, :cond_4

    return-object v13

    :cond_4
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_6

    if-eq v3, v5, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v3, "font-family"

    invoke-interface {v2, v4, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "font-family"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_19

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v14, Laao;->b:[I

    invoke-virtual {v7, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x5

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    const/4 v4, 0x3

    const/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v14, :cond_d

    if-eqz v12, :cond_d

    if-eqz v13, :cond_d

    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    invoke-static {v2}, Laai;->t(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_7
    if-nez v15, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v16, v11

    goto :goto_3

    :cond_8
    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-object v2, v3

    move-object/from16 v16, v11

    goto :goto_3

    :cond_9
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v11

    const/4 v4, 0x0

    :try_start_4
    invoke-static {v2, v4}, Lacf;->a(Landroid/content/res/TypedArray;I)I

    move-result v11

    const/4 v4, 0x1

    if-ne v11, v4, :cond_b

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_c

    const/4 v11, 0x0

    invoke-virtual {v2, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Laai;->s([Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laai;->s([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    :try_start_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v2, v3

    :goto_3
    new-instance v3, Lacg;

    new-instance v4, Ladt;

    invoke-direct {v4, v14, v12, v13, v2}, Ladt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v3, v4, v6, v5, v8}, Lacg;-><init>(Ladt;IILjava/lang/String;)V

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v16, v11

    :goto_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_d
    move-object/from16 v16, v11

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_17

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_16

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "font"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    sget-object v8, Laao;->c:[I

    invoke-virtual {v7, v5, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v12, v11, :cond_e

    const/4 v8, 0x1

    goto :goto_6

    :cond_e
    :goto_6
    const/16 v11, 0x190

    invoke-virtual {v5, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    const/4 v11, 0x1

    if-eq v11, v8, :cond_f

    const/4 v8, 0x2

    goto :goto_7

    :cond_f
    const/4 v8, 0x6

    :goto_7
    const/4 v12, 0x0

    invoke-virtual {v5, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-ne v8, v11, :cond_10

    const/16 v19, 0x1

    goto :goto_8

    :cond_10
    const/16 v19, 0x0

    :goto_8
    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eq v11, v12, :cond_11

    const/4 v8, 0x3

    goto :goto_9

    :cond_11
    :goto_9
    const/4 v12, 0x7

    invoke-virtual {v5, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eq v11, v13, :cond_12

    const/4 v12, 0x4

    goto :goto_a

    :cond_12
    :goto_a
    invoke-virtual {v5, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v21

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v12, v11, :cond_13

    const/4 v11, 0x0

    goto :goto_b

    :cond_13
    const/4 v11, 0x5

    :goto_b
    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :goto_c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v11, 0x3

    if-eq v5, v11, :cond_14

    invoke-static {v2}, Laai;->t(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    :cond_14
    new-instance v5, Lksd;

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Lksd;-><init>(IZLjava/lang/String;II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_15
    const/4 v8, 0x5

    const/4 v11, 0x3

    invoke-static {v2}, Laai;->t(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    :cond_16
    const/4 v8, 0x5

    const/4 v11, 0x3

    goto/16 :goto_5

    :cond_17
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v3, 0x0

    goto :goto_d

    :cond_18
    new-instance v2, Lbkb;

    const/4 v4, 0x0

    new-array v5, v4, [Lksd;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lksd;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lbkb;-><init>([Lksd;[B[B)V

    move-object v3, v2

    goto :goto_d

    :cond_19
    move-object/from16 v16, v11

    invoke-static {v2}, Laai;->t(Lorg/xmlpull/v1/XmlPullParser;)V

    const/4 v3, 0x0

    :goto_d
    if-nez v3, :cond_1b

    const-string v0, "ResourcesCompat"

    const-string v1, "Failed to find font-family tag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1a

    const/4 v1, -0x3

    invoke-virtual {v10, v1}, Lacl;->c(I)V

    :cond_1a
    const/4 v1, 0x0

    return-object v1

    :cond_1b
    iget v8, v1, Landroid/util/TypedValue;->assetCookie:I

    instance-of v1, v3, Lacg;

    if-eqz v1, :cond_29

    check-cast v3, Lacg;

    iget-object v1, v3, Lacg;->d:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x0

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    const/4 v1, 0x0

    :cond_1e
    :goto_e
    if-eqz v1, :cond_1f

    if-eqz v10, :cond_2f

    invoke-virtual {v10, v1}, Lacl;->d(Landroid/graphics/Typeface;)V

    goto/16 :goto_17

    :cond_1f
    if-eqz p6, :cond_20

    iget v1, v3, Lacg;->c:I

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_f

    :cond_20
    if-nez v10, :cond_21

    const/4 v1, 0x1

    goto :goto_f

    :cond_21
    const/4 v1, 0x0

    :goto_f
    const/4 v2, -0x1

    if-eqz p6, :cond_22

    iget v4, v3, Lacg;->b:I

    move v11, v4

    goto :goto_10

    :cond_22
    const/4 v11, -0x1

    :goto_10
    invoke-static {}, Lacl;->e()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lbkb;

    invoke-direct {v5, v10}, Lbkb;-><init>(Lacl;)V

    iget-object v6, v3, Lacg;->a:Ladt;

    new-instance v12, Laie;

    const/4 v3, 0x0

    invoke-direct {v12, v5, v4, v3, v3}, Laie;-><init>(Lbkb;Landroid/os/Handler;[B[B)V

    if-nez v1, :cond_26

    invoke-static {v6, v9}, Ladw;->a(Ladt;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ladw;->a:Lxe;

    invoke-virtual {v2, v1}, Lxe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_23

    new-instance v0, Lkxr;

    invoke-direct {v0, v2}, Lkxr;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v12, v0}, Laie;->o(Lkxr;)V

    move-object v4, v2

    goto/16 :goto_12

    :cond_23
    new-instance v2, Ladv;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v12, v3, v4}, Ladv;-><init>(Laie;I[B)V

    sget-object v3, Ladw;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    sget-object v4, Ladw;->d:Lxf;

    invoke-virtual {v4, v1}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_24

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Ladw;->d:Lxf;

    invoke-virtual {v2, v1, v4}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v2, Ladu;

    invoke-direct {v2, v1, v0, v6, v9}, Ladu;-><init>(Ljava/lang/String;Landroid/content/Context;Ladt;I)V

    sget-object v0, Ladw;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Ladv;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ladv;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_25

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_11

    :cond_25
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    :goto_11
    new-instance v4, Layo;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v2, v3, v5}, Layo;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Laea;I)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    const/4 v4, 0x0

    goto :goto_12

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :cond_26
    invoke-static {v6, v9}, Ladw;->a(Ladt;I)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Ladw;->a:Lxe;

    invoke-virtual {v1, v3}, Lxe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_27

    new-instance v0, Lkxr;

    invoke-direct {v0, v1}, Lkxr;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v12, v0}, Laie;->o(Lkxr;)V

    move-object v4, v1

    goto :goto_12

    :cond_27
    if-ne v11, v2, :cond_28

    invoke-static {v3, v0, v6, v9}, Ladw;->b(Ljava/lang/String;Landroid/content/Context;Ladt;I)Lkxr;

    move-result-object v0

    invoke-virtual {v12, v0}, Laie;->o(Lkxr;)V

    iget-object v0, v0, Lkxr;->b:Ljava/lang/Object;

    move-object v4, v0

    goto :goto_12

    :cond_28
    new-instance v13, Lbgc;

    const/4 v14, 0x1

    move-object v1, v13

    move-object v2, v3

    move-object/from16 v3, p0

    move-object v4, v6

    move/from16 v5, p4

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lbgc;-><init>(Ljava/lang/String;Landroid/content/Context;Ladt;II)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    sget-object v0, Ladw;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v13, v11}, Laaz;->e(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkxr;

    invoke-virtual {v12, v0}, Laie;->o(Lkxr;)V

    iget-object v0, v0, Lkxr;->b:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v4, v0

    goto :goto_12

    :catch_0
    move-exception v0

    :try_start_b
    new-instance v0, Lkxr;

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkxr;-><init>(I[B)V

    invoke-virtual {v12, v0}, Laie;->o(Lkxr;)V

    const/4 v4, 0x0

    :goto_12
    goto/16 :goto_16

    :cond_29
    const/4 v4, 0x0

    check-cast v3, Lbkb;
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :try_start_c
    iget-object v1, v3, Lbkb;->a:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Lksd;

    array-length v2, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v2, :cond_2b

    move-object v0, v1

    check-cast v0, [Lksd;

    aget-object v0, v0, v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :try_start_d
    new-instance v3, Landroid/graphics/fonts/Font$Builder;

    iget v5, v0, Lksd;->d:I

    invoke-direct {v3, v7, v5}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    iget v5, v0, Lksd;->b:I

    invoke-virtual {v3, v5}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v3

    iget-boolean v5, v0, Lksd;->c:Z

    invoke-virtual {v3, v5}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v3

    iget v5, v0, Lksd;->a:I

    invoke-virtual {v3, v5}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v3

    iget-object v0, v0, Lksd;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    if-nez v4, :cond_2a

    new-instance v3, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v3, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v4, v3

    goto :goto_14

    :cond_2a
    invoke-virtual {v4, v0}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_14

    :catch_1
    move-exception v0

    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_2b
    if-nez v4, :cond_2c

    const/4 v4, 0x0

    goto :goto_15

    :cond_2c
    :try_start_e
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    new-instance v1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v1, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-static {v0, v9}, Laav;->d(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_15

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    :goto_15
    if-eqz v10, :cond_2e

    if-eqz v4, :cond_2d

    :try_start_f
    invoke-virtual {v10, v4}, Lacl;->d(Landroid/graphics/Typeface;)V

    goto :goto_16

    :cond_2d
    const/4 v1, -0x3

    invoke-virtual {v10, v1}, Lacl;->c(I)V

    :cond_2e
    :goto_16
    move-object v1, v4

    if-eqz v1, :cond_2f

    sget-object v0, Lact;->a:Lxe;
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    move/from16 v2, p3

    move-object/from16 v3, v16

    :try_start_10
    invoke-static {v7, v2, v3, v8, v9}, Lact;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lxe;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    :cond_2f
    :goto_17
    check-cast v1, Landroid/graphics/Typeface;

    return-object v1

    :catch_3
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1a

    :catch_4
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1b

    :cond_30
    move v2, v8

    move-object v3, v11

    :try_start_11
    iget v1, v1, Landroid/util/TypedValue;->assetCookie:I
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    :try_start_12
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, v7, v2}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    new-instance v4, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v4, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    new-instance v5, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v5, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto :goto_18

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    :goto_18
    if-eqz v4, :cond_31

    :try_start_13
    invoke-static {v7, v2, v3, v1, v9}, Lact;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lact;->a:Lxe;

    invoke-virtual {v1, v0, v4}, Lxe;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    if-eqz v10, :cond_33

    if-eqz v4, :cond_32

    invoke-virtual {v10, v4}, Lacl;->d(Landroid/graphics/Typeface;)V

    goto :goto_19

    :cond_32
    const/4 v1, -0x3

    invoke-virtual {v10, v1}, Lacl;->c(I)V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    :cond_33
    :goto_19
    return-object v4

    :catch_6
    move-exception v0

    goto :goto_1a

    :catch_7
    move-exception v0

    goto :goto_1b

    :catch_8
    move-exception v0

    move-object v3, v11

    :goto_1a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to read xml resource "

    const-string v3, "ResourcesCompat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_9
    move-exception v0

    move-object v3, v11

    :goto_1b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to parse xml resource "

    const-string v3, "ResourcesCompat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    if-eqz v10, :cond_34

    const/4 v1, -0x3

    invoke-virtual {v10, v1}, Lacl;->c(I)V

    :cond_34
    const/4 v1, 0x0

    return-object v1

    :cond_35
    move v2, v8

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is not a Font: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method
