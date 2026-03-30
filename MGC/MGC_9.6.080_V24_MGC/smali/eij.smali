.class public final Leij;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PG"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lehy;

.field private final c:Z

.field private d:Z

.field private final e:Leio;

.field private f:Z

.field private final g:Lscn;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lscn;Lehy;Z)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    new-instance p3, Leio;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-direct {v5, p3}, Leih;-><init>(Lscn;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    move-object v2, p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

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

    :goto_b
    iput-boolean p5, p0, Leij;->c:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Leij;->g:Lscn;

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

    :goto_d
    add-int v0, v0, v1

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

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_f
    goto/32 :goto_18

    nop

    nop

    :goto_10
    iput-object p3, p0, Leij;->e:Leio;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v5, Leih;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p3, p2, p1}, Leio;-><init>(Ljava/lang/String;Ljava/io/File;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Leij;->a:Landroid/content/Context;

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

    :goto_17
    iput-object p4, p0, Leij;->b:Lehy;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

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

    :goto_19
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_1d
    iget v4, p4, Lehy;->b:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    move-object v0, p0

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
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)Leig;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_3

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

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const/16 v2, 0xf9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Leig;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    new-array v0, v0, [Ljava/lang/Object;

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

    :goto_d
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const/4 v0, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    aput-object p1, v0, v2

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

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    iget-object p0, p0, Leij;->g:Lscn;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    aput-object p0, v0, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lehx;
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/16 :goto_5

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    :try_start_0
    instance-of v3, v1, Leii;

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Leii;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Leii;->a:Ljava/lang/Throwable;

    nop

    iget v1, v1, Leii;->b:I

    nop

    add-int/lit8 v4, v1, -0x1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    if-eq v4, v2, :cond_1

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    if-eq v4, v1, :cond_1

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    if-eq v4, v1, :cond_1

    nop

    nop

    nop

    instance-of v1, v3, Landroid/database/sqlite/SQLiteException;

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    move-object v1, v3

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    throw v3

    nop

    nop

    :cond_1
    throw v3

    nop

    :cond_2
    const/4 v0, 0x0

    nop

    nop

    throw v0

    nop

    :cond_3
    :goto_4
    instance-of v2, v1, Landroid/database/sqlite/SQLiteException;

    nop

    nop

    if-eqz v2, :cond_5

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-boolean v2, p0, Leij;->c:Z

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    iget-object v1, p0, Leij;->a:Landroid/content/Context;

    nop

    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Leij;->33f5b80483094659737b73d90f80a8a4m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Leii; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    :try_start_2
    iget-boolean v1, p0, Leij;->d:Z

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Leij;->close()V

    invoke-virtual {p0}, Leij;->b()Lehx;

    move-result-object v0

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {p0, v0}, Leij;->a(Landroid/database/sqlite/SQLiteDatabase;)Leig;

    move-result-object v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Leio;->b()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Leij;->e:Leio;

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
    iget-object p0, p0, Leij;->e:Leio;

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

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_3
    iget-object v0, v0, Leii;->a:Ljava/lang/Throwable;

    nop

    nop

    nop

    throw v0

    nop

    nop

    :cond_5
    throw v1

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_4
    iget-object v0, p0, Leij;->e:Leio;

    nop

    nop

    nop

    iget-boolean v1, p0, Leij;->f:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    if-nez v1, :cond_6

    nop

    invoke-virtual {p0}, Leij;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    move v1, v2

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    move v1, v3

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Leio;->a(Z)V

    iput-boolean v3, p0, Leij;->d:Z

    nop

    invoke-virtual {p0}, Leij;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    iget-boolean v1, p0, Leij;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    if-nez v1, :cond_7

    nop

    iget-object v1, p0, Leij;->a:Landroid/content/Context;

    nop

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    nop

    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    const-string v3, "SupportSQLite"

    nop

    nop

    nop

    nop

    const-string v4, "Invalid database parent file, not a directory: "

    nop

    nop

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    :try_start_5
    invoke-direct {p0}, Leij;->33f5b80483094659737b73d90f80a8a4m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_15

    nop

    nop

    :goto_f
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Leio;->b()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x10

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

    :goto_14
    const-wide/16 v3, 0x1f4

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    :try_start_7
    invoke-direct {p0}, Leij;->33f5b80483094659737b73d90f80a8a4m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    iget-object p0, p0, Leij;->e:Leio;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

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
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Leio;->b()V

    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    :try_start_0
    iget-object v0, p0, Leij;->e:Leio;

    nop

    nop

    nop

    sget-object v1, Leio;->a:Ljava/util/Map;

    nop

    nop

    nop

    iget-boolean v1, v0, Leio;->b:Z

    nop

    const/4 v1, 0x0

    nop

    invoke-virtual {v0, v1}, Leio;->a(Z)V

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    iget-object v0, p0, Leij;->g:Lscn;

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    iput-object v2, v0, Lscn;->a:Ljava/lang/Object;

    nop

    iput-boolean v1, p0, Leij;->f:Z

    nop

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

    :goto_a
    const v0, 0x1e

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

    nop

    :goto_b
    invoke-virtual {p0}, Leio;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Leij;->e:Leio;

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

    :goto_d
    throw v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Lehy;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, v1, p0}, Leii;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Leij;->b:Lehy;

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

    :goto_5
    const/4 v1, 0x1

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

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v1, 0x14

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

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

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Leij;->d:Z

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

    :goto_e
    if-ne v0, v2, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    :goto_15
    :try_start_0
    iget-object v0, p0, Leij;->b:Lehy;

    nop

    nop

    invoke-virtual {p0, p1}, Leij;->a(Landroid/database/sqlite/SQLiteDatabase;)Leig;

    invoke-virtual {v0}, Lehy;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    new-instance p1, Leii;

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
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    new-instance p1, Leii;

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

    :goto_1
    invoke-direct {p1, v0, p0}, Leii;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Leij;->b:Lehy;

    nop

    invoke-virtual {p0, p1}, Leij;->a(Landroid/database/sqlite/SQLiteDatabase;)Leig;

    move-result-object p0

    nop

    invoke-virtual {v0, p0}, Lehy;->a(Lehx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Leij;->d:Z

    nop

    nop

    :try_start_0
    iget-object v0, p0, Leij;->b:Lehy;

    nop

    nop

    invoke-virtual {p0, p1}, Leij;->a(Landroid/database/sqlite/SQLiteDatabase;)Leig;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0, p2, p3}, Lehy;->b(Lehx;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Leii;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p1, p2, p0}, Leii;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x4

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
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

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
    return-void

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Leij;->d:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1, v0, p0}, Leii;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    :goto_8
    new-instance p1, Leii;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const/4 p1, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iput-boolean p1, p0, Leij;->f:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Leij;->b:Lehy;

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Leij;->a(Landroid/database/sqlite/SQLiteDatabase;)Leig;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lehy;->c(Lehx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p2, p0}, Leii;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    new-instance p1, Leii;

    nop

    nop

    nop

    goto/32 :goto_0

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

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

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

    nop

    :goto_6
    iput-boolean v0, p0, Leij;->d:Z

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Leij;->b:Lehy;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Leij;->a(Landroid/database/sqlite/SQLiteDatabase;)Leig;

    move-result-object p0

    nop

    invoke-virtual {v0, p0, p2, p3}, Lehy;->d(Lehx;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop
.end method
