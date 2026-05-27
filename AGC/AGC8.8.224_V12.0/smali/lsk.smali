.class public final synthetic Llsk;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lnxy;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcnf;Lcnm;Lcnk;II)V
    .locals 0

    iput p5, p0, Llsk;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsk;->c:Ljava/lang/Object;

    iput-object p2, p0, Llsk;->d:Ljava/lang/Object;

    iput-object p3, p0, Llsk;->a:Lnxy;

    iput p4, p0, Llsk;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Llsl;Lnxy;ILjava/util/List;I)V
    .locals 0

    iput p5, p0, Llsk;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsk;->c:Ljava/lang/Object;

    iput-object p2, p0, Llsk;->a:Lnxy;

    iput p3, p0, Llsk;->b:I

    iput-object p4, p0, Llsk;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 11

    iget v0, p0, Llsk;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llsk;->c:Ljava/lang/Object;

    iget-object v1, p0, Llsk;->d:Ljava/lang/Object;

    iget-object v2, p0, Llsk;->a:Lnxy;

    iget v3, p0, Llsk;->b:I

    check-cast v0, Lcnf;

    iget-object v0, v0, Lcnf;->b:Lcng;

    invoke-virtual {v0}, Lcng;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Llsk;->c:Ljava/lang/Object;

    iget-object v1, p0, Llsk;->a:Lnxy;

    iget v2, p0, Llsk;->b:I

    iget-object v3, p0, Llsk;->d:Ljava/lang/Object;

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    invoke-static {v5}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Llsl;

    iget-object v5, v5, Llsl;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llsi;

    new-instance v6, Lcmq;

    const/16 v7, 0xe

    invoke-direct {v6, v5, v7}, Lcmq;-><init>(Llsi;I)V

    invoke-static {v6}, Lmny;->b(Lnno;)Lnno;

    move-result-object v5

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-static {v1, v5, v6}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :goto_1
    :try_start_0
    new-instance v10, Ldne;

    check-cast v2, Lcnk;

    check-cast v1, Lcnm;

    invoke-direct {v10, v1, v2, v3}, Ldne;-><init>(Lcnm;Lcnk;I)V

    new-instance v1, Lcei;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v10

    invoke-direct/range {v4 .. v9}, Lcei;-><init>(Ldne;I[B[B[B)V

    invoke-static {v1}, Lmjy;->m(Lnal;)V

    new-instance v1, Lcei;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v10

    invoke-direct/range {v4 .. v9}, Lcei;-><init>(Ldne;I[B[B[B)V

    invoke-static {v1}, Lmjy;->m(Lnal;)V

    iget-object v1, v10, Ldne;->a:Ljava/lang/Object;

    invoke-virtual {v10}, Ldne;->q()[Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcnk;->c:Lcnk;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    const-string v4, "session_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-object v6, v3, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2
    iget-object v6, v3, Lnwn;->b:Lnws;

    check-cast v6, Lcnk;

    const/4 v7, 0x1

    iput v7, v6, Lcnk;->a:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, Lcnk;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lcnk;

    const-string v4, "value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v3, v4}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v2, v1}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_7

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-static {v1, v0}, Ldgw;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
