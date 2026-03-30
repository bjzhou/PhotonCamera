.class public final Lefy;
.super Lehy;
.source "PG"


# annotations
.annotation runtime Ltxo;
.end annotation


# instance fields
.field private a:Leex;

.field private final c:Ljava/util/List;

.field private final d:Lefw;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Leex;Lefw;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lefy;->a:Leex;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lefy;->f:Ljava/lang/String;

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
    invoke-direct {p0, v0}, Lehy;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lefy;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const/16 v0, 0x17

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p1, Leex;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const-string p1, "86254750241babac4b8d52996a675549"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iput-object p2, p0, Lefy;->d:Lefw;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "1cbd3130fa23b59692c061c594c16cc0"

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

    :goto_9
    iput-object v0, p0, Lefy;->c:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Lehx;)V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    :goto_5
    const/4 v3, 0x0

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

    nop

    :goto_6
    iget-object p0, p0, Lefy;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const/4 v4, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aput-object p0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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
    check-cast p0, Ljava/lang/String;

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

    :goto_d
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

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

    :goto_f
    goto/32 :goto_4

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v3, 0x16b

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lehx;)V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Lefw;->b(Lehx;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ldxp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lefy;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_2c

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1, v0}, Lehx;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "Pre-packaged database has an invalid schema: "

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

    nop

    :goto_12
    iget-boolean v1, v0, Lefx;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Lefy;->d5484163cd8d335e6b17663474ff5f2bm(Lehx;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    nop

    nop

    :cond_1
    :goto_16
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lefy;->d:Lefw;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_a

    nop

    :goto_1d
    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

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

    nop

    :try_start_1
    throw p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lefy;->d:Lefw;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p1}, Lefw;->a(Lehx;)Lefx;

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

    :goto_24
    const v0, 0x19

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    if-eqz v2, :cond_4

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

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    iget-object p0, v0, Lefx;->b:Ljava/lang/String;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public final b(Lehx;II)V
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
    invoke-virtual {p0, p1, p2, p3}, Lefy;->d(Lehx;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final c(Lehx;)V
    .locals 4

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v1, v0, Lefx;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p0, ", found: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4
    invoke-interface {p1, v0}, Lehx;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_48

    nop

    nop

    :goto_8
    new-instance v0, Lehw;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Lefy;->d5484163cd8d335e6b17663474ff5f2bm(Lehx;)V

    :goto_a
    goto/32 :goto_4e

    nop

    nop

    :goto_b
    const-string v1, "PRAGMA foreign_keys = ON"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_12

    nop

    nop

    :cond_0
    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_11
    move v1, v2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_30

    nop

    nop

    :goto_15
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lefy;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, p1, v3}, Lfdn;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v3, p0, Lefy;->a:Leex;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_2

    nop

    goto/32 :goto_38

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_1a
    invoke-static {v0, p0}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_1
    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, p1}, Ldxp;->f(Lehx;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    throw p1

    nop

    nop

    :goto_22
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

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

    :goto_24
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, v1}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, p1}, Lefw;->a(Lehx;)Lefx;

    move-result-object v0

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

    :goto_28
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    throw p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :catchall_3
    move-exception p1

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

    :goto_2a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v1, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2f
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_30
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_32
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_33
    invoke-static {v0, v3}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v0, Lesd;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_35
    invoke-static {v0, p0}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_47

    nop

    nop

    :goto_38
    goto/32 :goto_18

    nop

    nop

    :goto_39
    const/4 v3, 0x0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto :goto_3c

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    invoke-static {v0, v3}, Lrkm;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lefy;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_40
    const-string v0, "Pre-packaged database has an invalid schema: "

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v0, v1}, Lehw;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4b

    nop

    nop

    :goto_42
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, v1}, Left;->v(Lfdn;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v0, p0, Lefy;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v1, Lfdn;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_47
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, v0, Lefx;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v1, Ldxp;

    nop

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

    :goto_4a
    iget-object v0, p0, Lefy;->d:Lefw;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p1, v0}, Lehx;->a(Leid;)Landroid/database/Cursor;

    move-result-object v0

    nop

    nop

    nop

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    nop

    if-eqz v1, :cond_7

    nop

    nop

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v1, v0, Lesd;->a:Landroidx/work/impl/WorkDatabase_Impl;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput-object p1, v1, Landroidx/work/impl/WorkDatabase_Impl;->a:Lehx;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lefy;->d:Lefw;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_50
    iget-object v0, v0, Lesd;->a:Landroidx/work/impl/WorkDatabase_Impl;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Lefy;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_52
    throw p1

    nop

    nop

    :goto_53
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_8
    goto/32 :goto_55

    nop

    :goto_58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lehx;II)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "DROP TABLE IF EXISTS `Dependency`"

    nop

    goto/32 :goto_5

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

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4
    new-instance v1, Lfdn;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, p2}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_47

    nop

    nop

    :goto_6
    invoke-static {p3, p2, p1, v0, v1}, La;->bq(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_8
    iget-object p2, p0, Lefy;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, p2}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_4a

    nop

    nop

    :goto_c
    const-string p2, "DROP TABLE IF EXISTS `WorkTag`"

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_35

    nop

    :goto_e
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_f
    if-nez p3, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p2, Lefx;->b:Ljava/lang/String;

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

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, p2}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_13
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_14
    check-cast v0, Leha;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, p1, p3}, Lfdn;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lefy;->d:Lefw;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    iget-boolean p3, p2, Lefx;->a:Z

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

    :goto_18
    invoke-static {p2}, Ldvw;->D(Lfdn;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_43

    nop

    nop

    :goto_1b
    invoke-interface {p1, p2}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lefy;->a:Leex;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    invoke-static {v0, p2, p3}, Ldvx;->j(Lfdn;II)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_50

    nop

    nop

    :goto_1f
    const-string v0, " to "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, p2, p3}, Ldvx;->h(Leex;II)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    const-string p1, "A migration from "

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Lefw;->b(Lehx;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v1, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1, p2}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_29
    const-string p2, "DROP TABLE IF EXISTS `WorkName`"

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

    :goto_2a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    :goto_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    :goto_2e
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1, p2}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p2, Lfdn;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_34
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p3, :cond_6

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    :goto_37
    check-cast p3, Ldxp;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Leha;->b(Lfdn;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p2, p1}, Lefw;->a(Lehx;)Lefx;

    move-result-object p2

    nop

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

    :goto_3b
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1c

    nop

    nop

    :goto_3d
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lefy;->a:Leex;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p2, p0, Lefy;->d:Lefw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0, p1}, Lefy;->d5484163cd8d335e6b17663474ff5f2bm(Lehx;)V

    goto/32 :goto_1

    nop

    nop

    :goto_42
    sget-object p2, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->QMMuhq:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_43
    throw p0

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1, p2}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_47
    const-string p2, "DROP TABLE IF EXISTS `WorkSpec`"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {p2, p1, p3}, Lfdn;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4a
    const-string p2, "DROP TABLE IF EXISTS `WorkProgress`"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4b
    const-string p2, "DROP TABLE IF EXISTS `Preference`"

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_4c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4e
    const-string p2, "Migration didn\'t properly handle: "

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v0, Leex;->n:Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_51
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    :goto_52
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
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
