.class public final Lqvh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static volatile a:Lrss;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;)Lrss;
    .locals 13

    goto/32 :goto_a

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-class v1, Lqvh;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v3, Ljava/io/File;

    nop

    nop

    nop

    nop

    const-string v4, "phenotype_hermetic"

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    nop

    nop

    const-string v5, "overrides.txt"

    nop

    nop

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    nop

    if-eqz v4, :cond_0

    nop

    nop

    nop

    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    const-string v4, "HermeticFileOverrides"

    nop

    nop

    const-string v5, "no data dir"

    nop

    nop

    nop

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_b

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    nop

    new-instance v5, Ljava/io/InputStreamReader;

    nop

    new-instance v6, Ljava/io/FileInputStream;

    nop

    nop

    nop

    nop

    nop

    move-object v7, v3

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/io/File;

    nop

    nop

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v5, Lyo;

    nop

    invoke-direct {v5}, Lyo;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    nop

    nop

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    if-eqz v7, :cond_5

    nop

    nop

    nop

    const-string v8, " "

    nop

    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    nop

    array-length v10, v8

    nop

    nop

    nop

    nop

    nop

    if-eq v10, v9, :cond_1

    nop

    nop

    const-string v8, "HermeticFileOverrides"

    nop

    nop

    const-string v9, "Invalid: "

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v9}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    nop

    :cond_1
    aget-object v7, v8, v2

    nop

    new-instance v9, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    aget-object v7, v8, v7

    nop

    nop

    new-instance v10, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x2

    nop

    aget-object v11, v8, v10

    nop

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    check-cast v11, Ljava/lang/String;

    nop

    nop

    if-nez v11, :cond_3

    nop

    aget-object v8, v8, v10

    nop

    nop

    nop

    new-instance v10, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    nop

    nop

    nop

    const/16 v12, 0x400

    nop

    nop

    if-lt v8, v12, :cond_2

    nop

    nop

    nop

    nop

    nop

    if-ne v11, v10, :cond_3

    nop

    nop

    nop

    nop

    :cond_2
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v5, v9}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Lyo;

    nop

    nop

    if-nez v8, :cond_4

    nop

    new-instance v8, Lyo;

    nop

    invoke-direct {v8}, Lyo;-><init>()V

    invoke-virtual {v5, v9, v8}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v8, v7, v11}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->yAeQiFscbY:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsed "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for Android package "

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lqop;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v5}, Lqop;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    :goto_d
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    sget-object v0, Lqvh;->a:Lrss;

    nop

    nop

    if-nez v0, :cond_c

    nop

    nop

    nop

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    nop

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    nop

    nop

    nop

    sget v3, Lqvj;->a:I

    nop

    nop

    nop

    nop

    const-string v3, "eng"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_8

    nop

    nop

    nop

    const-string v3, "userdebug"

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    :cond_8
    const-string v0, "dev-keys"

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    if-nez v0, :cond_a

    nop

    const-string v0, "test-keys"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_9
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/16 :goto_16

    nop

    :cond_a
    :goto_f
    invoke-static {p0}, Lpvb;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lqvh;->a:Lrss;

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

    :goto_11
    throw p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v2

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw p0

    nop

    nop

    nop
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catch_1
    move-exception p0

    nop

    :try_start_a
    new-instance v2, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    nop

    nop

    :cond_b
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_15
    :try_start_b
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_16
    sput-object p0, Lqvh;->a:Lrss;

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_c
    :goto_17
    monitor-exit v1

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
