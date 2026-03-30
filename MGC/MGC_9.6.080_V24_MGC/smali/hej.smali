.class public final Lhej;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ltxm;

.field public final c:Lowu;

.field public d:Z

.field public final e:Lluq;

.field private final f:Landroid/content/Context;

.field private g:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ltxm;Lluq;Lowu;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lhej;->e:Lluq;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-boolean v0, p0, Lhej;->d:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lhej;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhej;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lhej;->b:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Lhej;->c:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 6

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    const-string v0, "Failed to find configured root that contains "

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    const-string v1, "Failed to resolve canonical path for "

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_2
    move-exception p1

    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    monitor-enter p0

    nop

    :try_start_3
    iget-object v0, p0, Lhej;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/io/File;

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v2, "docs/"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lhej;->g:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhej;->g:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v0, "Unable to create directory for sharing frame"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    :cond_3
    :goto_f
    iget-object v0, p0, Lhej;->g:Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    nop

    const/4 v1, 0x0

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    move v2, v1

    nop

    :goto_10
    array-length v3, v0

    nop

    nop

    if-ge v2, v3, :cond_4

    nop

    nop

    nop

    nop

    aget-object v3, v0, v2

    nop

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    new-instance v0, Ljava/io/File;

    nop

    nop

    iget-object v2, p0, Lhej;->g:Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    const-string v4, ".jpeg"

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x64

    nop

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object p1, p0, Lhej;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    const-string v3, ".fileprovider"

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {p1, v2, v1}, Ldtl;->b(Landroid/content/Context;Ljava/lang/String;I)Lezz;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, p1, Lezz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    :cond_5
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/util/Map$Entry;

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/io/File;

    nop

    nop

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v4}, Lezz;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/io/File;

    nop

    nop

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    if-le v4, v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    move-object v2, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    :cond_7
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/io/File;

    nop

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v3, "/"

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    nop

    if-eqz v3, :cond_8

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_12

    nop

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "/"

    nop

    nop

    nop

    invoke-static {v0, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    new-instance v1, Landroid/net/Uri$Builder;

    nop

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lezz;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhej;->g:Ljava/io/File;

    nop

    nop

    if-eqz v0, :cond_0

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lhej;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    const-string v2, "docs/"

    nop

    nop

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lhej;->g:Ljava/io/File;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    iget-object v0, p0, Lhej;->g:Ljava/io/File;

    nop

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1
    array-length v2, v0

    nop

    nop

    nop

    nop

    if-ge v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    aget-object v2, v0, v1

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v0, 0x15

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

    :goto_4
    rem-int v0, v0, v1

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
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    goto :goto_1

    nop

    nop

    nop

    :cond_2
    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v1, v1, 0x1

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop
.end method

.method public final declared-synchronized c()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Lhej;->d:Z

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

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

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    :goto_4
    monitor-enter p0

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
.end method
