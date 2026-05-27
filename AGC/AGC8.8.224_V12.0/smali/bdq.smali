.class public final Lbdq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lazd;

.field final synthetic b:Ljava/lang/String;

.field public final c:Lbej;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lbej;->g()Lbej;

    move-result-object v0

    iput-object v0, p0, Lbdq;->c:Lbej;

    return-void
.end method

.method public constructor <init>(Lazd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbdq;->a:Lazd;

    iput-object p2, p0, Lbdq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lbej;->g()Lbej;

    move-result-object p1

    iput-object p1, p0, Lbdq;->c:Lbej;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lbdq;->a:Lazd;

    iget-object v0, v0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v2

    iget-object v0, v1, Lbdq;->b:Ljava/lang/String;

    const-string v3, "SELECT id, state, output, run_attempt_count, generation FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Lapy;->g(ILjava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lbcy;

    iget-object v0, v0, Lbcy;->a:Lapt;

    invoke-virtual {v0}, Lapt;->l()V

    move-object v0, v2

    check-cast v0, Lbcy;

    iget-object v0, v0, Lbcy;->a:Lapt;

    invoke-virtual {v0}, Lapt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, v2

    check-cast v0, Lbcy;

    iget-object v0, v0, Lbcy;->a:Lapt;

    invoke-static {v0, v3, v4}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    new-instance v6, Lwy;

    invoke-direct {v6}, Lwy;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v7, v9}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7, v8}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object v7, v2

    check-cast v7, Lbcy;

    invoke-virtual {v7, v0}, Lbcy;->m(Lwy;)V

    move-object v7, v2

    check-cast v7, Lbcy;

    invoke-virtual {v7, v6}, Lbcy;->l(Lwy;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    move-object v12, v10

    goto :goto_2

    :cond_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    :goto_2
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ler;->s(I)I

    move-result v13

    const/4 v9, 0x2

    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    :goto_3
    invoke-static {v10}, Laxh;->a([B)Laxh;

    move-result-object v14

    const/4 v9, 0x3

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v9, 0x4

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v9

    goto :goto_4

    :cond_5
    move-object/from16 v17, v9

    :goto_4
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v9

    goto :goto_5

    :cond_6
    move-object/from16 v18, v9

    :goto_5
    new-instance v9, Lbci;

    move-object v11, v9

    invoke-direct/range {v11 .. v18}, Lbci;-><init>(Ljava/lang/String;ILaxh;IILjava/util/List;Ljava/util/List;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object v0, v2

    check-cast v0, Lbcy;

    iget-object v0, v0, Lbcy;->a:Lapt;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lapy;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    check-cast v2, Lbcy;

    iget-object v0, v2, Lbcy;->a:Lapt;

    invoke-virtual {v0}, Lapt;->o()V

    invoke-static {v7}, Lbcj;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lbdq;->c:Lbej;

    invoke-virtual {v2, v0}, Lbej;->h(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Lapy;->j()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    check-cast v2, Lbcy;

    iget-object v2, v2, Lbcy;->a:Lapt;

    invoke-virtual {v2}, Lapt;->o()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v2, v1, Lbdq;->c:Lbej;

    invoke-virtual {v2, v0}, Lbej;->e(Ljava/lang/Throwable;)V

    return-void
.end method
