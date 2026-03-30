.class public final Lpsr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpdf;

.field public final b:Lrnb;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lpsu;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private g:Ljava/util/Set;

.field private h:Ljava/util/Set;

.field private i:Ljava/util/Set;

.field private j:Lpsf;

.field private k:Lpsm;

.field private l:Ljava/util/concurrent/ScheduledFuture;

.field private m:Lryb;

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpsr;->o:Z

    nop

    if-nez v0, :cond_3

    nop

    iget-object v0, p0, Lpsr;->k:Lpsm;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    iget-object v0, p0, Lpsr;->g:Ljava/util/Set;

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpsr;->h:Ljava/util/Set;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpsr;->i:Ljava/util/Set;

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lpsr;->n:Z

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Lpsr;->e:Ljava/util/List;

    nop

    iget-object v1, p0, Lpsr;->f:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    add-int/2addr v0, v1

    nop

    nop

    nop

    iget-object v1, p0, Lpsr;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpsr;->h:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v1, v2

    nop

    iget-object v2, p0, Lpsr;->i:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    add-int/2addr v1, v2

    nop

    if-ne v0, v1, :cond_3

    nop

    :cond_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lpsr;->o:Z

    nop

    iget-object v0, p0, Lpsr;->l:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpsr;->l:Ljava/util/concurrent/ScheduledFuture;

    nop

    :cond_1
    invoke-virtual {p0}, Lpsr;->a()Lpsn;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpsr;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lpsq;

    nop

    nop

    nop

    invoke-direct {v2, p0, v0}, Lpsq;-><init>(Lpsr;Lpsn;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lrnb;Lpsu;Lpdf;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lpsr;->d:Lpsu;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_11

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lpsr;->m:Lryb;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iput-object p2, p0, Lpsr;->b:Lrnb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lpsr;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    sget v0, Lryb;->d:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lpsr;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    iput-object p4, p0, Lpsr;->a:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lpsr;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    iput-object v0, p0, Lpsr;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Lpsr;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lpsr;->n:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized d5484163cd8d335e6b17663474ff5f2bm()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lpsr;->l:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    iget-boolean v0, p0, Lpsr;->n:Z

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpsr;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    new-instance v1, Lpke;

    nop

    nop

    nop

    nop

    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lpke;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lpsr;->d:Lpsu;

    nop

    nop

    nop

    iget-wide v2, v2, Lpsu;->s:J

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    nop

    iput-object v0, p0, Lpsr;->l:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_c
    const v1, 0xa

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a()Lpsn;
    .locals 19

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    move-object/from16 v1, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, v1, Lpsr;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lpsr;->h:Ljava/util/Set;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lpsr;->k:Lpsm;

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lryw;

    nop

    nop

    nop

    invoke-direct {v4}, Lryw;-><init>()V

    new-instance v5, Lryw;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Lryw;-><init>()V

    new-instance v6, Lryw;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Lryw;-><init>()V

    iget-object v7, v1, Lpsr;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    :cond_0
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    if-eqz v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, Lpsy;

    nop

    nop

    nop

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    nop

    const-wide/16 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lpsy;->a()J

    move-result-wide v12

    nop

    nop

    nop

    cmp-long v9, v12, v10

    nop

    nop

    nop

    nop

    nop

    if-gtz v9, :cond_1

    nop

    nop

    const-string v9, "Refusing to publish "

    nop

    nop

    const-string v10, " because the file is empty."

    nop

    invoke-static {v8, v9, v10}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    const-string v10, "MediaGroupPublisher"

    nop

    nop

    nop

    nop

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lpsy;->l()Lpth;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v8}, Lryw;->h(Ljava/lang/Object;)V

    goto :goto_6

    nop

    :cond_1
    invoke-virtual {v8}, Lpsy;->k()Lpsh;

    move-result-object v9

    nop

    nop

    iget-object v10, v1, Lpsr;->j:Lpsf;

    nop

    nop

    nop

    nop

    nop

    if-ne v8, v10, :cond_2

    nop

    nop

    nop

    nop

    nop

    iput-object v9, v3, Lpsm;->e:Lpsh;

    nop

    :cond_2
    invoke-virtual {v4, v9}, Lryw;->h(Ljava/lang/Object;)V

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_3
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_6

    nop

    nop

    nop

    invoke-virtual {v8}, Lpsy;->a()J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    cmp-long v9, v12, v10

    nop

    nop

    if-gtz v9, :cond_4

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    sget-object v9, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->ZWUuRCvtXmEjfZH:Ljava/lang/String;

    nop

    nop

    nop

    const-string v10, " because the file is empty."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v9, v10}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    const-string v10, "MediaGroupPublisher"

    nop

    nop

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lpsy;->l()Lpth;

    move-result-object v8

    nop

    nop

    nop

    if-eqz v8, :cond_0

    nop

    invoke-virtual {v6, v8}, Lryw;->h(Ljava/lang/Object;)V

    goto/16 :goto_6

    nop

    nop

    :cond_4
    invoke-virtual {v8}, Lpsy;->k()Lpsh;

    move-result-object v9

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lpsr;->j:Lpsf;

    nop

    nop

    nop

    nop

    if-ne v8, v10, :cond_5

    nop

    nop

    iput-object v9, v3, Lpsm;->e:Lpsh;

    nop

    nop

    :cond_5
    invoke-virtual {v5, v9}, Lryw;->h(Ljava/lang/Object;)V

    goto/16 :goto_6

    nop

    nop

    :cond_6
    invoke-virtual {v8}, Lpsy;->l()Lpth;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_0

    nop

    nop

    nop

    invoke-virtual {v6, v8}, Lryw;->h(Ljava/lang/Object;)V

    goto/16 :goto_6

    nop

    :cond_7
    iget-object v0, v1, Lpsr;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_9

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lpsy;

    nop

    nop

    nop

    invoke-virtual {v2}, Lpsy;->l()Lpth;

    move-result-object v2

    nop

    nop

    nop

    if-eqz v2, :cond_8

    nop

    invoke-virtual {v6, v2}, Lryw;->h(Ljava/lang/Object;)V

    goto :goto_7

    nop

    :cond_9
    invoke-virtual {v4}, Lryw;->g()Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lpsm;->f:Lryy;

    nop

    invoke-virtual {v5}, Lryw;->g()Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lpsm;->g:Lryy;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lryw;->g()Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lpsm;->h:Lryy;

    nop

    nop

    nop

    iget-object v0, v1, Lpsr;->m:Lryb;

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Lpsm;->a(Lryb;)V

    iget v0, v1, Lpsr;->p:I

    nop

    nop

    invoke-virtual {v3, v0}, Lpsm;->b(I)V

    iget-byte v0, v3, Lpsm;->k:B

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    if-ne v0, v2, :cond_a

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lpsm;->a:Lpsj;

    nop

    nop

    nop

    if-eqz v5, :cond_a

    nop

    nop

    nop

    iget-object v10, v3, Lpsm;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v3, Lpsm;->f:Lryy;

    nop

    if-eqz v12, :cond_a

    nop

    nop

    nop

    iget-object v13, v3, Lpsm;->g:Lryy;

    nop

    if-eqz v13, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v3, Lpsm;->h:Lryy;

    nop

    nop

    nop

    if-eqz v14, :cond_a

    nop

    iget v15, v3, Lpsm;->l:I

    nop

    nop

    if-eqz v15, :cond_a

    nop

    nop

    nop

    nop

    iget-object v0, v3, Lpsm;->i:Lryb;

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    iget-object v2, v3, Lpsm;->j:Lptf;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_a

    nop

    nop

    nop

    new-instance v18, Lpsn;

    nop

    iget-wide v6, v3, Lpsm;->b:J

    nop

    nop

    nop

    iget-wide v8, v3, Lpsm;->c:J

    nop

    nop

    nop

    nop

    iget-object v11, v3, Lpsm;->e:Lpsh;

    nop

    move-object/from16 v4, v18

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v16, v0

    nop

    nop

    nop

    nop

    move-object/from16 v17, v2

    nop

    nop

    nop

    nop

    invoke-direct/range {v4 .. v17}, Lpsn;-><init>(Lpsj;JJLjava/lang/String;Lpsh;Lryy;Lryy;Lryy;ILryb;Lptf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    return-object v18

    nop

    :cond_a
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_0

    nop
.end method

.method public final declared-synchronized b(Lpsp;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpsr;->k:Lpsm;

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, p1, Lpsp;->e:Lpsm;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpsr;->k:Lpsm;

    nop

    nop

    nop

    nop

    sget-object v0, Lsbn;->a:Lsbn;

    nop

    iput-object v0, p0, Lpsr;->g:Ljava/util/Set;

    nop

    iput-object v0, p0, Lpsr;->h:Ljava/util/Set;

    nop

    nop

    nop

    iget-object v0, p1, Lpsp;->f:Lryb;

    nop

    nop

    nop

    iput-object v0, p0, Lpsr;->m:Lryb;

    nop

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    iput v0, p0, Lpsr;->p:I

    nop

    nop

    nop

    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    iget-object v1, p1, Lpsp;->d:Ljava/util/Set;

    nop

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Lpsp;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lpsp;->c:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lpsr;->i:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpsr;->d5484163cd8d335e6b17663474ff5f2bm()V

    invoke-direct {p0}, Lpsr;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_d
    const v1, 0x13

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lpsy;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpsr;->f:Ljava/util/List;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lpsr;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Lpsy;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpsr;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lpsr;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    nop

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lpsr;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lpsr;->h:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lpsr;->i:Ljava/util/Set;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lpsr;->e:Ljava/util/List;

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lpsr;->f:Ljava/util/List;

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpsr;->k:Lpsm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lpsm;->a:Lpsj;

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    iget-object v3, p0, Lpsr;->d:Lpsu;

    nop

    nop

    iget-wide v3, v3, Lpsu;->s:J

    nop

    nop

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v2, v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    const-string v2, "Failed to publish MediaGroup-%s after %s ms. Forcibly publishing, and ignoring %s files that are neither published nor abandoned: %s."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "MediaGroupPublisher"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lpsr;->m:Lryb;

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    check-cast v1, Lsbh;

    nop

    iget v1, v1, Lsbh;->c:I

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    :goto_9
    if-ge v2, v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lpsi;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpsi;->d()V

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lpsr;->n:Z

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpsr;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_b
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const v0, 0x6

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final declared-synchronized f(Lpsp;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpsr;->k:Lpsm;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, p1, Lpsp;->e:Lpsm;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpsr;->k:Lpsm;

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lpsp;->a:Lpsf;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpsr;->j:Lpsf;

    nop

    nop

    nop

    iget-object v0, p1, Lpsp;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lpsr;->g:Ljava/util/Set;

    nop

    iget-object v0, p1, Lpsp;->c:Ljava/util/Set;

    nop

    nop

    nop

    iput-object v0, p0, Lpsr;->h:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lpsp;->d:Ljava/util/Set;

    nop

    nop

    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, p0, Lpsr;->i:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lpsp;->f:Lryb;

    nop

    iput-object p1, p0, Lpsr;->m:Lryb;

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    iput p1, p0, Lpsr;->p:I

    nop

    nop

    nop

    invoke-direct {p0}, Lpsr;->d5484163cd8d335e6b17663474ff5f2bm()V

    invoke-direct {p0}, Lpsr;->19e596a3e324281407eb5c11093c0152m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
