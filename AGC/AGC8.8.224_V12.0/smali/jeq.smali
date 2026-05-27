.class public final Ljeq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field public static final b:Lcom/google/android/gms/common/api/Status;

.field public static final c:Ljava/lang/Object;

.field public static d:Ljeq;


# instance fields
.field public e:J

.field public f:Z

.field public final g:Landroid/content/Context;

.field public final h:Ljcd;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/Map;

.field public l:Ljel;

.field public final m:Ljava/util/Set;

.field public final n:Landroid/os/Handler;

.field public volatile o:Z

.field public final p:Lkns;

.field private q:Ljhl;

.field private final r:Ljava/util/Set;

.field private s:Ljhu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljeq;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljeq;->b:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljeq;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljcd;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Ljeq;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljeq;->f:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Ljeq;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Ljeq;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Ljeq;->k:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Ljeq;->l:Ljel;

    new-instance v1, Lxa;

    invoke-direct {v1}, Lxa;-><init>()V

    iput-object v1, p0, Ljeq;->m:Ljava/util/Set;

    new-instance v1, Lxa;

    invoke-direct {v1}, Lxa;-><init>()V

    iput-object v1, p0, Ljeq;->r:Ljava/util/Set;

    iput-boolean v2, p0, Ljeq;->o:Z

    iput-object p1, p0, Ljeq;->g:Landroid/content/Context;

    new-instance v1, Ljmb;

    invoke-direct {v1, p2, p0}, Ljmb;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Ljeq;->n:Landroid/os/Handler;

    iput-object p3, p0, Ljeq;->h:Ljcd;

    new-instance p2, Lkns;

    invoke-direct {p2, p3}, Lkns;-><init>(Ljce;)V

    iput-object p2, p0, Ljeq;->p:Lkns;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Ljhy;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Ljhy;->b:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Ljhy;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Ljeq;->o:Z

    :cond_1
    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Ljdz;Ljby;)Lcom/google/android/gms/common/api/Status;
    .locals 7

    new-instance v6, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Ljdz;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const/16 v2, 0x11

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Ljby;->d:Landroid/app/PendingIntent;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Ljby;)V

    return-object v6
.end method

.method public static c(Landroid/content/Context;)Ljeq;
    .locals 5

    sget-object v0, Ljeq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljeq;->d:Ljeq;

    if-nez v1, :cond_1

    sget-object v1, Ljgo;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Ljgo;->b:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GoogleApiHandler"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljgo;->b:Landroid/os/HandlerThread;

    sget-object v2, Ljgo;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    sget-object v2, Ljgo;->b:Landroid/os/HandlerThread;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Ljeq;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Ljcd;->a:Ljcd;

    invoke-direct {v2, p0, v1, v3}, Ljeq;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljcd;)V

    sput-object v2, Ljeq;->d:Ljeq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_1
    sget-object p0, Ljeq;->d:Ljeq;

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private final j(Ljde;)Ljen;
    .locals 2

    iget-object v0, p1, Ljde;->f:Ljdz;

    iget-object v1, p0, Ljeq;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljen;

    if-nez v1, :cond_0

    new-instance v1, Ljen;

    invoke-direct {v1, p0, p1}, Ljen;-><init>(Ljeq;Ljde;)V

    iget-object p1, p0, Ljeq;->k:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljen;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ljeq;->r:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljen;->d()V

    return-object v1
.end method

