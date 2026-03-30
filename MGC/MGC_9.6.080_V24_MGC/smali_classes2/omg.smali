.class public final Lomg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static a:Ljava/lang/ClassLoader;

.field private static b:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public static declared-synchronized a()Ljava/lang/ClassLoader;
    .locals 11

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v1

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v5, v2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    :try_start_1
    const-string v1, "DynamiteLoaderV2CL"

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to enumerate thread/threadgroup "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_8
    :try_start_2
    monitor-exit v3

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    throw v1

    nop

    nop

    nop

    nop

    :cond_1
    :goto_9
    monitor-enter v1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v3, Lomg;->b:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v7, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const-class v0, Lomg;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_d
    move-object v5, v2

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v3

    nop

    :try_start_5
    const-string v4, "DynamiteLoaderV2CL"

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get thread context classloader "

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    monitor-exit v1

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_11
    :try_start_6
    sput-object v2, Lomg;->a:Ljava/lang/ClassLoader;

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    :try_start_7
    new-instance v1, Lomf;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v8}, Lomf;-><init>(Ljava/lang/ThreadGroup;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_b

    nop

    nop

    :goto_13
    move-object v4, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_14
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw v1

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    move-object v1, v5

    nop

    nop

    :goto_1a
    :try_start_9
    sput-object v1, Lomg;->b:Ljava/lang/Thread;

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2d

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2f

    nop

    nop

    :goto_1f
    goto/16 :goto_10

    nop

    nop

    :catchall_1
    move-exception v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_22
    :try_start_a
    monitor-exit v1

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2

    nop

    nop

    nop

    nop

    :cond_5
    :goto_23
    sget-object v1, Lomg;->a:Ljava/lang/ClassLoader;

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2e

    nop

    :goto_25
    const v1, 0x2

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_27
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    move-object v4, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_c
    sget-object v1, Lomg;->a:Ljava/lang/ClassLoader;

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    sget-object v1, Lomg;->b:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_7

    nop

    nop

    nop

    move-object v1, v2

    nop

    nop

    nop

    nop

    goto/16 :goto_1a

    nop

    nop

    :cond_7
    const-class v3, Ljava/lang/Void;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v4

    nop

    nop

    nop

    new-array v5, v4, [Ljava/lang/ThreadGroup;

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    const/4 v6, 0x0

    nop

    move v7, v6

    nop

    nop

    nop

    nop

    :goto_2b
    if-ge v7, v4, :cond_9

    nop

    aget-object v8, v5, v7

    nop

    nop

    nop

    nop

    const-string v9, "dynamiteLoader"

    nop

    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v10

    nop

    nop

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

    if-eqz v9, :cond_8

    nop

    goto :goto_2c

    nop

    nop

    nop

    :cond_8
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    :cond_9
    move-object v8, v2

    nop

    nop

    nop

    :goto_2c
    if-nez v8, :cond_a

    nop

    nop

    new-instance v8, Ljava/lang/ThreadGroup;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "dynamiteLoader"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v1, v4}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    new-array v4, v1, [Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    :goto_2d
    if-ge v6, v1, :cond_4

    nop

    nop

    aget-object v5, v4, v6

    nop

    nop

    nop

    const-string v7, "GmsDynamite"

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_c

    nop

    nop

    :goto_30
    goto/16 :goto_5

    nop

    nop

    :catchall_2
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method
