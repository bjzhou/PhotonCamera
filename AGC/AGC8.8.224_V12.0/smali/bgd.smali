.class public final Lbgd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Map;

.field private static final b:Lozz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbgd;->a:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-instance v2, Lozz;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lozz;-><init>([B)V

    sput-object v2, Lbgd;->b:Lozz;

    return-void

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lbgp;
    .locals 1

    :try_start_0
    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".lottie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lbgd;->b(Ljava/io/InputStream;Ljava/lang/String;)Lbgp;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, Lbgd;->e(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lbgp;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lbgp;

    invoke-direct {p1, p0}, Lbgp;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;)Lbgp;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lpab;->a(Ljava/io/InputStream;)Lpai;

    move-result-object v0

    invoke-static {v0}, Lljz;->t(Lpai;)Lozy;

    move-result-object v0

    invoke-static {v0}, Lblh;->d(Lozy;)Lblh;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lbgd;->j(Lblh;Ljava/lang/String;Z)Lbgp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lbls;->e(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lbls;->e(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static c(Landroid/content/Context;I)Lbgp;
    .locals 1

    invoke-static {p0, p1}, Lbgd;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbgd;->d(Landroid/content/Context;ILjava/lang/String;)Lbgp;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;ILjava/lang/String;)Lbgp;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lpab;->a(Ljava/io/InputStream;)Lpai;

    move-result-object p0

    invoke-static {p0}, Lljz;->t(Lpai;)Lozy;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    :try_start_1
    sget-object v0, Lbgd;->b:Lozz;

    invoke-interface {p0, v0}, Lozy;->d(Lozz;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget v0, Lbll;->a:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-interface {p0}, Lozy;->f()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, p2}, Lbgd;->e(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lbgp;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lozy;->f()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Lbgd;->b(Ljava/io/InputStream;Ljava/lang/String;)Lbgp;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lbgp;

    invoke-direct {p1, p0}, Lbgp;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static e(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lbgp;
    .locals 8

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "manifest.json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lpab;->a(Ljava/io/InputStream;)Lpai;

    move-result-object v1

    invoke-static {v1}, Lljz;->t(Lpai;)Lozy;

    move-result-object v1

    invoke-static {v1}, Lblh;->d(Lozy;)Lblh;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lbgd;->j(Lblh;Ljava/lang/String;Z)Lbgp;

    move-result-object v1

    iget-object v3, v1, Lbgp;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v1, ".png"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".jpg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".jpeg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    :try_start_2
    new-instance p1, Lbgp;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to parse composition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lbgp;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Lbga;

    iget-object v5, v5, Lbga;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbgk;

    iget-object v7, v6, Lbgk;->d:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_9
    move-object v6, v2

    :goto_4
    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget v4, v6, Lbgk;->a:I

    iget v5, v6, Lbgk;->b:I

    invoke-static {v1, v4, v5}, Lbls;->c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v6, Lbgk;->e:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_a
    move-object v0, v3

    check-cast v0, Lbga;

    iget-object v0, v0, Lbga;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbgk;

    iget-object v2, v2, Lbgk;->e:Landroid/graphics/Bitmap;

    if-nez v2, :cond_b

    new-instance p1, Lbgp;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgk;

    iget-object v1, v1, Lbgk;->d:Ljava/lang/String;

    const-string v2, "There is no image for "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lbgp;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    if-eqz p1, :cond_d

    sget-object v0, Lbim;->a:Lbim;

    move-object v1, v3

    check-cast v1, Lbga;

    invoke-virtual {v0, p1, v1}, Lbim;->a(Ljava/lang/String;Lbga;)V

    :cond_d
    new-instance p1, Lbgp;

    invoke-direct {p1, v3}, Lbgp;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :catch_0
    move-exception p1

    new-instance v0, Lbgp;

    invoke-direct {v0, p1}, Lbgp;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v0

    :goto_5
    invoke-static {p0}, Lbls;->e(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lbls;->e(Ljava/io/Closeable;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lbgr;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Llwi;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Llwi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p2, v0}, Lbgd;->k(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lbgr;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;ILjava/lang/String;)Lbgr;
    .locals 6

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance p0, Lbgc;

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lbgc;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;I)V

    invoke-static {p2, p0}, Lbgd;->k(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lbgr;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lbgr;
    .locals 1

    new-instance v0, Lbgb;

    invoke-direct {v0, p0, p1, p2}, Lbgb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lbgd;->k(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lbgr;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    const-string p0, "_day_"

    goto :goto_0

    :cond_0
    const-string p0, "_night_"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j(Lblh;Ljava/lang/String;Z)Lbgp;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    sget-object v2, Lbkt;->a:Ldne;

    invoke-static {}, Lbls;->a()F

    move-result v2

    new-instance v3, Lxc;

    invoke-direct {v3}, Lxc;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lxg;

    invoke-direct {v9}, Lxg;-><init>()V

    new-instance v10, Lbga;

    invoke-direct {v10}, Lbga;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v17

    if-eqz v17, :cond_13

    sget-object v12, Lbkt;->a:Ldne;

    invoke-virtual {v1, v12}, Lblh;->r(Ldne;)I

    move-result v12

    const/4 v0, 0x0

    packed-switch v12, :pswitch_data_0

    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    goto/16 :goto_18

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lbkt;->d:Ldne;

    invoke-virtual {v1, v12}, Lblh;->r(Ldne;)I

    move-result v12

    packed-switch v12, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    goto :goto_3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    goto :goto_2

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    goto :goto_2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    new-instance v12, Lbze;

    invoke-direct {v12, v0}, Lbze;-><init>([Z)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    goto/16 :goto_19

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const-wide/16 v18, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v23

    move-wide/from16 v21, v18

    const/16 v20, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v18

    if-eqz v18, :cond_4

    sget-object v0, Lbkk;->a:Ldne;

    invoke-virtual {v1, v0}, Lblh;->r(Ldne;)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    move-object/from16 v25, v8

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    goto :goto_9

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lbkk;->b:Ldne;

    invoke-virtual {v1, v0}, Lblh;->r(Ldne;)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    goto :goto_8

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1, v10}, Lbkh;->a(Lblh;Lbga;)Lbjc;

    move-result-object v0

    check-cast v0, Lbjl;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    goto :goto_6

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    goto :goto_6

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    move-object/from16 v25, v8

    goto :goto_a

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v24

    const/4 v0, 0x0

    goto :goto_5

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v23

    const/4 v0, 0x0

    goto :goto_5

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v21

    const/4 v0, 0x0

    goto :goto_5

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-object/from16 v25, v8

    goto :goto_a

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v8

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move-object/from16 v8, v25

    const/4 v0, 0x0

    goto :goto_5

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    :goto_a
    move-object/from16 v8, v25

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move-object/from16 v25, v8

    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    new-instance v0, Lbij;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    invoke-direct/range {v18 .. v24}, Lbij;-><init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbij;->hashCode()I

    move-result v8

    invoke-virtual {v9, v8, v0}, Lxg;->d(ILjava/lang/Object;)V

    move-object/from16 v8, v25

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_5
    move-object/from16 v25, v8

    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    goto/16 :goto_19

    :pswitch_c
    move-object/from16 v25, v8

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lbkt;->c:Ldne;

    invoke-virtual {v1, v0}, Lblh;->r(Ldne;)I

    move-result v0

    packed-switch v0, :pswitch_data_4

    move-object/from16 v19, v9

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    goto :goto_10

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lbkl;->a:Ldne;

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v19, v9

    sget-object v9, Lbkl;->a:Ldne;

    invoke-virtual {v1, v9}, Lblh;->r(Ldne;)I

    move-result v9

    packed-switch v9, :pswitch_data_5

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    goto :goto_e

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    goto :goto_f

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v9, v19

    goto :goto_d

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v19

    goto :goto_d

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v19

    goto :goto_d

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    :goto_f
    move-object/from16 v9, v19

    goto :goto_d

    :cond_6
    move-object/from16 v19, v9

    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    new-instance v9, Lva;

    invoke-direct {v9, v0, v8, v12}, Lva;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lva;->b:Ljava/lang/Object;

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v19

    goto :goto_c

    :cond_7
    move-object/from16 v19, v9

    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    move-object/from16 v9, v19

    goto :goto_b

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    move-object/from16 v9, v19

    goto :goto_b

    :cond_8
    move-object/from16 v19, v9

    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    move/from16 v23, v2

    move-object/from16 v20, v7

    move/from16 v22, v13

    move/from16 v21, v14

    goto/16 :goto_19

    :pswitch_12
    move-object/from16 v25, v8

    move-object/from16 v19, v9

    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lxc;

    invoke-direct {v8}, Lxc;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lblh;->i()V

    move-object/from16 v20, v7

    move/from16 v21, v14

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v22, v13

    sget-object v13, Lbkt;->b:Ldne;

    invoke-virtual {v1, v13}, Lblh;->r(Ldne;)I

    move-result v13

    packed-switch v13, :pswitch_data_6

    move/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual/range {p0 .. p0}, Lblh;->m()V

    goto :goto_14

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move/from16 v23, v2

    move-object/from16 v24, v3

    goto :goto_15

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v7

    move/from16 v13, v22

    goto :goto_12

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v12

    move/from16 v13, v22

    goto :goto_12

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v9

    move/from16 v13, v22

    goto :goto_12

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {v1, v10}, Lbks;->a(Lblh;Lbga;)Lbjt;

    move-result-object v13

    move/from16 v23, v2

    move-object/from16 v24, v3

    iget-wide v2, v13, Lbjt;->d:J

    invoke-virtual {v8, v2, v3, v13}, Lxc;->g(JLjava/lang/Object;)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v23

    move-object/from16 v3, v24

    goto :goto_13

    :cond_9
    move/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    goto :goto_15

    :pswitch_18
    move/from16 v23, v2

    move-object/from16 v24, v3

    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v14

    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    goto :goto_12

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    :goto_15
    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    goto :goto_12

    :cond_a
    move/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v22, v13

    invoke-virtual/range {p0 .. p0}, Lblh;->k()V

    if-eqz v7, :cond_b

    new-instance v0, Lbgk;

    invoke-direct {v0, v9, v12, v14, v7}, Lbgk;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lbgk;->c:Ljava/lang/String;

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v20

    move/from16 v14, v21

    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_11

    :cond_b
    invoke-interface {v5, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v20

    move/from16 v14, v21

    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_11

    :cond_c
    move/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v20, v7

    move/from16 v22, v13

    move/from16 v21, v14

    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    move-object/from16 v3, v24

    goto/16 :goto_19

    :pswitch_19
    move/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    invoke-virtual/range {p0 .. p0}, Lblh;->h()V

    const/4 v0, 0x0

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lblh;->o()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v1, v10}, Lbks;->a(Lblh;Lbga;)Lbjt;

    move-result-object v2

    iget v3, v2, Lbjt;->t:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v7, v2, Lbjt;->d:J

    move-object/from16 v3, v24

    invoke-virtual {v3, v7, v8, v2}, Lxc;->g(JLjava/lang/Object;)V

    const/4 v2, 0x4

    if-le v0, v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "You have "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbll;->a(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v24, v3

    goto :goto_16

    :cond_f
    move-object/from16 v3, v24

    invoke-virtual/range {p0 .. p0}, Lblh;->j()V

    goto/16 :goto_19

    :pswitch_1a
    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    invoke-virtual/range {p0 .. p0}, Lblh;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x4

    if-ge v2, v8, :cond_10

    goto :goto_17

    :cond_10
    if-gt v2, v8, :cond_12

    if-lt v7, v8, :cond_11

    if-gt v7, v8, :cond_12

    if-gez v0, :cond_12

    :cond_11
    :goto_17
    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v10, v0}, Lbga;->d(Ljava/lang/String;)V

    goto/16 :goto_19

    :pswitch_1b
    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v22, v13

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v7

    double-to-float v14, v7

    move-object/from16 v0, p1

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v8, v25

    goto/16 :goto_0

    :pswitch_1c
    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v21, v14

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v7

    double-to-float v0, v7

    const v2, -0x43dc28f6    # -0.01f

    add-float v13, v0, v2

    move-object/from16 v0, p1

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move/from16 v14, v21

    move/from16 v2, v23

    move-object/from16 v8, v25

    goto/16 :goto_0

    :pswitch_1d
    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    invoke-virtual/range {p0 .. p0}, Lblh;->a()D

    move-result-wide v7

    double-to-float v11, v7

    move-object/from16 v0, p1

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move/from16 v14, v21

    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v8, v25

    goto/16 :goto_0

    :pswitch_1e
    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v16

    move-object/from16 v0, p1

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move/from16 v14, v21

    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v8, v25

    goto/16 :goto_0

    :pswitch_1f
    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v25, v8

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    invoke-virtual/range {p0 .. p0}, Lblh;->b()I

    move-result v15

    move-object/from16 v0, p1

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move/from16 v14, v21

    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v8, v25

    goto/16 :goto_0

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lblh;->n()V

    :cond_12
    :goto_19
    move-object/from16 v0, p1

    move-object/from16 v9, v19

    move-object/from16 v7, v20

    move/from16 v14, v21

    move/from16 v13, v22

    move/from16 v2, v23

    move-object/from16 v8, v25

    goto/16 :goto_0

    :cond_13
    move/from16 v23, v2

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    move/from16 v22, v13

    move/from16 v21, v14

    int-to-float v0, v15

    mul-float v0, v0, v23

    move/from16 v12, v16

    int-to-float v2, v12

    mul-float v2, v2, v23

    new-instance v7, Landroid/graphics/Rect;

    float-to-int v2, v2

    float-to-int v0, v0

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v10, Lbga;->g:Landroid/graphics/Rect;

    iput v11, v10, Lbga;->h:F

    move/from16 v13, v22

    iput v13, v10, Lbga;->i:F

    move/from16 v14, v21

    iput v14, v10, Lbga;->j:F

    iput-object v4, v10, Lbga;->f:Ljava/util/List;

    iput-object v3, v10, Lbga;->e:Lxc;

    iput-object v5, v10, Lbga;->a:Ljava/util/Map;

    iput-object v6, v10, Lbga;->b:Ljava/util/Map;

    move-object/from16 v0, v19

    iput-object v0, v10, Lbga;->d:Lxg;

    move-object/from16 v0, v20

    iput-object v0, v10, Lbga;->c:Ljava/util/Map;

    move-object/from16 v0, p1

    if-eqz v0, :cond_14

    sget-object v2, Lbim;->a:Lbim;

    invoke-virtual {v2, v0, v10}, Lbim;->a(Ljava/lang/String;Lbga;)V

    :cond_14
    new-instance v0, Lbgp;

    invoke-direct {v0, v10}, Lbgp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_15

    invoke-static/range {p0 .. p0}, Lbls;->e(Ljava/io/Closeable;)V

    :cond_15
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1a

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lbgp;

    invoke-direct {v2, v0}, Lbgp;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_16

    invoke-static/range {p0 .. p0}, Lbls;->e(Ljava/io/Closeable;)V

    :cond_16
    return-object v2

    :goto_1a
    if-nez p2, :cond_17

    goto :goto_1b

    :cond_17
    invoke-static/range {p0 .. p0}, Lbls;->e(Ljava/io/Closeable;)V

    :goto_1b
    goto :goto_1d

    :goto_1c
    throw v0

    :goto_1d
    goto :goto_1c

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_12
        :pswitch_c
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method private static k(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lbgr;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lbim;->a:Lbim;

    iget-object v0, v0, Lbim;->b:Lxe;

    invoke-virtual {v0, p0}, Lxe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbga;

    :goto_0
    if-eqz v0, :cond_1

    new-instance p0, Lbgr;

    new-instance p1, Lbpf;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lbpf;-><init>(Lbga;I)V

    invoke-direct {p0, p1}, Lbgr;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_3

    sget-object v0, Lbgd;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbgr;

    return-object p0

    :cond_3
    :goto_1
    new-instance v0, Lbgr;

    invoke-direct {v0, p1}, Lbgr;-><init>(Ljava/util/concurrent/Callable;)V

    if-eqz p0, :cond_4

    new-instance p1, Lbfx;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lbfx;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lbgr;->e(Lbgl;)V

    new-instance p1, Lbfx;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lbfx;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p1}, Lbgr;->d(Lbgl;)V

    sget-object p1, Lbgd;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method
