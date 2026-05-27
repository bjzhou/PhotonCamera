.class public final Ljcb;
.super Ljava/lang/Object;


# direct methods
.method static a(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v0, v1, v2}, [I

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_1

    if-ne v5, p0, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    throw p0

    :cond_2
    return v0
.end method

.method public static b([B)J
    .locals 35

    move-object/from16 v7, p0

    array-length v8, v7

    const/16 v0, 0x20

    const/16 v9, 0x25

    const/16 v3, 0x2b

    const/4 v4, 0x2

    const/16 v10, 0x10

    const-wide v11, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    const/16 v5, 0x8

    const-wide v13, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    const/4 v15, 0x0

    if-gt v8, v0, :cond_4

    if-gt v8, v10, :cond_3

    if-lt v8, v5, :cond_0

    add-int v0, v8, v8

    int-to-long v0, v0

    add-long/2addr v0, v13

    invoke-static {v7, v15}, Ljcb;->t([BI)J

    move-result-wide v2

    add-long/2addr v2, v13

    add-int/lit8 v8, v8, -0x8

    invoke-static {v7, v8}, Ljcb;->t([BI)J

    move-result-wide v4

    invoke-static {v4, v5, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    mul-long v6, v6, v0

    const/16 v8, 0x19

    invoke-static {v2, v3, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long/2addr v8, v4

    add-long/2addr v2, v6

    mul-long v4, v8, v0

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Ljcb;->s(JJJ)J

    move-result-wide v13

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-lt v8, v0, :cond_1

    add-int v0, v8, v8

    int-to-long v0, v0

    add-long/2addr v0, v13

    invoke-static {v7, v15}, Ljcb;->r([BI)I

    move-result v2

    int-to-long v2, v2

    add-int/lit8 v4, v8, -0x4

    invoke-static {v7, v4}, Ljcb;->r([BI)I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    const/4 v8, 0x3

    shl-long/2addr v2, v8

    add-long/2addr v2, v6

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Ljcb;->s(JJJ)J

    move-result-wide v13

    goto :goto_0

    :cond_1
    if-lez v8, :cond_2

    aget-byte v0, v7, v15

    shr-int/lit8 v1, v8, 0x1

    aget-byte v1, v7, v1

    add-int/lit8 v2, v8, -0x1

    aget-byte v2, v7, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v5

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v1

    int-to-long v0, v0

    mul-long v0, v0, v13

    shl-int/2addr v2, v4

    add-int/2addr v8, v2

    int-to-long v2, v8

    const-wide v4, -0x3c5a37a36834ced9L    # -7.848031385787155E17

    mul-long v2, v2, v4

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljcb;->u(J)J

    move-result-wide v0

    mul-long v13, v13, v0

    goto :goto_0

    :cond_2
    :goto_0
    goto/16 :goto_2

    :cond_3
    invoke-static {v7, v15}, Ljcb;->t([BI)J

    move-result-wide v9

    mul-long v9, v9, v11

    invoke-static {v7, v5}, Ljcb;->t([BI)J

    move-result-wide v4

    add-int/lit8 v0, v8, -0x8

    invoke-static {v7, v0}, Ljcb;->t([BI)J

    move-result-wide v11

    add-int v0, v8, v8

    int-to-long v1, v0

    add-long v21, v1, v13

    mul-long v11, v11, v21

    add-int/lit8 v8, v8, -0x10

    invoke-static {v7, v8}, Ljcb;->t([BI)J

    move-result-wide v0

    mul-long v0, v0, v13

    add-long v7, v9, v4

    invoke-static {v7, v8, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const/16 v7, 0x1e

    invoke-static {v11, v12, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v7

    add-long/2addr v2, v7

    add-long/2addr v4, v13

    const/16 v6, 0x12

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v9, v4

    add-long v17, v2, v0

    add-long v19, v9, v11

    invoke-static/range {v17 .. v22}, Ljcb;->s(JJJ)J

    move-result-wide v13

    goto/16 :goto_2

    :cond_4
    const/16 v2, 0x40

    if-gt v8, v2, :cond_5

    invoke-static {v7, v15}, Ljcb;->t([BI)J

    move-result-wide v0

    mul-long v0, v0, v13

    invoke-static {v7, v5}, Ljcb;->t([BI)J

    move-result-wide v4

    add-int/lit8 v2, v8, -0x8

    invoke-static {v7, v2}, Ljcb;->t([BI)J

    move-result-wide v11

    add-int v2, v8, v8

    move-wide/from16 v18, v4

    int-to-long v3, v2

    add-long/2addr v3, v13

    mul-long v11, v11, v3

    add-int/lit8 v2, v8, -0x10

    invoke-static {v7, v2}, Ljcb;->t([BI)J

    move-result-wide v20

    mul-long v20, v20, v13

    add-long v6, v0, v18

    const/16 v2, 0x2b

    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    const/16 v2, 0x1e

    invoke-static {v11, v12, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v22

    add-long v22, v6, v22

    add-long v6, v18, v13

    const/16 v2, 0x12

    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v13

    add-long/2addr v13, v0

    move-object/from16 v7, p0

    invoke-static {v7, v10}, Ljcb;->t([BI)J

    move-result-wide v9

    mul-long v9, v9, v3

    const/16 v2, 0x18

    invoke-static {v7, v2}, Ljcb;->t([BI)J

    move-result-wide v18

    add-int/lit8 v2, v8, -0x20

    invoke-static {v7, v2}, Ljcb;->t([BI)J

    move-result-wide v24

    add-long v20, v22, v20

    add-long v26, v20, v24

    add-int/lit8 v8, v8, -0x18

    invoke-static {v7, v8}, Ljcb;->t([BI)J

    move-result-wide v7

    add-long v22, v13, v11

    move-wide/from16 v24, v3

    invoke-static/range {v20 .. v25}, Ljcb;->s(JJJ)J

    move-result-wide v11

    add-long/2addr v11, v7

    add-long v7, v9, v18

    const/16 v2, 0x2b

    invoke-static {v7, v8, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v7

    mul-long v13, v26, v3

    const/16 v2, 0x1e

    invoke-static {v13, v14, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v15

    add-long/2addr v7, v15

    add-long v0, v18, v0

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v9, v0

    mul-long v11, v11, v3

    add-long v20, v7, v11

    add-long v22, v9, v13

    invoke-static/range {v20 .. v25}, Ljcb;->s(JJJ)J

    move-result-wide v13

    goto/16 :goto_2

    :cond_5
    new-array v6, v4, [J

    new-array v4, v4, [J

    invoke-static {v7, v15}, Ljcb;->t([BI)J

    move-result-wide v0

    const-wide v16, 0x1529cba0ca458ffL

    add-long v0, v0, v16

    const-wide v16, -0x6e6c7825ddf69423L    # -5.27643297140616E-224

    invoke-static/range {v16 .. v17}, Ljcb;->u(J)J

    move-result-wide v16

    mul-long v16, v16, v13

    const-wide v13, 0x226bb95b4e64b6d4L    # 7.104748899679321E-143

    const/16 v18, 0x0

    :goto_1
    add-int/lit8 v19, v8, -0x1

    aget-wide v20, v6, v15

    add-long/2addr v0, v13

    add-long v0, v0, v20

    add-int/lit8 v3, v18, 0x8

    invoke-static {v7, v3}, Ljcb;->t([BI)J

    move-result-wide v20

    add-long v0, v0, v20

    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v0, v0, v11

    const/16 v20, 0x1

    aget-wide v21, v6, v20

    add-long v13, v13, v21

    add-int/lit8 v3, v18, 0x30

    invoke-static {v7, v3}, Ljcb;->t([BI)J

    move-result-wide v21

    add-long v13, v13, v21

    const/16 v5, 0x2a

    invoke-static {v13, v14, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v13

    mul-long v13, v13, v11

    aget-wide v21, v4, v20

    xor-long v21, v0, v21

    aget-wide v0, v6, v15

    add-int/lit8 v3, v18, 0x28

    invoke-static {v7, v3}, Ljcb;->t([BI)J

    move-result-wide v23

    add-long v23, v0, v23

    aget-wide v0, v4, v15

    add-long v0, v16, v0

    const/16 v3, 0x21

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v16, v0, v11

    aget-wide v0, v6, v20

    mul-long v25, v0, v11

    aget-wide v0, v4, v15

    add-long v27, v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    const/16 v10, 0x21

    const/16 v29, 0x40

    move-wide/from16 v2, v25

    move-object/from16 v25, v4

    const/16 v10, 0x2a

    move-wide/from16 v4, v27

    move-object/from16 v27, v6

    invoke-static/range {v0 .. v6}, Ljcb;->v([BIJJ[J)V

    aget-wide v0, v25, v20

    add-int/lit8 v2, v18, 0x20

    add-long v3, v16, v0

    add-int/lit8 v0, v18, 0x10

    invoke-static {v7, v0}, Ljcb;->t([BI)J

    move-result-wide v0

    add-long v13, v13, v23

    add-long v5, v13, v0

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-object/from16 v6, v25

    invoke-static/range {v0 .. v6}, Ljcb;->v([BIJJ[J)V

    add-int/lit8 v0, v18, 0x40

    shr-int/lit8 v1, v19, 0x6

    mul-int/lit8 v1, v1, 0x40

    if-ne v0, v1, :cond_6

    and-int/lit8 v0, v19, 0x3f

    add-int/2addr v1, v0

    const-wide/16 v2, 0xff

    and-long v2, v21, v2

    add-long/2addr v2, v2

    add-long/2addr v11, v2

    aget-wide v2, v25, v15

    int-to-long v4, v0

    add-long/2addr v2, v4

    aget-wide v4, v27, v15

    add-long/2addr v4, v2

    aput-wide v4, v27, v15

    add-long/2addr v2, v4

    aput-wide v2, v25, v15

    add-long v16, v16, v13

    add-int/lit8 v8, v1, -0x3f

    add-int/lit8 v0, v8, 0x8

    invoke-static {v7, v0}, Ljcb;->t([BI)J

    move-result-wide v0

    add-long v16, v16, v4

    add-long v0, v16, v0

    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v0, v0, v11

    aget-wide v2, v27, v20

    add-long/2addr v13, v2

    add-int/lit8 v2, v8, 0x30

    invoke-static {v7, v2}, Ljcb;->t([BI)J

    move-result-wide v2

    add-long/2addr v13, v2

    invoke-static {v13, v14, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v9, v2, v11

    aget-wide v2, v25, v20

    const-wide/16 v4, 0x9

    mul-long v2, v2, v4

    aget-wide v13, v27, v15

    mul-long v13, v13, v4

    add-int/lit8 v4, v8, 0x28

    invoke-static {v7, v4}, Ljcb;->t([BI)J

    move-result-wide v4

    add-long/2addr v13, v4

    aget-wide v4, v25, v15

    add-long v4, v21, v4

    const/16 v6, 0x21

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    mul-long v16, v4, v11

    aget-wide v4, v27, v20

    mul-long v4, v4, v11

    aget-wide v18, v25, v15

    xor-long v21, v0, v2

    add-long v18, v21, v18

    move-object/from16 v0, p0

    move v1, v8

    move-wide v2, v4

    move-wide/from16 v4, v18

    move-object/from16 v6, v27

    invoke-static/range {v0 .. v6}, Ljcb;->v([BIJJ[J)V

    add-int/lit8 v1, v8, 0x20

    aget-wide v2, v25, v20

    add-long v2, v16, v2

    const/16 v4, 0x10

    add-int/2addr v8, v4

    invoke-static {v7, v8}, Ljcb;->t([BI)J

    move-result-wide v4

    add-long/2addr v9, v13

    add-long/2addr v4, v9

    move-object/from16 v6, v25

    invoke-static/range {v0 .. v6}, Ljcb;->v([BIJJ[J)V

    aget-wide v29, v27, v15

    aget-wide v31, v25, v15

    move-wide/from16 v33, v11

    invoke-static/range {v29 .. v34}, Ljcb;->s(JJJ)J

    move-result-wide v0

    aget-wide v29, v27, v20

    aget-wide v31, v25, v20

    invoke-static/range {v29 .. v34}, Ljcb;->s(JJJ)J

    move-result-wide v2

    invoke-static {v9, v10}, Ljcb;->u(J)J

    move-result-wide v4

    const-wide v6, -0x3c5a37a36834ced9L    # -7.848031385787155E17

    mul-long v4, v4, v6

    add-long/2addr v0, v4

    add-long v29, v0, v21

    add-long v31, v2, v16

    invoke-static/range {v29 .. v34}, Ljcb;->s(JJJ)J

    move-result-wide v13

    :goto_2
    return-wide v13

    :cond_6
    const/16 v4, 0x10

    move/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v16, v21

    move-object/from16 v4, v25

    move-object/from16 v6, v27

    const/16 v2, 0x40

    const/16 v10, 0x10

    goto/16 :goto_1
.end method

.method public static synthetic c()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/String;Lmrl;Ljava/util/EnumSet;)Ljbf;
    .locals 1

    new-instance v0, Ljbf;

    invoke-direct {v0, p0, p1, p3, p2}, Ljbf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;Lmrl;)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljah;
    .locals 1

    new-instance v0, Ljah;

    invoke-static {p1}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-direct {v0, p0, p1}, Ljah;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    :cond_1
    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    const v2, 0x7f04021e

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->type:I

    if-eqz p0, :cond_0

    return v2

    :cond_0
    const p0, 0x1010091

    return p0
.end method

.method public static h(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    return-void
.end method

.method public static i(Landroid/content/Context;I)I
    .locals 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget v0, v0, Landroid/util/TypedValue;->data:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static j(Ljava/lang/String;)Lhiz;
    .locals 0

    new-instance p0, Lhix;

    invoke-direct {p0}, Lhix;-><init>()V

    return-object p0
.end method

.method public static k(Lhis;)V
    .locals 0

    invoke-interface {p0}, Lhis;->h()V

    return-void
.end method

.method public static final l(Lhiv;)V
    .locals 0

    invoke-interface {p0}, Lhiv;->e()V

    return-void
.end method

.method public static m(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static n(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static synthetic o(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static p(Ljava/util/UUID;ZLjava/lang/String;ZLber;)V
    .locals 4

    const-string v0, "http://ns.google.com/photos/1.0/creations/"

    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    :try_start_0
    sget-object v2, Lbet;->a:Lcvm;

    const-string v3, "GCreations"

    invoke-virtual {v2, v0, v3}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lbet;->a:Lcvm;

    const-string v3, "GCamera"

    invoke-virtual {v2, v1, v3}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "CameraBurstID"

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v0, v2, v3}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "BurstID"

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, v1, v0, p0}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string p0, "BurstPrimary"

    const-string p1, "1"

    invoke-interface {p4, v1, p0, p1}, Lber;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object p0, Lkri;->b:[Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x2

    if-ge p1, p3, :cond_1

    aget-object p3, p0, p1

    const-string v0, "DisableAutoCreation"

    new-instance v1, Lbfs;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lbfs;-><init>(I)V

    new-instance v2, Lbfs;

    invoke-direct {v2}, Lbfs;-><init>()V

    invoke-interface {p4, v0, v1, p3, v2}, Lber;->g(Ljava/lang/String;Lbfs;Ljava/lang/String;Lbfs;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ldyy;->a:Ldyy;

    invoke-virtual {p0}, Ldyy;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p4, p2}, Lkrm;->j(Lber;Ljava/lang/String;)V
    :try_end_0
    .catch Lbeq; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static q(ILigo;Liyv;)Lizr;
    .locals 1

    :try_start_0
    iget-object v0, p2, Liyv;->b:Liyz;

    iget-object v0, v0, Liyz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    invoke-static {p0, p1, p2}, Ljcb;->w(Landroid/content/res/XmlResourceParser;Ligo;Liyv;)Lizr;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "inflate() called with unknown resourceId"

    invoke-virtual {p2, p1, p0}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static r([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static s(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long p0, p0, p4

    return-wide p0
.end method

.method private static t([BI)J
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method private static u(J)J
    .locals 2

    const/16 v0, 0x2f

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static v([BIJJ[J)V
    .locals 6

    invoke-static {p0, p1}, Ljcb;->t([BI)J

    move-result-wide v0

    add-long/2addr p2, v0

    add-long/2addr p4, p2

    add-int/lit8 v0, p1, 0x18

    add-int/lit8 v1, p1, 0x10

    add-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1}, Ljcb;->t([BI)J

    move-result-wide v2

    invoke-static {p0, v1}, Ljcb;->t([BI)J

    move-result-wide v4

    invoke-static {p0, v0}, Ljcb;->t([BI)J

    move-result-wide p0

    add-long/2addr p4, p0

    add-long/2addr v2, p2

    add-long/2addr v2, v4

    const/16 v0, 0x15

    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    const/16 v0, 0x2c

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr p4, v0

    const/4 v0, 0x0

    add-long/2addr v2, p0

    aput-wide v2, p6, v0

    add-long/2addr p4, p2

    const/4 p0, 0x1

    aput-wide p4, p6, p0

    return-void
.end method

.method private static final w(Landroid/content/res/XmlResourceParser;Ligo;Liyv;)Lizr;
    .locals 5

    const-string v0, "Error parsing tracker configuration file"

    :try_start_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "name"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {p0, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto/16 :goto_1

    :cond_0
    const-string v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v2, :cond_8

    const-string v3, "ga_appName"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p1, Ligo;->a:Ljava/lang/Object;

    check-cast v1, Lizr;

    iput-object v2, v1, Lizr;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v3, "ga_appVersion"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p1, Ligo;->a:Ljava/lang/Object;

    check-cast v1, Lizr;

    iput-object v2, v1, Lizr;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v3, "ga_logLevel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p1, Ligo;->a:Ljava/lang/Object;

    check-cast v1, Lizr;

    iput-object v2, v1, Lizr;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    iget-object v2, p1, Ligo;->b:Ljava/lang/Object;

    check-cast v2, Liyz;

    invoke-virtual {v2}, Liyz;->d()Lizv;

    move-result-object v2

    const-string v3, "String xml configuration name not recognized"

    invoke-virtual {v2, v3, v1}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "bool"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v3, :cond_8

    :try_start_2
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "ga_dryRun"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p1, Ligo;->a:Ljava/lang/Object;

    check-cast v1, Lizr;

    iput v3, v1, Lizr;->e:I

    goto :goto_1

    :cond_5
    iget-object v3, p1, Ligo;->b:Ljava/lang/Object;

    check-cast v3, Liyz;

    invoke-virtual {v3}, Liyz;->d()Lizv;

    move-result-object v3

    const-string v4, "Bool xml configuration name not recognized"

    invoke-virtual {v3, v4, v1}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "Error parsing bool configuration value"

    invoke-virtual {p2, v3, v2, v1}, Liyv;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v2, "integer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v3, :cond_8

    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ga_dispatchPeriod"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v1, p1, Ligo;->a:Ljava/lang/Object;

    check-cast v1, Lizr;

    iput v3, v1, Lizr;->d:I

    goto :goto_1

    :cond_7
    iget-object v3, p1, Ligo;->b:Ljava/lang/Object;

    check-cast v3, Liyz;

    invoke-virtual {v3}, Liyz;->d()Lizv;

    move-result-object v3

    const-string v4, "Int xml configuration name not recognized"

    invoke-virtual {v3, v4, v1}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    const-string v3, "Error parsing int configuration value"

    invoke-virtual {p2, v3, v2, v1}, Liyv;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_1
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p2, v0, p0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :catch_3
    move-exception p0

    invoke-virtual {p2, v0, p0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_2
    iget-object p0, p1, Ligo;->a:Ljava/lang/Object;

    check-cast p0, Lizr;

    return-object p0
.end method
