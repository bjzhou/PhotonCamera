.class public final Llqs;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android."

    aput-object v2, v0, v1

    const-string v2, "com.google."

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "com.chrome."

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const-string v2, "com.nest."

    const/4 v5, 0x3

    aput-object v2, v0, v5

    const/4 v2, 0x4

    const-string v6, "com.waymo."

    aput-object v6, v0, v2

    const/4 v2, 0x5

    const-string v6, "com.waze"

    aput-object v6, v0, v2

    sput-object v0, Llqs;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "media"

    aput-object v2, v0, v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v6, "goldfish"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v6, "ranchu"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v6, ""

    if-eq v3, v2, :cond_2

    move-object v2, v6

    goto :goto_2

    :cond_2
    const-string v2, "androidx.test.services.storage.runfiles"

    :goto_2
    aput-object v2, v0, v3

    sput-object v0, Llqs;->b:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    aput-object v6, v0, v1

    aput-object v6, v0, v3

    const-string v1, "com.google.android.apps.docs.storage.legacy"

    aput-object v1, v0, v4

    sput-object v0, Llqs;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    sget-object v0, Llqr;->a:Llqr;

    invoke-static {p0, p1, p2, v0}, Llqs;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Llqr;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Llqr;)Landroid/content/res/AssetFileDescriptor;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.resource"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v6, "content"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v9, 0x2

    const/4 v10, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "rwt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_1
    const-string v5, "wt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "rw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v5, "w"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_4
    const-string v5, "r"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v5, 0x2

    goto :goto_2

    :pswitch_1
    const/4 v5, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v11, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    if-nez v12, :cond_3

    const/16 v13, 0x40

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    if-ltz v13, :cond_2

    add-int/2addr v13, v8

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v11, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    :cond_2
    if-nez v12, :cond_3

    sget-object v0, Llqr;->a:Llqr;

    iget-boolean v0, v3, Llqr;->b:Z

    if-nez v0, :cond_a

    goto/16 :goto_9

    :cond_3
    new-instance v13, Lloi;

    invoke-direct {v13, v1, v12}, Lloi;-><init>(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)V

    sget-object v14, Llqr;->a:Llqr;

    iget-object v14, v3, Llqr;->d:Lmvv;

    move-object v15, v14

    check-cast v15, Lmyu;

    iget v15, v15, Lmyu;->c:I

    :goto_3
    if-ge v7, v15, :cond_4

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Llqt;

    iget-boolean v6, v3, Llqr;->b:Z

    invoke-virtual {v8, v0, v13, v6}, Llqt;->a(Landroid/content/Context;Lloi;Z)I

    move-result v6

    add-int/2addr v6, v10

    add-int/lit8 v7, v7, 0x1

    packed-switch v6, :pswitch_data_1

    const/4 v8, 0x1

    goto :goto_3

    :pswitch_2
    const/4 v8, 0x2

    goto :goto_4

    :pswitch_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x3

    :goto_4
    add-int/2addr v8, v10

    packed-switch v8, :pswitch_data_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v0, v3, Llqr;->b:Z

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_5
    iget-boolean v3, v3, Llqr;->b:Z

    if-nez v3, :cond_a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v0, v1, v3, v6, v5}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, v12, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_9

    sget-object v0, Llqs;->b:[Ljava/lang/String;

    array-length v3, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v9, :cond_6

    aget-object v5, v0, v3

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    sget-object v0, Llqs;->c:[Ljava/lang/String;

    array-length v3, v0

    const/4 v3, 0x0

    :goto_6
    const/4 v5, 0x3

    if-ge v3, v5, :cond_7

    aget-object v6, v0, v3

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    sget-object v0, Llqs;->a:[Ljava/lang/String;

    const/4 v7, 0x0

    :goto_7
    const/4 v3, 0x6

    if-ge v7, v3, :cond_9

    aget-object v3, v0, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v10

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_8

    iget-object v5, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_8

    :cond_8
    iget-object v5, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    :goto_9
    :pswitch_4
    invoke-virtual {v4, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Llqs;->f(Ljava/lang/Object;)V

    return-object v0

    :cond_a
    :pswitch_5
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Can\'t open content uri."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v6, "file"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-static {v2}, Llqs;->f(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    new-instance v5, Lkhk;

    const/16 v6, 0xc

    invoke-direct {v5, v4, v6}, Lkhk;-><init>(Ljava/io/FileDescriptor;I)V

    invoke-static {v5}, Llho;->o(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/system/StructStat;

    iget-wide v5, v4, Landroid/system/StructStat;->st_dev:J

    iget-wide v7, v4, Landroid/system/StructStat;->st_ino:J

    iget v4, v4, Landroid/system/StructStat;->st_mode:I

    invoke-static {v4}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    new-instance v4, Lkhk;

    const/16 v9, 0xb

    invoke-direct {v4, v1, v9}, Lkhk;-><init>(Ljava/lang/String;I)V

    invoke-static {v4}, Llho;->o(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/system/StructStat;

    iget-wide v9, v4, Landroid/system/StructStat;->st_dev:J

    iget-wide v11, v4, Landroid/system/StructStat;->st_ino:J

    iget v4, v4, Landroid/system/StructStat;->st_mode:I

    invoke-static {v4}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "Can\'t open file: "

    if-nez v4, :cond_15

    cmp-long v4, v5, v9

    if-nez v4, :cond_14

    cmp-long v4, v7, v11

    if-nez v4, :cond_14

    :try_start_1
    const-string v4, "/proc/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "/data/misc/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    sget-object v4, Llqr;->a:Llqr;

    iget-boolean v4, v3, Llqr;->c:Z

    if-nez v4, :cond_13

    invoke-static/range {p0 .. p0}, Labv;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-static {v4}, Llqs;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v7, 0x1

    goto/16 :goto_c

    :cond_c
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Llqs;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v7, 0x1

    goto :goto_c

    :cond_d
    invoke-static/range {p0 .. p0}, Labv;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-static {v4}, Labv;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-static {v4}, Llqs;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v7, 0x1

    goto :goto_c

    :cond_e
    new-instance v4, Lkhk;

    const/16 v5, 0x9

    invoke-direct {v4, v0, v5}, Lkhk;-><init>(Landroid/content/Context;I)V

    invoke-static {v4}, Llqs;->e(Ljava/util/concurrent/Callable;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v5, :cond_10

    aget-object v7, v4, v6

    if-eqz v7, :cond_f

    invoke-static {v7}, Llqs;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_c

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_10
    new-instance v4, Lkhk;

    const/16 v5, 0xa

    invoke-direct {v4, v0, v5}, Lkhk;-><init>(Landroid/content/Context;I)V

    invoke-static {v4}, Llqs;->e(Ljava/util/concurrent/Callable;)[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v4, :cond_12

    aget-object v6, v0, v5

    if-eqz v6, :cond_11

    invoke-static {v6}, Llqs;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v7, 0x1

    goto :goto_c

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_12
    const/4 v7, 0x0

    :goto_c
    iget-boolean v0, v3, Llqr;->b:Z

    if-ne v7, v0, :cond_13

    return-object v2

    :cond_13
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v3, "Validation failed."

    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {v2, v1}, Llqs;->d(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-static {v2, v0}, Llqs;->d(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Unsupported scheme"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d

    nop

    :sswitch_data_0
    .sparse-switch
        0x72 -> :sswitch_4
        0x77 -> :sswitch_3
        0xe45 -> :sswitch_2
        0xedd -> :sswitch_1
        0x1bacf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static c(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static d(Landroid/content/res/AssetFileDescriptor;Ljava/io/FileNotFoundException;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    :try_start_1
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

    aput-object p0, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    return-void
.end method

.method private static e(Ljava/util/concurrent/Callable;)[Ljava/io/File;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method

.method private static f(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Content resolver returned null value."

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
