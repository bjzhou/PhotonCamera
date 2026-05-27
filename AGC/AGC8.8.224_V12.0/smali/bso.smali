.class final Lbso;
.super Ljava/lang/Object;

# interfaces
.implements Lbrp;
.implements Lbqn;


# instance fields
.field private final a:Lbro;

.field private final b:Lbrq;

.field private c:I

.field private d:I

.field private e:Lbqb;

.field private f:Ljava/util/List;

.field private g:I

.field private h:Ljava/io/File;

.field private i:Lbsp;

.field private volatile j:Lva;


# direct methods
.method public constructor <init>(Lbrq;Lbro;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lbso;->d:I

    iput-object p1, p0, Lbso;->b:Lbrq;

    iput-object p2, p0, Lbso;->a:Lbro;

    return-void
.end method

.method private final d()Z
    .locals 2

    iget v0, p0, Lbso;->g:I

    iget-object v1, p0, Lbso;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lbso;->j:Lva;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lbqo;->bg()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lbso;->a:Lbro;

    iget-object v1, p0, Lbso;->e:Lbqb;

    iget-object v2, p0, Lbso;->j:Lva;

    iget-object v3, v2, Lva;->a:Ljava/lang/Object;

    const/4 v4, 0x4

    iget-object v5, p0, Lbso;->i:Lbsp;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lbro;->d(Lbqb;Ljava/lang/Object;Lbqo;ILbqb;)V

    return-void
.end method

.method public final c()Z
    .locals 21

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lbso;->b:Lbrq;

    invoke-virtual {v0}, Lbrq;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Lbso;->b:Lbrq;

    iget-object v4, v2, Lbrq;->c:Lboq;

    invoke-virtual {v4}, Lboq;->a()Lboy;

    move-result-object v4

    iget-object v5, v2, Lbrq;->d:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v2, Lbrq;->g:Ljava/lang/Class;

    iget-object v2, v2, Lbrq;->j:Ljava/lang/Class;

    iget-object v7, v4, Lboy;->g:Ldne;

    iget-object v8, v7, Ldne;->b:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcau;

    if-nez v8, :cond_1

    new-instance v8, Lcau;

    invoke-direct {v8, v5, v6, v2}, Lcau;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v5, v6, v2}, Lcau;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    :goto_0
    iget-object v10, v7, Ldne;->a:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v11, v7, Ldne;->a:Ljava/lang/Object;

    check-cast v11, Lxf;

    invoke-virtual {v11, v8}, Lxf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v7, v7, Ldne;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v11, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v4, Lboy;->h:Ldne;

    invoke-virtual {v7, v5}, Ldne;->B(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    iget-object v10, v4, Lboy;->f:Ldne;

    invoke-virtual {v10, v8, v6}, Ldne;->t(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    iget-object v12, v4, Lboy;->e:Lbkc;

    invoke-virtual {v12, v10, v2}, Lbkc;->n(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v4, v4, Lboy;->g:Ldne;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v4, Ldne;->a:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v4, v4, Ldne;->a:Ljava/lang/Object;

    new-instance v10, Lcau;

    invoke-direct {v10, v5, v6, v2}, Lcau;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v4, Lxf;

    invoke-virtual {v4, v10, v7}, Lxf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_6
    :goto_3
    iget-object v2, v1, Lbso;->f:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lbso;->d()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    iput-object v9, v1, Lbso;->j:Lva;

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    invoke-direct/range {p0 .. p0}, Lbso;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lbso;->f:Ljava/util/List;

    iget v2, v1, Lbso;->g:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v1, Lbso;->g:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbuz;

    iget-object v2, v1, Lbso;->h:Ljava/io/File;

    iget-object v5, v1, Lbso;->b:Lbrq;

    iget v6, v5, Lbrq;->e:I

    iget v7, v5, Lbrq;->f:I

    iget-object v5, v5, Lbrq;->h:Lbqf;

    invoke-interface {v0, v2, v6, v7, v5}, Lbuz;->b(Ljava/lang/Object;IILbqf;)Lva;

    move-result-object v0

    iput-object v0, v1, Lbso;->j:Lva;

    iget-object v0, v1, Lbso;->j:Lva;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lbso;->b:Lbrq;

    iget-object v2, v1, Lbso;->j:Lva;

    iget-object v2, v2, Lva;->a:Ljava/lang/Object;

    invoke-interface {v2}, Lbqo;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbrq;->h(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lbso;->j:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    iget-object v2, v1, Lbso;->b:Lbrq;

    iget-object v2, v2, Lbrq;->n:Lbos;

    invoke-interface {v0, v2, v1}, Lbqo;->f(Lbos;Lbqn;)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    return v3

    :cond_a
    :goto_5
    iget v2, v1, Lbso;->d:I

    add-int/2addr v2, v4

    iput v2, v1, Lbso;->d:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_c

    iget v2, v1, Lbso;->c:I

    add-int/2addr v2, v4

    iput v2, v1, Lbso;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_b

    return v3

    :cond_b
    iput v3, v1, Lbso;->d:I

    :cond_c
    iget v2, v1, Lbso;->c:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbqb;

    iget v4, v1, Lbso;->d:I

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iget-object v5, v1, Lbso;->b:Lbrq;

    invoke-virtual {v5, v4}, Lbrq;->a(Ljava/lang/Class;)Lbqj;

    move-result-object v18

    new-instance v5, Lbsp;

    iget-object v6, v1, Lbso;->b:Lbrq;

    invoke-virtual {v6}, Lbrq;->c()Lbsu;

    move-result-object v13

    iget-object v6, v1, Lbso;->b:Lbrq;

    iget-object v15, v6, Lbrq;->m:Lbqb;

    iget v7, v6, Lbrq;->e:I

    iget v8, v6, Lbrq;->f:I

    iget-object v10, v6, Lbrq;->h:Lbqf;

    move-object v12, v5

    move-object v14, v2

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Lbsp;-><init>(Lbsu;Lbqb;Lbqb;IILbqj;Ljava/lang/Class;Lbqf;)V

    iput-object v5, v1, Lbso;->i:Lbsp;

    invoke-virtual {v6}, Lbrq;->d()Lbtl;

    move-result-object v4

    iget-object v5, v1, Lbso;->i:Lbsp;

    invoke-interface {v4, v5}, Lbtl;->a(Lbqb;)Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Lbso;->h:Ljava/io/File;

    if-eqz v4, :cond_6

    iput-object v2, v1, Lbso;->e:Lbqb;

    iget-object v2, v1, Lbso;->b:Lbrq;

    invoke-virtual {v2, v4}, Lbrq;->g(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lbso;->f:Ljava/util/List;

    iput v3, v1, Lbso;->g:I

    goto/16 :goto_3

    :cond_d
    const-class v0, Ljava/io/File;

    iget-object v2, v1, Lbso;->b:Lbrq;

    iget-object v2, v2, Lbrq;->j:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v3

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, v1, Lbso;->b:Lbrq;

    iget-object v2, v2, Lbrq;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lbso;->b:Lbrq;

    iget-object v3, v3, Lbrq;->j:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find any load path from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lbso;->a:Lbro;

    iget-object v1, p0, Lbso;->i:Lbsp;

    iget-object v2, p0, Lbso;->j:Lva;

    iget-object v2, v2, Lva;->a:Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-interface {v0, v1, p1, v2, v3}, Lbro;->b(Lbqb;Ljava/lang/Exception;Lbqo;I)V

    return-void
.end method
