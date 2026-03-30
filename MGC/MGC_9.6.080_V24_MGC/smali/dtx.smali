.class public final Ldtx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:Ljava/util/WeakHashMap;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/Object;

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

    :goto_8
    const v1, 0x1e

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

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x18

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Ldtx;->b:Ljava/util/WeakHashMap;

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

    :goto_10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    sput-object v0, Ldtx;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;ILdtw;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v5, 0x0

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    const v0, 0x18

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

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

    :goto_9
    new-instance v2, Landroid/util/TypedValue;

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

    :goto_a
    move-object v0, p0

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

    :goto_b
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, -0x4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    move-object v4, p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static/range {v0 .. v6}, Ldtx;->b(Landroid/content/Context;ILandroid/util/TypedValue;ILdtw;ZZ)Landroid/graphics/Typeface;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2, p0}, Ldtw;->c(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
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

    :goto_17
    if-lez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;ILandroid/util/TypedValue;ILdtw;ZZ)Landroid/graphics/Typeface;
    .locals 8

    goto/32 :goto_19

    nop

    nop

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const-string p3, "Font resource ID #0x"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    move v3, p1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    move v6, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

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

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_9
    if-eqz p4, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p6, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    goto :goto_7

    nop

    :goto_10
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_14
    move-object v5, p4

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    invoke-static/range {v0 .. v7}, Ldtx;->c(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILdtw;ZZ)Landroid/graphics/Typeface;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_17
    move v4, p3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    const-string p1, " could not be retrieved."

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    const v0, 0x4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    :goto_1b
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    move-object v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v7, p6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method private static c(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILdtw;ZZ)Landroid/graphics/Typeface;
    .locals 16

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_0
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_2
    return-object v3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "res/"

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    :goto_7
    goto/16 :goto_36

    nop

    nop

    nop

    :catch_0
    move-exception v0

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

    :goto_8
    return-object v15

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v12, "ResourcesCompat"

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_c
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v4, Ldud;->a:Lxo;

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

    :goto_e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

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

    :goto_f
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v11, v1}, Ldtw;->c(I)V

    :goto_12
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v11, :cond_0

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

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_15
    const/4 v14, -0x3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_17

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v11, :cond_2

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v0}, Ldtw;->d(Landroid/graphics/Typeface;)V

    goto :goto_18

    nop

    nop

    nop

    :cond_1
    const/4 v3, -0x3

    nop

    nop

    nop

    invoke-virtual {v11, v3}, Ldtw;->c(I)V

    :cond_2
    :goto_18
    if-eqz v0, :cond_3

    nop

    nop

    sget-object v3, Ldud;->a:Lxo;

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v13, v15, v10}, Ldud;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v3, v1, v0}, Lxo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_19
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1a
    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1, v2}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    nop

    nop

    new-instance v6, Landroid/graphics/fonts/FontFamily$Builder;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v6}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v6

    nop

    nop

    new-instance v7, Landroid/graphics/Typeface$CustomFallbackBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1b
    if-nez v11, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_4
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "\" ("

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1e
    move/from16 v2, p3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v11, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v11, v14}, Ldtw;->c(I)V

    :goto_22
    goto/32 :goto_8

    nop

    nop

    :goto_23
    if-eqz v7, :cond_6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_6
    :goto_24
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v0, p2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    goto/16 :goto_17

    nop

    :goto_28
    :try_start_2
    invoke-virtual {v7}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-static {v0, v10}, Ldvu;->A(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_16

    nop

    nop

    :goto_29
    const-string v5, "Font load failed"

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2a
    const-string v2, "Failed to read xml resource "

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v2, "Failed to parse xml resource "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    :goto_2d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p7, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v4, v3}, Lxo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_31
    goto/32 :goto_10

    nop

    nop

    :goto_32
    const-string v4, "TypefaceCompatApi29Impl"

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

    :goto_33
    const v1, 0x1f

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

    :goto_34
    move-object/from16 v11, p5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_35
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_37
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_38
    if-nez v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_8
    :try_start_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    nop

    nop

    invoke-static {v3, v1}, Ldsw;->Z(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Ldtr;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Failed to find font-family tag"

    nop

    nop

    nop

    nop

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_9

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v14}, Ldtw;->c(I)V

    :cond_9
    return-object v15

    nop

    nop

    nop

    nop

    nop

    :cond_a
    iget v9, v0, Landroid/util/TypedValue;->assetCookie:I

    nop

    nop

    nop

    nop

    instance-of v0, v3, Ldtt;

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_13

    nop

    check-cast v3, Ldtt;

    nop

    iget-object v0, v3, Ldtt;->e:Ljava/lang/String;

    nop

    nop

    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_b

    nop

    goto :goto_39

    nop

    nop

    nop

    nop

    :cond_b
    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    nop

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    nop

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    nop

    nop

    nop

    if-eqz v0, :cond_c

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_d

    nop

    nop

    :cond_c
    :goto_39
    move-object v0, v15

    nop

    nop

    :cond_d
    if-eqz v0, :cond_e

    nop

    nop

    nop

    if-eqz v11, :cond_3

    nop

    nop

    nop

    invoke-virtual {v11, v0}, Ldtw;->d(Landroid/graphics/Typeface;)V

    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_e
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eqz p6, :cond_f

    nop

    nop

    nop

    nop

    nop

    iget v4, v3, Ldtt;->d:I

    nop

    nop

    if-nez v4, :cond_10

    nop

    nop

    nop

    goto :goto_3a

    nop

    :cond_f
    if-nez v11, :cond_10

    nop

    :goto_3a
    move v6, v0

    nop

    nop

    nop

    :cond_10
    if-eqz p6, :cond_11

    nop

    nop

    nop

    iget v0, v3, Ldtt;->c:I

    nop

    nop

    nop

    nop

    nop

    goto :goto_3b

    nop

    nop

    :cond_11
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    :goto_3b
    move v7, v0

    nop

    invoke-static {}, Ldtw;->e()Landroid/os/Handler;

    move-result-object v8

    nop

    new-instance v0, Lduc;

    nop

    nop

    invoke-direct {v0, v11}, Lduc;-><init>(Ldtw;)V

    iget-object v4, v3, Ldtt;->b:Ldup;

    nop

    nop

    nop

    if-eqz v4, :cond_12

    nop

    nop

    nop

    nop

    iget-object v3, v3, Ldtt;->a:Ldup;

    nop

    nop

    nop

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    invoke-static {v3}, Ldsw;->B([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto :goto_3c

    nop

    nop

    nop

    nop

    :cond_12
    iget-object v3, v3, Ldtt;->a:Ldup;

    nop

    nop

    nop

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    invoke-static {v3}, Ldsw;->B([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    :goto_3c
    move-object v4, v3

    nop

    nop

    nop

    nop

    move-object/from16 v3, p0

    nop

    nop

    move/from16 v5, p4

    nop

    move v15, v9

    nop

    nop

    nop

    move-object v9, v0

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v3 .. v9}, Ldvu;->C(Landroid/content/Context;Ljava/util/List;IZILandroid/os/Handler;Ldvu;)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    goto/16 :goto_18

    nop

    :cond_13
    move v15, v9

    nop

    check-cast v3, Ldts;

    nop

    nop

    nop
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    iget-object v0, v3, Ldts;->a:[Lduu;

    nop

    nop

    nop

    array-length v3, v0

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_3d
    if-ge v6, v3, :cond_15

    nop

    nop

    nop

    nop

    aget-object v8, v0, v6

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance v9, Landroid/graphics/fonts/Font$Builder;

    nop

    nop

    nop

    iget v14, v8, Lduu;->d:I

    nop

    invoke-direct {v9, v1, v14}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    iget v14, v8, Lduu;->b:I

    nop

    invoke-virtual {v9, v14}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    iget-boolean v14, v8, Lduu;->c:Z

    nop

    nop

    invoke-virtual {v9, v14}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v9

    nop

    nop

    iget v14, v8, Lduu;->a:I

    nop

    invoke-virtual {v9, v14}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v8, Lduu;->e:Ljava/lang/Object;

    nop

    check-cast v8, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v9, v8}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v8

    nop

    nop

    nop

    nop

    if-nez v7, :cond_14

    nop

    nop

    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v8}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v7, v9

    nop

    nop

    nop

    nop

    goto :goto_3e

    nop

    nop

    nop

    :cond_14
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_2
    :goto_3e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_40
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_41
    check-cast v3, Landroid/graphics/Typeface;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_43
    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

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

    nop

    :goto_46
    move/from16 v10, p4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

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

    nop

    :goto_48
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-object v15

    nop

    :goto_4a
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    const-string v4, ".xml"

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/32 :goto_32

    nop

    nop

    :goto_4b
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v5, "Resource \""

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_4d
    if-nez v3, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-lez v0, :cond_17

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_f

    nop

    :goto_4f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_50
    goto :goto_51

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_51
    if-eqz v0, :cond_18

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v13, v3, v10}, Ldud;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ldud;->a:Lxo;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1, v0}, Lxo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    if-eqz v11, :cond_1a

    nop

    nop

    nop

    if-eqz v0, :cond_19

    nop

    invoke-virtual {v11, v0}, Ldtw;->d(Landroid/graphics/Typeface;)V

    goto :goto_52

    nop

    nop

    nop

    nop

    :cond_19
    const/4 v1, -0x3

    nop

    nop

    nop

    invoke-virtual {v11, v1}, Ldtw;->c(I)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_1a
    :goto_52
    goto/32 :goto_5f

    nop

    nop

    :goto_53
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v11, v3}, Ldtw;->d(Landroid/graphics/Typeface;)V

    :goto_56
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_57
    throw v3

    nop

    :goto_58
    goto/32 :goto_31

    nop

    nop

    :goto_59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5a
    const/4 v1, -0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v1, ") is not a Font: "

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5c
    invoke-static {v1, v2, v13, v3, v10}, Ldud;->a(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v3

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

    nop

    :goto_5d
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5e
    if-nez v3, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_1b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5f
    return-object v0

    nop

    nop

    :catch_4
    move-exception v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v14, -0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_61
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v3, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_63
    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_64
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_65
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop
.end method
