.class final Llje;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lljg;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lljg;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Llje;->a:Lljg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llje;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_0
    iget-object v4, v1, Llje;->a:Lljg;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eq v7, v8, :cond_0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    goto :goto_0

    :cond_0
    sget-object v7, Lnlx;->f:Lnlx;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    sget-object v8, Lnlu;->f:Lnlu;

    invoke-virtual {v8}, Lnws;->O()Lnwn;

    move-result-object v8

    iget-object v9, v8, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_1
    iget-object v9, v8, Lnwn;->b:Lnws;

    check-cast v9, Lnlu;

    const-string v10, ""

    iget v11, v9, Lnlu;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v9, Lnlu;->a:I

    iput-object v10, v9, Lnlu;->b:Ljava/lang/String;

    iget-object v9, v7, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_2
    iget-object v9, v7, Lnwn;->b:Lnws;

    check-cast v9, Lnlx;

    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Lnlu;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v9, Lnlx;->d:Lnlu;

    iget v8, v9, Lnlx;->a:I

    or-int/2addr v8, v12

    iput v8, v9, Lnlx;->a:I

    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayDeque;

    invoke-direct {v10}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v10, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v3, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lndd;->o(Ljava/lang/Throwable;)Lnwn;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v13, :cond_a

    :try_start_1
    invoke-interface {v10}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Throwable;

    invoke-virtual {v8, v13}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_5

    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v8}, Ljava/util/IdentityHashMap;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Lndd;->o(Ljava/lang/Throwable;)Lnwn;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnwn;

    invoke-virtual {v8, v12}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v14, v11, Lnwn;->b:Lnws;

    invoke-virtual {v14}, Lnws;->ac()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v11}, Lnwn;->p()V

    :cond_4
    iget-object v11, v11, Lnwn;->b:Lnws;

    check-cast v11, Lnlw;

    sget-object v14, Lnlw;->e:Lnlw;

    iget v14, v11, Lnlw;->a:I

    const/16 v17, 0x2

    or-int/lit8 v14, v14, 0x2

    iput v14, v11, Lnlw;->a:I

    iput v12, v11, Lnlw;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :try_start_3
    const-class v11, Ljava/lang/Throwable;

    const-string v12, "getSuppressed"

    const/4 v14, 0x0

    new-array v2, v14, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v2, v13, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Throwable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_4
    new-array v11, v2, [Ljava/lang/Throwable;

    move-object v2, v11

    :goto_2
    array-length v11, v2

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v11, :cond_9

    aget-object v12, v2, v14

    invoke-virtual {v8, v12}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v8}, Ljava/util/IdentityHashMap;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Lndd;->o(Ljava/lang/Throwable;)Lnwn;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnwn;

    invoke-virtual {v8, v12}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v17, v2

    iget-object v2, v13, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_7
    iget-object v2, v13, Lnwn;->b:Lnws;

    check-cast v2, Lnlw;

    sget-object v13, Lnlw;->e:Lnlw;

    iget-object v13, v2, Lnlw;->d:Lnwy;

    invoke-interface {v13}, Lnwy;->c()Z

    move-result v19

    if-nez v19, :cond_8

    invoke-static {v13}, Lnws;->S(Lnwy;)Lnwy;

    move-result-object v13

    iput-object v13, v2, Lnlw;->d:Lnwy;

    :cond_8
    iget-object v2, v2, Lnlw;->d:Lnwy;

    invoke-interface {v2, v12}, Lnwy;->g(I)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v17

    goto :goto_3

    :cond_9
    move-object/from16 v2, p1

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_a
    sget-object v2, Lnlv;->b:Lnlv;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v8, :cond_c

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnwn;

    iget-object v11, v2, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_b
    iget-object v11, v2, Lnwn;->b:Lnws;

    check-cast v11, Lnlv;

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v10

    check-cast v10, Lnlw;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lnlv;->b()V

    iget-object v11, v11, Lnlv;->a:Lnxa;

    invoke-interface {v11, v10}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_c
    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_d
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Lnlx;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnlv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v8, Lnlx;->c:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v8, Lnlx;->b:I

    iget-object v8, v4, Lljg;->d:Logd;

    invoke-interface {v8}, Logd;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v11, 0x5

    if-eqz v9, :cond_22

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lljj;

    iget-object v12, v7, Lnwn;->b:Lnws;

    check-cast v12, Lnlx;

    iget-object v12, v12, Lnlx;->d:Lnlu;

    if-nez v12, :cond_e

    sget-object v12, Lnlu;->f:Lnlu;

    :cond_e
    iget v13, v12, Lnlu;->a:I

    const/4 v14, 0x2

    and-int/2addr v13, v14

    if-eqz v13, :cond_11

    iget-object v13, v12, Lnlu;->c:Ljava/lang/String;

    invoke-interface {v9}, Lljj;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v12, v11}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnwn;

    invoke-virtual {v13, v12}, Lnwn;->s(Lnws;)V

    iget-object v12, v13, Lnwn;->b:Lnws;

    invoke-virtual {v12}, Lnws;->ac()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_f
    iget-object v12, v13, Lnwn;->b:Lnws;

    check-cast v12, Lnlu;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v12, Lnlu;->a:I

    const/16 v17, 0x2

    or-int/lit8 v15, v15, 0x2

    iput v15, v12, Lnlu;->a:I

    iput-object v14, v12, Lnlu;->c:Ljava/lang/String;

    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v12

    check-cast v12, Lnlu;

    iget-object v13, v7, Lnwn;->b:Lnws;

    invoke-virtual {v13}, Lnws;->ac()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_10
    iget-object v13, v7, Lnwn;->b:Lnws;

    check-cast v13, Lnlx;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v12, v13, Lnlx;->d:Lnlu;

    iget v12, v13, Lnlx;->a:I

    const/4 v14, 0x1

    or-int/2addr v12, v14

    iput v12, v13, Lnlx;->a:I

    :cond_11
    iget-object v12, v7, Lnwn;->b:Lnws;

    check-cast v12, Lnlx;

    iget v13, v12, Lnlx;->b:I

    if-ne v13, v2, :cond_1c

    iget-object v12, v12, Lnlx;->c:Ljava/lang/Object;

    check-cast v12, Lnlv;

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_6
    iget-object v13, v12, Lnlv;->a:Lnxa;

    invoke-interface {v13}, Lnxa;->size()I

    move-result v13

    if-ge v14, v13, :cond_19

    iget-object v13, v12, Lnlv;->a:Lnxa;

    invoke-interface {v13, v14}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnlw;

    iget-object v15, v13, Lnlw;->b:Lnlu;

    if-nez v15, :cond_12

    sget-object v15, Lnlu;->f:Lnlu;

    :cond_12
    iget v2, v15, Lnlu;->a:I

    const/16 v17, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_18

    iget-object v2, v15, Lnlu;->c:Ljava/lang/String;

    invoke-interface {v9}, Lljj;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    if-nez v10, :cond_13

    const/4 v2, 0x5

    invoke-virtual {v12, v2}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnwn;

    invoke-virtual {v10, v12}, Lnwn;->s(Lnws;)V

    :cond_13
    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, Lnwn;

    invoke-virtual {v2, v13}, Lnwn;->s(Lnws;)V

    const/4 v13, 0x5

    invoke-virtual {v15, v13}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v13, v21

    check-cast v13, Lnwn;

    invoke-virtual {v13, v15}, Lnwn;->s(Lnws;)V

    iget-object v15, v13, Lnwn;->b:Lnws;

    invoke-virtual {v15}, Lnws;->ac()Z

    move-result v15

    if-nez v15, :cond_14

    invoke-virtual {v13}, Lnwn;->p()V

    :cond_14
    iget-object v15, v13, Lnwn;->b:Lnws;

    check-cast v15, Lnlu;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v8

    iget v8, v15, Lnlu;->a:I

    const/16 v17, 0x2

    or-int/lit8 v8, v8, 0x2

    iput v8, v15, Lnlu;->a:I

    iput-object v11, v15, Lnlu;->c:Ljava/lang/String;

    invoke-virtual {v13}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Lnlu;

    iget-object v11, v2, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_15

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_15
    iget-object v11, v2, Lnwn;->b:Lnws;

    check-cast v11, Lnlw;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v11, Lnlw;->b:Lnlu;

    iget v8, v11, Lnlw;->a:I

    const/4 v13, 0x1

    or-int/2addr v8, v13

    iput v8, v11, Lnlw;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnlw;

    iget-object v8, v10, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_16
    iget-object v8, v10, Lnwn;->b:Lnws;

    check-cast v8, Lnlv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lnlv;->b()V

    iget-object v8, v8, Lnlv;->a:Lnxa;

    invoke-interface {v8, v14, v2}, Lnxa;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_17
    move-object/from16 v21, v8

    goto :goto_7

    :cond_18
    move-object/from16 v21, v8

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v21

    const/4 v2, 0x4

    const/4 v11, 0x5

    goto/16 :goto_6

    :cond_19
    move-object/from16 v21, v8

    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnlv;

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_1a
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Lnlx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v8, Lnlx;->c:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v8, Lnlx;->b:I

    move-object/from16 v8, v21

    goto/16 :goto_5

    :cond_1b
    const/4 v2, 0x4

    move-object/from16 v8, v21

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v21, v8

    const/4 v14, 0x0

    :goto_8
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Lnlx;

    iget-object v8, v8, Lnlx;->e:Lnxa;

    invoke-interface {v8}, Lnxa;->size()I

    move-result v8

    if-ge v14, v8, :cond_21

    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Lnlx;

    iget-object v8, v8, Lnlx;->e:Lnxa;

    invoke-interface {v8, v14}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnlu;

    iget v10, v8, Lnlu;->a:I

    const/4 v11, 0x2

    and-int/2addr v10, v11

    if-eqz v10, :cond_20

    iget-object v10, v8, Lnlu;->c:Ljava/lang/String;

    invoke-interface {v9}, Lljj;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    const/4 v12, 0x5

    invoke-virtual {v8, v12}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnwn;

    invoke-virtual {v10, v8}, Lnwn;->s(Lnws;)V

    iget-object v8, v10, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_1d
    iget-object v8, v10, Lnwn;->b:Lnws;

    check-cast v8, Lnlu;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v8, Lnlu;->a:I

    const/4 v15, 0x2

    or-int/2addr v13, v15

    iput v13, v8, Lnlu;->a:I

    iput-object v11, v8, Lnlu;->c:Ljava/lang/String;

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Lnlu;

    iget-object v10, v7, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_1e
    iget-object v10, v7, Lnwn;->b:Lnws;

    check-cast v10, Lnlx;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Lnlx;->b()V

    iget-object v10, v10, Lnlx;->e:Lnxa;

    invoke-interface {v10, v14, v8}, Lnxa;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1f
    const/4 v12, 0x5

    goto :goto_9

    :cond_20
    const/4 v12, 0x5

    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_21
    move-object/from16 v8, v21

    goto/16 :goto_5

    :cond_22
    const/4 v12, 0x5

    invoke-virtual {v4}, Lljg;->i()Lnwn;

    move-result-object v8

    iget-object v9, v8, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_23

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_23
    iget-object v9, v8, Lnwn;->b:Lnws;

    check-cast v9, Lozh;

    sget-object v11, Lozh;->l:Lozh;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v9, Lozh;->a:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v9, Lozh;->a:I

    iput-object v5, v9, Lozh;->e:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v9, Ljava/lang/OutOfMemoryError;

    if-ne v5, v9, :cond_24

    const/4 v2, 0x3

    goto :goto_a

    :cond_24
    const-class v9, Ljava/lang/NullPointerException;

    invoke-virtual {v9, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_25

    const/4 v2, 0x2

    goto :goto_a

    :cond_25
    const-class v9, Ljava/lang/RuntimeException;

    invoke-virtual {v9, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_26

    goto :goto_a

    :cond_26
    const-class v2, Ljava/lang/Error;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x5

    goto :goto_a

    :cond_27
    const/4 v2, 0x1

    :goto_a
    iget-object v5, v8, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_28

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_28
    iget-object v5, v8, Lnwn;->b:Lnws;

    move-object v9, v5

    check-cast v9, Lozh;

    add-int/lit8 v2, v2, -0x1

    iput v2, v9, Lozh;->f:I

    iget v2, v9, Lozh;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v9, Lozh;->a:I

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_29
    iget-object v2, v8, Lnwn;->b:Lnws;

    check-cast v2, Lozh;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lozh;->a:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v2, Lozh;->a:I

    iput-object v6, v2, Lozh;->g:Ljava/lang/String;

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnlx;

    iget-object v5, v8, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_2a
    iget-object v5, v8, Lnwn;->b:Lnws;

    check-cast v5, Lozh;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v5, Lozh;->h:Lnlx;

    iget v2, v5, Lozh;->a:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v5, Lozh;->a:I

    sget v2, Lmng;->a:I

    iget-object v2, v4, Lljg;->f:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llji;

    iget-boolean v5, v2, Llji;->a:Z

    if-eqz v5, :cond_3d

    invoke-static/range {p2 .. p2}, Lmng;->b(Ljava/lang/Throwable;)Llhz;

    move-result-object v5

    if-eqz v5, :cond_3d

    iget-object v5, v5, Llhz;->a:Ljava/lang/Object;

    check-cast v5, Lmnv;

    iget-object v5, v5, Lmnv;->a:Lmvv;

    iget v6, v2, Llji;->b:I

    iget v7, v2, Llji;->c:I

    iget v2, v2, Llji;->d:I

    invoke-static {v5}, Llyh;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    check-cast v5, Lmyu;

    iget v5, v5, Lmyu;->c:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5}, Llyh;->F(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {}, Llyh;->B()Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {}, Llyh;->B()Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_30

    add-int/lit8 v15, v14, 0x1

    if-le v15, v7, :cond_2c

    sget-object v2, Lozi;->f:Lozi;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v14

    iget-object v6, v10, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_2b
    iget-object v6, v10, Lnwn;->b:Lnws;

    check-cast v6, Lozi;

    iget v7, v6, Lozi;->a:I

    const/4 v9, 0x1

    or-int/2addr v7, v9

    iput v7, v6, Lozi;->a:I

    iput v2, v6, Lozi;->b:I

    const/4 v7, 0x0

    goto/16 :goto_d

    :cond_2c
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Ljava/lang/String;

    move/from16 v19, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v13

    if-le v7, v2, :cond_2e

    sget-object v2, Lozi;->f:Lozi;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v14

    iget-object v6, v10, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_2d
    iget-object v6, v10, Lnwn;->b:Lnws;

    check-cast v6, Lozi;

    iget v7, v6, Lozi;->a:I

    const/16 v17, 0x2

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lozi;->a:I

    iput v2, v6, Lozi;->c:I

    const/4 v7, 0x0

    goto :goto_d

    :cond_2e
    const/16 v17, 0x2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v6, :cond_2f

    move/from16 v18, v2

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v6

    goto :goto_c

    :cond_2f
    move/from16 v18, v2

    const/4 v7, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v13, v2

    :goto_c
    move v14, v15

    move/from16 v2, v18

    move/from16 v7, v19

    goto/16 :goto_b

    :cond_30
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_d
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    if-nez v10, :cond_31

    sget-object v2, Lozi;->f:Lozi;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    move-object v10, v2

    :cond_31
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    :goto_e
    if-ge v7, v2, :cond_34

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    iget-object v6, v10, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_32

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_32
    iget-object v6, v10, Lnwn;->b:Lnws;

    check-cast v6, Lozi;

    sget-object v13, Lozi;->f:Lozi;

    iget-object v13, v6, Lozi;->d:Lnwy;

    invoke-interface {v13}, Lnwy;->c()Z

    move-result v14

    if-nez v14, :cond_33

    invoke-static {v13}, Lnws;->S(Lnwy;)Lnwy;

    move-result-object v13

    iput-object v13, v6, Lozi;->d:Lnwy;

    :cond_33
    iget-object v6, v6, Lozi;->d:Lnwy;

    invoke-interface {v6, v9}, Lnwy;->g(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_34
    iget-object v2, v10, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v10}, Lnwn;->p()V

    :cond_35
    iget-object v2, v10, Lnwn;->b:Lnws;

    check-cast v2, Lozi;

    sget-object v6, Lozi;->f:Lozi;

    iget-object v6, v2, Lozi;->e:Lnwy;

    invoke-interface {v6}, Lnwy;->c()Z

    move-result v7

    if-nez v7, :cond_36

    invoke-static {v6}, Lnws;->S(Lnwy;)Lnwy;

    move-result-object v6

    iput-object v6, v2, Lozi;->e:Lnwy;

    :cond_36
    iget-object v2, v2, Lozi;->e:Lnwy;

    invoke-static {v12, v2}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    :cond_37
    sget-object v2, Lozj;->d:Lozj;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-static {v5}, Llyh;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_38

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_38
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Lozj;

    iget-object v7, v6, Lozj;->b:Lnxa;

    invoke-interface {v7}, Lnxa;->c()Z

    move-result v9

    if-nez v9, :cond_39

    invoke-static {v7}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v7

    iput-object v7, v6, Lozj;->b:Lnxa;

    :cond_39
    iget-object v6, v6, Lozj;->b:Lnxa;

    invoke-static {v5, v6}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    if-eqz v10, :cond_3b

    invoke-virtual {v10}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Lozi;

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_3a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_3a
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Lozj;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v6, Lozj;->c:Lozi;

    iget v5, v6, Lozj;->a:I

    const/4 v7, 0x1

    or-int/2addr v5, v7

    iput v5, v6, Lozj;->a:I

    :cond_3b
    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozj;

    iget-object v5, v8, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-virtual {v8}, Lnwn;->p()V

    :cond_3c
    iget-object v5, v8, Lnwn;->b:Lnws;

    check-cast v5, Lozh;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v5, Lozh;->j:Lozj;

    iget v2, v5, Lozh;->a:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v5, Lozh;->a:I

    :cond_3d
    invoke-virtual {v8}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lozh;

    invoke-virtual {v4, v2}, Lljg;->f(Lozh;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, v1, Llje;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_3e

    move-object/from16 v4, p1

    :goto_f
    invoke-interface {v2, v4, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_10

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v4, v2

    :goto_10
    move-object v2, v0

    goto :goto_12

    :catch_2
    move-exception v0

    move-object v4, v2

    :goto_11
    move-object v2, v0

    :try_start_5
    sget-object v5, Lljg;->a:Lnak;

    invoke-virtual {v5}, Lnaf;->c()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-interface {v5, v2}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v5, 0x119a

    invoke-interface {v2, v5}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v5, "Failed to record crash."

    invoke-interface {v2, v5}, Lnah;->o(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v2, v1, Llje;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_3e

    goto :goto_f

    :cond_3e
    return-void

    :catchall_2
    move-exception v0

    goto :goto_10

    :goto_12
    iget-object v5, v1, Llje;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v5, :cond_3f

    invoke-interface {v5, v4, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3f
    goto :goto_14

    :goto_13
    throw v2

    :goto_14
    goto :goto_13
.end method
