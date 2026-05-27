.class public final synthetic Llkq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/ndk/base/DaydreamApi;Lofd;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Llgc;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llkr;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llks;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llmy;Logd;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llon;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llpp;Lnou;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llyd;Lnau;I[B[B)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    iput-object p1, p0, Llkq;->b:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnsa;Lkpb;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llkq;->b:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Looz;Losd;I)V
    .locals 0

    iput p3, p0, Llkq;->c:I

    iput-object p1, p0, Llkq;->a:Ljava/lang/Object;

    iput-object p2, p0, Llkq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Llkq;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    sget-object v2, Lojk;->a:Lojk;

    check-cast v1, Lopq;

    invoke-interface {v0, v1, v2}, Looz;->c(Lopq;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/ndk/base/DaydreamApi;

    iget-object v0, v0, Lcom/google/vr/ndk/base/DaydreamApi;->f:Lofc;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DaydreamApi"

    const-string v2, "RemoteException while launching VR transition: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const-string v0, "DaydreamApi"

    const-string v1, "Can\'t launch callbacks via DaydreamManager, sending manually"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Llkq;->b:Ljava/lang/Object;

    check-cast v0, Lofd;

    invoke-virtual {v0}, Lofd;->b()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    return-void

    :pswitch_1
    iget-object v0, p0, Llkq;->b:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lnsa;

    iget-object v2, v2, Lnsa;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    move-object v3, v0

    check-cast v3, Lnsa;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lnsa;->b:Z

    move-object v3, v0

    check-cast v3, Lnsa;

    iget-boolean v3, v3, Lnsa;->d:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lnsa;

    iget-boolean v3, v3, Lnsa;->c:Z

    if-nez v3, :cond_2

    invoke-interface {v1}, Lkpb;->close()V

    check-cast v0, Lnsa;

    iput-boolean v4, v0, Lnsa;->c:Z

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :pswitch_2
    iget-object v0, p0, Llkq;->b:Ljava/lang/Object;

    check-cast v0, Llyd;

    iget-object v0, v0, Llyd;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->a:Ljava/lang/Object;

    check-cast v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    :try_start_3
    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception v1

    check-cast v0, Llpp;

    iget-object v0, v0, Llpp;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store account on flag read for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " which may lead to stale flags."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobStoreFlagStore"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :pswitch_4
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    check-cast v0, Llpp;

    invoke-virtual {v0, v1}, Llpp;->c(Lnou;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    sget-object v2, Llpl;->a:Lmqp;

    check-cast v0, Llon;

    iget-object v0, v0, Llon;->c:Landroid/content/Context;

    invoke-static {v0}, Llpq;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot use PROCESS_STABLE backing without declarative registration. See go/phenotype-android-integration#phenotype for more information. This will lead to stale flags."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhenotypeCombinedFlags"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :pswitch_6
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Llpv;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v3, :cond_5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    return-void

    :pswitch_7
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    check-cast v0, Llmy;

    invoke-virtual {v0, v1}, Llmy;->a(Logd;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    check-cast v0, Llks;

    iget-object v0, v0, Llks;->b:Llku;

    iget-object v0, v0, Llku;->a:Llkt;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Llkt;->a(ILjava/lang/String;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    check-cast v0, Llgc;

    iget v0, v0, Llgc;->a:I

    if-eqz v0, :cond_8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_8
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_a
    iget-object v0, p0, Llkq;->a:Ljava/lang/Object;

    iget-object v1, p0, Llkq;->b:Ljava/lang/Object;

    check-cast v0, Llkr;

    iget-object v0, v0, Llkr;->b:Llku;

    iget-object v0, v0, Llku;->a:Llkt;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Llkt;->a(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
