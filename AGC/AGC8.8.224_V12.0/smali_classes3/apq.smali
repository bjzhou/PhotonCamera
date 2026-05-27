.class public final Lapq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lapr;


# direct methods
.method public constructor <init>(Lapr;)V
    .locals 0

    iput-object p1, p0, Lapq;->a:Lapr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lapq;->a:Lapr;

    iget-object v0, v0, Lapr;->a:Lapt;

    invoke-virtual {v0}, Lapt;->j()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lapq;->a:Lapr;

    iget-object v3, v2, Lapr;->a:Lapt;

    invoke-virtual {v3}, Lapt;->s()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v3, v2, Lapr;->e:Z

    if-nez v3, :cond_1

    iget-object v3, v2, Lapr;->a:Lapt;

    invoke-virtual {v3}, Lapt;->c()Laqt;

    move-result-object v3

    invoke-interface {v3}, Laqt;->a()Laqp;

    :cond_1
    iget-boolean v2, v2, Lapr;->e:Z

    if-nez v2, :cond_2

    const-string v2, "ROOM"

    const-string v3, "database is not initialized even though it is open"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lapq;->a:Lapr;

    iget-object v2, v2, Lapr;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lapq;->a:Lapr;

    iget-object v2, v2, Lapr;->a:Lapt;

    invoke-virtual {v2}, Lapt;->r()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lapq;->a:Lapr;

    iget-object v2, v2, Lapr;->a:Lapt;

    invoke-virtual {v2}, Lapt;->c()Laqt;

    move-result-object v2

    invoke-interface {v2}, Laqt;->a()Laqp;

    move-result-object v2

    invoke-interface {v2}, Laqp;->e()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v3, p0, Lapq;->a:Lapr;

    invoke-static {}, Lljr;->R()Ljava/util/Set;

    move-result-object v4

    iget-object v3, v3, Lapr;->a:Lapt;

    new-instance v5, Laqo;

    const-string v6, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    invoke-direct {v5, v6}, Laqo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lapt;->u(Laqv;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v3, v5}, Lolp;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lljr;->U(Ljava/util/Set;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lapq;->a:Lapr;

    iget-object v3, v3, Lapr;->i:Larf;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lapq;->a:Lapr;

    iget-object v3, v3, Lapr;->i:Larf;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Larf;->a()I

    goto :goto_2

    :cond_6
    const-string v3, "Required value was null."

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    const-string v3, "Required value was null."

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    :goto_2
    invoke-interface {v2}, Laqp;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v2}, Laqp;->f()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_7
    invoke-static {v3, v4}, Lolp;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v3

    :try_start_8
    invoke-interface {v2}, Laqp;->f()V

    throw v3
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    goto/16 :goto_8

    :catch_0
    move-exception v2

    :try_start_9
    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lojz;->a:Lojz;

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v3, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lojz;->a:Lojz;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lapq;->a:Lapr;

    iget-object v2, v0, Lapr;->f:Lqu;

    monitor-enter v2

    :try_start_a
    iget-object v0, v0, Lapr;->f:Lqu;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbbc;

    iget-object v5, v3, Lbbc;->c:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [I

    array-length v6, v6

    packed-switch v6, :pswitch_data_0

    invoke-static {}, Lljr;->R()Ljava/util/Set;

    move-result-object v5

    goto :goto_5

    :pswitch_0
    check-cast v5, [I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v3, Lbbc;->b:Ljava/lang/Object;

    goto :goto_7

    :cond_a
    :pswitch_1
    sget-object v5, Lojz;->a:Lojz;

    goto :goto_7

    :goto_5
    iget-object v6, v3, Lbbc;->c:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, [I

    array-length v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v8, v7, :cond_c

    move-object v10, v6

    check-cast v10, [I

    aget v10, v10, v8

    add-int/lit8 v11, v9, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v3, Lbbc;->d:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    aget-object v9, v10, v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_6

    :cond_c
    invoke-static {v5}, Lljr;->U(Ljava/util/Set;)V

    :goto_7
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v3, v3, Lbbc;->a:Ljava/lang/Object;

    check-cast v3, Lapp;

    iget-object v3, v3, Lapp;->b:Ljava/lang/Object;

    sget-object v5, Lojk;->a:Lojk;

    invoke-interface {v3, v5}, Loss;->s(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :cond_d
    monitor-exit v2

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_e
    return-void

    :goto_8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
