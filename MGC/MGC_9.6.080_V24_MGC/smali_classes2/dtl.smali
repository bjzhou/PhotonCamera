.class public Ldtl;
.super Landroid/content/ContentProvider;
.source "PG"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/io/File;

.field private static final c:Ljava/util/HashMap;


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private final f:I

.field private g:Lezz;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()Lezz;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ldtl;->e:Ljava/lang/String;

    nop

    const-string v2, "mAuthority is null. Did you override attachInfo and did not call super.attachInfo()?"

    nop

    nop

    nop

    invoke-static {v1, v2}, Ldvu;->u(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ldtl;->g:Lezz;

    nop

    if-nez v1, :cond_0

    nop

    invoke-virtual {p0}, Ldtl;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    iget-object v2, p0, Ldtl;->e:Ljava/lang/String;

    nop

    iget v3, p0, Ldtl;->f:I

    nop

    nop

    nop

    invoke-static {v1, v2, v3}, Ldtl;->b(Landroid/content/Context;Ljava/lang/String;I)Lezz;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, p0, Ldtl;->g:Lezz;

    nop

    nop

    nop

    :cond_0
    iget-object p0, p0, Ldtl;->g:Lezz;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

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
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ldtl;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "/"

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

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Ldtl;->c:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    const v0, 0x18

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

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    const-string v1, "_size"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "_display_name"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    sput-object v0, Ldtl;->b:Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    new-instance v0, Ljava/io/File;

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

    :goto_14
    sput-object v0, Ldtl;->a:[Ljava/lang/String;

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ldtl;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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
.end method

.method protected constructor <init>(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ldtl;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Ldtl;->f:I

    nop

    nop

    goto/32 :goto_5

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
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x2f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    :goto_7
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-gtz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
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

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)Lezz;
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p1}, Lezz;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    const-string p2, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    nop

    nop

    nop

    nop

    nop

    const-string v1, "ERROR"

    nop

    nop

    nop

    nop

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lezz;

    nop

    invoke-direct {v1, p1}, Lezz;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    nop

    nop

    :cond_1
    const-string p2, "Couldn\'t find meta-data for provider with authority "

    nop

    nop

    nop

    const-string v1, "ERROR"

    nop

    nop

    nop

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lezz;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1}, Lezz;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception p0

    nop

    :try_start_1
    const-string p2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    nop

    nop

    nop

    nop

    const-string v1, "ERROR"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lezz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1}, Lezz;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    const-string p2, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"

    nop

    const-string v1, "ERROR"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lezz;

    nop

    nop

    nop

    invoke-direct {v1, p1}, Lezz;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    :goto_3
    monitor-exit v0

    nop

    return-object v1

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, v1, Lezz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    const-string p2, "Failed to resolve canonical path for "

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    const-string v1, "ERROR"

    nop

    nop

    nop

    nop

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lezz;

    nop

    invoke-direct {v1, p1}, Lezz;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    nop

    nop

    nop

    :goto_6
    const-string p2, "Name must not be empty"

    nop

    nop

    nop

    nop

    const-string v1, "ERROR"

    nop

    nop

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lezz;

    nop

    nop

    nop

    invoke-direct {v1, p1}, Lezz;-><init>(Ljava/lang/String;)V

    return-object v1

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    sget-object p0, Ldtl;->c:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lezz;

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lezz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Ldtl;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    return-object v1

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_4
    :try_start_6
    new-instance v1, Lezz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1}, Lezz;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    nop

    const/16 v3, 0x80

    nop

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_5

    nop

    if-eqz p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Landroid/os/Bundle;

    nop

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    nop

    const-string v5, "android.support.FILE_PROVIDER_PATHS"

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    const-string v3, "android.support.FILE_PROVIDER_PATHS"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    nop

    nop

    nop

    if-eqz p2, :cond_0

    nop

    nop

    nop

    :cond_6
    :goto_10
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_6

    nop

    nop

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    const-string v3, "name"

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {p2, v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    const-string v6, "path"

    nop

    nop

    nop

    invoke-interface {p2, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    const-string v7, "root-path"

    nop

    nop

    nop

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_7

    nop

    nop

    nop

    sget-object v5, Ldtl;->b:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    :cond_7
    const-string v7, "files-path"

    nop

    nop

    nop

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :cond_8
    const-string v7, "cache-path"

    nop

    nop

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_9

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_9
    const-string v7, "external-path"

    nop

    nop

    nop

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    if-eqz v7, :cond_a

    nop

    nop

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_a
    const-string v7, "external-files-path"

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_b

    nop

    invoke-static {p0}, Ldtk;->c(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    array-length v7, v2

    nop

    nop

    nop

    nop

    nop

    if-lez v7, :cond_d

    nop

    nop

    aget-object v5, v2, v8

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    :cond_b
    const-string v7, "external-cache-path"

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_c

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    array-length v7, v2

    nop

    nop

    nop

    if-lez v7, :cond_d

    nop

    nop

    nop

    aget-object v5, v2, v8

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_c
    const-string v7, "external-media-path"

    nop

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_d

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v2

    nop

    nop

    array-length v7, v2

    nop

    nop

    nop

    if-lez v7, :cond_d

    nop

    nop

    aget-object v5, v2, v8

    nop

    nop

    nop

    nop

    :cond_d
    :goto_11
    if-eqz v5, :cond_6

    nop

    nop

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    nop

    nop

    move v6, v8

    nop

    nop

    :goto_12
    if-gtz v6, :cond_f

    nop

    nop

    nop

    aget-object v6, v2, v8

    nop

    nop

    nop

    if-eqz v6, :cond_e

    nop

    nop

    nop

    new-instance v7, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v7

    nop

    nop

    :cond_e
    move v6, v4

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_13
    if-lez v0, :cond_10

    nop

    goto/32 :goto_8

    nop

    :cond_10
    goto/32 :goto_7

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p2

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object p1, p0, Ldtl;->e:Ljava/lang/String;

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_3

    nop

    nop

    :goto_3
    sget-object p0, Ldtl;->c:Ljava/util/HashMap;

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

    :goto_4
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p2, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    iget-object p2, p0, Ldtl;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_2
    monitor-exit p2

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    aget-object p1, p1, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    const-string p1, "Provider must not be exported"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string p2, ";"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p1, "Provider must grant uri permissions"

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

    :goto_18
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    new-instance p0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lezz;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ldtl;->33f5b80483094659737b73d90f80a8a4m()Lezz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-gez p1, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lezz;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ldtl;->33f5b80483094659737b73d90f80a8a4m()Lezz;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const/16 v0, 0x2e

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

    :goto_8
    if-nez p0, :cond_1

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

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

    nop

    nop

    :goto_b
    const-string p0, "application/octet-stream"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->QfECVjKTZXcMf:Ljava/lang/String;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    const-string p1, "No external inserts"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCreate()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 p1, 0x10000000

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

    :goto_1
    if-nez p1, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 p1, 0x38000000

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    const-string p1, "w"

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

    nop

    :goto_4
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "rwt"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    const-string p1, "wa"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    const-string p1, "r"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 p1, 0x2a000000

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    const-string p2, "Invalid mode: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lezz;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    goto :goto_1a

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    :goto_17
    const-string p1, "rw"

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    const/high16 p1, 0x3c000000    # 0.0078125f

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move p1, v0

    nop

    nop

    :goto_1a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_10

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ldtl;->33f5b80483094659737b73d90f80a8a4m()Lezz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    :goto_21
    return-object p0

    nop

    :goto_22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v0, 0x2c000000

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_1a

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

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

    :goto_2b
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string p1, "wt"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    new-instance p2, Landroid/database/MatrixCursor;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array p3, p3, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    array-length v2, p2

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

    :goto_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5
    aput-object v3, p4, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lezz;->b(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p3, p5, p1, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    new-array p1, v1, [Ljava/lang/Object;

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

    :goto_9
    if-lt v0, v2, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    const/4 p5, 0x0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2, p0, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_c
    move v1, v2

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array p4, p3, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p3, 0x1

    nop

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

    :goto_12
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p2, Ldtl;->a:[Ljava/lang/String;

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    move v1, v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Ldtl;->33f5b80483094659737b73d90f80a8a4m()Lezz;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1d
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    new-array p0, v1, [Ljava/lang/String;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    const-string v3, "_size"

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    array-length p3, p2

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

    :goto_22
    goto/16 :goto_32

    nop

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    aget-object v2, p2, v0

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_25
    invoke-static {p4, p5, p0, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x9

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_29
    goto/16 :goto_10

    nop

    :goto_2a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2b
    const-string v3, "_display_name"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2c
    aput-object v3, p4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2d
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    const-string p3, "displayName"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_31
    aput-object v3, p3, v1

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_33
    return-object p2

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_36
    move v0, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_37
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    :goto_3b
    invoke-virtual {p2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    :goto_3d
    const v1, 0x20

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

    :goto_3e
    aput-object v3, p3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-string p1, "No external updates"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop
.end method
