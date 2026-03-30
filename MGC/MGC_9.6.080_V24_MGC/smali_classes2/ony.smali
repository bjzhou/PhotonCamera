.class public final Lony;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PG"


# instance fields
.field final synthetic a:Lodq;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 9

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    :try_start_0
    const-string v2, "SQLITE_MASTER"

    nop

    nop

    nop

    nop

    nop

    const-string v1, "name"

    nop

    nop

    nop

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "name=?"

    nop

    nop

    nop

    nop

    nop

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    move-object v1, p1

    nop

    nop

    nop

    nop

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    :try_start_1
    iget-object p0, p0, Lony;->a:Lodq;

    nop

    const-string v1, "Error querying for table"

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, p2, p1}, Lodi;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_11
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lodq;Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    sget-object p1, Lonx;->a:Lolx;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    const-string v1, "google_analytics_v4.db"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lony;->a:Lodq;

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

    :goto_5
    invoke-direct {p0, p2, v1, p1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

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

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1d

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

    :goto_e
    sget p1, Looa;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "SELECT * FROM "

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

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    const-string v2, " LIMIT 0"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    :goto_9
    array-length v2, p1

    nop

    if-ge v1, v2, :cond_1

    nop

    nop

    aget-object v2, p1, v1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v1, v2}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    :goto_f
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/32 :goto_d

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "google_analytics_v4.db"

    nop

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

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

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

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lony;->a:Lodq;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lodq;->e:Loeq;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Loeq;->a()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Loeq;->c(J)Z

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lodq;->e:Loeq;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    throw p0

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lony;->a:Lodq;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1, v0}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lony;->a:Lodq;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    const-wide/32 v1, 0x36ee80

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

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_d
    iget-object v0, v0, Lodq;->e:Loeq;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x13

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "Opening the database failed, dropping the table and recreating it"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lodi;->n(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    :goto_18
    invoke-virtual {v0}, Loeq;->b()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    new-instance p0, Landroid/database/sqlite/SQLiteException;

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

    :goto_1a
    iget-object v0, p0, Lony;->a:Lodq;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lodi;->d()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    :goto_1f
    const-string v1, "Failed to open freshly created database"

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

    :goto_20
    return-object v0

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

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

    :goto_21
    iget-object p0, p0, Lony;->a:Lodq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "Database open failed"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lony;->a:Lodq;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget p1, p1, Luoj;->a:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    :try_start_0
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "Invalid version number:"

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

    nop

    :goto_3
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/io/File;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Loeh;->a:Luoj;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0, p0}, Ljava/io/File;->setWritable(ZZ)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    goto/32 :goto_6

    nop

    nop

    :goto_a
    sget-object p1, Loeh;->a:Luoj;

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
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lnar;->v()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    sget-object p1, Loei;->a:Loei;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    if-lt p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0, p0}, Lodi;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    :goto_17
    sget-object v0, Lonx;->a:Lolx;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget v0, Looa;->a:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    sget-object p0, Loed;->b:Lnar;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Loeh;->a:Luoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p0, p0}, Ljava/io/File;->setWritable(ZZ)Z

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "Invalid version number"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    const-string p0, "CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;"

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "Database hits2 is missing required column: "

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3a

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x4

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_c
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_45

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_11
    throw p0

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2b

    nop

    nop

    :goto_14
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "hit_app_id"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "Database properties is missing required column: "

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p0, :cond_1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_19
    const v1, 0x1b

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_41

    nop

    nop

    :goto_1c
    throw p1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    const-string v4, "cid"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    const-string v5, "tid"

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_20
    invoke-direct {p1, p0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v5, "hit_string"

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_24
    if-lt v3, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_39

    nop

    nop

    :goto_27
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string p1, "Database properties table has extra columns"

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_5b

    nop

    nop

    :goto_2c
    if-nez p0, :cond_3

    nop

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

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, "properties"

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    :goto_2f
    invoke-direct {p0, p1, v0}, Lony;->166277962e993c138a6b1f0c9b571cc0m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_30
    aget-object v4, v1, v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p1, p0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_32
    aget-object v0, p1, v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_34
    const-string v3, "hit_url"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_d

    nop

    :goto_37
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v6, "params"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_39
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3a
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3b
    const-string p1, "Database hits2 has extra columns"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3c
    const-string v4, "hit_id"

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

    :goto_3d
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3e
    const-string v0, "ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER"

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

    :goto_3f
    const v0, 0xa

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_40
    const-string v8, "hits_count"

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_42
    if-lt v2, v0, :cond_5

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_45
    const/4 v0, 0x6

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_46
    move v3, v2

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_b

    nop

    nop

    :goto_48
    if-nez v5, :cond_6

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_49
    const-string v1, "hit_time"

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4a
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p1, v0}, Lony;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    filled-new-array {v4, v5, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4d
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4e
    new-instance p1, Landroid/database/sqlite/SQLiteException;

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

    :goto_4f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v0, Lodq;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {p0, p1, v0}, Lony;->166277962e993c138a6b1f0c9b571cc0m(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_53
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_8
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_9
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {p1, v0}, Lony;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_57
    const-string v7, "adid"

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_5a
    const-string v3, "app_uid"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v0, "hits2"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    goto/32 :goto_0

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
