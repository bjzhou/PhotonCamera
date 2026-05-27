.class public final Lbdh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public final a:Layn;

.field private final c:Layu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbdh;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Layu;)V
    .locals 1

    new-instance v0, Layn;

    invoke-direct {v0}, Layn;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbdh;->c:Layu;

    iput-object v0, p0, Lbdh;->a:Layn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lbdh;->c:Layu;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v0, Layu;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Layu;->i()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkContinuation has cycles ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lbdh;->c:Layu;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v0, Layu;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lbdh;->c:Layu;

    iget-object v0, v0, Layu;->a:Lazd;

    iget-object v2, v0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lapt;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    iget-object v0, v1, Lbdh;->c:Layu;

    invoke-static {}, Layu;->i()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v0, Layu;->a:Lazd;

    iget-object v5, v0, Layu;->c:Ljava/util/List;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v7, v0, Layu;->b:Ljava/lang/String;

    iget v8, v0, Layu;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v4, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    if-eqz v3, :cond_2

    array-length v13, v3

    if-lez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_7

    array-length v12, v3

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_2
    if-ge v14, v12, :cond_8

    aget-object v6, v3, v14

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v15

    invoke-interface {v15, v6}, Lbck;->a(Ljava/lang/String;)Lbcj;

    move-result-object v15

    if-nez v15, :cond_3

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v3, Lbdh;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prerequisite "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " doesn\'t exist; not enqueuing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v2

    const/4 v6, 0x0

    goto/16 :goto_17

    :cond_3
    iget v6, v15, Lbcj;->r:I

    const/4 v15, 0x3

    if-ne v6, v15, :cond_4

    const/4 v15, 0x1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    and-int v20, v20, v15

    const/4 v15, 0x4

    if-ne v6, v15, :cond_5

    const/16 v18, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x6

    if-ne v6, v15, :cond_6

    const/16 v19, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    const/4 v12, 0x1

    xor-int/2addr v6, v12

    if-eqz v6, :cond_1a

    if-nez v13, :cond_1a

    :try_start_2
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v12

    invoke-interface {v12, v7}, Lbck;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v14, :cond_1a

    const/4 v14, 0x3

    if-eq v8, v14, :cond_e

    const/4 v14, 0x4

    if-ne v8, v14, :cond_9

    goto :goto_6

    :cond_9
    const/4 v14, 0x2

    if-ne v8, v14, :cond_c

    :try_start_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lbch;

    iget v15, v15, Lbch;->b:I

    const/4 v14, 0x1

    if-eq v15, v14, :cond_b

    const/4 v14, 0x2

    if-ne v15, v14, :cond_a

    :cond_b
    move-object/from16 v23, v2

    const/4 v6, 0x0

    goto/16 :goto_17

    :cond_c
    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Lbdg;->b(Ljava/lang/String;Lazd;Z)Lbdg;

    move-result-object v14

    invoke-virtual {v14}, Lbdg;->run()V

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v8

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lbch;

    iget-object v14, v14, Lbch;->a:Ljava/lang/String;

    invoke-interface {v8, v14}, Lbck;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    goto :goto_5

    :cond_d
    move-object/from16 v23, v2

    const/4 v1, 0x1

    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_e
    :goto_6
    :try_start_4
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->w()Lbbj;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lbch;

    move-object/from16 v22, v12

    iget-object v12, v15, Lbch;->a:Ljava/lang/String;

    const-string v1, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v23, v2

    const/4 v2, 0x1

    :try_start_5
    invoke-static {v1, v2}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v1

    invoke-virtual {v1, v2, v12}, Lapy;->g(ILjava/lang/String;)V

    move-object v2, v13

    check-cast v2, Lbbl;

    iget-object v2, v2, Lbbl;->a:Lapt;

    invoke-virtual {v2}, Lapt;->l()V

    move-object v2, v13

    check-cast v2, Lbbl;

    iget-object v2, v2, Lbbl;->a:Lapt;

    const/4 v12, 0x0

    invoke-static {v2, v1, v12}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v16, :cond_f

    const/16 v16, 0x1

    goto :goto_8

    :cond_f
    const/16 v16, 0x0

    :goto_8
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lapy;->j()V

    if-nez v16, :cond_13

    iget v1, v15, Lbch;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    const/16 v16, 0x1

    goto :goto_9

    :cond_10
    const/16 v16, 0x0

    :goto_9
    and-int v20, v20, v16

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    const/16 v18, 0x1

    goto :goto_a

    :cond_11
    const/4 v2, 0x6

    if-ne v1, v2, :cond_12

    const/16 v19, 0x1

    :cond_12
    :goto_a
    iget-object v1, v15, Lbch;->a:Ljava/lang/String;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    goto :goto_7

    :cond_13
    move-object/from16 v1, p0

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lapy;->j()V

    throw v0

    :cond_14
    move-object/from16 v23, v2

    const/4 v12, 0x0

    const/4 v1, 0x4

    if-ne v8, v1, :cond_18

    if-nez v19, :cond_16

    if-eqz v18, :cond_15

    goto :goto_b

    :cond_15
    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_d

    :cond_16
    :goto_b
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v1

    invoke-interface {v1, v7}, Lbck;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbch;

    iget-object v8, v8, Lbch;->a:Ljava/lang/String;

    invoke-interface {v1, v8}, Lbck;->e(Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_d

    :cond_18
    :goto_d
    invoke-interface {v14, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    array-length v1, v3

    if-lez v1, :cond_19

    const/4 v13, 0x1

    goto :goto_e

    :cond_19
    const/4 v13, 0x0

    :goto_e
    const/4 v1, 0x0

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v23, v2

    goto/16 :goto_19

    :cond_1a
    move-object/from16 v23, v2

    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lva;

    iget-object v8, v5, Lva;->c:Ljava/lang/Object;

    if-eqz v13, :cond_1d

    if-nez v20, :cond_1d

    if-eqz v18, :cond_1b

    move-object v14, v8

    check-cast v14, Lbcj;

    const/4 v15, 0x4

    iput v15, v14, Lbcj;->r:I

    goto :goto_11

    :cond_1b
    const/4 v15, 0x4

    if-eqz v19, :cond_1c

    move-object v14, v8

    check-cast v14, Lbcj;

    const/4 v12, 0x6

    iput v12, v14, Lbcj;->r:I

    goto :goto_11

    :cond_1c
    const/4 v12, 0x6

    move-object v14, v8

    check-cast v14, Lbcj;

    const/4 v12, 0x5

    iput v12, v14, Lbcj;->r:I

    goto :goto_11

    :cond_1d
    const/4 v15, 0x4

    move-object v12, v8

    check-cast v12, Lbcj;

    iput-wide v9, v12, Lbcj;->l:J

    :goto_11
    move-object v12, v8

    check-cast v12, Lbcj;

    iget v12, v12, Lbcj;->r:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_1e

    const/16 v17, 0x0

    goto :goto_12

    :cond_1e
    const/16 v17, 0x1

    :goto_12
    xor-int/lit8 v12, v17, 0x1

    or-int/2addr v1, v12

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v12

    iget-object v14, v4, Lazd;->e:Ljava/util/List;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v14, v12

    check-cast v14, Lbcy;

    iget-object v14, v14, Lbcy;->a:Lapt;

    invoke-virtual {v14}, Lapt;->l()V

    move-object v14, v12

    check-cast v14, Lbcy;

    iget-object v14, v14, Lbcy;->a:Lapt;

    invoke-virtual {v14}, Lapt;->m()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    move-object v14, v12

    check-cast v14, Lbcy;

    iget-object v14, v14, Lbcy;->b:Lapo;

    invoke-virtual {v14, v8}, Lapo;->a(Ljava/lang/Object;)V

    move-object v8, v12

    check-cast v8, Lbcy;

    iget-object v8, v8, Lbcy;->a:Lapt;

    invoke-virtual {v8}, Lapt;->q()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    check-cast v12, Lbcy;

    iget-object v8, v12, Lbcy;->a:Lapt;

    invoke-virtual {v8}, Lapt;->o()V

    if-eqz v13, :cond_20

    array-length v8, v3

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v8, :cond_1f

    aget-object v14, v3, v12

    new-instance v15, Lbby;

    move/from16 v21, v1

    invoke-virtual {v5}, Lva;->d()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v2

    const/4 v2, 0x0

    invoke-direct {v15, v1, v14, v2}, Lbby;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->w()Lbbj;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lbbl;

    iget-object v2, v2, Lbbl;->a:Lapt;

    invoke-virtual {v2}, Lapt;->l()V

    move-object v2, v1

    check-cast v2, Lbbl;

    iget-object v2, v2, Lbbl;->a:Lapt;

    invoke-virtual {v2}, Lapt;->m()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    move-object v2, v1

    check-cast v2, Lbbl;

    iget-object v2, v2, Lbbl;->b:Lapo;

    invoke-virtual {v2, v15}, Lapo;->a(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lbbl;

    iget-object v2, v2, Lbbl;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    check-cast v1, Lbbl;

    iget-object v1, v1, Lbbl;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v21

    move-object/from16 v2, v22

    const/4 v15, 0x4

    goto :goto_13

    :catchall_2
    move-exception v0

    check-cast v1, Lbbl;

    iget-object v1, v1, Lbbl;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :cond_1f
    move/from16 v21, v1

    move-object/from16 v22, v2

    goto :goto_14

    :cond_20
    move/from16 v21, v1

    move-object/from16 v22, v2

    :goto_14
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->C()Lbcz;

    move-result-object v1

    invoke-virtual {v5}, Lva;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v8, v5, Lva;->a:Ljava/lang/Object;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    new-instance v14, Ldne;

    invoke-direct {v14, v12, v2}, Ldne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    check-cast v12, Lbdc;

    iget-object v12, v12, Lbdc;->a:Lapt;

    invoke-virtual {v12}, Lapt;->l()V

    move-object v12, v1

    check-cast v12, Lbdc;

    iget-object v12, v12, Lbdc;->a:Lapt;

    invoke-virtual {v12}, Lapt;->m()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    move-object v12, v1

    check-cast v12, Lbdc;

    iget-object v12, v12, Lbdc;->b:Lapo;

    invoke-virtual {v12, v14}, Lapo;->a(Ljava/lang/Object;)V

    move-object v12, v1

    check-cast v12, Lbdc;

    iget-object v12, v12, Lbdc;->a:Lapt;

    invoke-virtual {v12}, Lapt;->q()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    move-object v12, v1

    check-cast v12, Lbdc;

    iget-object v12, v12, Lbdc;->a:Lapt;

    invoke-virtual {v12}, Lapt;->o()V

    goto :goto_15

    :catchall_3
    move-exception v0

    check-cast v1, Lbdc;

    iget-object v1, v1, Lbdc;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :cond_21
    if-eqz v6, :cond_22

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->z()Lbbz;

    move-result-object v1

    new-instance v2, Lbby;

    invoke-virtual {v5}, Lva;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v7, v5}, Lbby;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lbcb;

    iget-object v5, v5, Lbcb;->a:Lapt;

    invoke-virtual {v5}, Lapt;->l()V

    move-object v5, v1

    check-cast v5, Lbcb;

    iget-object v5, v5, Lbcb;->a:Lapt;

    invoke-virtual {v5}, Lapt;->m()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    move-object v5, v1

    check-cast v5, Lbcb;

    iget-object v5, v5, Lbcb;->b:Lapo;

    invoke-virtual {v5, v2}, Lapo;->a(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lbcb;

    iget-object v2, v2, Lbcb;->a:Lapt;

    invoke-virtual {v2}, Lapt;->q()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    check-cast v1, Lbcb;

    iget-object v1, v1, Lbcb;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    goto :goto_16

    :catchall_4
    move-exception v0

    check-cast v1, Lbcb;

    iget-object v1, v1, Lbcb;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :cond_22
    :goto_16
    move/from16 v1, v21

    move-object/from16 v2, v22

    const/4 v12, 0x0

    goto/16 :goto_10

    :catchall_5
    move-exception v0

    check-cast v12, Lbcy;

    iget-object v1, v12, Lbcy;->a:Lapt;

    invoke-virtual {v1}, Lapt;->o()V

    throw v0

    :cond_23
    move v6, v1

    :goto_17
    const/4 v1, 0x1

    iput-boolean v1, v0, Layu;->e:Z

    invoke-virtual/range {v23 .. v23}, Lapt;->q()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    invoke-virtual/range {v23 .. v23}, Lapt;->o()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v6, :cond_24

    move-object/from16 v1, p0

    :try_start_11
    iget-object v0, v1, Lbdh;->c:Layu;

    iget-object v0, v0, Layu;->a:Lazd;

    iget-object v0, v0, Lazd;->b:Landroid/content/Context;

    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lbdn;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object v0, v1, Lbdh;->c:Layu;

    iget-object v0, v0, Layu;->a:Lazd;

    iget-object v2, v0, Lazd;->c:Laxd;

    iget-object v3, v0, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lazd;->e:Ljava/util/List;

    invoke-static {v2, v3, v0}, Layt;->a(Laxd;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_18

    :cond_24
    move-object/from16 v1, p0

    :goto_18
    iget-object v0, v1, Lbdh;->a:Layn;

    sget-object v2, Laxu;->a:Laxt;

    invoke-virtual {v0, v2}, Layn;->a(Ldr;)V

    return-void

    :catchall_6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1b

    :catchall_7
    move-exception v0

    :goto_19
    move-object/from16 v1, p0

    goto :goto_1a

    :catchall_8
    move-exception v0

    move-object/from16 v23, v2

    :goto_1a
    invoke-virtual/range {v23 .. v23}, Lapt;->o()V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :catchall_9
    move-exception v0

    :goto_1b
    iget-object v2, v1, Lbdh;->a:Layn;

    new-instance v3, Laxr;

    invoke-direct {v3, v0}, Laxr;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Layn;->a(Ldr;)V

    return-void
.end method
