.class public final Lkte;
.super Ljava/lang/Object;


# static fields
.field private static volatile e:Lkte;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljks;Ljava/util/concurrent/ExecutorService;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkte;->d:Ljava/lang/Object;

    iput-object p2, p0, Lkte;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkte;->c:Ljava/lang/Object;

    iput-object p4, p0, Lkte;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/PortraitOutputs;Lcom/google/googlex/gcam/InterleavedImageU8;Lnra;Lcom/google/googlex/gcam/PortraitRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkte;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkte;->d:Ljava/lang/Object;

    iput-object p3, p0, Lkte;->a:Ljava/lang/Object;

    iput-object p4, p0, Lkte;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfbz;Lhkc;Lika;Lika;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkte;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkte;->b:Ljava/lang/Object;

    iput-object p4, p0, Lkte;->c:Ljava/lang/Object;

    invoke-interface {p2}, Lhkc;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhkh;

    iput-object p1, p0, Lkte;->d:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Limu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkte;->a:Ljava/lang/Object;

    invoke-static {}, Lmtb;->v()Lmtb;

    move-result-object p1

    iput-object p1, p0, Lkte;->d:Ljava/lang/Object;

    new-instance p1, Lnab;

    sget-object v0, Lmyj;->a:Lmyj;

    invoke-direct {p1, v0}, Lnab;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lkte;->b:Ljava/lang/Object;

    iput-object p0, p0, Lkte;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lknh;Lknm;Lknf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkte;->b:Ljava/lang/Object;

    iput-object p2, p0, Lkte;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkte;->a:Ljava/lang/Object;

    iput-object p4, p0, Lkte;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkgd;Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;Lkmk;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkte;->c:Ljava/lang/Object;

    iput-object p2, p0, Lkte;->d:Ljava/lang/Object;

    iput-object p3, p0, Lkte;->b:Ljava/lang/Object;

    iput-object p4, p0, Lkte;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkli;Lmwn;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lkli;->p()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkte;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lkli;->o()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkte;->d:Ljava/lang/Object;

    invoke-interface {p1}, Lkli;->q()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkte;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Lklh;

    invoke-virtual {p1}, Lklh;->J()Z

    move-result p1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p1, :cond_0

    invoke-static {v2}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lmvv;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lkfc;->a:Lkfc;

    invoke-virtual {p2, p1}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object v0, p0, Lkte;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkrw;Ljava/util/Random;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lkte;->a:Ljava/lang/Object;

    iput-object p2, p0, Lkte;->c:Ljava/lang/Object;

    sget-object p2, Lohd;->a:Lohd;

    invoke-virtual {p2}, Lohd;->b()Lohe;

    move-result-object p2

    invoke-interface {p2}, Lohe;->n()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p1, Lkrw;->a:Landroid/content/Context;

    invoke-static {p2}, Llri;->a(Landroid/content/Context;)Llrh;

    move-result-object p2

    const-string v1, "cbv_module"

    invoke-virtual {p2, v1}, Llrh;->b(Ljava/lang/String;)V

    const-string v1, "UploadLimiterRecord.pb"

    invoke-virtual {p2, v1}, Llrh;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Llrh;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-static {}, Llsn;->a()Llsm;

    move-result-object v1

    invoke-virtual {v1, p2}, Llsm;->e(Landroid/net/Uri;)V

    sget-object p2, Lktd;->b:Lktd;

    invoke-virtual {v1, p2}, Llsm;->d(Lnxy;)V

    invoke-virtual {v1}, Llsm;->a()Llsn;

    move-result-object p2

    sget-object v1, Lktf;->a:Llij;

    if-nez v1, :cond_1

    const-class v1, Lktf;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lktf;->a:Llij;

    if-nez v2, :cond_0

    new-instance v2, Lva;

    iget-object v3, p1, Lkrw;->a:Landroid/content/Context;

    invoke-static {v3}, Llrg;->g(Landroid/content/Context;)Llhe;

    move-result-object v3

    invoke-virtual {v3}, Llhe;->d()Llrg;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lva;-><init>(Ljava/util/List;[B)V

    invoke-static {p1}, Lktf;->c(Lkrw;)Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object v0, Llsz;->a:Llsz;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Llsq;->a:Llsv;

    invoke-static {v4, v3}, Lljz;->c(Llsv;Ljava/util/HashMap;)V

    invoke-static {p1, v2, v3, v0}, Lljz;->K(Ljava/util/concurrent/Executor;Lva;Ljava/util/HashMap;Llsz;)Llij;

    move-result-object p1

    sput-object p1, Lktf;->a:Llij;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p1, Lktf;->a:Llij;

    invoke-virtual {p1, p2}, Llij;->a(Llsn;)Llst;

    move-result-object p1

    iput-object p1, p0, Lkte;->d:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Llst;

    invoke-static {p1}, Lkte;->n(Llst;)Lktd;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    iget-object p1, p1, Lktd;->a:Lnxt;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lkte;->b:Ljava/lang/Object;

    return-void

    :cond_2
    iput-object v0, p0, Lkte;->d:Ljava/lang/Object;

    iput-object v0, p0, Lkte;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llrd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Llrd;->a:Llsb;

    iput-object v0, p0, Lkte;->d:Ljava/lang/Object;

    iget-object v0, p1, Llrd;->b:Ljava/util/List;

    iput-object v0, p0, Lkte;->b:Ljava/lang/Object;

    iget-object v0, p1, Llrd;->c:Ljava/util/List;

    iput-object v0, p0, Lkte;->c:Ljava/lang/Object;

    iget-object p1, p1, Llrd;->d:Landroid/net/Uri;

    iput-object p1, p0, Lkte;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkte;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lkte;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lkte;->b:Ljava/lang/Object;

    iput-object p4, p0, Lkte;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkte;->d:Ljava/lang/Object;

    iput-object p2, p0, Lkte;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lkte;->c:Ljava/lang/Object;

    iput-object p4, p0, Lkte;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkte;->d:Ljava/lang/Object;

    iput-object p2, p0, Lkte;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkte;->c:Ljava/lang/Object;

    iput-object p4, p0, Lkte;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lkte;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lkte;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lkte;->a:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lkte;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lkrw;)Lkte;
    .locals 3

    sget-object v0, Lkte;->e:Lkte;

    if-nez v0, :cond_1

    const-class v0, Lkte;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lkte;->e:Lkte;

    if-nez v1, :cond_0

    new-instance v1, Lkte;

    sget-object v2, Lmqx;->a:Ljava/util/Random;

    invoke-direct {v1, p0, v2}, Lkte;-><init>(Lkrw;Ljava/util/Random;)V

    sput-object v1, Lkte;->e:Lkte;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lkte;->e:Lkte;

    return-object p0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "collection must start with \"/\" but is \"%s\""

    invoke-static {v0, v1, p0}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static n(Llst;)Lktd;
    .locals 12

    sget-object v0, Lktd;->b:Lktd;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lkwp;->d()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p0}, Llst;->a()Lnou;

    move-result-object v3

    invoke-interface {v3}, Lnou;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lktd;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v3, Lktd;->a:Lnxt;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lktb;

    iget-object v7, v7, Lktb;->a:Lnxt;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnyy;

    invoke-static {v9}, Lnzs;->a(Lnyy;)J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-lez v11, :cond_1

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnyy;

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    sget-object v7, Lktb;->b:Lktb;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_3
    iget-object v8, v7, Lnwn;->b:Lnws;

    check-cast v8, Lktb;

    invoke-virtual {v8}, Lktb;->b()Lnxt;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v6

    check-cast v6, Lktb;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lktd;->b:Lktd;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnwn;->u(Ljava/util/Map;)V

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lktd;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v1, Lhga;

    const/16 v2, 0xf

    invoke-direct {v1, v0, v2}, Lhga;-><init>(Lktd;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-virtual {p0, v1, v2}, Llst;->b(Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_2
    move-object v0, v3

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    :goto_3
    return-object v0
.end method

.method private final o(Ljava/lang/Long;Lkad;)V
    .locals 1

    iget-object v0, p0, Lkte;->d:Ljava/lang/Object;

    check-cast v0, Lmtb;

    invoke-virtual {v0, p1, p2}, Lmtb;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p2, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lmzi;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b(Loah;)Z
    .locals 14

    invoke-static {}, Lohg;->b()V

    sget-object v0, Lohd;->a:Lohd;

    invoke-virtual {v0}, Lohd;->b()Lohe;

    move-result-object v0

    invoke-interface {v0}, Lohe;->j()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget v0, p1, Loah;->h:I

    invoke-static {v0}, Lkwp;->y(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-static {v0}, Lkwp;->x(I)I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    invoke-static {}, Lohg;->b()V

    sget-object v0, Lohd;->a:Lohd;

    invoke-virtual {v0}, Lohd;->b()Lohe;

    move-result-object v0

    invoke-interface {v0}, Lohe;->k()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p1, Loah;->i:I

    invoke-static {v0}, Loag;->a(I)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    return v2

    :cond_4
    :goto_1
    invoke-static {}, Lohg;->b()V

    sget-object v0, Lohd;->a:Lohd;

    invoke-virtual {v0}, Lohd;->b()Lohe;

    move-result-object v0

    invoke-interface {v0}, Lohe;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkte;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    sget-object v0, Lohd;->a:Lohd;

    invoke-virtual {v0}, Lohd;->b()Lohe;

    move-result-object v0

    invoke-interface {v0}, Lohe;->a()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    return v2

    :cond_6
    :goto_2
    iget-wide v3, p1, Loah;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v3, p1, Loah;->h:I

    invoke-static {v3}, Lkwp;->y(I)I

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x2

    :cond_7
    new-instance v4, Lktg;

    invoke-direct {v4, v0, v3}, Lktg;-><init>(Ljava/lang/Long;I)V

    invoke-static {}, Lkwp;->d()J

    move-result-wide v5

    iget-object v0, p0, Lkte;->b:Ljava/lang/Object;

    const-wide/16 v7, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    iget-object v9, p0, Lkte;->d:Ljava/lang/Object;

    if-nez v9, :cond_8

    goto/16 :goto_8

    :cond_8
    monitor-enter v0

    :try_start_0
    iget-wide v9, p1, Loah;->d:J

    iget v4, p1, Loah;->h:I

    invoke-static {v4}, Lkwp;->y(I)I

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x2

    :cond_9
    iget-object v11, p0, Lkte;->b:Ljava/lang/Object;

    if-nez v11, :cond_a

    sget-object v4, Lnzs;->c:Lnyy;

    goto :goto_3

    :cond_a
    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v12, p0, Lkte;->b:Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lktb;

    if-nez v9, :cond_b

    sget-object v4, Lnzs;->c:Lnyy;

    monitor-exit v11

    goto :goto_3

    :cond_b
    invoke-static {v4}, Lkwp;->x(I)I

    move-result v4

    int-to-long v12, v4

    sget-object v4, Lnzs;->c:Lnyy;

    iget-object v9, v9, Lktb;->a:Lnxt;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnyy;

    :cond_c
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    cmp-long v9, v5, v7

    if-lez v9, :cond_e

    :try_start_2
    invoke-static {v4}, Lnzs;->a(Lnyy;)J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v7, v4

    if-gez v6, :cond_d

    goto :goto_4

    :cond_d
    goto/16 :goto_7

    :cond_e
    :goto_4
    iget-wide v4, p1, Loah;->d:J

    iget p1, p1, Loah;->h:I

    invoke-static {p1}, Lkwp;->y(I)I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    move v1, p1

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lnzs;->b(J)Lnyy;

    move-result-object p1

    iget-object v2, p0, Lkte;->b:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_6

    :cond_10
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v6, p0, Lkte;->b:Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lktb;

    if-nez v5, :cond_11

    sget-object v5, Lktb;->b:Lktb;

    :cond_11
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnwn;

    invoke-virtual {v6, v5}, Lnwn;->s(Lnws;)V

    invoke-static {v1}, Lkwp;->x(I)I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v6, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_12
    iget-object v1, v6, Lnwn;->b:Lnws;

    check-cast v1, Lktb;

    invoke-virtual {v1}, Lktb;->b()Lnxt;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lktb;

    iget-object v1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    sget-object p1, Lktd;->b:Lktd;

    invoke-virtual {p1}, Lnws;->O()Lnwn;

    move-result-object p1

    iget-object v1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lnwn;->u(Ljava/util/Map;)V

    invoke-virtual {p1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lktd;

    iget-object v1, p0, Lkte;->d:Ljava/lang/Object;

    new-instance v2, Lhga;

    const/16 v4, 0x10

    invoke-direct {v2, p1, v4}, Lhga;-><init>(Lktd;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    check-cast v1, Llst;

    invoke-virtual {v1, v2, p1}, Llst;->b(Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    const/4 v2, 0x1

    :goto_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_a

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :cond_13
    :goto_8
    iget-object p1, p0, Lkte;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_9
    iget-object v0, p0, Lkte;->a:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-eqz v0, :cond_15

    cmp-long v1, v5, v7

    if-lez v1, :cond_15

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v5

    cmp-long v5, v0, v9

    if-gez v5, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    goto :goto_9

    :cond_15
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_16

    iget-object v0, p0, Lkte;->a:Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    monitor-exit p1

    :goto_a
    return v2

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method protected final c(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lkte;->b:Ljava/lang/Object;

    iget-object v1, p0, Lkte;->c:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lknh;

    array-length v3, v2

    array-length v4, p2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    iget-object v4, v4, Lknh;->b:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_0

    aget-object v5, p2, v3

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_0
    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_1

    aget-object v5, p2, v3

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    :cond_1
    :goto_1
    const-class v5, Ljava/lang/Boolean;

    if-ne v4, v5, :cond_2

    aget-object v4, p2, v3

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lkte;->d:Ljava/lang/Object;

    invoke-static {p2}, Lkni;->a([Ljava/lang/Object;)Lkni;

    move-result-object p2

    check-cast v0, Lknf;

    invoke-virtual {v0, p1, p2}, Lknf;->a(Ljava/lang/Object;Lkni;)V

    iget-object p1, p0, Lkte;->a:Ljava/lang/Object;

    check-cast p1, Lknq;

    iget-object p1, p1, Lknq;->b:Lknm;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lknm;->a()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " which does not match: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final varargs d([Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkte;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs e(D[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lkte;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/io/OutputStream;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lkte;->c:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lkte;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llsf;

    invoke-interface {v3}, Llsf;->b()Llse;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Llrc;

    invoke-direct {v1, p1, v2}, Llrc;-><init>(Ljava/io/OutputStream;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llsg;

    invoke-static {v0}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/OutputStream;

    invoke-interface {v1}, Llsg;->d()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0
.end method

.method public final g(Lkea;Lkea;)Lkea;
    .locals 3

    invoke-static {p1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v0

    iget-object v1, p0, Lkte;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lkhs;->b:Ljava/lang/Integer;

    iget-object v1, p0, Lkte;->d:Ljava/lang/Object;

    invoke-interface {p1}, Lkea;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lkea;->a()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lkea;->a()Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lkhs;->c:Ljava/lang/Integer;

    iget-object v1, p0, Lkte;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lkea;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lkea;->c()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lkea;->c()Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lkhs;->d:Ljava/lang/Integer;

    iget-object v1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lkea;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lkea;->e()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-interface {p2}, Lkea;->e()Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lkhs;->e:Ljava/lang/Integer;

    invoke-interface {p1}, Lkea;->g()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    sget-object v2, Lkfr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Lkht;

    iget-object v1, v1, Lkht;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    goto :goto_4

    :cond_4
    invoke-interface {p1}, Lkea;->g()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lkhs;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p1}, Lkea;->f()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    sget-object v2, Lkfr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Lkht;

    iget-object v1, v1, Lkht;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    goto :goto_5

    :cond_5
    invoke-interface {p1}, Lkea;->f()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lkhs;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {p1}, Lkea;->h()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    sget-object v2, Lkfr;->b:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast p2, Lkht;

    iget-object p1, p2, Lkht;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    goto :goto_6

    :cond_6
    invoke-interface {p1}, Lkea;->h()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    :goto_6
    iput-object p1, v0, Lkhs;->k:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v0}, Lkhs;->d()Lkht;

    move-result-object p1

    return-object p1
.end method

.method public final i(J)Lkad;
    .locals 2

    iget-object v0, p0, Lkte;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Lmzi;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lkte;->d:Ljava/lang/Object;

    check-cast p2, Lmtb;

    invoke-virtual {p2, p1}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkad;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j()Lkad;
    .locals 3

    iget-object v0, p0, Lkte;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lmzi;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lkte;->d:Ljava/lang/Object;

    iget-object v2, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v2}, Lmzi;->j()Lmya;

    move-result-object v2

    invoke-interface {v2}, Lmya;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    check-cast v1, Lmtb;

    invoke-virtual {v1, v2}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkad;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()Lkad;
    .locals 4

    iget-object v0, p0, Lkte;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lmzi;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lmzi;->j()Lmya;

    move-result-object v1

    invoke-interface {v1}, Lmya;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lkte;->d:Ljava/lang/Object;

    check-cast v2, Lmtb;

    invoke-virtual {v2, v1}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkad;

    invoke-direct {p0, v1, v2}, Lkte;->o(Ljava/lang/Long;Lkad;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lkte;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lkte;->d:Ljava/lang/Object;

    check-cast v2, Lmsp;

    iget v2, v2, Lmsp;->b:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lkte;->b:Ljava/lang/Object;

    invoke-static {v2}, Llyh;->q(Lmyb;)Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    iget-object v3, p0, Lkte;->d:Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v3, Lmtb;

    invoke-virtual {v3, v4}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-wide v3, v5

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final bridge synthetic m(JLjava/lang/Object;)V
    .locals 2

    check-cast p3, Lkad;

    iget-object v0, p0, Lkte;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Lmzi;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lkte;->d:Ljava/lang/Object;

    check-cast p2, Lmtb;

    invoke-virtual {p2, p1, p3}, Lmtb;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lkte;->d:Ljava/lang/Object;

    check-cast p1, Lmtb;

    invoke-virtual {p1}, Lmtb;->t()Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lmzi;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lkte;->a:Ljava/lang/Object;

    iget-object p2, p0, Lkte;->b:Ljava/lang/Object;

    invoke-static {p2}, Llyh;->p(Lmzi;)Lmzi;

    move-result-object p2

    invoke-interface {p1, p2}, Limu;->a(Lmzi;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkte;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lmzi;->j()Lmya;

    move-result-object p1

    invoke-interface {p1}, Lmya;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object p2, p0, Lkte;->d:Ljava/lang/Object;

    check-cast p2, Lmtb;

    invoke-virtual {p2, p1}, Lmtb;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkad;

    invoke-direct {p0, p1, p2}, Lkte;->o(Ljava/lang/Long;Lkad;)V

    invoke-interface {p2}, Lkad;->close()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

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
