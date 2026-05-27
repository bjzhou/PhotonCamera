.class public final Ljen;
.super Ljava/lang/Object;

# interfaces
.implements Ljdf;
.implements Ljdg;


# instance fields
.field public final a:Ljava/util/Queue;

.field public final b:Ljcz;

.field public final c:Ljdz;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Map;

.field public final f:I

.field public g:Z

.field public final h:Ljava/util/List;

.field public i:Ljby;

.field public j:I

.field public final synthetic k:Ljeq;

.field public final l:Ligo;

.field private final m:Ljfi;


# direct methods
.method public constructor <init>(Ljeq;Ljde;)V
    .locals 9

    iput-object p1, p0, Ljen;->k:Ljeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljen;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljen;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljen;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljen;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Ljen;->i:Ljby;

    const/4 v1, 0x0

    iput v1, p0, Ljen;->j:I

    iget-object v1, p1, Ljeq;->n:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p2}, Ljde;->d()Ljgd;

    move-result-object v1

    invoke-virtual {v1}, Ljgd;->a()Ljge;

    move-result-object v5

    iget-object v1, p2, Ljde;->k:Ligo;

    iget-object v1, v1, Ligo;->b:Ljava/lang/Object;

    iget-object v3, p2, Ljde;->c:Landroid/content/Context;

    iget-object v6, p2, Ljde;->e:Ljcy;

    move-object v2, v1

    check-cast v2, Ljfc;

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Ljfc;->a(Landroid/content/Context;Landroid/os/Looper;Ljge;Ljava/lang/Object;Ljdf;Ljdg;)Ljcz;

    move-result-object v1

    iget-object v2, p2, Ljde;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v3, v1

    check-cast v3, Ljgb;

    iput-object v2, v3, Ljgb;->k:Ljava/lang/String;

    :cond_0
    iput-object v1, p0, Ljen;->b:Ljcz;

    iget-object v2, p2, Ljde;->f:Ljdz;

    iput-object v2, p0, Ljen;->c:Ljdz;

    new-instance v2, Ligo;

    invoke-direct {v2, v0}, Ligo;-><init>([B)V

    iput-object v2, p0, Ljen;->l:Ligo;

    iget v2, p2, Ljde;->h:I

    iput v2, p0, Ljen;->f:I

    invoke-interface {v1}, Ljcz;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p1, Ljeq;->g:Landroid/content/Context;

    iget-object p1, p1, Ljeq;->n:Landroid/os/Handler;

    new-instance v1, Ljfi;

    invoke-virtual {p2}, Ljde;->d()Ljgd;

    move-result-object p2

    invoke-virtual {p2}, Ljgd;->a()Ljge;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Ljfi;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljge;)V

    iput-object v1, p0, Ljen;->m:Ljfi;

    return-void

    :cond_1
    iput-object v0, p0, Ljen;->m:Ljfi;

    return-void
.end method

