.class public final Lapr;
.super Ljava/lang/Object;


# static fields
.field private static final m:[Ljava/lang/String;


# instance fields
.field public final a:Lapt;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile e:Z

.field public final f:Lqu;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Runnable;

.field public volatile i:Larf;

.field public j:Ladq;

.field public k:Laeh;

.field public final l:Ljvq;

.field private final n:Ljava/util/Map;

.field private final o:[Ljava/lang/String;

.field private final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INSERT"

    aput-object v2, v0, v1

    sput-object v0, Lapr;->m:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Lapt;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapr;->a:Lapt;

    iput-object p2, p0, Lapr;->n:Ljava/util/Map;

    iput-object p3, p0, Lapr;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lapr;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljvq;

    array-length p3, p4

    invoke-direct {p1, p3}, Ljvq;-><init>(I)V

    iput-object p1, p0, Lapr;->l:Ljvq;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lqu;

    invoke-direct {p1}, Lqu;-><init>()V

    iput-object p1, p0, Lapr;->f:Lqu;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapr;->p:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapr;->g:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lapr;->c:Ljava/util/Map;

    new-array p1, p3, [Ljava/lang/String;

    :goto_0
    if-ge p2, p3, :cond_2

    aget-object v0, p4, p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lapr;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lapr;->n:Ljava/util/Map;

    aget-object v2, p4, p2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lapr;->o:[Ljava/lang/String;

    iget-object p1, p0, Lapr;->n:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p0, Lapr;->c:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p0, Lapr;->c:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Key "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is missing in the map."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    invoke-interface {p4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance p1, Lapq;

    invoke-direct {p1, p0}, Lapq;-><init>(Lapr;)V

    iput-object p1, p0, Lapr;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Lapp;)V
    .locals 11

    iget-object v0, p0, Lapr;->f:Lqu;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lapr;->f:Lqu;

    invoke-virtual {v1, p1}, Lqu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbbc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lapr;->l:Ljvq;

    iget-object p1, p1, Lbbc;->c:Ljava/lang/Object;

    check-cast p1, [I

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_1
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    iget-object v5, v0, Ljvq;->c:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [J

    aget-wide v7, v6, v4

    const-wide/16 v9, -0x1

    add-long/2addr v9, v7

    check-cast v5, [J

    aput-wide v9, v5, v4

    const-wide/16 v4, 0x1

    cmp-long v6, v7, v4

    if-nez v6, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v0, Ljvq;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lapr;->b()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lapr;->a:Lapt;

    invoke-virtual {v0}, Lapt;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lapr;->a:Lapt;

    invoke-virtual {v0}, Lapt;->c()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->a()Laqp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lapr;->c(Laqp;)V

    return-void
.end method

.method public final c(Laqp;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {p1 .. p1}, Laqp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, v1, Lapr;->a:Lapt;

    invoke-virtual {v0}, Lapt;->j()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v1, Lapr;->p:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, v1, Lapr;->l:Ljvq;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-boolean v0, v5, Ljvq;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto :goto_4

    :cond_1
    :try_start_5
    iget-object v0, v5, Ljvq;->c:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [J

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    move-object v10, v0

    check-cast v10, [J

    aget-wide v11, v10, v8

    add-int/lit8 v10, v9, 0x1

    const-wide/16 v13, 0x0

    cmp-long v16, v11, v13

    if-lez v16, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    iget-object v6, v5, Ljvq;->b:Ljava/lang/Object;

    move-object/from16 v17, v6

    check-cast v17, [Z

    aget-boolean v13, v17, v9

    if-eq v15, v13, :cond_4

    iget-object v13, v5, Ljvq;->d:Ljava/lang/Object;

    const-wide/16 v17, 0x0

    cmp-long v14, v11, v17

    if-lez v14, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x2

    const/16 v16, 0x2

    :goto_2
    check-cast v13, [I

    aput v16, v13, v9

    goto :goto_3

    :cond_4
    iget-object v11, v5, Ljvq;->d:Ljava/lang/Object;

    check-cast v11, [I

    const/4 v12, 0x0

    aput v12, v11, v9

    :goto_3
    check-cast v6, [Z

    aput-boolean v15, v6, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, v5, Ljvq;->a:Z

    iget-object v0, v5, Ljvq;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    if-nez v0, :cond_6

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    :cond_6
    :try_start_9
    invoke-interface/range {p1 .. p1}, Laqp;->k()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {p1 .. p1}, Laqp;->e()V

    goto :goto_5

    :cond_7
    invoke-interface/range {p1 .. p1}, Laqp;->d()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_5
    :try_start_a
    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6
    if-ge v6, v5, :cond_a

    aget v8, v0, v6

    add-int/lit8 v9, v7, 0x1

    const/4 v10, 0x3

    packed-switch v8, :pswitch_data_0

    move-object/from16 v17, v0

    goto/16 :goto_9

    :pswitch_0
    iget-object v8, v1, Lapr;->o:[Ljava/lang/String;

    aget-object v7, v8, v7

    sget-object v8, Lapr;->m:[Ljava/lang/String;

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_8

    aget-object v13, v8, v11

    const-string v14, "DROP TRIGGER IF EXISTS "

    invoke-static {v7, v13}, Laeb;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Laqp;->g(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v17, v0

    goto :goto_9

    :pswitch_1
    const-string v8, "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = "

    const-string v11, " AND invalidated = 0; END"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", 0)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Laqp;->g(Ljava/lang/String;)V

    iget-object v13, v1, Lapr;->o:[Ljava/lang/String;

    aget-object v13, v13, v7

    sget-object v14, Lapr;->m:[Ljava/lang/String;

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v10, :cond_9

    aget-object v10, v14, v15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v10}, Laeb;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ON `"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Laqp;->g(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v17

    const/4 v10, 0x3

    const/4 v12, 0x0

    goto :goto_8

    :cond_9
    move-object/from16 v17, v0

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    move-object/from16 v0, v17

    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_a
    invoke-interface/range {p1 .. p1}, Laqp;->h()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-interface/range {p1 .. p1}, Laqp;->f()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_e
    invoke-interface/range {p1 .. p1}, Laqp;->f()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v4

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_10
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "ROOM"

    const-string v3, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v0

    const-string v2, "ROOM"

    const-string v3, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
