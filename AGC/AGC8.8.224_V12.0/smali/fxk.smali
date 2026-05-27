.class public final Lfxk;
.super Ljava/lang/Object;

# interfaces
.implements Lfyy;


# instance fields
.field public final a:Lgxl;

.field public final b:Lfte;

.field public final c:Lgvb;

.field public d:Lkab;

.field public final synthetic e:Lfxl;

.field private final f:Lfxy;

.field private final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lfxl;Lfxy;Lgxl;Lfte;Lgvb;)V
    .locals 0

    iput-object p1, p0, Lfxk;->e:Lfxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfxk;->f:Lfxy;

    iput-object p3, p0, Lfxk;->a:Lgxl;

    iput-object p4, p0, Lfxk;->b:Lfte;

    iput-object p5, p0, Lfxk;->c:Lgvb;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfxk;->g:Ljava/util/List;

    return-void
.end method

.method private final b(Ljava/util/List;)Ljava/util/List;
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lfxk;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    new-instance v1, Lfws;

    new-instance v3, Lkmb;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpb;

    invoke-direct {v3, v4}, Lkmb;-><init>(Lkpb;)V

    iget-object v4, p0, Lfxk;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfws;

    invoke-virtual {v4}, Lfws;->k()Lnou;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lfws;-><init>(Lkpb;Lnou;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Lfxk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpb;

    invoke-interface {v1}, Lkpb;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 2

    iget-object v0, p0, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->c:Lcea;

    invoke-virtual {v0}, Lcea;->c()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lkab;->b(I)Lkab;

    move-result-object v0

    iput-object v0, p0, Lfxk;->d:Lkab;

    iget-object v0, p0, Lfxk;->g:Ljava/util/List;

    new-instance v1, Lfws;

    invoke-direct {v1, p1, p2}, Lfws;-><init>(Lkpb;Lnou;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final close()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lfxk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, v1, Lfxk;->e:Lfxl;

    iget-object v0, v0, Lfxl;->a:Lkaq;

    iget-object v2, v1, Lfxk;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " images, which is different than  1. Abort shot."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lkaq;->i(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lfxk;->c()V

    return-void

    :cond_0
    iget-object v0, v1, Lfxk;->d:Lkab;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v1, Lfxk;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfws;

    invoke-virtual {v0}, Lfws;->k()Lnou;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x3e8

    invoke-interface {v0, v5, v6, v4}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkou;

    iget-object v4, v1, Lfxk;->a:Lgxl;

    invoke-interface {v4}, Lgxl;->k()Lhjc;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lhjc;->c(Lkoq;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v1, Lfxk;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfws;

    invoke-virtual {v5}, Lfws;->m()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lkma;

    invoke-direct {v7, v5, v6}, Lkma;-><init>(Lkpb;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lfxk;->e:Lfxl;

    iget-object v6, v6, Lfxl;->a:Lkaq;

    sget-object v7, Lfwr;->b:Lfwq;

    invoke-virtual {v5, v7}, Lfws;->l(Lfwq;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Ignoring and closing image "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lkaq;->i(Ljava/lang/String;)V

    invoke-virtual {v5}, Lkoy;->close()V

    goto :goto_0

    :cond_2
    invoke-direct {v1, v0}, Lfxk;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v0}, Lfxk;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v0}, Lfxk;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v7, v1, Lfxk;->f:Lfxy;

    iget-object v8, v1, Lfxk;->d:Lkab;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkpb;

    invoke-interface {v11}, Lkpb;->d()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v2, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfws;

    invoke-virtual {v4}, Lkoy;->close()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v4

    goto/16 :goto_6

    :cond_4
    new-instance v10, Ljuf;

    invoke-direct {v10}, Ljuf;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lfws;

    new-instance v14, Lkmb;

    invoke-direct {v14, v13}, Lkmb;-><init>(Lkpb;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v12, Lcip;

    invoke-direct {v12}, Lcip;-><init>()V

    invoke-virtual {v12, v11}, Lmuo;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v12}, Ljuf;->d(Lkad;)V

    invoke-static {}, Lgkj;->b()Lgqv;

    move-result-object v12

    :try_start_1
    iget-object v13, v12, Lgqv;->a:Lnph;

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkpb;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lfws;

    invoke-virtual/range {v16 .. v16}, Lfws;->k()Lnou;

    move-result-object v2

    invoke-static {v15}, Lgqr;->a(Lkpb;)Lgqq;

    move-result-object v15

    iput-object v8, v15, Lgqq;->c:Lkab;

    iput-object v2, v15, Lgqq;->d:Lnou;

    invoke-virtual {v15}, Lgqq;->a()Lgqr;

    move-result-object v2

    iget-object v15, v12, Lgqv;->b:Lgqr;

    if-eqz v15, :cond_7

    iget-object v15, v15, Lgqr;->a:Lkpb;

    invoke-interface {v15}, Lkpb;->d()J

    move-result-wide v15

    iget-object v3, v2, Lgqr;->a:Lkpb;

    invoke-interface {v3}, Lkpb;->d()J

    move-result-wide v18

    cmp-long v3, v15, v18

    if-gez v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v2, v2, Lgqr;->a:Lkpb;

    invoke-interface {v2}, Lkpb;->close()V

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v3, v12, Lgqv;->b:Lgqr;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lgqr;->a:Lkpb;

    invoke-interface {v3}, Lkpb;->close()V

    :cond_8
    iput-object v2, v12, Lgqv;->b:Lgqr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    invoke-interface {v12}, Lgqk;->close()V

    new-instance v2, Ldza;

    const/4 v3, 0x2

    invoke-direct {v2, v4, v3}, Ldza;-><init>(Ljava/util/List;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v13, v2, v3}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    new-instance v2, Ldje;

    const/16 v3, 0xa

    invoke-direct {v2, v10, v3}, Ldje;-><init>(Ljuf;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v4, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :goto_6
    new-instance v2, Lfya;

    check-cast v7, Lfyb;

    invoke-direct {v2, v7, v9}, Lfya;-><init>(Lfyb;Ljava/util/List;)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v4, v2, v3}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    iget-object v3, v1, Lfxk;->d:Lkab;

    if-eqz v3, :cond_a

    const/16 v17, 0x1

    goto :goto_7

    :cond_a
    const/16 v17, 0x0

    :goto_7
    invoke-static/range {v17 .. v17}, Lmoz;->p(Z)V

    new-instance v3, Ldvo;

    invoke-direct {v3, v1, v5, v6}, Ldvo;-><init>(Lfxk;Ljava/util/List;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-static {v2, v3, v4}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v3

    iget-object v4, v1, Lfxk;->d:Lkab;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ldje;

    const/16 v5, 0x9

    invoke-direct {v4, v1, v5}, Ldje;-><init>(Lfxk;I)V

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-static {v3, v4, v5}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v3, v1, Lfxk;->e:Lfxl;

    iget-object v3, v3, Lfxl;->f:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lgyq;->a(I)Lgyq;

    move-result-object v3

    new-instance v4, Lfxj;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v3, v5}, Lfxj;-><init>(Lfxk;Ljava/util/List;Lgyq;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v2, v4, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v2, Letf;

    invoke-direct {v2, v6}, Letf;-><init>(I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v2, Lcmq;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, Lcmq;-><init>(Lfxk;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v2, Lcmq;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v3}, Lcmq;-><init>(Lfxk;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v4}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v2, Ldje;

    const/4 v4, 0x5

    invoke-direct {v2, v1, v4}, Ldje;-><init>(Lfxk;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v4}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    new-instance v2, Ldje;

    invoke-direct {v2, v1, v3}, Ldje;-><init>(Lfxk;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-interface {v12}, Lgqk;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_3
    const-class v0, Ljava/lang/Throwable;

    const-string v4, "addSuppressed"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    :goto_8
    throw v2

    :catch_1
    move-exception v0

    iget-object v2, v1, Lfxk;->e:Lfxl;

    iget-object v2, v2, Lfxl;->a:Lkaq;

    const-string v3, "Timeout retrieving image metadata, aborting the shot"

    invoke-interface {v2, v3, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lfxk;->c()V

    return-void

    :catch_2
    move-exception v0

    iget-object v2, v1, Lfxk;->e:Lfxl;

    iget-object v2, v2, Lfxl;->a:Lkaq;

    const-string v3, "Interrupted before image could be saved"

    invoke-interface {v2, v3, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lfxk;->c()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catch_3
    move-exception v0

    iget-object v2, v1, Lfxk;->e:Lfxl;

    iget-object v2, v2, Lfxl;->a:Lkaq;

    const-string v3, "Unable to save image.  Camera likely shutdown."

    invoke-interface {v2, v3, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lfxk;->c()V

    return-void
.end method
