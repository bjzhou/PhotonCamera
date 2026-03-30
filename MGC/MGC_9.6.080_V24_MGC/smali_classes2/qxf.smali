.class public final Lqxf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lsvt;

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lqxf;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lqxg;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lqxf;->c:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqxf;->b:Lsvt;

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

    :goto_4
    iput-boolean p1, p0, Lqxf;->d:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p2, Lqxg;->b:Ljava/lang/String;

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p2, Lqxg;->c:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget-boolean p1, p2, Lqxg;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iput-boolean p1, p0, Lqxf;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p2, Lqxg;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean p1, p2, Lqxg;->e:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Lsvt;->b(I)Lsvt;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1, v0}, Lqvj;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean p1, p2, Lqxg;->f:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, p2, Lqxg;->d:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lqxf;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    sget-object p1, Lsvt;->a:Lsvt;

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 12

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lqxf;->g:Ljava/util/Map;

    nop

    nop

    if-nez v0, :cond_7

    nop

    new-instance v0, Lryd;

    nop

    nop

    invoke-direct {v0}, Lryd;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    nop

    nop

    nop

    const-string v3, "phenotype"

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    array-length v3, v2

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    :goto_4
    if-ge v4, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    aget-object v5, v2, v4

    nop

    nop

    const-string v6, "_package_metadata.binarypb"

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_e

    nop

    nop

    :goto_5
    sget-object v0, Lqxf;->g:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_7
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    nop

    const-string v7, "phenotype/"

    nop

    nop

    invoke-static {v5, v7}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    nop

    nop

    nop
    :try_end_3
    .catch Ltky; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v7, Lqxf;

    nop

    nop

    sget-object v8, Ltjv;->a:Ltjv;

    nop

    nop

    sget-object v8, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Ltjv;->a:Ltjv;

    nop

    sget-object v9, Lqxg;->a:Lqxg;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ltjn;->K(Ljava/io/InputStream;)Ltjn;

    move-result-object v10

    nop

    nop

    invoke-virtual {v9}, Ltkg;->o()Ltkg;

    move-result-object v9

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v11, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v9}, Ltlz;->b(Ljava/lang/Object;)Ltmf;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-static {v10}, Ltjo;->p(Ltjn;)Ltjo;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-interface {v11, v9, v10, v8}, Ltmf;->l(Ljava/lang/Object;Ltjo;Ltjv;)V

    invoke-interface {v11, v9}, Ltmf;->g(Ljava/lang/Object;)V
    :try_end_5
    .catch Ltky; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ltmn; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v9}, Ltkg;->E(Ltkg;)V

    check-cast v9, Lqxg;

    nop

    invoke-direct {v7, p0, v9}, Lqxf;-><init>(Landroid/content/Context;Lqxg;)V

    iget-object v8, v7, Lqxf;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8, v7}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    sget-object v1, Lqxf;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v6, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1a

    nop

    nop

    :catch_0
    move-exception v7

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    instance-of v8, v8, Ltky;

    nop

    nop

    if-eqz v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    nop

    check-cast v7, Ltky;

    nop

    throw v7

    nop

    nop

    nop

    :cond_3
    throw v7

    nop

    nop

    nop

    :catch_1
    move-exception v7

    nop

    invoke-virtual {v7}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    nop

    nop

    nop

    nop

    instance-of v8, v8, Ltky;

    nop

    if-eqz v8, :cond_4

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Ltky;

    nop

    nop

    nop

    nop

    nop

    throw v7

    nop

    nop

    :cond_4
    new-instance v8, Ltky;

    nop

    nop

    invoke-direct {v8, v7}, Ltky;-><init>(Ljava/io/IOException;)V

    throw v8

    nop

    nop

    :catch_2
    move-exception v7

    nop

    nop

    nop

    invoke-virtual {v7}, Ltmn;->a()Ltky;

    move-result-object v7

    nop

    nop

    nop

    throw v7

    nop

    nop

    :catch_3
    move-exception v7

    nop

    nop

    nop

    iget-boolean v8, v7, Ltky;->a:Z

    nop

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    new-instance v8, Ltky;

    nop

    invoke-direct {v8, v7}, Ltky;-><init>(Ljava/io/IOException;)V

    move-object v7, v8

    nop

    nop

    :cond_5
    throw v7

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x7

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

    :goto_12
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :catch_4
    move-exception p0

    nop

    nop

    :try_start_8
    const-string v2, "PackageInfo"

    nop

    const-string v3, "Unable to read Phenotype PackageMetadata from assets."

    nop

    nop

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    invoke-virtual {v0}, Lryd;->b()Lryh;

    move-result-object p0

    nop

    nop

    nop

    sput-object p0, Lqxf;->g:Ljava/util/Map;

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit v1

    nop

    goto/16 :goto_a

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_8
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v6

    nop

    nop

    nop

    :try_start_a
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v7

    nop

    nop
    :try_end_a
    .catch Ltky; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_5
    move-exception v6

    nop

    :try_start_b
    const-string v7, "PackageInfo"

    nop

    nop

    nop

    nop

    const-string v8, "Unable to read Phenotype PackageMetadata for "

    nop

    nop

    nop

    nop

    invoke-static {v5, v8}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop
.end method
