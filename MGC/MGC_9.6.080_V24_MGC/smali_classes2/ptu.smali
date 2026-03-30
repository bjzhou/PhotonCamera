.class public final Lptu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpth;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lptp;


# direct methods
.method public constructor <init>(Ljava/io/File;Lptp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lptu;->b:Lptp;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lptu;->a:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_7
    goto :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Unable to create or find media storage directory"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static l(Lptp;Lptf;)Lptu;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lptp;->b(Lptf;)Ljava/io/File;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    new-instance v0, Lptu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p1, p0}, Lptu;-><init>(Ljava/io/File;Lptp;)V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a()J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    iget-object v0, p0, Lptu;->a:Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_b
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop
.end method

.method public final b()Ljava/io/FileInputStream;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    new-instance v0, Ljava/io/FileInputStream;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

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

    nop
.end method

.method public final c()Ljava/io/FileOutputStream;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop
.end method

.method public final d()V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v3, "Unable to create "

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lptu;->b1051a9d8893542362ad09051775f8f6m()V

    :try_start_0
    iget-object v0, p0, Lptu;->a:Ljava/io/File;

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    iget-object v0, p0, Lptu;->a:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    new-instance v1, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    :goto_e
    const-string p0, "!"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    const v0, 0xa

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

    :goto_15
    goto/32 :goto_11

    nop

    :goto_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Z
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "Cannot write to %s, with earliestExistingParentFolder=%s()"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

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

    :goto_c
    iget-object v0, p0, Lptu;->a:Ljava/io/File;

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

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x16

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    :goto_14
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

    nop

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

    :goto_15
    iget-object v0, p0, Lptu;->a:Ljava/io/File;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1a
    goto/16 :goto_8

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_20
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

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

    nop

    :goto_23
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_13

    nop

    nop

    :goto_26
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x14

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v2, :cond_6

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()Ljava/io/FileOutputStream;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

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
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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
    const v0, 0x14

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
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_5
    throw v1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const v1, 0x4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v3, "Unable to create "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    :goto_a
    return-object v1

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, "!"

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    new-instance v1, Ljava/io/IOException;

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

    :goto_11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lptu;->b1051a9d8893542362ad09051775f8f6m()V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    nop

    nop

    iget-object v1, p0, Lptu;->a:Ljava/io/File;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    sget-object v2, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->yoUjleihahbShA:Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lptt;

    nop

    nop

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v0}, Lptt;-><init>(Ljava/io/FileDescriptor;Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final h()Landroid/net/Uri;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final i()Lptp;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lptu;->b:Lptp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final k()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p0

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

    :goto_2
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_d

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v4, 0x16c

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

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, ": "

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v4, v0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lptu;->b:Lptp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lptu;->a:Ljava/io/File;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
