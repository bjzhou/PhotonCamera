.class public final Ltar;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v1, v0, [[I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-object v0, p0, Ltar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    new-instance v0, Lrku;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    iput-object v0, p0, Ltar;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    iput-object v1, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-direct {v0}, Lrku;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const/16 v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const v1, 0x12

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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-array v0, v0, [Lrku;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    const v0, 0x1c

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 17

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p0}, Ltar;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_5
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v1, p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    if-nez v2, :cond_1

    nop

    goto/32 :goto_b

    nop

    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x8

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v12, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_f
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

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

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    :goto_12
    invoke-direct/range {p0 .. p0}, Ltar;->7ecc92917e9c4556cc19f457ddc41af8m()V

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    move/from16 v2, p2

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    nop

    nop

    :goto_13
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    if-eq v3, v5, :cond_4

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    nop

    nop

    nop

    const-string v3, "No start tag found"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_5
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    const-string v6, "selector"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    nop

    nop

    nop

    nop

    add-int/2addr v6, v5

    nop

    nop

    :goto_14
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    nop

    nop

    nop

    if-eq v7, v5, :cond_2

    nop

    nop

    nop

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    nop

    nop

    if-ge v8, v6, :cond_6

    nop

    nop

    nop

    const/4 v9, 0x3

    nop

    if-eq v7, v9, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_6
    if-ne v7, v4, :cond_e

    nop

    nop

    nop

    nop

    nop

    if-gt v8, v6, :cond_e

    nop

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    const-string v8, "item"

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_e

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    if-nez v3, :cond_7

    nop

    sget-object v9, Lrkq;->a:[I

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v0, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_7
    sget-object v7, Lrkq;->a:[I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0, v7, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    nop

    :goto_15
    invoke-virtual {v7, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    nop

    nop

    invoke-virtual {v7, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    nop

    nop

    nop

    new-instance v11, Lrkh;

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v12}, Lrkh;-><init>(F)V

    move-object/from16 v12, p1

    nop

    nop

    nop

    invoke-static {v12, v9, v10, v11}, Lrku;->b(Landroid/content/Context;IILrkk;)Lrkt;

    move-result-object v9

    nop

    new-instance v10, Lrku;

    nop

    nop

    nop

    invoke-direct {v10, v9}, Lrku;-><init>(Lrkt;)V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    nop

    nop

    new-array v9, v7, [I

    nop

    nop

    nop

    nop

    nop

    move v11, v8

    nop

    nop

    nop

    nop

    nop

    move v13, v11

    nop

    nop

    nop

    :goto_16
    if-ge v11, v7, :cond_a

    nop

    nop

    nop

    invoke-interface {v0, v11}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v14

    nop

    nop

    nop

    const v15, 0x7f0405ca

    nop

    nop

    nop

    nop

    if-eq v14, v15, :cond_9

    nop

    nop

    nop

    nop

    const v15, 0x7f0405d5

    nop

    if-eq v14, v15, :cond_9

    nop

    nop

    nop

    add-int/lit8 v15, v13, 0x1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v11, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    nop

    nop

    nop

    nop

    if-nez v16, :cond_8

    nop

    nop

    nop

    nop

    nop

    neg-int v14, v14

    nop

    nop

    nop

    nop

    :cond_8
    aput v14, v9, v13

    nop

    nop

    nop

    nop

    move v13, v15

    nop

    :cond_9
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    :cond_a
    invoke-static {v9, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    iget v9, v1, Ltar;->a:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_b

    nop

    array-length v11, v7

    nop

    if-nez v11, :cond_c

    nop

    nop

    nop

    nop

    :cond_b
    iput-object v10, v1, Ltar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :cond_c
    iget-object v11, v1, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object v13, v11

    nop

    check-cast v13, [[I

    nop

    nop

    nop

    nop

    array-length v13, v13

    nop

    nop

    if-lt v9, v13, :cond_d

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v9, 0xa

    nop

    new-array v14, v13, [[I

    nop

    nop

    nop

    invoke-static {v11, v8, v14, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v14, v1, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    new-array v11, v13, [Lrku;

    nop

    iget-object v13, v1, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {v13, v8, v11, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v11, v1, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :cond_d
    iget-object v8, v1, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    iget v9, v1, Ltar;->a:I

    nop

    nop

    nop

    nop

    nop

    check-cast v8, [[I

    nop

    nop

    aput-object v7, v8, v9

    nop

    nop

    iget-object v7, v1, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, [Lrku;

    nop

    nop

    nop

    aput-object v10, v7, v9

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v9, v1, Ltar;->a:I

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    move-object v3, v0

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

    :goto_18
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

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

    :goto_1
    iput-object p1, p0, Ltar;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p1, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>([B[B[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ltar;->b:Ljava/lang/Object;

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

    :goto_5
    iput-object p1, p0, Ltar;->c:Ljava/lang/Object;

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

    :goto_6
    iput-object p1, p0, Ltar;->d:Ljava/lang/Object;

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

    :goto_7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>([C)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ltas;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2, v0, v3, p0, v1}, Ltas;-><init>(Lryb;Lj$/util/Optional;Lj$/util/Optional;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    new-instance v2, Ltas;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lryb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Ltar;->a:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    check-cast p0, Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ltar;->b:Ljava/lang/Object;

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

    :goto_14
    iget-object p0, p0, Ltar;->d:Ljava/lang/Object;

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

    :goto_15
    check-cast v3, Lj$/util/Optional;

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

    :goto_16
    throw p0

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final b(Lryb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltar;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

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

    nop
.end method

.method public final c()Lpwf;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ltar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    const v1, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lpwf;

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

    :goto_a
    check-cast v0, Lpwe;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_c
    iget-object v1, p0, Ltar;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Lpwf;-><init>(Ltar;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lpwe;->name()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "Download result code: "

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Lgfi;
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v3, Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_2
    check-cast v2, Lj$/util/Optional;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, v2, v3, p0}, Lgfi;-><init>(ILj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Ltar;->a:I

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

    :goto_8
    check-cast p0, Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lgfi;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    :goto_f
    rem-int v0, v0, v1

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

    nop

    :goto_10
    goto/32 :goto_a

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Ltar;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Ltar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Ltar;->a:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final e(Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method
