.class public Llwz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lrss;

.field private final c:Lrss;

.field private final d:Lmkx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

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
    sput-object v0, Llwz;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const-string v0, "lwz"

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

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lmkx;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Llwz;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Llwz;->d:Lmkx;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Llwz;->b:Lrss;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-static {p2}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Ljava/io/File;)V
    .locals 8

    goto/32 :goto_21

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ltz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    :try_start_0
    iget-object v4, p0, Llwz;->d:Lmkx;

    nop

    nop

    invoke-virtual {v4, v3}, Lmkx;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    :goto_3
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

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    array-length v3, p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v4, Llwz;->a:Lsdb;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    aget-object v3, p1, v2

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

    :goto_a
    goto/32 :goto_1c

    nop

    nop

    :goto_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_18

    nop

    nop

    :catch_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v5, 0x101b

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/32 v6, -0x5265c00

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    add-long/2addr v6, v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v4, v5, v3}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    const-string v5, "Could not clean up %s"

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

    :goto_1a
    if-lt v2, v3, :cond_3

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    :goto_1d
    goto :goto_16

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Llwy;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

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

    :goto_21
    const v0, 0x17

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    check-cast v4, Lscz;

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

    :goto_24
    goto :goto_1e

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    const v1, 0xc

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    cmp-long v4, v4, v6

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_28
    new-instance v0, Llwy;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    new-instance v2, Ljava/io/File;

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

    :goto_6
    invoke-direct {p0, v2}, Llwz;->f875135777c17da3cef2ea6eeff5be29m(Ljava/io/File;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    nop

    const/4 v3, 0x1

    nop

    nop

    if-nez v2, :cond_1

    nop

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_9
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/io/File;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v1}, Llwz;->f875135777c17da3cef2ea6eeff5be29m(Ljava/io/File;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_10
    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2f

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    :goto_14
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    :goto_19
    const-string p1, "Could retrieve baseDirectory."

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "Could not create session directory: "

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_20
    check-cast v0, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Llwz;->b:Lrss;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_23
    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Llwz;->c:Lrss;

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

    :goto_26
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_29
    new-instance v1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2c
    sget-object v0, Lmkx;->a:Ljava/lang/Object;

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

    :goto_2d
    const-string v0, "Session directory is not a directory: "

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    throw p0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop
.end method
