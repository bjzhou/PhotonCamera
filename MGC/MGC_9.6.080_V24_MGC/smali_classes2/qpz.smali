.class final Lqpz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lqqa;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lqqa;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqpz;->a:Lqqa;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p2, p0, Lqpz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 22

    goto/32 :goto_35

    nop

    nop

    :goto_0
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    move-object/from16 v2, p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    :goto_3
    :try_start_0
    sget-object v9, Lsqn;->a:Lsqn;

    nop

    invoke-virtual {v9}, Ltkg;->m()Ltkb;

    move-result-object v9

    nop

    nop

    nop

    sget-object v10, Lsqk;->a:Lsqk;

    nop

    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    const-string v11, ""

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_39

    nop

    nop

    :goto_4
    move-object/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_6
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    move-object/from16 v3, p2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v9, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    nop

    nop

    nop

    if-eq v9, v10, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_8

    nop

    :goto_b
    :try_start_2
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    invoke-virtual {v10, v14}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Ljava/lang/Integer;

    nop

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_2
    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lsqm;

    nop

    sget-object v3, Lsqm;->a:Lsqm;

    nop

    iget v3, v2, Lsqm;->b:I

    nop

    or-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    iput v3, v2, Lsqm;->b:I

    nop

    nop

    nop

    nop

    iput v14, v2, Lsqm;->d:I

    nop

    nop

    :cond_3
    invoke-virtual {v15}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    nop

    nop

    array-length v3, v2

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    :goto_c
    if-ge v14, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    aget-object v15, v2, v14

    nop

    invoke-virtual {v10, v15}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    nop

    if-nez v16, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/util/IdentityHashMap;->size()I

    move-result v16

    nop

    nop

    nop

    nop

    move-object/from16 v19, v2

    nop

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    invoke-virtual {v10, v15, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Lrkm;->i(Ljava/lang/Throwable;)Ltkb;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v15}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_d

    nop

    nop

    nop

    :cond_4
    move-object/from16 v19, v2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ltkb;

    nop

    nop

    invoke-virtual {v10, v15}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    check-cast v15, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    nop

    nop

    move/from16 v16, v3

    nop

    nop

    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_5
    iget-object v2, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v2, Lsqm;

    nop

    sget-object v3, Lsqm;->a:Lsqm;

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lsqm;->e:Ltkm;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltkm;->c()Z

    move-result v20

    nop

    nop

    nop

    nop

    if-nez v20, :cond_6

    nop

    invoke-static {v3}, Ltkg;->t(Ltkm;)Ltkm;

    move-result-object v3

    nop

    nop

    nop

    nop

    iput-object v3, v2, Lsqm;->e:Ltkm;

    nop

    nop

    :cond_6
    iget-object v2, v2, Lsqm;->e:Ltkm;

    nop

    nop

    nop

    invoke-interface {v2, v15}, Ltkm;->g(I)V

    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    move/from16 v3, v16

    nop

    nop

    nop

    move-object/from16 v2, v19

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    :cond_7
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :cond_8
    sget-object v2, Lsql;->a:Lsql;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    :goto_e
    if-ge v10, v3, :cond_a

    nop

    nop

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    check-cast v12, Ltkb;

    nop

    nop

    nop

    nop

    iget-object v13, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    if-nez v13, :cond_9

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_9
    iget-object v13, v2, Ltkb;->b:Ltkg;

    nop

    check-cast v13, Lsql;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkb;->i()Ltkg;

    move-result-object v12

    nop

    nop

    nop

    check-cast v12, Lsqm;

    nop

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lsql;->b()V

    iget-object v13, v13, Lsql;->b:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v13, v12}, Ltkv;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto :goto_e

    nop

    :cond_a
    iget-object v3, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_b
    iget-object v3, v9, Ltkb;->b:Ltkg;

    nop

    check-cast v3, Lsqn;

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    check-cast v2, Lsql;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lsqn;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    iput v2, v3, Lsqn;->c:I

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v6, Lqts;->b:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v3}, Ltud;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    const/4 v11, 0x5

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1e

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lqqf;

    nop

    nop

    iget-object v12, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v12, Lsqn;

    nop

    iget-object v12, v12, Lsqn;->e:Lsqk;

    nop

    nop

    if-nez v12, :cond_c

    nop

    nop

    nop

    sget-object v12, Lsqk;->a:Lsqk;

    nop

    nop

    :cond_c
    iget v13, v12, Lsqk;->b:I

    nop

    nop

    nop

    nop

    and-int/lit8 v13, v13, 0x2

    nop

    nop

    nop

    if-eqz v13, :cond_f

    nop

    nop

    nop

    nop

    iget-object v13, v12, Lsqk;->d:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v6}, Lqqf;->a()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    nop

    if-nez v13, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v11}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    check-cast v13, Ltkb;

    nop

    invoke-virtual {v13, v12}, Ltkb;->r(Ltkg;)V

    iget-object v12, v13, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    if-nez v12, :cond_d

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkb;->o()V

    :cond_d
    iget-object v12, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v12, Lsqk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v12, Lsqk;->b:I

    nop

    or-int/lit8 v15, v15, 0x2

    nop

    nop

    nop

    iput v15, v12, Lsqk;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-object v14, v12, Lsqk;->d:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v13}, Ltkb;->i()Ltkg;

    move-result-object v12

    nop

    nop

    check-cast v12, Lsqk;

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkg;->C()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    if-nez v13, :cond_e

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_e
    iget-object v13, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Lsqn;

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v12, v13, Lsqn;->e:Lsqk;

    nop

    nop

    nop

    nop

    nop

    iget v12, v13, Lsqn;->b:I

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    or-int/2addr v12, v14

    nop

    iput v12, v13, Lsqn;->b:I

    nop

    :cond_f
    iget-object v12, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Lsqn;

    nop

    nop

    nop

    nop

    iget v13, v12, Lsqn;->c:I

    nop

    if-ne v13, v2, :cond_19

    nop

    iget-object v12, v12, Lsqn;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v12, Lsql;

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    :goto_10
    iget-object v14, v12, Lsql;->b:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v14}, Ltkv;->size()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    if-ge v13, v14, :cond_16

    nop

    nop

    nop

    nop

    iget-object v14, v12, Lsql;->b:Ltkv;

    nop

    invoke-interface {v14, v13}, Ltkv;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    check-cast v14, Lsqm;

    nop

    nop

    iget-object v15, v14, Lsqm;->c:Lsqk;

    nop

    if-nez v15, :cond_10

    nop

    nop

    sget-object v15, Lsqk;->a:Lsqk;

    nop

    nop

    nop

    nop

    nop

    :cond_10
    iget v2, v15, Lsqk;->b:I

    nop

    nop

    and-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    if-eqz v2, :cond_15

    nop

    nop

    iget-object v2, v15, Lsqk;->d:Ljava/lang/String;

    nop

    invoke-interface {v6}, Lqqf;->a()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_15

    nop

    nop

    nop

    nop

    if-nez v10, :cond_11

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v10

    nop

    check-cast v10, Ltkb;

    nop

    nop

    nop

    invoke-virtual {v10, v12}, Ltkb;->r(Ltkg;)V

    :cond_11
    const/4 v2, 0x5

    nop

    invoke-virtual {v14, v2}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v20

    nop

    nop

    nop

    move-object/from16 v2, v20

    nop

    nop

    nop

    check-cast v2, Ltkb;

    nop

    invoke-virtual {v2, v14}, Ltkb;->r(Ltkg;)V

    const/4 v14, 0x5

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v14}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v21

    nop

    nop

    move-object/from16 v14, v21

    nop

    check-cast v14, Ltkb;

    nop

    nop

    invoke-virtual {v14, v15}, Ltkb;->r(Ltkg;)V

    iget-object v15, v14, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v15

    nop

    nop

    nop

    nop

    nop

    if-nez v15, :cond_12

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkb;->o()V

    :cond_12
    iget-object v15, v14, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Lsqk;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v3

    nop

    nop

    nop

    nop

    nop

    iget v3, v15, Lsqk;->b:I

    nop

    nop

    or-int/lit8 v3, v3, 0x2

    nop

    nop

    iput v3, v15, Lsqk;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-object v11, v15, Lsqk;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    check-cast v3, Lsqk;

    nop

    nop

    nop

    iget-object v11, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    if-nez v11, :cond_13

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_13
    iget-object v11, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v11, Lsqm;

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v11, Lsqm;->c:Lsqk;

    nop

    nop

    nop

    iget v3, v11, Lsqm;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    nop

    or-int/2addr v3, v14

    nop

    nop

    nop

    nop

    iput v3, v11, Lsqm;->b:I

    nop

    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lsqm;

    nop

    nop

    nop

    nop

    iget-object v3, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    if-nez v3, :cond_14

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_14
    iget-object v3, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v3, Lsql;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lsql;->b()V

    iget-object v3, v3, Lsql;->b:Ltkv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v13, v2}, Ltkv;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_15
    move-object/from16 v21, v3

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    move-object/from16 v3, v21

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    const/4 v11, 0x5

    nop

    nop

    goto/16 :goto_10

    nop

    nop

    nop

    :cond_16
    move-object/from16 v21, v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_18

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    check-cast v2, Lsql;

    nop

    iget-object v3, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-nez v3, :cond_17

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_17
    iget-object v3, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v3, Lsqn;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Lsqn;->d:Ljava/lang/Object;

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    iput v2, v3, Lsqn;->c:I

    nop

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_18
    move-object/from16 v3, v21

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    :cond_19
    move-object/from16 v21, v3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    :goto_12
    iget-object v10, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Lsqn;

    nop

    nop

    nop

    nop

    iget-object v10, v10, Lsqn;->f:Ltkv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ltkv;->size()I

    move-result v10

    nop

    nop

    if-ge v3, v10, :cond_1d

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v10, Lsqn;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v10, Lsqn;->f:Ltkv;

    nop

    invoke-interface {v10, v3}, Ltkv;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    check-cast v10, Lsqk;

    nop

    nop

    nop

    iget v11, v10, Lsqk;->b:I

    nop

    and-int/lit8 v11, v11, 0x2

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_1c

    nop

    nop

    nop

    iget-object v11, v10, Lsqk;->d:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v6}, Lqqf;->a()Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    if-nez v11, :cond_1c

    nop

    nop

    nop

    nop

    const/4 v11, 0x5

    nop

    nop

    invoke-virtual {v10, v11}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v13

    nop

    check-cast v13, Ltkb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v10}, Ltkb;->r(Ltkg;)V

    iget-object v10, v13, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkg;->C()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    if-nez v10, :cond_1a

    nop

    nop

    invoke-virtual {v13}, Ltkb;->o()V

    :cond_1a
    iget-object v10, v13, Ltkb;->b:Ltkg;

    nop

    check-cast v10, Lsqk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v10, Lsqk;->b:I

    nop

    or-int/lit8 v14, v14, 0x2

    nop

    nop

    nop

    iput v14, v10, Lsqk;->b:I

    nop

    nop

    nop

    nop

    iput-object v12, v10, Lsqk;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ltkb;->i()Ltkg;

    move-result-object v10

    nop

    nop

    check-cast v10, Lsqk;

    nop

    nop

    nop

    nop

    iget-object v12, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    if-nez v12, :cond_1b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->o()V

    :cond_1b
    iget-object v12, v9, Ltkb;->b:Ltkg;

    nop

    check-cast v12, Lsqn;

    nop

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Lsqn;->b()V

    iget-object v12, v12, Lsqn;->f:Ltkv;

    nop

    invoke-interface {v12, v3, v10}, Ltkv;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    nop

    nop

    nop

    nop

    :cond_1c
    const/4 v11, 0x5

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    :cond_1d
    :goto_14
    move-object/from16 v3, v21

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_1f

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_1f
    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    check-cast v3, Luqp;

    nop

    nop

    sget-object v6, Luqp;->a:Luqp;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v3, Luqp;->b:I

    nop

    nop

    nop

    or-int/lit8 v6, v6, 0x8

    nop

    nop

    iput v6, v3, Luqp;->b:I

    nop

    nop

    iput-object v5, v3, Luqp;->f:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    const-class v5, Ljava/lang/OutOfMemoryError;

    nop

    nop

    nop

    if-ne v3, v5, :cond_20

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_20
    const-class v5, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    nop

    if-eqz v5, :cond_21

    nop

    nop

    move/from16 v2, v16

    nop

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_21
    const-class v5, Ljava/lang/RuntimeException;

    nop

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_22

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    :cond_22
    const-class v2, Ljava/lang/Error;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_23

    nop

    nop

    nop

    nop

    nop

    move v2, v11

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_23
    const/4 v2, 0x1

    nop

    nop

    :goto_15
    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_24

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_24
    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v5, v3

    nop

    check-cast v5, Luqp;

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, -0x1

    nop

    nop

    iput v2, v5, Luqp;->g:I

    nop

    nop

    nop

    nop

    nop

    iget v2, v5, Luqp;->b:I

    nop

    nop

    nop

    or-int/lit8 v2, v2, 0x10

    nop

    nop

    nop

    nop

    iput v2, v5, Luqp;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_25

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_25
    iget-object v2, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Luqp;

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Luqp;->b:I

    nop

    nop

    or-int/lit16 v3, v3, 0x80

    nop

    nop

    nop

    iput v3, v2, Luqp;->b:I

    nop

    nop

    nop

    nop

    iput-object v8, v2, Luqp;->h:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v9}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lsqn;

    nop

    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_26

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_26
    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v3, Luqp;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Luqp;->i:Lsqn;

    nop

    nop

    nop

    nop

    nop

    iget v2, v3, Luqp;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v2, v2, 0x100

    nop

    nop

    nop

    nop

    nop

    iput v2, v3, Luqp;->b:I

    nop

    sget v2, Lrok;->a:I

    nop

    nop

    nop

    nop

    iget-object v2, v4, Lqqa;->d:Ltxm;

    nop

    nop

    invoke-interface {v2}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lqqc;

    nop

    nop

    nop

    iget-boolean v3, v2, Lqqc;->b:Z

    nop

    nop

    nop

    if-eqz v3, :cond_39

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {p2 .. p2}, Lrok;->b(Ljava/lang/Throwable;)Lrpz;

    move-result-object v3

    nop

    if-eqz v3, :cond_39

    nop

    iget-object v3, v3, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lrpg;

    nop

    iget-object v3, v3, Lrpg;->a:Lryb;

    nop

    nop

    nop

    nop

    iget v5, v2, Lqqc;->c:I

    nop

    nop

    iget v6, v2, Lqqc;->d:I

    nop

    iget v2, v2, Lqqc;->e:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lrgw;->L(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    nop

    check-cast v3, Lsbh;

    nop

    nop

    nop

    iget v3, v3, Lsbh;->c:I

    nop

    nop

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lrgw;->K(I)Ljava/util/ArrayList;

    move-result-object v3

    nop

    nop

    nop

    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    nop

    nop

    nop

    nop

    if-ge v12, v14, :cond_2c

    nop

    nop

    nop

    nop

    add-int/lit8 v14, v12, 0x1

    nop

    nop

    nop

    nop

    nop

    if-le v14, v6, :cond_28

    nop

    sget-object v2, Luqq;->a:Luqq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    sub-int/2addr v2, v12

    nop

    nop

    nop

    iget-object v5, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_27

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_27
    iget-object v5, v10, Ltkb;->b:Ltkg;

    nop

    check-cast v5, Luqq;

    nop

    nop

    iget v6, v5, Luqq;->b:I

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    or-int/2addr v6, v8

    nop

    nop

    nop

    nop

    iput v6, v5, Luqq;->b:I

    nop

    nop

    nop

    nop

    nop

    iput v2, v5, Luqq;->c:I

    nop

    nop

    :goto_17
    move-object/from16 v19, v10

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :cond_28
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    check-cast v15, Ljava/lang/String;

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    nop

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    nop

    nop

    nop

    add-int/2addr v10, v13

    nop

    nop

    nop

    if-le v10, v2, :cond_2a

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Luqq;->a:Luqq;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v2, v12

    nop

    nop

    nop

    iget-object v5, v10, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    if-nez v5, :cond_29

    nop

    invoke-virtual {v10}, Ltkb;->o()V

    :cond_29
    iget-object v5, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Luqq;

    nop

    nop

    nop

    nop

    nop

    iget v6, v5, Luqq;->b:I

    nop

    or-int/lit8 v6, v6, 0x2

    nop

    iput v6, v5, Luqq;->b:I

    nop

    nop

    nop

    nop

    iput v2, v5, Luqq;->d:I

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    if-le v10, v5, :cond_2b

    nop

    nop

    move/from16 v18, v2

    nop

    const/4 v10, 0x0

    nop

    nop

    invoke-virtual {v15, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v2, v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v5

    nop

    nop

    goto :goto_18

    nop

    nop

    nop

    :cond_2b
    move/from16 v18, v2

    nop

    const/4 v10, 0x0

    nop

    nop

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    nop

    add-int/2addr v13, v2

    nop

    nop

    :goto_18
    move v12, v14

    nop

    nop

    nop

    move/from16 v2, v18

    nop

    nop

    nop

    nop

    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :cond_2c
    const/4 v10, 0x0

    nop

    nop

    const/16 v19, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_33

    nop

    nop

    nop

    nop

    nop

    if-nez v19, :cond_2d

    nop

    nop

    nop

    sget-object v2, Luqq;->a:Luqq;

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    :cond_2d
    move-object/from16 v2, v19

    nop

    nop

    :goto_1a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    move v13, v10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ge v13, v5, :cond_30

    nop

    nop

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    sub-int/2addr v8, v6

    nop

    nop

    add-int/lit8 v8, v8, -0x1

    nop

    nop

    nop

    nop

    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_2e

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_2e
    iget-object v6, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v6, Luqq;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Luqq;->a:Luqq;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v6, Luqq;->e:Ltkm;

    nop

    nop

    invoke-interface {v10}, Ltkm;->c()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-nez v12, :cond_2f

    nop

    nop

    nop

    nop

    invoke-static {v10}, Ltkg;->t(Ltkm;)Ltkm;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iput-object v10, v6, Luqq;->e:Ltkm;

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    iget-object v6, v6, Luqq;->e:Ltkm;

    nop

    invoke-interface {v6, v8}, Ltkm;->g(I)V

    add-int/lit8 v13, v13, 0x1

    nop

    goto :goto_1b

    nop

    nop

    nop

    :cond_30
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    if-nez v5, :cond_31

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_31
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    check-cast v5, Luqq;

    nop

    nop

    sget-object v6, Luqq;->a:Luqq;

    nop

    nop

    nop

    nop

    iget-object v6, v5, Luqq;->f:Ltkm;

    nop

    invoke-interface {v6}, Ltkm;->c()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-nez v8, :cond_32

    nop

    nop

    invoke-static {v6}, Ltkg;->t(Ltkm;)Ltkm;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iput-object v6, v5, Luqq;->f:Ltkm;

    nop

    nop

    nop

    nop

    :cond_32
    iget-object v5, v5, Luqq;->f:Ltkm;

    nop

    nop

    invoke-static {v11, v5}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    move-object/from16 v19, v2

    nop

    :cond_33
    sget-object v2, Luqr;->a:Luqr;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    invoke-static {v3}, Lrgw;->L(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_34

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_34
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v5, Luqr;

    nop

    nop

    nop

    nop

    iget-object v6, v5, Luqr;->c:Ltkv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ltkv;->c()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-nez v8, :cond_35

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v6

    nop

    nop

    nop

    nop

    iput-object v6, v5, Luqr;->c:Ltkv;

    nop

    nop

    nop

    nop

    nop

    :cond_35
    iget-object v5, v5, Luqr;->c:Ltkv;

    nop

    nop

    nop

    invoke-static {v3, v5}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    if-eqz v19, :cond_37

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v19 .. v19}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    check-cast v3, Luqq;

    nop

    nop

    nop

    nop

    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_36

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkb;->o()V

    :cond_36
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

    check-cast v5, Luqr;

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v5, Luqr;->d:Luqq;

    nop

    nop

    iget v3, v5, Luqr;->b:I

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v3, v6

    nop

    nop

    nop

    nop

    iput v3, v5, Luqr;->b:I

    nop

    nop

    nop

    nop

    nop

    :cond_37
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Luqr;

    nop

    nop

    nop

    nop

    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_38

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkb;->o()V

    :cond_38
    iget-object v3, v7, Ltkb;->b:Ltkg;

    nop

    check-cast v3, Luqp;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Luqp;->k:Luqr;

    nop

    nop

    nop

    iget v2, v3, Luqp;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v2, v2, 0x400

    nop

    nop

    iput v2, v3, Luqp;->b:I

    nop

    nop

    :cond_39
    invoke-virtual {v7}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    check-cast v2, Luqp;

    nop

    invoke-virtual {v4, v2}, Lqqa;->l(Luqp;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v1, Lqpz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

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

    :goto_1d
    move-object v2, v0

    nop

    :try_start_3
    sget-object v3, Lqmo;->a:Lsdb;

    nop

    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    invoke-interface {v3, v2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    const/16 v3, 0x152c

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    const-string v3, "Failed to record crash."

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_3a

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    iget-object v1, v1, Lqpz;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    move-object/from16 v3, p2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_25
    if-eqz v1, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_3b
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_26
    move-object/from16 v3, p2

    nop

    nop

    :try_start_4
    iget-object v4, v1, Lqpz;->a:Lqqa;

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    sget-object v6, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    nop

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    sget-object v6, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    nop

    nop

    nop

    invoke-static {v6}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    iget-object v6, v4, Lqqa;->g:Lqts;

    nop

    nop

    nop

    iget-object v7, v4, Lqqa;->a:Lqmf;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Lqts;->a(Lqmf;)Ltkb;

    move-result-object v7

    nop

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    nop

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    nop
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_27
    goto/32 :goto_9

    nop

    nop

    :goto_28
    invoke-interface {v1, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_1e

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_b

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    throw v4

    nop

    :goto_32
    goto/32 :goto_3b

    nop

    nop

    :goto_33
    move-object/from16 v2, p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v4, v0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_35
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_36
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_3c

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_3c
    goto/32 :goto_2b

    nop

    :goto_39
    if-eqz v12, :cond_3d

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_3d
    :try_start_5
    invoke-virtual {v10}, Ltkb;->o()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3a
    :try_start_6
    iget-object v12, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v12, Lsqk;

    nop

    iget v13, v12, Lsqk;->b:I

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    or-int/2addr v13, v14

    nop

    nop

    nop

    nop

    nop

    iput v13, v12, Lsqk;->b:I

    nop

    nop

    iput-object v11, v12, Lsqk;->c:Ljava/lang/String;

    nop

    nop

    iget-object v11, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_3d

    nop

    nop

    :goto_3b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_27

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v11, :cond_3e

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_3e
    :try_start_7
    invoke-virtual {v9}, Ltkb;->o()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3e
    :try_start_8
    iget-object v11, v9, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v11, Lsqn;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v10

    nop

    nop

    check-cast v10, Lsqk;

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v11, Lsqn;->e:Lsqk;

    nop

    iget v10, v11, Lsqn;->b:I

    nop

    nop

    or-int/2addr v10, v14

    nop

    nop

    nop

    iput v10, v11, Lsqn;->b:I

    nop

    nop

    new-instance v10, Ljava/util/IdentityHashMap;

    nop

    invoke-direct {v10}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v12, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    nop

    nop

    nop

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v3, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lrkm;->i(Ljava/lang/Throwable;)Ltkb;

    move-result-object v15

    nop

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3f
    invoke-interface {v12}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    nop

    nop

    nop

    nop

    nop

    const/16 v16, 0x2

    nop

    nop

    nop

    nop

    nop

    if-nez v15, :cond_8

    nop

    invoke-interface {v12}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    check-cast v15, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v15}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    nop

    nop

    nop

    nop

    check-cast v17, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v17

    nop

    nop

    if-eqz v17, :cond_3

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    nop

    nop

    nop

    invoke-virtual {v10, v14}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_41
    if-eqz v19, :cond_3f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3f
    :try_start_9
    invoke-virtual {v10}, Ljava/util/IdentityHashMap;->size()I

    move-result v19

    nop

    nop

    nop

    nop

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    invoke-virtual {v10, v14, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lrkm;->i(Ljava/lang/Throwable;)Ltkb;

    move-result-object v2

    nop

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v14}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop
.end method
