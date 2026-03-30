.class final Lptb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lptj;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lptf;

.field private c:Z


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Lpth;Lptp;)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lpth;->h()Landroid/net/Uri;

    move-result-object v1

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

    :goto_2
    const-string v0, "Expected URI with authority %s, instead found %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4
    iget-object p0, p0, Lptb;->b:Lptf;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    invoke-static {p2, v0, p0, p1}, Lrrf;->B(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "AndroidQMediaFs"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_28

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_c
    invoke-static {p2}, Lpuq;->aS(Ljava/lang/String;)Z

    move-result p2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p2, Lptp;->e:Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Lpth;->h()Landroid/net/Uri;

    move-result-object p2

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

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2}, Lptp;->c()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lptf;->d:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    sget-object p1, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->iZo:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    goto :goto_22

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x13

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lptf;->c:Landroid/net/Uri;

    nop

    nop

    :goto_22
    goto/32 :goto_15

    nop

    nop

    :goto_23
    iget-object p0, p0, Lptb;->b:Lptf;

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

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    invoke-interface {p1}, Lpth;->h()Landroid/net/Uri;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p2, p0, p1}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string p0, "Uri for "

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

    :goto_29
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public constructor <init>(Lptf;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lptb;->a:Ljava/util/List;

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

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lptb;->b:Lptf;

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

    :goto_5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lptb;->c:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private a2b6fba992d55275fd63c2533d995834m(Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v2

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

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

    :goto_4
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    return v2

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_21

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "RenameTo"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Internal photo does not exist or is not a file"

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

    nop

    :goto_14
    const-string v1, "Internal photo path: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_4

    nop

    nop

    :goto_17
    const-string v2, "External camera directory path: "

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    new-array v6, v5, [Ljava/nio/file/CopyOption;

    nop

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    nop

    aput-object v7, v6, v2

    nop

    nop

    nop

    nop

    invoke-static {v3, v4, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File copied to: "

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    const-string v3, "Internal photo deleted"

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const-string v3, "Failed to delete internal photo"

    nop

    nop

    nop

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "Failed to create external camera directory"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_0

    nop

    nop

    :goto_23
    const-string v4, "Error transferring photo"

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_25
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

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

    nop

    nop

    :goto_29
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2b
    const-string v0, "External camera directory created"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_2d
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_33
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_34
    return v2

    nop

    :goto_35
    goto/32 :goto_13

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpth;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    :goto_1
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v0, 0x1e

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lptb;->c:Z

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    invoke-interface {p1}, Lpth;->i()Lptp;

    move-result-object v0

    nop

    invoke-direct {p0, p1, v0}, Lptb;->33f5b80483094659737b73d90f80a8a4m(Lpth;Lptp;)V

    new-instance v0, Lptv;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, v1, v2, v2}, Lptv;-><init>(Lpth;ZLptp;Lptl;)V

    iget-object p1, p0, Lptb;->a:Ljava/util/List;

    nop

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lpth;Lptp;Lptl;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Lptb;->c:Z

    nop

    nop

    const/4 v1, 0x1

    nop

    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    invoke-interface {p1}, Lpth;->i()Lptp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eq v0, p2, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpth;->k()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    goto :goto_a

    nop

    :cond_1
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_a
    invoke-static {v1}, Lrrf;->x(Z)V

    invoke-direct {p0, p1, p2}, Lptb;->33f5b80483094659737b73d90f80a8a4m(Lpth;Lptp;)V

    iget-object v0, p0, Lptb;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lptv;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1, v2, p2, p3}, Lptv;-><init>(Lpth;ZLptp;Lptl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1f

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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 12

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v3, v3, 0x1

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

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lptb;->c:Z

    nop

    nop

    nop

    if-nez v0, :cond_f

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    iput-boolean v0, p0, Lptb;->c:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lptb;->a:Ljava/util/List;

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :cond_0
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    if-eqz v3, :cond_8

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lptv;

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lptv;->a:Lpth;

    nop

    nop

    invoke-interface {v5}, Lpth;->i()Lptp;

    move-result-object v5

    nop

    nop

    nop

    iget-object v6, p0, Lptb;->b:Lptf;

    nop

    invoke-virtual {v5, v6}, Lptp;->b(Lptf;)Ljava/io/File;

    move-result-object v5

    nop

    nop

    nop

    nop

    iget-object v6, v3, Lptv;->a:Lpth;

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lpth;->i()Lptp;

    move-result-object v6

    nop

    nop

    nop

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    const-string v8, "%s.%s"

    nop

    nop

    iget-object v9, v6, Lptp;->c:Ljava/lang/String;

    nop

    iget-object v10, v6, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    nop

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-boolean v8, v3, Lptv;->b:Z

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lptp;->c()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    iget-object v3, v3, Lptv;->a:Lpth;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpth;->h()Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    nop

    nop

    :cond_1
    const-string v3, "AndroidQMediaFs"

    nop

    nop

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    const-string v6, "File %s uri is empty. Skipping delete in media store."

    nop

    nop

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    nop

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    nop

    const-string v3, "AndroidQMediaFs"

    nop

    nop

    nop

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    const-string v6, "Unable to delete file %s"

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    nop

    nop

    nop

    :cond_3
    iget-object v8, v3, Lptv;->c:Lptp;

    nop

    nop

    nop

    if-eqz v8, :cond_6

    nop

    nop

    nop

    nop

    nop

    if-eq v8, v6, :cond_6

    nop

    nop

    invoke-virtual {v6}, Lptp;->c()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lptp;->c()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-ne v7, v9, :cond_4

    nop

    nop

    nop

    nop

    nop

    move v7, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_4
    move v7, v4

    nop

    nop

    :goto_b
    const-string v9, "Can only rename a file within the same type of folder"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v9}, Lrrf;->y(ZLjava/lang/Object;)V

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    const-string v9, "%s.%s"

    nop

    nop

    nop

    nop

    iget-object v10, v8, Lptp;->c:Ljava/lang/String;

    nop

    nop

    iget-object v11, v8, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    const-string v9, "c2F2ZV9zdG9yYWdlX2tleQ"

    nop

    nop

    nop

    nop

    invoke-static {v9}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v9

    nop

    nop

    nop

    if-eqz v9, :cond_5

    nop

    nop

    iget-object v9, p0, Lptb;->b:Lptf;

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lptp;->b_ex(Lptf;)Ljava/io/File;

    move-result-object v9

    nop

    nop

    invoke-virtual {v6}, Lptp;->c()Z

    move-result v6

    nop

    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v9}, Lptb;->a2b6fba992d55275fd63c2533d995834m(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_5
    iget-object v9, p0, Lptb;->b:Lptf;

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lptp;->b(Lptf;)Ljava/io/File;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v6}, Lptp;->c()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v5, v3, Lptv;->a:Lpth;

    nop

    nop

    nop

    check-cast v5, Lpto;

    nop

    nop

    nop

    nop

    new-instance v6, Lptu;

    nop

    nop

    nop

    invoke-direct {v6, v9, v8}, Lptu;-><init>(Ljava/io/File;Lptp;)V

    invoke-virtual {v5, v6}, Lpto;->m(Lptg;)V

    :cond_6
    iget-object v5, v3, Lptv;->a:Lpth;

    nop

    nop

    nop

    nop

    nop

    instance-of v6, v5, Lptq;

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lpth;->h()Landroid/net/Uri;

    move-result-object v5

    nop

    nop

    nop

    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    xor-int/2addr v5, v0

    nop

    nop

    nop

    const-string v6, "Cannot close file that doesn\'t exist in storage: % operation=%s"

    nop

    nop

    nop

    nop

    iget-object v8, v3, Lptv;->a:Lpth;

    nop

    nop

    invoke-static {v5, v6, v8, v3}, Lrrf;->B(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v3, Lptv;->a:Lpth;

    nop

    invoke-interface {v5}, Lpth;->h()Landroid/net/Uri;

    move-result-object v5

    nop

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v3, Lptv;->d:Lptl;

    nop

    nop

    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    new-instance v6, Lqar;

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    invoke-direct {v6, v8}, Lqar;-><init>([B)V

    goto :goto_d

    nop

    nop

    nop

    :cond_7
    invoke-static {v6}, Lptl;->b(Lptl;)Lqar;

    move-result-object v6

    nop

    :goto_d
    iget-object v8, p0, Lptb;->b:Lptf;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v8, Lptf;->e:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v6, v8, v7}, Lqar;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lptb;->b:Lptf;

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lptf;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7, v4}, Lqar;->d(Ljava/lang/String;I)V

    invoke-virtual {v6}, Lqar;->c()Lptl;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, v3, Lptv;->d:Lptl;

    nop

    nop

    nop

    invoke-virtual {v4}, Lptl;->a()Landroid/content/ContentValues;

    move-result-object v3

    nop

    nop

    invoke-virtual {v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    nop

    if-eqz v2, :cond_9

    nop

    goto/16 :goto_16

    nop

    nop

    :cond_9
    new-instance v2, Ljava/util/HashSet;

    nop

    nop

    new-instance v3, Lpmy;

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v3, v5}, Lpmy;-><init>(I)V

    new-instance v5, Lrvl;

    nop

    nop

    nop

    nop

    invoke-direct {v5, v1, v3}, Lrvl;-><init>(Ljava/util/Collection;Lrsk;)V

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-ne v3, v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    move v3, v0

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_a
    move v3, v4

    nop

    :goto_e
    const-string v5, "Found multiple incompatible authorities %s when publishing transaction with contentproviderOps=%s"

    nop

    nop

    nop

    invoke-static {v3, v5, v2, v1}, Lrrf;->B(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p0, Lptb;->b:Lptf;

    nop

    iget-object v3, v3, Lptf;->b:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrgw;->ad(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    array-length v3, v2

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    if-ne v3, v5, :cond_b

    nop

    nop

    nop

    nop

    move v3, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_b
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v3}, Lrrf;->x(Z)V

    move v3, v4

    nop

    nop

    nop

    nop

    :goto_10
    array-length v5, v2

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v5, :cond_11

    nop

    nop

    nop

    nop

    nop

    aget-object v5, v2, v3

    nop

    iget-object v6, p0, Lptb;->a:Ljava/util/List;

    nop

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lptv;

    nop

    nop

    iget-boolean v6, v6, Lptv;->b:Z

    nop

    if-eqz v6, :cond_c

    nop

    nop

    nop

    goto :goto_12

    nop

    :cond_c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Landroid/content/ContentProviderOperation;

    nop

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->isInsert()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_e

    nop

    nop

    iget-object v5, v5, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    if-ne v5, v0, :cond_d

    nop

    nop

    nop

    move v5, v0

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_d
    move v5, v4

    nop

    nop

    :goto_11
    invoke-static {v5}, Lrrf;->x(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_12
    goto/32 :goto_0

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    new-instance v1, Ljava/io/IOException;

    nop

    const-string v2, "Error inserting MediaStore record."

    nop

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    nop

    nop

    nop

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v1, "Cannot publish a closed transaction"

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_10

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1

    nop

    :goto_15
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :cond_11
    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