.method private final p([Ljca;)Ljca;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Ljen;->b:Ljcz;

    invoke-interface {v1}, Ljcz;->p()[Ljca;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljca;

    :cond_0
    new-instance v3, Lwy;

    array-length v4, v1

    invoke-direct {v3, v4}, Lwy;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    aget-object v5, v1, v4

    iget-object v6, v5, Ljca;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljca;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gtz v2, :cond_4

    aget-object v1, p1, v2

    iget-object v4, v1, Ljca;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljca;->a()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v1

    :cond_4
    return-object v0
.end method

.method private final q(Ljby;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Ljen;->c:Ljdz;

    invoke-static {v0, p1}, Ljeq;->a(Ljdz;Ljby;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    return-object p1
.end method

.method private final r(Ljby;)V
    .locals 4

    iget-object v0, p0, Ljen;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljea;

    sget-object v2, Ljby;->a:Ljby;

    invoke-static {p1, v2}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljen;->b:Ljcz;

    invoke-interface {v2}, Ljcz;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Ljen;->c:Ljdz;

    invoke-virtual {v1, v3, p1, v2}, Ljea;->a(Ljdz;Ljby;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljen;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final s(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdy;

    if-eqz p3, :cond_3

    iget v2, v1, Ljdy;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Ljdy;->d(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, p2}, Ljdy;->e(Ljava/lang/Exception;)V

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final t(Ljdy;)V
    .locals 2

    iget-object v0, p0, Ljen;->l:Ligo;

    invoke-virtual {p0}, Ljen;->o()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljdy;->g(Ligo;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Ljdy;->f(Ljen;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljen;->a(I)V

    iget-object p1, p0, Ljen;->b:Ljcz;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Ljcz;->k(Ljava/lang/String;)V

    return-void
.end method

.method private final u(Ljdy;)Z
    .locals 7

    instance-of v0, p1, Ljds;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Ljen;->t(Ljdy;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljds;

    invoke-virtual {v0, p0}, Ljds;->b(Ljen;)[Ljca;

    move-result-object v2

    invoke-direct {p0, v2}, Ljen;->p([Ljca;)Ljca;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Ljen;->t(Ljdy;)V

    return v1

    :cond_1
    iget-object p1, p0, Ljen;->b:Ljcz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v3, v2, Ljca;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljca;->a()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "GoogleApiManager"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ljen;->k:Ljeq;

    iget-boolean p1, p1, Ljeq;->o:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0, p0}, Ljds;->a(Ljen;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljeo;

    iget-object v0, p0, Ljen;->c:Ljdz;

    invoke-direct {p1, v0, v2}, Ljeo;-><init>(Ljdz;Ljca;)V

    iget-object v0, p0, Ljen;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/16 v3, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Ljen;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljeo;

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljen;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Ljby;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljby;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Ljen;->v(Ljby;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget v1, p0, Ljen;->f:I

    invoke-virtual {v0, p1, v1}, Ljeq;->h(Ljby;I)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance p1, Ljdr;

    invoke-direct {p1, v2}, Ljdr;-><init>(Ljca;)V

    invoke-virtual {v0, p1}, Ljds;->e(Ljava/lang/Exception;)V

    return v1
.end method

.method private final v(Ljby;)Z
    .locals 6

    sget-object v0, Ljeq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljen;->k:Ljeq;

    iget-object v2, v1, Ljeq;->l:Ljel;

    if-eqz v2, :cond_2

    iget-object v1, v1, Ljeq;->m:Ljava/util/Set;

    iget-object v2, p0, Ljen;->c:Ljdz;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljen;->k:Ljeq;

    iget-object v1, v1, Ljeq;->l:Ljel;

    iget v2, p0, Ljen;->f:I

    new-instance v3, Lkxr;

    invoke-direct {v3, p1, v2}, Lkxr;-><init>(Ljby;I)V

    iget-object p1, v1, Ljee;->b:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, v1, Ljee;->c:Landroid/os/Handler;

    new-instance v4, Lfvc;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v3, v5, v2}, Lfvc;-><init>(Ljee;Lkxr;I[B)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_2
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ljen;->k:Ljeq;

    iget-object v1, v1, Ljeq;->n:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljen;->k(I)V

    return-void

    :cond_0
    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    new-instance v1, Lgcm;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lgcm;-><init>(Ljen;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Ljen;->k:Ljeq;

    iget-object v1, v1, Ljeq;->n:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljen;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    new-instance v1, Liwu;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Liwu;-><init>(Ljen;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljen;->i:Ljby;

    return-void
.end method

.method public final d()V
    .locals 10

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    iget-object v0, p0, Ljen;->b:Ljcz;

    invoke-interface {v0}, Ljcz;->l()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Ljen;->b:Ljcz;

    invoke-interface {v0}, Ljcz;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Ljen;->k:Ljeq;

    iget-object v2, v1, Ljeq;->p:Lkns;

    iget-object v1, v1, Ljeq;->g:Landroid/content/Context;

    iget-object v3, p0, Ljen;->b:Ljcz;

    invoke-static {v1}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {v3}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljcz;->n()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljcz;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lkns;->g(I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_5

    const/4 v4, 0x0

    :goto_0
    iget-object v7, v2, Lkns;->a:Ljava/lang/Object;

    check-cast v7, Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    iget-object v7, v2, Lkns;->a:Ljava/lang/Object;

    check-cast v7, Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    if-le v7, v3, :cond_2

    iget-object v8, v2, Lkns;->a:Ljava/lang/Object;

    check-cast v8, Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    :goto_1
    if-ne v5, v6, :cond_4

    iget-object v4, v2, Lkns;->b:Ljava/lang/Object;

    check-cast v4, Ljce;

    invoke-virtual {v4, v1, v3}, Ljce;->f(Landroid/content/Context;I)I

    move-result v1

    move v5, v1

    :cond_4
    iget-object v1, v2, Lkns;->a:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    if-eqz v5, :cond_6

    new-instance v1, Ljby;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Ljby;-><init>(ILandroid/app/PendingIntent;)V

    const-string v2, "GoogleApiManager"

    iget-object v3, p0, Ljen;->b:Ljcz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Ljen;->i(Ljby;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_6
    new-instance v1, Ljep;

    iget-object v2, p0, Ljen;->k:Ljeq;

    iget-object v3, p0, Ljen;->b:Ljcz;

    iget-object v4, p0, Ljen;->c:Ljdz;

    invoke-direct {v1, v2, v3, v4}, Ljep;-><init>(Ljeq;Ljcz;Ljdz;)V

    invoke-interface {v3}, Ljcz;->o()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Ljen;->m:Ljfi;

    invoke-static {v2}, Ljhp;->ab(Ljava/lang/Object;)V

    iget-object v3, v2, Ljfi;->e:Ljnz;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljnz;->j()V

    :cond_7
    iget-object v3, v2, Ljfi;->d:Ljge;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Ljge;->h:Ljava/lang/Integer;

    iget-object v3, v2, Ljfi;->g:Ljfc;

    iget-object v4, v2, Ljfi;->a:Landroid/content/Context;

    iget-object v5, v2, Ljfi;->b:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, v2, Ljfi;->d:Ljge;

    iget-object v7, v6, Ljge;->g:Ljoa;

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Ljfc;->a(Landroid/content/Context;Landroid/os/Looper;Ljge;Ljava/lang/Object;Ljdf;Ljdg;)Ljcz;

    move-result-object v3

    iput-object v3, v2, Ljfi;->e:Ljnz;

    iput-object v1, v2, Ljfi;->f:Ljep;

    iget-object v3, v2, Ljfi;->c:Ljava/util/Set;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    iget-object v2, v2, Ljfi;->e:Ljnz;

    new-instance v3, Ljfy;

    check-cast v2, Ljgb;

    invoke-direct {v3, v2}, Ljfy;-><init>(Ljgb;)V

    invoke-virtual {v2, v3}, Ljgb;->i(Ljfw;)V

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v3, v2, Ljfi;->b:Landroid/os/Handler;

    new-instance v4, Liwu;

    const/16 v5, 0xd

    invoke-direct {v4, v2, v5}, Liwu;-><init>(Ljfi;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_4
    :try_start_1
    iget-object v2, p0, Ljen;->b:Ljcz;

    invoke-interface {v2, v1}, Ljcz;->i(Ljfw;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljby;

    invoke-direct {v2, v0}, Ljby;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Ljen;->j(Ljby;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v1

    new-instance v2, Ljby;

    invoke-direct {v2, v0}, Ljby;-><init>(I)V

    invoke-virtual {p0, v2, v1}, Ljen;->j(Ljby;Ljava/lang/Exception;)V

    return-void

    :cond_b
    :goto_5
    return-void
.end method

.method public final e(Ljdy;)V
    .locals 1

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    iget-object v0, p0, Ljen;->b:Ljcz;

    invoke-interface {v0}, Ljcz;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Ljen;->u(Ljdy;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljen;->l()V

    return-void

    :cond_0
    iget-object v0, p0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ljen;->i:Ljby;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljby;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljen;->i(Ljby;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Ljen;->d()V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljen;->s(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final g()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljen;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljdy;

    iget-object v4, p0, Ljen;->b:Ljcz;

    invoke-interface {v4}, Ljcz;->l()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Ljen;->u(Ljdy;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 5

    invoke-virtual {p0}, Ljen;->c()V

    sget-object v0, Ljby;->a:Ljby;

    invoke-direct {p0, v0}, Ljen;->r(Ljby;)V

    invoke-virtual {p0}, Ljen;->n()V

    iget-object v0, p0, Ljen;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldja;

    iget-object v2, v1, Ldja;->c:Ljava/lang/Object;

    check-cast v2, Lkxq;

    iget-object v2, v2, Lkxq;->b:Ljava/lang/Object;

    check-cast v2, [Ljca;

    invoke-direct {p0, v2}, Ljen;->p([Ljca;)Ljca;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v1, Ldja;->c:Ljava/lang/Object;

    iget-object v2, p0, Ljen;->b:Ljcz;

    new-instance v3, Lkgd;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lkgd;-><init>([B[B)V

    check-cast v1, Lkxq;

    invoke-virtual {v1, v2, v3}, Lkxq;->b(Ljcu;Lkgd;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljen;->a(I)V

    iget-object v0, p0, Ljen;->b:Ljcz;

    const-string v1, "DeadObjectException thrown while calling register listener method."

    invoke-interface {v0, v1}, Ljcz;->k(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ljen;->g()V

    invoke-virtual {p0}, Ljen;->l()V

    return-void
.end method

.method public final i(Ljby;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljen;->j(Ljby;Ljava/lang/Exception;)V

    return-void
.end method

.method public final j(Ljby;Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    iget-object v0, p0, Ljen;->m:Ljfi;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljfi;->e:Ljnz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljnz;->j()V

    :cond_0
    invoke-virtual {p0}, Ljen;->c()V

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->p:Lkns;

    invoke-virtual {v0}, Lkns;->f()V

    invoke-direct {p0, p1}, Ljen;->r(Ljby;)V

    iget-object v0, p0, Ljen;->b:Ljcz;

    instance-of v0, v0, Ljhv;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p1, Ljby;->c:I

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Ljen;->k:Ljeq;

    iput-boolean v1, v0, Ljeq;->f:Z

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget v0, p1, Ljby;->c:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    sget-object p1, Ljeq;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Ljen;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v0, p0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Ljen;->i:Ljby;

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p1, p0, Ljen;->k:Ljeq;

    iget-object p1, p1, Ljeq;->n:Landroid/os/Handler;

    invoke-static {p1}, Ljhp;->V(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p1}, Ljen;->s(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Ljen;->k:Ljeq;

    iget-boolean p2, p2, Ljeq;->o:Z

    if-nez p2, :cond_5

    invoke-direct {p0, p1}, Ljen;->q(Ljby;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljen;->f(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_5
    invoke-direct {p0, p1}, Ljen;->q(Ljby;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-direct {p0, p2, v0, v1}, Ljen;->s(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    invoke-direct {p0, p1}, Ljen;->v(Ljby;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    iget-object p2, p0, Ljen;->k:Ljeq;

    iget v0, p0, Ljen;->f:I

    invoke-virtual {p2, p1, v0}, Ljeq;->h(Ljby;I)Z

    move-result p2

    if-nez p2, :cond_a

    iget p2, p1, Ljby;->c:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_8

    iput-boolean v1, p0, Ljen;->g:Z

    :cond_8
    iget-boolean p2, p0, Ljen;->g:Z

    if-eqz p2, :cond_9

    iget-object p1, p0, Ljen;->k:Ljeq;

    iget-object p1, p1, Ljeq;->n:Landroid/os/Handler;

    iget-object p2, p0, Ljen;->c:Ljdz;

    const/16 v0, 0x9

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_9
    invoke-direct {p0, p1}, Ljen;->q(Ljby;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljen;->f(Lcom/google/android/gms/common/api/Status;)V

    :cond_a
    return-void
.end method

.method public final k(I)V
    .locals 5

    invoke-virtual {p0}, Ljen;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljen;->g:Z

    iget-object v1, p0, Ljen;->l:Ligo;

    iget-object v2, p0, Ljen;->b:Ljcz;

    invoke-interface {v2}, Ljcz;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_0

    const-string p1, " due to service disconnection."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    const-string p1, " due to dead object exception."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Ligo;->x(ZLcom/google/android/gms/common/api/Status;)V

    iget-object p1, p0, Ljen;->k:Ljeq;

    iget-object p1, p1, Ljeq;->n:Landroid/os/Handler;

    iget-object v0, p0, Ljen;->c:Ljdz;

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Ljen;->k:Ljeq;

    iget-object p1, p1, Ljeq;->n:Landroid/os/Handler;

    iget-object v0, p0, Ljen;->c:Ljdz;

    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Ljen;->k:Ljeq;

    iget-object p1, p1, Ljeq;->p:Lkns;

    invoke-virtual {p1}, Lkns;->f()V

    iget-object p1, p0, Ljen;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    iget-object v1, p0, Ljen;->c:Ljdz;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    iget-object v1, p0, Ljen;->c:Ljdz;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Ljen;->k:Ljeq;

    iget-wide v2, v2, Ljeq;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final m()V
    .locals 7

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    sget-object v0, Ljeq;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Ljen;->f(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Ljen;->l:Ligo;

    sget-object v1, Ljeq;->a:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ligo;->x(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Ljen;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Ljez;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljez;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Ljdx;

    new-instance v5, Lkgd;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Lkgd;-><init>([B[B)V

    invoke-direct {v4, v3, v5, v6, v6}, Ljdx;-><init>(Ljez;Lkgd;[B[B)V

    invoke-virtual {p0, v4}, Ljen;->e(Ljdy;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljby;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljby;-><init>(I)V

    invoke-direct {p0, v0}, Ljen;->r(Ljby;)V

    iget-object v0, p0, Ljen;->b:Ljcz;

    invoke-interface {v0}, Ljcz;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljen;->b:Ljcz;

    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljen;)V

    invoke-interface {v0, v1}, Ljcz;->r(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 3

    iget-boolean v0, p0, Ljen;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    const/16 v1, 0xb

    iget-object v2, p0, Ljen;->c:Ljdz;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    iget-object v1, p0, Ljen;->c:Ljdz;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljen;->g:Z

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Ljen;->b:Ljcz;

    invoke-interface {v0}, Ljcz;->o()Z

    move-result v0

    return v0
.end method
