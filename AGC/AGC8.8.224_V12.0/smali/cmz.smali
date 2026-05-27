.class public final synthetic Lcmz;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lcnf;

.field public final synthetic b:Lcnm;

.field public final synthetic c:Lcnk;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcnf;Lcnm;Lcnk;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcmz;->a:Lcnf;

    iput-object p2, p0, Lcmz;->b:Lcnm;

    iput-object p3, p0, Lcmz;->c:Lcnk;

    iput p4, p0, Lcmz;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcmz;->a:Lcnf;

    iget-object v2, v1, Lcmz;->b:Lcnm;

    iget-object v3, v1, Lcmz;->c:Lcnk;

    iget v4, v1, Lcmz;->d:I

    iget-object v5, v0, Lcnf;->b:Lcng;

    invoke-virtual {v5}, Lcng;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :try_start_0
    new-instance v6, Lcnc;

    iget-object v7, v0, Lcnf;->d:Ljava/util/Random;

    invoke-direct {v6, v2, v3, v4, v7}, Lcnc;-><init>(Lcnm;Lcnk;ILjava/util/Random;)V

    new-instance v3, Lcei;

    const/4 v4, 0x2

    invoke-direct {v3, v6, v4}, Lcei;-><init>(Lcnc;I)V

    invoke-static {v3}, Lmjy;->m(Lnal;)V

    new-instance v3, Lcei;

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7}, Lcei;-><init>(Lcnc;I)V

    invoke-static {v3}, Lmjy;->m(Lnal;)V

    iget-object v3, v6, Lcnc;->b:Ljava/lang/String;

    invoke-virtual {v6}, Lcnc;->b()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcnk;->c:Lcnk;

    invoke-virtual {v8}, Lnws;->O()Lnwn;

    move-result-object v8

    iget v9, v2, Lcnm;->d:I

    invoke-static {v9}, Ldgw;->f(I)I

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    if-ne v9, v4, :cond_2

    const-string v9, "selection_key"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iget-object v9, v8, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_1
    iget-object v9, v8, Lnwn;->b:Lnws;

    check-cast v9, Lcnk;

    iput v4, v9, Lcnk;->a:I

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v9, Lcnk;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v9, "media_id"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iget-object v9, v8, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_3
    iget-object v9, v8, Lnwn;->b:Lnws;

    check-cast v9, Lcnk;

    iput v10, v9, Lcnk;->a:I

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v9, Lcnk;->b:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Lcnk;

    iget-object v9, v6, Lcnc;->a:Ljava/util/Map;

    invoke-static {v9}, Lmwa;->m(Ljava/util/Map;)Lmwa;

    move-result-object v9

    sget-object v11, Lpau;->b:Lpau;

    invoke-virtual {v11}, Lnws;->O()Lnwn;

    move-result-object v11

    invoke-virtual {v9}, Lmwa;->s()Lmwn;

    move-result-object v12

    invoke-virtual {v12}, Lmwn;->cz()Lnac;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v0, Lcnf;->f:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcmt;

    if-nez v14, :cond_4

    sget-object v14, Lcnf;->a:Lnak;

    invoke-virtual {v14}, Lnaf;->c()Lnaz;

    move-result-object v14

    const-string v15, "No table with table name: %s"

    const/16 v10, 0x156

    invoke-static {v14, v15, v13, v10}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const-string v10, "%s_%s"

    new-array v15, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v13}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/16 v17, 0x0

    aput-object v13, v15, v17

    const-string v13, "value"

    const/16 v16, 0x1

    aput-object v13, v15, v16

    invoke-static {v10, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v14, v10}, Lcmt;->a([B)Lmqp;

    move-result-object v10

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lpau;

    invoke-virtual {v11, v10}, Lnwn;->s(Lnws;)V

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x1

    goto :goto_3

    :cond_7
    sget-object v9, Lpar;->b:Lpar;

    invoke-virtual {v9}, Lnws;->O()Lnwn;

    move-result-object v9

    iget-object v10, v9, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_8
    iget-object v10, v9, Lnwn;->b:Lnws;

    check-cast v10, Lpar;

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v12

    check-cast v12, Lpau;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v12, v10, Lpar;->a:Lpau;

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    sget-object v9, Lpar;->b:Lpar;

    invoke-virtual {v9}, Lnws;->O()Lnwn;

    move-result-object v9

    iget-object v10, v9, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_9
    iget-object v10, v9, Lnwn;->b:Lnws;

    check-cast v10, Lpar;

    invoke-virtual {v11}, Lnwn;->i()Lnws;

    move-result-object v11

    check-cast v11, Lpau;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v10, Lpar;->a:Lpau;

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v9

    check-cast v9, Lpar;

    invoke-virtual {v9}, Lnve;->J()[B

    move-result-object v9

    invoke-static {v8, v9}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    invoke-static {v7}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_b

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_d

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-static {v2, v3}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_d
    :goto_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_e

    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v3}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_e
    :goto_5
    goto :goto_7

    :goto_6
    throw v2

    :goto_7
    goto :goto_6
.end method
