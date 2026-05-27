.class public final synthetic Lntk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lntm;

.field public final synthetic b:Ljkc;


# direct methods
.method public synthetic constructor <init>(Lntm;Ljkc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lntk;->a:Lntm;

    iput-object p2, p0, Lntk;->b:Ljkc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v2, v1, Lntk;->a:Lntm;

    iget-object v3, v1, Lntk;->b:Ljkc;

    iget-object v4, v2, Lntm;->d:Ljava/util/Deque;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v2, v2, Lntm;->d:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpar;

    goto/16 :goto_5

    :cond_0
    :try_start_0
    sget-object v4, Lnto;->b:Lloi;

    const-string v6, "Reading example store data into FedSQL database."

    invoke-virtual {v4, v6}, Lloi;->h(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v7

    iget-object v8, v2, Lntm;->a:Ljkd;

    new-instance v9, Lntl;

    invoke-direct {v9, v7}, Lntl;-><init>(Lnph;)V

    invoke-interface {v8, v9}, Ljkd;->a(Ljkc;)V
    :try_end_0
    .catch Lntn; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v7}, Lnph;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmqp;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lntn; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-nez v8, :cond_d

    sget-object v7, Lnto;->b:Lloi;

    const-string v8, "Read %d input examples into the FedSQL database."

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v4

    invoke-virtual {v7, v8, v12}, Lloi;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v2, Lntm;->c:Lntq;

    iget-object v7, v2, Lntm;->b:Lntg;

    iget-object v7, v7, Lntg;->a:Lnth;

    if-nez v7, :cond_1

    sget-object v7, Lnth;->d:Lnth;

    :cond_1
    iget-object v7, v7, Lnth;->c:Ljava/lang/String;

    sget-object v8, Lntq;->d:Lloi;

    const-string v12, "Executing SQL query: %s"

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v7, v13, v4

    invoke-virtual {v8, v12, v13}, Lloi;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v6, Lntq;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_2
    .catch Lntn; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    sget-object v8, Lntq;->d:Lloi;

    const-string v12, "SQL query returned %d rows"

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v4

    invoke-virtual {v8, v12, v13}, Lloi;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8, v7}, Ljava/util/ArrayDeque;-><init>(I)V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lpau;->b:Lpau;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v13

    if-ge v12, v13, :cond_5

    sget-object v13, Lpas;->c:Lpas;

    invoke-virtual {v13}, Lnws;->O()Lnwn;

    move-result-object v13

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getType(I)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getType(I)I

    move-result v2

    goto/16 :goto_4

    :pswitch_0
    sget-object v14, Lpaq;->b:Lpaq;

    invoke-virtual {v14}, Lnws;->O()Lnwn;

    move-result-object v14

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    invoke-static {v15}, Lnvt;->u([B)Lnvt;

    move-result-object v15

    invoke-virtual {v14, v15}, Lnwn;->az(Lnvt;)V

    invoke-virtual {v14}, Lnwn;->i()Lnws;

    move-result-object v14

    check-cast v14, Lpaq;

    iget-object v15, v13, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_2
    iget-object v15, v13, Lnwn;->b:Lnws;

    check-cast v15, Lpas;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v14, v15, Lpas;->b:Ljava/lang/Object;

    iput v11, v15, Lpas;->a:I

    goto :goto_3

    :pswitch_1
    sget-object v14, Lpav;->b:Lpav;

    invoke-virtual {v14}, Lnws;->O()Lnwn;

    move-result-object v14

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v15

    invoke-virtual {v14, v15}, Lnwn;->aB(F)V

    invoke-virtual {v14}, Lnwn;->i()Lnws;

    move-result-object v14

    check-cast v14, Lpav;

    iget-object v15, v13, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_3
    iget-object v15, v13, Lnwn;->b:Lnws;

    check-cast v15, Lpas;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v14, v15, Lpas;->b:Ljava/lang/Object;

    iput v10, v15, Lpas;->a:I

    goto :goto_3

    :pswitch_2
    sget-object v14, Lpaw;->b:Lpaw;

    invoke-virtual {v14}, Lnws;->O()Lnwn;

    move-result-object v14

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v14, v4, v5}, Lnwn;->aC(J)V

    invoke-virtual {v14}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lpaw;

    iget-object v5, v13, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_4
    iget-object v5, v13, Lnwn;->b:Lnws;

    check-cast v5, Lpas;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lpas;->b:Ljava/lang/Object;

    iput v9, v5, Lpas;->a:I

    :goto_3
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Lpas;

    invoke-virtual {v7, v4, v5}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2

    :goto_4
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Unsupported column type for column `%s`: %d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v11

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    sget-object v4, Lpar;->b:Lpar;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Lpau;

    iget-object v7, v4, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_6
    iget-object v7, v4, Lnwn;->b:Lnws;

    check-cast v7, Lpar;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v7, Lpar;->a:Lpau;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lpar;

    invoke-interface {v8, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_7
    if-eqz v6, :cond_8

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    iput-object v8, v2, Lntm;->d:Ljava/util/Deque;

    sget-object v2, Lnto;->b:Lloi;

    const-string v4, "Emitting SQL query results header."

    invoke-virtual {v2, v4}, Lloi;->h(Ljava/lang/String;)V

    sget-object v2, Lpar;->b:Lpar;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    sget-object v4, Lpau;->b:Lpau;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    const-string v5, "client_sql_version"

    sget-object v6, Lpas;->c:Lpas;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v6

    sget-object v7, Lpaw;->b:Lpaw;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    const-wide/16 v10, 0x2

    invoke-virtual {v7, v10, v11}, Lnwn;->aC(J)V

    iget-object v8, v6, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_9
    iget-object v8, v6, Lnwn;->b:Lnws;

    check-cast v8, Lpas;

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v7

    check-cast v7, Lpaw;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v8, Lpas;->b:Ljava/lang/Object;

    iput v9, v8, Lpas;->a:I

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Lpas;

    invoke-virtual {v4, v5, v6}, Lnwn;->aA(Ljava/lang/String;Lpas;)V

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v4

    check-cast v4, Lpau;

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_a
    iget-object v5, v2, Lnwn;->b:Lnws;

    check-cast v5, Lpar;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Lpar;->a:Lpau;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lpar;
    :try_end_4
    .catch Lntn; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lnxd; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Lnve;->J()[B

    move-result-object v2

    :goto_6
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Ljkc;->b([B[B)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_c

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_6
    const-class v5, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    :cond_c
    :goto_7
    :try_start_7
    throw v2

    :cond_d
    iget-object v4, v2, Lntm;->c:Lntq;

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sget-object v7, Lnwh;->a:Lnwh;

    sget-object v8, Lpar;->b:Lpar;

    array-length v12, v5

    const/4 v13, 0x0

    invoke-static {v8, v5, v13, v12, v7}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v5

    invoke-static {v5}, Lnws;->ae(Lnws;)V

    check-cast v5, Lpar;

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v5, Lpar;->a:Lpau;

    if-nez v5, :cond_e

    sget-object v5, Lpau;->b:Lpau;

    :cond_e
    iget-object v5, v5, Lpau;->a:Lnxt;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v4, Lntq;->c:Lmwn;

    invoke-virtual {v13, v12}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lpas;

    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    xor-int/2addr v13, v11

    const-string v14, "Column name `%s` already present in the specified contentValues."

    invoke-static {v13, v14, v12}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget v13, v8, Lpas;->a:I

    packed-switch v13, :pswitch_data_1

    const/4 v14, 0x0

    goto :goto_9

    :pswitch_3
    const/4 v14, 0x3

    goto :goto_9

    :pswitch_4
    const/4 v14, 0x2

    goto :goto_9

    :pswitch_5
    const/4 v14, 0x1

    goto :goto_9

    :pswitch_6
    const/4 v14, 0x4

    :goto_9
    if-eqz v14, :cond_15

    add-int/lit8 v14, v14, -0x1

    packed-switch v14, :pswitch_data_2

    new-instance v2, Ljava/lang/AssertionError;

    goto/16 :goto_10

    :pswitch_7
    if-ne v13, v9, :cond_f

    iget-object v8, v8, Lpas;->b:Ljava/lang/Object;

    check-cast v8, Lpaw;

    goto :goto_a

    :cond_f
    sget-object v8, Lpaw;->b:Lpaw;

    :goto_a
    iget-object v13, v8, Lpaw;->a:Lnwz;

    invoke-interface {v13}, Lnwz;->size()I

    move-result v13

    if-ne v13, v11, :cond_10

    const/4 v13, 0x1

    goto :goto_b

    :cond_10
    const/4 v13, 0x0

    :goto_b
    const-string v14, "Expected %s to be scalar, but int64_list.value count was: %d"

    iget-object v9, v8, Lpaw;->a:Lnwz;

    invoke-interface {v9}, Lnwz;->size()I

    move-result v9

    invoke-static {v13, v14, v9}, Lmoz;->h(ZLjava/lang/String;I)V

    iget-object v8, v8, Lpaw;->a:Lnwz;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lnwz;->a(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v9, 0x3

    goto :goto_8

    :pswitch_8
    if-ne v13, v10, :cond_11

    iget-object v8, v8, Lpas;->b:Ljava/lang/Object;

    check-cast v8, Lpav;

    goto :goto_c

    :cond_11
    sget-object v8, Lpav;->b:Lpav;

    :goto_c
    iget-object v9, v8, Lpav;->a:Lnwx;

    invoke-interface {v9}, Lnwx;->size()I

    move-result v9

    if-ne v9, v11, :cond_12

    const/4 v9, 0x1

    goto :goto_d

    :cond_12
    const/4 v9, 0x0

    :goto_d
    const-string v13, "Expected %s to be scalar, but float_list.value count was: %d"

    iget-object v14, v8, Lpav;->a:Lnwx;

    invoke-interface {v14}, Lnwx;->size()I

    move-result v14

    invoke-static {v9, v13, v14}, Lmoz;->h(ZLjava/lang/String;I)V

    iget-object v8, v8, Lpav;->a:Lnwx;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lnwx;->d(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/4 v9, 0x3

    goto/16 :goto_8

    :pswitch_9
    if-ne v13, v11, :cond_13

    iget-object v8, v8, Lpas;->b:Ljava/lang/Object;

    check-cast v8, Lpaq;

    goto :goto_e

    :cond_13
    sget-object v8, Lpaq;->b:Lpaq;

    :goto_e
    iget-object v9, v8, Lpaq;->a:Lnxa;

    invoke-interface {v9}, Lnxa;->size()I

    move-result v9

    if-ne v9, v11, :cond_14

    const/4 v9, 0x1

    goto :goto_f

    :cond_14
    const/4 v9, 0x0

    :goto_f
    const-string v13, "Expected %s to be scalar, but bytes_list.value count was: %d"

    iget-object v14, v8, Lpaq;->a:Lnxa;

    invoke-interface {v14}, Lnxa;->size()I

    move-result v14

    invoke-static {v9, v13, v14}, Lmoz;->h(ZLjava/lang/String;I)V

    iget-object v8, v8, Lpaq;->a:Lnxa;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnvt;

    invoke-virtual {v8}, Lnvt;->A()[B

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v9, 0x3

    goto/16 :goto_8

    :goto_10
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_15
    const/4 v2, 0x0

    throw v2

    :cond_16
    const/4 v9, 0x0

    const/4 v9, 0x3

    goto/16 :goto_8

    :cond_17
    const/4 v9, 0x0

    iget-object v5, v4, Lntq;->b:Lnti;

    iget-object v5, v5, Lnti;->c:Ljava/lang/String;

    const-string v8, "Outis"

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v4, Lntq;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iget-object v4, v4, Lntq;->b:Lnti;

    iget-object v4, v4, Lnti;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v6, v6, 0x1

    move-object v5, v8

    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lntn;

    new-instance v5, Lntn;

    iget v6, v4, Lntn;->a:I

    invoke-virtual {v4}, Lntn;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4, v2}, Lntn;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catch Lntn; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lnxd; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    goto :goto_11

    :catch_3
    move-exception v0

    :goto_11
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-interface {v3, v4, v2}, Ljkc;->a(ILjava/lang/String;)V

    return-void

    :catch_4
    move-exception v0

    move-object v2, v0

    iget v4, v2, Lntn;->a:I

    invoke-virtual {v2}, Lntn;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljkc;->a(ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
