.class public final Lezg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Set;

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lezg;->c:[B

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/HashSet;

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

    :goto_3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sput-object v0, Lezg;->a:Ljava/util/Map;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data

    :goto_6
    sput-object v0, Lezg;->b:Ljava/util/Set;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezs;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    const-string v0, ".zip"

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->YYAihWdNeYEH:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    nop

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    nop

    invoke-static {p0, p2}, Lezg;->b(Ljava/io/InputStream;Ljava/lang/String;)Lezs;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_3
    new-instance v0, Ljava/util/zip/ZipInputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0, p2}, Lezg;->e(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lezs;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, p0}, Lezs;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p1, Lezs;

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

    :goto_9
    return-object p1

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;)Lezs;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

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

    :goto_1
    invoke-static {p0}, Lffi;->e(Ljava/io/Closeable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    add-int v0, v0, v1

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

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_0
    invoke-static {p0}, Lurl;->a(Ljava/io/InputStream;)Lurt;

    move-result-object v0

    nop

    nop

    nop

    new-instance v1, Lurp;

    nop

    invoke-direct {v1, v0}, Lurp;-><init>(Lurt;)V

    sget-object v0, Lfew;->a:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lfex;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lfex;-><init>(Luri;)V

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1, v1}, Lezg;->k(Lfew;Ljava/lang/String;Z)Lezs;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Lffi;->e(Ljava/io/Closeable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static c(Landroid/content/Context;I)Lezs;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1, v0}, Lezg;->d(Landroid/content/Context;ILjava/lang/String;)Lezs;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lezg;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static d(Landroid/content/Context;ILjava/lang/String;)Lezs;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Lezs;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    const v0, 0x11

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
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

    :goto_5
    new-instance p1, Lezs;

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

    :goto_6
    return-object p1

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

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

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    invoke-static {p1}, Lurl;->a(Ljava/io/InputStream;)Lurt;

    move-result-object p1

    nop

    nop

    nop

    new-instance v0, Lurp;

    nop

    invoke-direct {v0, p1}, Lurp;-><init>(Lurt;)V

    invoke-static {v0}, Lezg;->m(Luri;)Ljava/lang/Boolean;

    move-result-object p1

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    new-instance p1, Ljava/util/zip/ZipInputStream;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Luro;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Luro;-><init>(Lurp;)V

    invoke-direct {p1, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, p1, p2}, Lezg;->e(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lezs;

    move-result-object p0

    nop

    return-object p0

    nop

    nop

    nop

    :cond_1
    new-instance p0, Luro;

    nop

    nop

    invoke-direct {p0, v0}, Luro;-><init>(Lurp;)V

    invoke-static {p0, p2}, Lezg;->b(Ljava/io/InputStream;Ljava/lang/String;)Lezs;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop
.end method

.method public static e(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lezs;
    .locals 12

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lffi;->e(Ljava/io/Closeable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lffi;->e(Ljava/io/Closeable;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v3

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    :try_start_0
    const-string v2, ".webp"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    const-string v2, ".jpg"

    nop

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    if-nez v2, :cond_a

    nop

    const-string v2, ".jpeg"

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    const-string v2, ".ttf"

    nop

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    const-string v2, ".otf"

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    nop

    nop

    array-length v6, v2

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    aget-object v2, v2, v6

    nop

    const-string v6, "\\."

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    aget-object v6, v6, v5

    nop

    nop

    nop

    new-instance v7, Ljava/io/File;

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-direct {v7, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v8, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    move-object v4, v3

    nop

    nop

    nop

    :goto_9
    const/4 v5, 0x0

    nop

    nop

    nop

    if-eqz v2, :cond_17

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    const-string v7, "__MACOSX"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_4

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    const-string v8, "manifest.json"

    nop

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_5

    nop

    nop

    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_13

    nop

    nop

    nop

    :cond_5
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    const-string v7, ".json"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_6

    nop

    invoke-static {p1}, Lurl;->a(Ljava/io/InputStream;)Lurt;

    move-result-object v2

    nop

    nop

    nop

    new-instance v4, Lurp;

    nop

    nop

    nop

    invoke-direct {v4, v2}, Lurp;-><init>(Lurt;)V

    sget-object v2, Lfew;->a:[Ljava/lang/String;

    nop

    nop

    nop

    new-instance v2, Lfex;

    nop

    nop

    invoke-direct {v2, v4}, Lfex;-><init>(Luri;)V

    invoke-static {v2, v3, v5}, Lezg;->k(Lfew;Ljava/lang/String;Z)Lezs;

    move-result-object v2

    nop

    iget-object v4, v2, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    :cond_6
    const-string v2, ".png"

    nop

    nop

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const-string v7, "/"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v10, 0x1000

    nop

    :try_start_4
    new-array v10, v10, [B

    nop

    nop

    :goto_c
    invoke-virtual {p1, v10}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v11

    nop

    nop

    if-eq v11, v8, :cond_7

    nop

    nop

    invoke-virtual {v9, v10, v5, v11}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_c

    nop

    nop

    :cond_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-gtz v7, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_10

    nop

    :catchall_1
    move-exception v8

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {v5, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v5

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v5

    nop

    nop

    :try_start_7
    const-string v8, "Unable to save font "

    nop

    nop

    nop

    nop

    const-string v9, " to the temporary file: "

    nop

    nop

    nop

    nop

    const-string v10, ". "

    nop

    nop

    nop

    invoke-static {v2, v6, v8, v9, v10}, La;->bl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-static {v2, v5}, Lffb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    invoke-static {v7}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete temp font file "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    nop

    nop

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    invoke-static {v5}, Lffb;->a(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    nop

    nop

    :cond_a
    :goto_12
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    array-length v5, v2

    nop

    nop

    nop

    nop

    add-int/2addr v5, v8

    nop

    aget-object v2, v2, v5

    nop

    nop

    nop

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    nop

    nop
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_b
    :try_start_8
    new-instance v3, Lezs;

    nop

    nop

    nop

    nop

    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    const-string p2, "Unable to parse composition"

    nop

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lezs;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_21

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :cond_c
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_f

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Ljava/lang/String;

    nop

    move-object v7, v4

    nop

    check-cast v7, Lezb;

    nop

    nop

    iget-object v7, v7, Lezb;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    nop

    nop

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    nop

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_e

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Lezn;

    nop

    nop

    nop

    iget-object v9, v8, Lezn;->d:Ljava/lang/String;

    nop

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    if-eqz v9, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    :cond_e
    move-object v8, v3

    nop

    nop

    nop

    :goto_17
    if-eqz v8, :cond_c

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Landroid/graphics/Bitmap;

    nop

    nop

    iget v6, v8, Lezn;->a:I

    nop

    nop

    iget v7, v8, Lezn;->b:I

    nop

    nop

    nop

    nop

    invoke-static {v2, v6, v7}, Lffi;->c(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    nop

    iput-object v2, v8, Lezn;->e:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_16

    nop

    :cond_f
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :cond_10
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_13

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    move-object v6, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lezb;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lezb;->c:Ljava/util/Map;

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    nop

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    move v7, v5

    nop

    :cond_11
    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_12

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    check-cast v8, Lfbt;

    nop

    iget-object v9, v8, Lfbt;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_11

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Landroid/graphics/Typeface;

    nop

    iput-object v7, v8, Lfbt;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move v7, v2

    nop

    nop

    goto :goto_19

    nop

    nop

    :cond_12
    if-nez v7, :cond_10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsed font for "

    nop

    nop

    nop

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " however it was not found in the animation."

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lffb;->a(Ljava/lang/String;)V

    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :cond_13
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    nop

    nop

    if-eqz p0, :cond_18

    nop

    nop

    nop

    nop

    move-object p0, v4

    nop

    check-cast p0, Lezb;

    nop

    iget-object p0, p0, Lezb;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_14
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_18

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lezn;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_15

    nop

    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_15
    iget-object v1, v0, Lezn;->d:Ljava/lang/String;

    nop

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    nop

    nop

    nop

    const/16 v7, 0xa0

    nop

    nop

    nop

    nop

    nop

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    nop

    nop

    nop

    nop

    nop

    const-string v7, "data:"

    nop

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    nop

    if-eqz v7, :cond_14

    nop

    nop

    nop

    nop

    nop

    const-string v7, "base64,"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_16

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_7

    nop

    :goto_1c
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v7, 0x2c

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    nop

    add-int/2addr v7, v2

    nop

    nop

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    array-length v7, v1

    nop

    nop

    nop

    nop

    invoke-static {v1, v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    iput-object v1, v0, Lezn;->e:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    goto/16 :goto_1a

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    const-string p2, "data URL did not have correct base64 format."

    nop

    invoke-static {p2, p0}, Lffb;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :cond_18
    move-object p0, v4

    nop

    nop

    nop

    nop

    check-cast p0, Lezb;

    nop

    iget-object p0, p0, Lezb;->b:Ljava/util/Map;

    nop

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1a

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lezn;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lezn;->e:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_19

    nop

    nop

    nop

    new-instance v3, Lezs;

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    check-cast p2, Lezn;

    nop

    nop

    iget-object p2, p2, Lezn;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v0, "There is no image for "

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lezs;-><init>(Ljava/lang/Throwable;)V

    goto :goto_21

    nop

    nop

    :cond_1a
    if-eqz p2, :cond_1b

    nop

    nop

    nop

    nop

    sget-object p0, Lfbx;->a:Lfbx;

    nop

    nop

    move-object v0, v4

    nop

    nop

    nop

    nop

    check-cast v0, Lezb;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, v0}, Lfbx;->a(Ljava/lang/String;Lezb;)V

    :cond_1b
    new-instance v3, Lezs;

    nop

    invoke-direct {v3, v4}, Lezs;-><init>(Ljava/lang/Object;)V

    goto :goto_21

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    new-instance v3, Lezs;

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0}, Lezs;-><init>(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_21
    goto/32 :goto_0

    nop

    nop

    :goto_22
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_11

    nop

    :catchall_3
    move-exception v5

    nop

    nop

    nop

    nop

    nop

    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezu;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {p2, v0}, Lezg;->l(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lezu;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1d

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, p1, p2, v1}, Leze;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    const/4 v1, 0x0

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

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v1, 0x17

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

    :goto_b
    new-instance v0, Leze;

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

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public static g(Landroid/content/Context;ILjava/lang/String;)Lezu;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    new-instance v1, Lezd;

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

    :goto_4
    invoke-static {p2, v1}, Lezg;->l(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lezu;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-direct {v1, v0, p0, p1, p2}, Lezd;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezu;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lezc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    new-instance v0, Lezc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2, v0}, Lezg;->l(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lezu;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static i(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const-string v1, "rawRes"

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

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    const-string p0, "_night_"

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    const v0, 0x9

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

    :goto_13
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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    if-ne p0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_19
    and-int/lit8 p0, p0, 0x30

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    const-string p0, "_day_"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public static j()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

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

    :goto_2
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2}, Lezv;->a()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lezg;->b:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto :goto_a

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_f
    check-cast v2, Lezv;

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

    :goto_10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    const v1, 0xb

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    const v0, 0x6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop
.end method

.method private static k(Lfew;Ljava/lang/String;Z)Lezs;
    .locals 27

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_12

    nop

    nop

    :catch_0
    move-exception v0

    nop

    :try_start_0
    new-instance v2, Lezs;

    nop

    nop

    nop

    invoke-direct {v2, v0}, Lezs;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {p0 .. p0}, Lffi;->e(Ljava/io/Closeable;)V

    :goto_7
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x10

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
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    goto/16 :goto_32

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_d
    move-object/from16 v1, p0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    goto :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static/range {p0 .. p0}, Lffi;->e(Ljava/io/Closeable;)V

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v2, Lfeh;->a:Liof;

    nop

    nop

    nop

    invoke-static {}, Lffi;->a()F

    move-result v2

    nop

    nop

    nop

    new-instance v3, Lxm;

    nop

    nop

    nop

    invoke-direct {v3}, Lxm;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    nop

    nop

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    nop

    nop

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lyp;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Lyp;-><init>()V

    new-instance v10, Lezb;

    nop

    nop

    invoke-direct {v10}, Lezb;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lfew;->h()V

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    move v13, v11

    nop

    nop

    nop

    nop

    move v14, v13

    nop

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v16, 0x0

    nop

    nop

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v17

    nop

    nop

    nop

    if-eqz v17, :cond_2b

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Lfeh;->a:Liof;

    nop

    nop

    invoke-virtual {v1, v12}, Lfew;->q(Liof;)I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    packed-switch v12, :pswitch_data_0

    move-object/from16 v21, v7

    nop

    nop

    move-object/from16 v26, v8

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    nop

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->l()V

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lfew;->g()V

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v12

    nop

    nop

    if-eqz v12, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->h()V

    :goto_18
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v12

    nop

    nop

    if-eqz v12, :cond_6

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Lfeh;->d:Liof;

    nop

    nop

    invoke-virtual {v1, v12}, Lfew;->q(Liof;)I

    move-result v12

    nop

    if-eqz v12, :cond_5

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    if-eq v12, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    if-eq v12, v0, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->l()V

    invoke-virtual/range {p0 .. p0}, Lfew;->m()V

    goto :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lfew;->a()D

    goto :goto_18

    nop

    nop

    nop

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lfew;->a()D

    goto :goto_18

    nop

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    goto :goto_18

    nop

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lfew;->j()V

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v12}, Landroidx/wear/ambient/AmbientMode$AmbientCallback;-><init>([B)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    nop

    nop

    nop

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lfew;->i()V

    move-object/from16 v21, v7

    nop

    nop

    nop

    move-object/from16 v26, v8

    nop

    nop

    goto/16 :goto_1e

    nop

    nop

    nop

    :pswitch_1
    const/4 v12, 0x0

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->g()V

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_12

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lfew;->h()V

    const-wide/16 v19, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v24, v12

    nop

    nop

    nop

    move-object/from16 v25, v24

    nop

    move-wide/from16 v22, v19

    nop

    nop

    nop

    nop

    nop

    const/16 v21, 0x0

    nop

    nop

    nop

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v19

    nop

    nop

    if-eqz v19, :cond_11

    nop

    nop

    nop

    sget-object v12, Lfdy;->a:Liof;

    nop

    nop

    invoke-virtual {v1, v12}, Lfew;->q(Liof;)I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_10

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v26, v8

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    if-eq v12, v8, :cond_f

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq v12, v8, :cond_e

    nop

    nop

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    if-eq v12, v8, :cond_d

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x4

    nop

    if-eq v12, v8, :cond_c

    nop

    nop

    nop

    nop

    const/4 v8, 0x5

    nop

    nop

    nop

    nop

    nop

    if-eq v12, v8, :cond_8

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->l()V

    invoke-virtual/range {p0 .. p0}, Lfew;->m()V

    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lfew;->h()V

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_b

    nop

    nop

    sget-object v8, Lfdy;->b:Liof;

    nop

    nop

    nop

    invoke-virtual {v1, v8}, Lfew;->q(Liof;)I

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_9

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->l()V

    invoke-virtual/range {p0 .. p0}, Lfew;->m()V

    goto :goto_1b

    nop

    nop

    nop

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lfew;->g()V

    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_a

    nop

    nop

    invoke-static {v1, v10}, Lfdu;->a(Lfew;Lezb;)Lfcn;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Lfcx;

    nop

    nop

    nop

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    nop

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lfew;->i()V

    goto :goto_1b

    nop

    nop

    nop

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lfew;->j()V

    goto :goto_1d

    nop

    nop

    nop

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v25

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v24

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lfew;->a()D

    move-result-wide v22

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lfew;->a()D

    :goto_1d
    move-object/from16 v8, v26

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    goto/16 :goto_1a

    nop

    :cond_10
    move-object/from16 v26, v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v21

    nop

    goto :goto_1d

    nop

    nop

    nop

    :cond_11
    move-object/from16 v26, v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->j()V

    new-instance v8, Lfbu;

    nop

    nop

    nop

    move-object/from16 v19, v8

    nop

    nop

    nop

    nop

    move-object/from16 v20, v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v19 .. v25}, Lfbu;-><init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lfbu;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v0, v8}, Lyp;->f(ILjava/lang/Object;)V

    move-object/from16 v8, v26

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/16 :goto_19

    nop

    :cond_12
    move-object/from16 v26, v8

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->i()V

    move-object/from16 v21, v7

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v19, v9

    nop

    nop

    move/from16 v23, v11

    nop

    nop

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2c

    nop

    nop

    nop

    :pswitch_2
    move-object/from16 v26, v8

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->h()V

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1a

    nop

    nop

    nop

    nop

    sget-object v0, Lfeh;->c:Liof;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lfew;->q(Liof;)I

    move-result v0

    nop

    if-eqz v0, :cond_13

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->l()V

    invoke-virtual/range {p0 .. p0}, Lfew;->m()V

    goto :goto_1f

    nop

    nop

    nop

    nop

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lfew;->g()V

    :goto_20
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_19

    nop

    nop

    nop

    nop

    sget-object v0, Lfdz;->a:Liof;

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->h()V

    const/4 v0, 0x0

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    :goto_21
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v18

    nop

    nop

    if-eqz v18, :cond_18

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    nop

    sget-object v9, Lfdz;->a:Liof;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v9}, Lfew;->q(Liof;)I

    move-result v9

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_17

    nop

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v9, v14, :cond_16

    nop

    nop

    nop

    const/4 v14, 0x2

    nop

    nop

    nop

    if-eq v9, v14, :cond_15

    nop

    nop

    const/4 v14, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq v9, v14, :cond_14

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->l()V

    invoke-virtual/range {p0 .. p0}, Lfew;->m()V

    goto :goto_22

    nop

    nop

    nop

    nop

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lfew;->a()D

    goto :goto_22

    nop

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto :goto_22

    nop

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    :cond_17
    move/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v9, v19

    nop

    nop

    nop

    move/from16 v14, v20

    nop

    nop

    nop

    nop

    goto/16 :goto_21

    nop

    :cond_18
    move-object/from16 v19, v9

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->j()V

    new-instance v9, Lfbt;

    nop

    nop

    invoke-direct {v9, v0, v8, v12}, Lfbt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lfbt;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v19

    nop

    move/from16 v14, v20

    nop

    nop

    nop

    nop

    goto/16 :goto_20

    nop

    :cond_19
    move-object/from16 v19, v9

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->i()V

    move-object/from16 v9, v19

    nop

    nop

    nop

    nop

    move/from16 v14, v20

    nop

    nop

    nop

    nop

    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    move-object/from16 v19, v9

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->j()V

    move-object/from16 v21, v7

    nop

    nop

    move/from16 v23, v11

    nop

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2c

    nop

    :pswitch_3
    move-object/from16 v26, v8

    nop

    nop

    nop

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->g()V

    :goto_23
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_24

    nop

    nop

    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lxm;

    nop

    nop

    invoke-direct {v8}, Lxm;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lfew;->h()V

    move-object/from16 v21, v7

    nop

    const/4 v7, 0x0

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    :goto_24
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v22

    nop

    nop

    if-eqz v22, :cond_22

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    nop

    nop

    nop

    sget-object v13, Lfeh;->b:Liof;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v13}, Lfew;->q(Liof;)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_21

    nop

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    if-eq v13, v11, :cond_1f

    nop

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    if-eq v13, v11, :cond_1e

    nop

    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    if-eq v13, v11, :cond_1d

    nop

    nop

    nop

    nop

    const/4 v11, 0x4

    nop

    nop

    nop

    nop

    if-eq v13, v11, :cond_1c

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x5

    nop

    nop

    if-eq v13, v11, :cond_1b

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->l()V

    invoke-virtual/range {p0 .. p0}, Lfew;->m()V

    goto :goto_25

    nop

    nop

    nop

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    :goto_25
    move/from16 v24, v12

    nop

    nop

    nop

    nop

    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    const/4 v11, 0x5

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v14

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    const/4 v11, 0x5

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->b()I

    move-result v12

    nop

    nop

    nop

    goto :goto_26

    nop

    :cond_1e
    const/4 v11, 0x5

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->b()I

    move-result v9

    nop

    nop

    nop

    :goto_26
    move/from16 v13, v22

    nop

    move/from16 v11, v23

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :cond_1f
    const/4 v11, 0x5

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->g()V

    :goto_27
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v13

    nop

    nop

    if-eqz v13, :cond_20

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v10}, Lfeg;->a(Lfew;Lezb;)Lfdf;

    move-result-object v13

    nop

    nop

    nop

    nop

    move/from16 v24, v12

    nop

    iget-wide v11, v13, Lfdf;->d:J

    nop

    invoke-virtual {v8, v11, v12, v13}, Lxm;->g(JLjava/lang/Object;)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v12, v24

    nop

    const/4 v11, 0x5

    nop

    nop

    goto :goto_27

    nop

    nop

    :cond_20
    move/from16 v24, v12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->i()V

    goto :goto_28

    nop

    nop

    nop

    nop

    :cond_21
    move/from16 v23, v11

    nop

    move/from16 v24, v12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    :goto_28
    move/from16 v13, v22

    nop

    nop

    nop

    move/from16 v11, v23

    nop

    nop

    nop

    move/from16 v12, v24

    nop

    nop

    nop

    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_22
    move/from16 v23, v11

    nop

    nop

    nop

    nop

    move/from16 v24, v12

    nop

    nop

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->j()V

    if-eqz v14, :cond_23

    nop

    nop

    new-instance v0, Lezn;

    nop

    nop

    nop

    nop

    move/from16 v12, v24

    nop

    nop

    invoke-direct {v0, v9, v12, v7, v14}, Lezn;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lezn;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    nop

    nop

    nop

    nop

    :cond_23
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_29
    move-object/from16 v7, v21

    nop

    nop

    nop

    nop

    move/from16 v13, v22

    nop

    nop

    move/from16 v11, v23

    nop

    nop

    nop

    goto/16 :goto_23

    nop

    nop

    nop

    :cond_24
    move-object/from16 v21, v7

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    move/from16 v22, v13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->i()V

    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    move-object/from16 v21, v7

    nop

    nop

    nop

    nop

    move-object/from16 v26, v8

    nop

    nop

    nop

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    nop

    move/from16 v22, v13

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->g()V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :cond_25
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lfew;->n()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_27

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v10}, Lfeg;->a(Lfew;Lezb;)Lfdf;

    move-result-object v7

    nop

    nop

    iget v8, v7, Lfdf;->t:I

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_26

    nop

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    :cond_26
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v11, v7, Lfdf;->d:J

    nop

    invoke-virtual {v3, v11, v12, v7}, Lxm;->g(JLjava/lang/Object;)V

    const/4 v7, 0x4

    nop

    if-le v0, v7, :cond_25

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You have "

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    nop

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-static {v7}, Lffb;->a(Ljava/lang/String;)V

    goto :goto_2a

    nop

    nop

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lfew;->i()V

    goto/16 :goto_2c

    nop

    nop

    :pswitch_5
    move-object/from16 v21, v7

    nop

    nop

    nop

    move-object/from16 v26, v8

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    move/from16 v22, v13

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->f()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    const-string v7, "\\."

    nop

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    aget-object v8, v0, v7

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    aget-object v8, v0, v8

    nop

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    nop

    nop

    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    nop

    aget-object v0, v0, v9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop

    const/4 v9, 0x4

    nop

    nop

    nop

    if-ge v7, v9, :cond_28

    nop

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    nop

    :cond_28
    if-gt v7, v9, :cond_2a

    nop

    nop

    if-lt v8, v9, :cond_29

    nop

    nop

    nop

    nop

    nop

    if-gt v8, v9, :cond_2a

    nop

    if-gez v0, :cond_2a

    nop

    nop

    nop

    :cond_29
    :goto_2b
    const-string v0, "Lottie only supports bodymovin >= 4.4.0"

    nop

    nop

    invoke-virtual {v10, v0}, Lezb;->d(Ljava/lang/String;)V

    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    move-object/from16 v21, v7

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v26, v8

    nop

    nop

    nop

    nop

    move-object/from16 v19, v9

    nop

    move/from16 v23, v11

    nop

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->a()D

    move-result-wide v7

    nop

    nop

    nop

    double-to-float v14, v7

    nop

    nop

    nop

    nop

    move-object/from16 v0, p1

    nop

    move-object/from16 v9, v19

    nop

    nop

    goto/16 :goto_2d

    nop

    nop

    nop

    :pswitch_7
    move-object/from16 v21, v7

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v26, v8

    nop

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->a()D

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    double-to-float v0, v7

    nop

    nop

    nop

    nop

    nop

    const v7, -0x43dc28f6    # -0.01f

    nop

    nop

    nop

    add-float v13, v0, v7

    nop

    nop

    nop

    move-object/from16 v0, p1

    nop

    nop

    move-object/from16 v9, v19

    nop

    nop

    nop

    nop

    move/from16 v14, v20

    nop

    nop

    nop

    move-object/from16 v7, v21

    nop

    nop

    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    move-object/from16 v21, v7

    nop

    nop

    move-object/from16 v26, v8

    nop

    nop

    nop

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->a()D

    move-result-wide v7

    nop

    nop

    double-to-float v11, v7

    nop

    nop

    nop

    nop

    move-object/from16 v0, p1

    nop

    nop

    move-object/from16 v9, v19

    nop

    nop

    nop

    nop

    nop

    move/from16 v14, v20

    nop

    nop

    move-object/from16 v7, v21

    nop

    nop

    move/from16 v13, v22

    nop

    nop

    nop

    nop

    nop

    goto :goto_2f

    nop

    nop

    :pswitch_9
    move-object/from16 v21, v7

    nop

    nop

    nop

    nop

    move-object/from16 v26, v8

    nop

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->b()I

    move-result v16

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    move-object/from16 v21, v7

    nop

    nop

    move-object/from16 v26, v8

    nop

    nop

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    nop

    nop

    nop

    move/from16 v22, v13

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    invoke-virtual/range {p0 .. p0}, Lfew;->b()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    :goto_2c
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    move-object/from16 v9, v19

    nop

    nop

    move/from16 v14, v20

    nop

    :goto_2d
    move-object/from16 v7, v21

    nop

    move/from16 v13, v22

    nop

    nop

    nop

    :goto_2e
    move/from16 v11, v23

    nop

    nop

    nop

    :goto_2f
    move-object/from16 v8, v26

    nop

    nop

    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual/range {p0 .. p0}, Lfew;->m()V

    goto :goto_2c

    nop

    :cond_2b
    move-object/from16 v21, v7

    nop

    move-object/from16 v19, v9

    nop

    nop

    nop

    move/from16 v23, v11

    nop

    move/from16 v22, v13

    nop

    nop

    nop

    move/from16 v20, v14

    nop

    nop

    nop

    nop

    nop

    int-to-float v0, v15

    nop

    nop

    nop

    mul-float/2addr v0, v2

    nop

    move/from16 v12, v16

    nop

    nop

    int-to-float v7, v12

    nop

    nop

    mul-float/2addr v7, v2

    nop

    nop

    nop

    nop

    new-instance v2, Landroid/graphics/Rect;

    nop

    nop

    nop

    float-to-int v7, v7

    nop

    nop

    nop

    nop

    nop

    float-to-int v0, v0

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v2, v8, v8, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v10, Lezb;->g:Landroid/graphics/Rect;

    nop

    nop

    move/from16 v11, v23

    nop

    nop

    nop

    iput v11, v10, Lezb;->h:F

    nop

    nop

    move/from16 v13, v22

    nop

    nop

    nop

    iput v13, v10, Lezb;->i:F

    nop

    move/from16 v14, v20

    nop

    nop

    nop

    nop

    iput v14, v10, Lezb;->j:F

    nop

    nop

    nop

    iput-object v4, v10, Lezb;->f:Ljava/util/List;

    nop

    nop

    iput-object v3, v10, Lezb;->e:Lxm;

    nop

    nop

    iput-object v5, v10, Lezb;->a:Ljava/util/Map;

    nop

    nop

    nop

    iput-object v6, v10, Lezb;->b:Ljava/util/Map;

    nop

    nop

    nop

    move-object/from16 v0, v19

    nop

    nop

    nop

    nop

    iput-object v0, v10, Lezb;->d:Lyp;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v0, v21

    nop

    nop

    nop

    nop

    iput-object v0, v10, Lezb;->c:Ljava/util/Map;

    nop

    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2c

    nop

    nop

    nop

    sget-object v2, Lfbx;->a:Lfbx;

    nop

    nop

    nop

    invoke-virtual {v2, v0, v10}, Lfbx;->a(Ljava/lang/String;Lezb;)V

    :cond_2c
    new-instance v0, Lezs;

    nop

    nop

    nop

    invoke-direct {v0, v10}, Lezs;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object v0, v2

    nop

    nop

    :goto_32
    goto/32 :goto_8

    nop

    nop

    :goto_33
    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_34
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private static l(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lezu;
    .locals 4

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lezg;->a:Ljava/util/Map;

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

    :goto_1
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v2}, Lezu;->e(Lezo;)V

    goto/32 :goto_b

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p1, Lezg;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Lezf;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Lezu;->d(Lezo;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Lezu;

    nop

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

    :goto_e
    invoke-direct {v2, p0, p1, v1}, Lezf;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq p0, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lezu;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_37

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
    const v1, 0x17

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

    nop

    :goto_14
    sget-object v0, Lfbx;->a:Lfbx;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :goto_16
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, p1}, Lezu;-><init>(Ljava/util/concurrent/Callable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_2e

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p1, v0, v1}, Lesh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Lezf;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_21
    const/4 v1, 0x5

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    :goto_24
    invoke-direct {v2, p0, p1, v3}, Lezf;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Lezu;-><init>(Ljava/util/concurrent/Callable;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Lezg;->j()V

    :goto_2b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x7

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Lezb;

    nop

    nop

    :goto_2e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v0, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_30
    iget-object v0, v0, Lfbx;->b:Lxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p0, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_32
    new-instance p1, Lesh;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_33
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_6

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_35
    check-cast p0, Lezu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_36
    return-object v0

    nop

    nop

    :goto_37
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p0}, Lxo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_39
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop
.end method

.method private static m(Luri;)Ljava/lang/Boolean;
    .locals 6

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :catch_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    :try_start_0
    new-instance v1, Lurn;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Lurn;-><init>(Luri;)V

    new-instance p0, Lurp;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lurp;-><init>(Lurt;)V

    sget-object v1, Lezg;->c:[B

    nop

    array-length v2, v1

    nop

    nop

    move v2, v0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    if-ge v2, v3, :cond_2

    nop

    nop

    nop

    aget-byte v3, v1, v2

    nop

    nop

    nop

    nop

    const-wide/16 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v4, v5}, Lurp;->l(J)Z

    move-result v4

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lurp;->b:Lurh;

    nop

    invoke-virtual {v4}, Lurh;->b()B

    move-result v4

    nop

    nop

    nop

    nop

    if-eq v4, v3, :cond_0

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    return-object p0

    nop

    :cond_0
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    nop

    nop

    :cond_2
    invoke-interface {p0}, Luri;->close()V

    const/4 p0, 0x1

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_0

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    sget p0, Lffb;->a:I

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

    :goto_10
    return-object p0

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_3

    nop

    nop

    nop
.end method
