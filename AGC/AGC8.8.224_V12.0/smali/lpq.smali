.class public final Llpq;
.super Ljava/lang/Object;


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llpq;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Llpq;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llpr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p2, Llpr;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Llpr;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Llol;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Llpr;->a:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Llpq;->a:Ljava/lang/String;

    iget p1, p2, Llpr;->c:I

    invoke-static {p1}, Lnsy;->m(I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput p1, p0, Llpq;->e:I

    iget-boolean p1, p2, Llpr;->f:Z

    iput-boolean p1, p0, Llpq;->b:Z

    iget-boolean p1, p2, Llpr;->d:Z

    iput-boolean p1, p0, Llpq;->c:Z

    iget-boolean p1, p2, Llpr;->e:Z

    iput-boolean p1, p0, Llpq;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 14

    sget-object v0, Llpq;->g:Ljava/util/Map;

    if-nez v0, :cond_8

    sget-object v1, Llpq;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Llpq;->g:Ljava/util/Map;

    if-nez v0, :cond_7

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "phenotype"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v2, v5

    const-string v7, "_package_metadata.binarypb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v7, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phenotype/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v8, Llpq;

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v9

    sget-object v10, Llpr;->g:Llpr;

    invoke-static {v7}, Lnvy;->I(Ljava/io/InputStream;)Lnvy;

    move-result-object v11

    invoke-virtual {v10}, Lnws;->P()Lnws;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v12, Lnyh;->a:Lnyh;

    invoke-virtual {v12, v10}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v12

    invoke-static {v11}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v11

    invoke-interface {v12, v10, v11, v9}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v12, v10}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_4
    .catch Lnxd; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lnyz; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v10}, Lnws;->ae(Lnws;)V

    check-cast v10, Llpr;

    invoke-direct {v8, p0, v10}, Llpq;-><init>(Landroid/content/Context;Llpr;)V

    iget-object v9, v8, Llpq;->a:Ljava/lang/String;

    invoke-virtual {v0, v9, v8}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_5

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Lnxd; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    instance-of v9, v9, Lnxd;

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Lnxd;

    throw v8

    :cond_1
    throw v8

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    instance-of v9, v9, Lnxd;

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Lnxd;

    throw v8

    :cond_2
    new-instance v9, Lnxd;

    invoke-direct {v9, v8}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v9

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Lnyz;->a()Lnxd;

    move-result-object v8

    throw v8

    :catch_3
    move-exception v8

    iget-boolean v9, v8, Lnxd;->a:Z

    if-eqz v9, :cond_3

    new-instance v9, Lnxd;

    invoke-direct {v9, v8}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object v8, v9

    :cond_3
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v8

    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_9
    const-class v9, Ljava/lang/Throwable;

    const-string v10, "addSuppressed"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Ljava/lang/Throwable;

    aput-object v13, v12, v4

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v7, v10, v4

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catch_4
    move-exception v7

    :cond_4
    :goto_1
    :try_start_a
    throw v8
    :try_end_a
    .catch Lnxd; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catch_5
    move-exception v7

    :try_start_b
    const-string v8, "PackageInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read Phenotype PackageMetadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_6
    move-exception p0

    :try_start_c
    const-string v2, "PackageInfo"

    const-string v3, "Unable to read Phenotype PackageMetadata from assets."

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object p0

    sput-object p0, Llpq;->g:Ljava/util/Map;

    move-object v0, p0

    goto :goto_3

    :cond_7
    :goto_3
    monitor-exit v1

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw p0

    :cond_8
    :goto_4
    return-object v0
.end method