.method private final k()V
    .locals 2

    iget-object v0, p0, Ljeq;->q:Ljhl;

    if-eqz v0, :cond_2

    iget v1, v0, Ljhl;->a:I

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Ljeq;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Ljeq;->l()Ljhu;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljhu;->a(Ljhl;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ljeq;->q:Ljhl;

    :cond_2
    return-void
.end method

.method private final l()Ljhu;
    .locals 3

    iget-object v0, p0, Ljeq;->s:Ljhu;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljeq;->g:Landroid/content/Context;

    sget-object v1, Ljhm;->a:Ljhm;

    new-instance v2, Ljhu;

    invoke-direct {v2, v0, v1}, Ljhu;-><init>(Landroid/content/Context;Ljhm;)V

    iput-object v2, p0, Ljeq;->s:Ljhu;

    :cond_0
    iget-object v0, p0, Ljeq;->s:Ljhu;

    return-object v0
.end method


# virtual methods
.method final b(Ljdz;)Ljen;
    .locals 1

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljen;

    return-object p1
.end method

.method public final d(Ljby;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Ljeq;->h(Ljby;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljeq;->n:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Ljeq;->n:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final f(Ljel;)V
    .locals 2

    sget-object v0, Ljeq;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljeq;->l:Ljel;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Ljeq;->l:Ljel;

    iget-object v1, p0, Ljeq;->m:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_0
    iget-object v1, p0, Ljeq;->m:Ljava/util/Set;

    iget-object p1, p1, Ljel;->e:Lxa;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final g()Z
    .locals 3

    iget-boolean v0, p0, Ljeq;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljhj;->a()Ljhj;

    move-result-object v0

    iget-object v0, v0, Ljhj;->a:Ljhk;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Ljhk;->b:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Ljeq;->p:Lkns;

    const v2, 0xc1fa340

    invoke-virtual {v0, v2}, Lkns;->g(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method final h(Ljby;I)Z
    .locals 5

    iget-object v0, p0, Ljeq;->h:Ljcd;

    iget-object v1, p0, Ljeq;->g:Landroid/content/Context;

    invoke-static {v1}, Ljji;->c(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljby;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Ljby;->d:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_1
    iget v2, p1, Ljby;->c:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Ljce;->h(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    iget p1, p1, Ljby;->c:I

    const/4 v3, 0x1

    invoke-static {v1, v2, p2, v3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p2

    const/high16 v2, 0xa000000

    invoke-static {v1, p2, v2}, Ljmj;->d(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Ljcd;->d(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    :goto_1
    return v3
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const-wide/32 v2, 0x493e0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :pswitch_0
    iput-boolean v6, p0, Ljeq;->f:Z

    goto/16 :goto_d

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljfe;

    iget-wide v0, p1, Ljfe;->b:J

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    new-instance v0, Ljhl;

    iget v1, p1, Ljfe;->a:I

    new-array v2, v7, [Ljhc;

    iget-object p1, p1, Ljfe;->d:Ljava/lang/Object;

    check-cast p1, Ljhc;

    aput-object p1, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljhl;-><init>(ILjava/util/List;)V

    invoke-direct {p0}, Ljeq;->l()Ljhu;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljhu;->a(Ljhl;)V

    goto/16 :goto_d

    :cond_0
    iget-object v0, p0, Ljeq;->q:Ljhl;

    if-eqz v0, :cond_4

    iget-object v1, v0, Ljhl;->b:Ljava/util/List;

    iget v0, v0, Ljhl;->a:I

    iget v2, p1, Ljfe;->a:I

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Ljfe;->c:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljeq;->q:Ljhl;

    iget-object v1, p1, Ljfe;->d:Ljava/lang/Object;

    iget-object v2, v0, Ljhl;->b:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Ljhl;->b:Ljava/util/List;

    :cond_2
    iget-object v0, v0, Ljhl;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Ljeq;->n:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Ljeq;->k()V

    :cond_4
    :goto_1
    iget-object v0, p0, Ljeq;->q:Ljhl;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Ljfe;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljhl;

    iget v2, p1, Ljfe;->a:I

    invoke-direct {v1, v2, v0}, Ljhl;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Ljeq;->q:Ljhl;

    iget-object v0, p0, Ljeq;->n:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p1, Ljfe;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_d

    :pswitch_2
    invoke-direct {p0}, Ljeq;->k()V

    goto/16 :goto_d

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljeo;

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p1, Ljeo;->a:Ljdz;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p1, Ljeo;->a:Ljdz;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljen;

    iget-object v1, v0, Ljen;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Ljen;->k:Ljeq;

    iget-object v1, v1, Ljeq;->n:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Ljen;->k:Ljeq;

    iget-object v1, v1, Ljeq;->n:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p1, Ljeo;->b:Ljca;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljdy;

    instance-of v4, v3, Ljds;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Ljds;

    invoke-virtual {v4, v0}, Ljds;->b(Ljen;)[Ljca;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    :goto_3
    if-gtz v5, :cond_5

    aget-object v8, v4, v5

    invoke-static {v8, p1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-ltz v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v6, v2, :cond_1a

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljdy;

    iget-object v4, v0, Ljen;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljdr;

    invoke-direct {v4, p1}, Ljdr;-><init>(Ljca;)V

    invoke-virtual {v3, v4}, Ljdy;->e(Ljava/lang/Exception;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljeo;

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p1, Ljeo;->a:Ljdz;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p1, Ljeo;->a:Ljdz;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljen;

    iget-object v1, v0, Ljen;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-boolean p1, v0, Ljen;->g:Z

    if-nez p1, :cond_1a

    iget-object p1, v0, Ljen;->b:Ljcz;

    invoke-interface {p1}, Ljcz;->l()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0}, Ljen;->d()V

    goto/16 :goto_d

    :cond_8
    invoke-virtual {v0}, Ljen;->g()V

    goto/16 :goto_d

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljfc;

    throw v5

    :pswitch_6
    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljen;

    iget-object v0, p1, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    iget-object v0, p1, Ljen;->b:Ljcz;

    invoke-interface {v0}, Ljcz;->l()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p1, Ljen;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p1, Ljen;->l:Ligo;

    iget-object v1, v0, Ligo;->b:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Ligo;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p1, Ljen;->b:Ljcz;

    const-string v0, "Timing out service connection."

    invoke-interface {p1, v0}, Ljcz;->k(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_a
    :goto_5
    invoke-virtual {p1}, Ljen;->l()V

    goto/16 :goto_d

    :pswitch_7
    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljen;

    iget-object v0, p1, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    iget-boolean v0, p1, Ljen;->g:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljen;->n()V

    iget-object v0, p1, Ljen;->k:Ljeq;

    iget-object v1, v0, Ljeq;->h:Ljcd;

    iget-object v0, v0, Ljeq;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Ljce;->e(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_b

    const-string v0, "Connection timed out waiting for Google Play services update to complete."

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v0, "API failed to connect while resuming due to an unknown error."

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x16

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_6
    invoke-virtual {p1, v1}, Ljen;->f(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p1, Ljen;->b:Ljcz;

    const-string v0, "Timing out connection while resuming."

    invoke-interface {p1, v0}, Ljcz;->k(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_8
    iget-object p1, p0, Ljeq;->r:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdz;

    iget-object v1, p0, Ljeq;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljen;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljen;->m()V

    goto :goto_7

    :cond_d
    iget-object p1, p0, Ljeq;->r:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_d

    :pswitch_9
    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljen;

    iget-object v0, p1, Ljen;->k:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljhp;->V(Landroid/os/Handler;)V

    iget-boolean v0, p1, Ljen;->g:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljen;->d()V

    goto/16 :goto_d

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljde;

    invoke-direct {p0, p1}, Ljeq;->j(Ljde;)Ljen;

    goto/16 :goto_d

    :pswitch_b
    iget-object p1, p0, Ljeq;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Ljeq;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    sget-object v0, Ljeb;->a:Ljeb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljeb;->a:Ljeb;

    iget-boolean v4, v1, Ljeb;->e:Z

    if-nez v4, :cond_e

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v1, Ljeb;->a:Ljeb;

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object p1, Ljeb;->a:Ljeb;

    iput-boolean v7, p1, Ljeb;->e:Z

    :cond_e
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object p1, Ljeb;->a:Ljeb;

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljeq;)V

    monitor-enter p1

    :try_start_1
    iget-object v1, p1, Ljeb;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Ljeb;->a:Ljeb;

    iget-object v0, p1, Ljeb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v1, p1, Ljeb;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_f

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_f

    iget-object v0, p1, Ljeb;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_f
    iget-object p1, p1, Ljeb;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1a

    iput-wide v2, p0, Ljeq;->e:J

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljby;

    iget-object v2, p0, Ljeq;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljen;

    iget v6, v3, Ljen;->f:I

    if-ne v6, v0, :cond_10

    move-object v5, v3

    goto :goto_8

    :cond_11
    :goto_8
    if-eqz v5, :cond_13

    iget v0, p1, Ljby;->c:I

    if-ne v0, v1, :cond_12

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    sget v1, Ljcr;->c:I

    iget-object p1, p1, Ljby;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error resolution was canceled by the user, original error message: CANCELED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v4, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljen;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_d

    :cond_12
    iget-object v0, v5, Ljen;->c:Ljdz;

    invoke-static {v0, p1}, Ljeq;->a(Ljdz;Ljby;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljen;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_d

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find API instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GoogleApiManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Llpu;

    iget-object v0, p0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p1, Llpu;->b:Ljava/lang/Object;

    check-cast v1, Ljde;

    iget-object v1, v1, Ljde;->f:Ljdz;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljen;

    if-nez v0, :cond_14

    iget-object v0, p1, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Ljde;

    invoke-direct {p0, v0}, Ljeq;->j(Ljde;)Ljen;

    move-result-object v0

    :cond_14
    invoke-virtual {v0}, Ljen;->o()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Ljeq;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Llpu;->a:I

    if-eq v1, v2, :cond_15

    iget-object p1, p1, Llpu;->c:Ljava/lang/Object;

    sget-object v1, Ljeq;->a:Lcom/google/android/gms/common/api/Status;

    check-cast p1, Ljdy;

    invoke-virtual {p1, v1}, Ljdy;->d(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Ljen;->m()V

    goto/16 :goto_d

    :cond_15
    iget-object p1, p1, Llpu;->c:Ljava/lang/Object;

    check-cast p1, Ljdy;

    invoke-virtual {v0, p1}, Ljen;->e(Ljdy;)V

    goto/16 :goto_d

    :pswitch_e
    iget-object p1, p0, Ljeq;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljen;

    invoke-virtual {v0}, Ljen;->c()V

    invoke-virtual {v0}, Ljen;->d()V

    goto :goto_9

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljea;

    iget-object v0, p1, Ljea;->b:Ljava/lang/Object;

    check-cast v0, Lwy;

    invoke-virtual {v0}, Lwy;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljdz;

    iget-object v3, p0, Ljeq;->k:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljen;

    if-nez v3, :cond_16

    new-instance v0, Ljby;

    invoke-direct {v0, v1}, Ljby;-><init>(I)V

    invoke-virtual {p1, v2, v0, v5}, Ljea;->a(Ljdz;Ljby;Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    iget-object v4, v3, Ljen;->b:Ljcz;

    invoke-interface {v4}, Ljcz;->l()Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Ljby;->a:Ljby;

    iget-object v3, v3, Ljen;->b:Ljcz;

    invoke-interface {v3}, Ljcz;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v4, v3}, Ljea;->a(Ljdz;Ljby;Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    iget-object v4, v3, Ljen;->k:Ljeq;

    iget-object v4, v4, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v4}, Ljhp;->V(Landroid/os/Handler;)V

    iget-object v4, v3, Ljen;->i:Ljby;

    if-eqz v4, :cond_18

    invoke-virtual {p1, v2, v4, v5}, Ljea;->a(Ljdz;Ljby;Ljava/lang/String;)V

    goto :goto_a

    :cond_18
    iget-object v2, v3, Ljen;->k:Ljeq;

    iget-object v2, v2, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v2}, Ljhp;->V(Landroid/os/Handler;)V

    iget-object v2, v3, Ljen;->d:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljen;->d()V

    goto :goto_a

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v7, p1, :cond_19

    goto :goto_b

    :cond_19
    const-wide/16 v2, 0x2710

    :goto_b
    iput-wide v2, p0, Ljeq;->e:J

    iget-object p1, p0, Ljeq;->n:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Ljeq;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdz;

    iget-object v2, p0, Ljeq;->n:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Ljeq;->e:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    :cond_1a
    :goto_d
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lkgd;ILjde;)V
    .locals 10

    if-eqz p2, :cond_8

    iget-object v3, p3, Ljde;->f:Ljdz;

    invoke-virtual {p0}, Ljeq;->g()Z

    move-result p3

    const/4 v8, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Ljhj;->a()Ljhj;

    move-result-object p3

    iget-object p3, p3, Ljhj;->a:Ljhk;

    if-eqz p3, :cond_4

    iget-boolean v1, p3, Ljhk;->b:Z

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    iget-boolean p3, p3, Ljhk;->c:Z

    invoke-virtual {p0, v3}, Ljeq;->b(Ljdz;)Ljen;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v1, Ljen;->b:Ljcz;

    instance-of v4, v2, Ljgb;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    check-cast v2, Ljgb;

    invoke-virtual {v2}, Ljgb;->B()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljgb;->m()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1, v2, p2}, Ljfd;->b(Ljen;Ljgb;I)Ljgh;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    iget v0, v1, Ljen;->j:I

    add-int/2addr v0, v8

    iput v0, v1, Ljen;->j:I

    iget-boolean p3, p3, Ljgh;->c:Z

    goto :goto_0

    :cond_4
    const/4 p3, 0x1

    :cond_5
    :goto_0
    new-instance v9, Ljfd;

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1

    :cond_6
    move-wide v4, v0

    :goto_1
    if-eqz p3, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_2

    :cond_7
    :goto_2
    move-wide v6, v0

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v7}, Ljfd;-><init>(Ljeq;ILjdz;JJ)V

    :goto_3
    if-eqz v0, :cond_8

    iget-object p1, p1, Lkgd;->a:Ljava/lang/Object;

    iget-object p2, p0, Ljeq;->n:Landroid/os/Handler;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lltd;

    invoke-direct {p3, p2, v8}, Lltd;-><init>(Landroid/os/Handler;I)V

    check-cast p1, Ljot;

    invoke-virtual {p1, p3, v0}, Ljot;->h(Ljava/util/concurrent/Executor;Ljon;)V

    return-void

    :cond_8
    return-void
.end method
