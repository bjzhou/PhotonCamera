.class public final synthetic Ljkr;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Ljks;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lnts;

.field public final synthetic d:Lntr;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljks;Ljava/lang/String;Lnts;Lntr;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljkr;->a:Ljks;

    iput-object p2, p0, Ljkr;->b:Ljava/lang/String;

    iput-object p3, p0, Ljkr;->c:Lnts;

    iput-object p4, p0, Ljkr;->d:Lntr;

    iput p5, p0, Ljkr;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Ljkr;->a:Ljks;

    iget-object v2, v1, Ljkr;->b:Ljava/lang/String;

    iget-object v3, v1, Ljkr;->c:Lnts;

    iget-object v4, v1, Ljkr;->d:Lntr;

    iget v5, v1, Ljkr;->e:I

    iget-object v0, v0, Ljks;->a:Ljku;

    invoke-virtual {v0}, Ljku;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "collection_name = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v3, Lnts;->d:I

    invoke-static {v2}, Lkwp;->ax(I)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v9, 0x1

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :cond_0
    const-string v10, "selection_key"

    const-string v11, "id"

    const/4 v12, 0x2

    if-eq v8, v12, :cond_1

    move-object v8, v11

    goto :goto_0

    :cond_1
    move-object v8, v10

    :goto_0
    :try_start_1
    invoke-static {v2}, Lkwp;->ax(I)I

    move-result v2

    const-wide/16 v13, 0x0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v2, v12, :cond_4

    iget v2, v4, Lntr;->a:I

    if-ne v2, v12, :cond_3

    iget-object v2, v4, Lntr;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_2

    :cond_3
    move-wide v15, v13

    goto :goto_2

    :cond_4
    :goto_1
    iget v2, v4, Lntr;->a:I

    if-ne v2, v9, :cond_5

    iget-object v2, v4, Lntr;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_2

    :cond_5
    move-wide v15, v13

    :goto_2
    const-string v2, " AND "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lnts;->d:I

    invoke-static {v2}, Lkwp;->ax(I)I

    move-result v2

    const/4 v4, 0x4

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    if-ne v2, v4, :cond_7

    cmp-long v2, v15, v13

    if-lez v2, :cond_7

    const-string v2, " < ?"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    :goto_3
    const-string v2, " > ?"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v3, Lnts;->a:I

    if-lez v2, :cond_8

    const-string v2, " AND ((selection_key % ?) BETWEEN CAST(? as INTEGER) AND CAST(? as INTEGER))"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lnts;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v3, Lnts;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v3, Lnts;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, v3, Lnts;->e:Lnyy;

    if-nez v2, :cond_9

    sget-object v2, Lnyy;->c:Lnyy;

    :cond_9
    move-object/from16 v16, v10

    iget-wide v9, v2, Lnyy;->a:J

    iget-object v2, v3, Lnts;->f:Lnyy;

    if-nez v2, :cond_a

    sget-object v2, Lnyy;->c:Lnyy;

    :cond_a
    move/from16 v17, v5

    iget-wide v4, v2, Lnyy;->a:J

    cmp-long v2, v9, v13

    if-nez v2, :cond_b

    move-wide v9, v13

    goto :goto_5

    :cond_b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v15, v3, Lnts;->e:Lnyy;

    if-nez v15, :cond_c

    sget-object v15, Lnyy;->c:Lnyy;

    :cond_c
    iget v15, v15, Lnyy;->b:I

    int-to-long v12, v15

    invoke-virtual {v2, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    add-long/2addr v9, v12

    :goto_5
    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-nez v2, :cond_d

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_6

    :cond_d
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v12, v3, Lnts;->f:Lnyy;

    if-nez v12, :cond_e

    sget-object v12, Lnyy;->c:Lnyy;

    :cond_e
    iget v12, v12, Lnyy;->b:I

    int-to-long v12, v12

    invoke-virtual {v2, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    add-long/2addr v4, v12

    :goto_6
    const-string v2, " AND (time BETWEEN CAST(? as INTEGER) AND CAST(? as INTEGER))"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, " ORDER BY "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lnts;->d:I

    invoke-static {v2}, Lkwp;->ax(I)I

    move-result v15

    if-nez v15, :cond_f

    const/4 v15, 0x1

    :cond_f
    const-string v2, "ASC"

    const-string v4, "DESC"

    const/4 v5, 0x4

    if-eq v15, v5, :cond_10

    goto :goto_7

    :cond_10
    move-object v2, v4

    :goto_7
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIMIT ?"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v2, "SELECT id, time, selection_key, value FROM collections"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v7, v4, v2

    const-string v2, "%s WHERE %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljmj;->e(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljmj;->e(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lntr;->c:Lntr;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget v5, v3, Lnts;->d:I

    invoke-static {v5}, Lkwp;->ax(I)I

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v5, v16

    const/4 v10, 0x2

    goto :goto_9

    :cond_11
    const/4 v7, 0x2

    if-ne v5, v7, :cond_13

    move-object/from16 v5, v16

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iget-object v9, v4, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_12
    iget-object v9, v4, Lnwn;->b:Lnws;

    check-cast v9, Lntr;

    const/4 v10, 0x2

    iput v10, v9, Lntr;->a:I

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v9, Lntr;->b:Ljava/lang/Object;

    const/4 v12, 0x1

    goto :goto_a

    :cond_13
    move-object/from16 v5, v16

    const/4 v10, 0x2

    :goto_9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iget-object v9, v4, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_14
    iget-object v9, v4, Lnwn;->b:Lnws;

    check-cast v9, Lntr;

    const/4 v12, 0x1

    iput v12, v9, Lntr;->a:I

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v9, Lntr;->b:Ljava/lang/Object;

    :goto_a
    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lntr;

    const-string v7, "value"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    invoke-static {v4, v7}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v5

    goto :goto_8

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_16

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_16
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_17
    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_18

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-static {v3, v2}, Ljmj;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_18
    :goto_b
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_19

    :try_start_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v3}, Ljmj;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_19
    :goto_c
    goto :goto_e

    :goto_d
    throw v2

    :goto_e
    goto :goto_d
.end method
