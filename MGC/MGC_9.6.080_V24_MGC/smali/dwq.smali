.class public Ldwq;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ldwy;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ldwq;-><init>(Ldwy;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ldwy;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ldwy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

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

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>([B[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static d([B[B)Z
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-byte v3, p1, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    array-length v2, p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v2, v3, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    :goto_b
    if-ge v1, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    array-length v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    array-length v2, p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    if-lt v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    aget-byte v2, p0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Ljava/lang/Object;)[J
    .locals 4

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v1, v1, 0x1

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

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    instance-of v0, p0, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    check-cast p0, [I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

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
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget v2, p0, v1

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

    nop

    :goto_10
    array-length v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, [J

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    aput-wide v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    const v0, 0xa

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    new-array v0, v0, [J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    array-length v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    instance-of v0, p0, [J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    if-lt v1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    return-object v0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public static f(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/io/FileOutputStream;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    nop

    nop

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_e

    nop

    nop

    :goto_a
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/io/File;

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

    :goto_d
    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

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

    :goto_e
    goto :goto_f

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static g(Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;ILjava/lang/Object;)V
    .locals 7

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x4

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    move-object v0, v6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    move v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-direct/range {v0 .. v5}, Lmw;-><init>(Ljava/lang/Object;ILjava/lang/Object;I[B)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xd

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

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v6, Lmw;

    nop

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

    :goto_12
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public static synthetic h(I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const-string p0, "TEMPORARILY_UNMETERED"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string p0, "NOT_REQUIRED"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    if-ne p0, v0, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p0, "UNMETERED"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    if-ne p0, v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

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

    :goto_d
    if-ne p0, v0, :cond_3

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    const-string p0, "METERED"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string p0, "CONNECTED"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    const-string p0, "NOT_ROAMING"

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

    :goto_19
    if-ne p0, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop
.end method

.method public static i(Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;Ljava/lang/String;Ljava/util/concurrent/Executor;Luaz;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    new-instance v0, Leqm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lebf;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p2, p1, p3, p0}, Leqm;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/String;Luaz;Lebf;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    new-instance p0, Lebf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    sget-object v0, Leql;->b:Leqj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-static {v0}, La;->aq(Ldqq;)Lsui;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return-void

    nop
.end method


# virtual methods
.method public a()Ldwy;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    throw p0

    nop

    nop

    nop

    nop
.end method

.method public b(Ldua;)V
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

    nop

    nop
.end method

.method public c(Ldua;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
