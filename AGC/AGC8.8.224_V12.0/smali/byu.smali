.class public final Lbyu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final e:Lbze;


# instance fields
.field final a:Ljava/util/Map;

.field final b:Ljava/util/Map;

.field public final c:Landroid/os/Handler;

.field private volatile d:Lbpd;

.field private final f:Lbze;

.field private final g:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbze;-><init>([B)V

    sput-object v0, Lbyu;->e:Lbze;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbyu;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbyu;->b:Ljava/util/Map;

    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lbyu;->e:Lbze;

    iput-object v0, p0, Lbyu;->f:Lbze;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lbyu;->c:Landroid/os/Handler;

    new-instance v1, Ldne;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ldne;-><init>(Lbze;[B)V

    iput-object v1, p0, Lbyu;->g:Ldne;

    sget v0, Lbwv;->a:I

    return-void
.end method

.method private static d(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lbyu;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lbyu;->d(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lbpd;
    .locals 5

    if-eqz p1, :cond_a

    invoke-static {}, Lcaw;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_7

    instance-of v0, p1, Lbz;

    if-eqz v0, :cond_0

    check-cast p1, Lbz;

    invoke-virtual {p0, p1}, Lbyu;->b(Lbz;)Lbpd;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    check-cast p1, Landroid/app/Activity;

    invoke-static {}, Lcaw;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbyu;->a(Landroid/content/Context;)Lbpd;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lbz;

    if-eqz v0, :cond_2

    check-cast p1, Lbz;

    invoke-virtual {p0, p1}, Lbyu;->b(Lbz;)Lbpd;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lbyu;->e(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lbyu;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0}, Lbyu;->c(Landroid/app/FragmentManager;)Lbyt;

    move-result-object v0

    iget-object v2, v0, Lbyt;->c:Lbpd;

    if-nez v2, :cond_4

    invoke-static {p1}, Lbol;->b(Landroid/content/Context;)Lbol;

    move-result-object v2

    iget-object v3, v0, Lbyt;->a:Lbyi;

    iget-object v4, v0, Lbyt;->b:Lbyv;

    invoke-static {v2, v3, v4, p1}, Lbze;->b(Lbol;Lbyn;Lbyv;Landroid/content/Context;)Lbpd;

    move-result-object p1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lbpd;->h()V

    :cond_3
    iput-object p1, v0, Lbyt;->c:Lbpd;

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_0
    return-object p1

    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbyu;->a(Landroid/content/Context;)Lbpd;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_1
    iget-object v0, p0, Lbyu;->d:Lbpd;

    if-nez v0, :cond_9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbyu;->d:Lbpd;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbol;->b(Landroid/content/Context;)Lbol;

    move-result-object v0

    new-instance v1, Lbyj;

    invoke-direct {v1}, Lbyj;-><init>()V

    new-instance v2, Lbyq;

    invoke-direct {v2}, Lbyq;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lbze;->b(Lbol;Lbyn;Lbyv;Landroid/content/Context;)Lbpd;

    move-result-object p1

    iput-object p1, p0, Lbyu;->d:Lbpd;

    :cond_8
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_2
    iget-object p1, p0, Lbyu;->d:Lbpd;

    return-object p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lbz;)Lbpd;
    .locals 9

    invoke-static {}, Lcaw;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbz;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbyu;->a(Landroid/content/Context;)Lbpd;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lbyu;->e(Landroid/app/Activity;)V

    invoke-static {p1}, Lbyu;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1}, Lbz;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbol;->b(Landroid/content/Context;)Lbol;

    move-result-object v1

    iget-object v3, p0, Lbyu;->g:Ldne;

    iget-object v4, p1, Lpl;->m:Laks;

    invoke-virtual {p1}, Lbz;->bI()Lcq;

    invoke-static {}, Lcaw;->h()V

    invoke-static {}, Lcaw;->h()V

    iget-object v2, v3, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbpd;

    if-nez v2, :cond_2

    new-instance v8, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    invoke-direct {v8, v4}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Laks;)V

    iget-object v2, v3, Ldne;->b:Ljava/lang/Object;

    new-instance v2, Lbyq;

    invoke-direct {v2}, Lbyq;-><init>()V

    invoke-static {v1, v8, v2, p1}, Lbze;->b(Lbol;Lbyn;Lbyv;Landroid/content/Context;)Lbpd;

    move-result-object p1

    iget-object v1, v3, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lbyp;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lbyp;-><init>(Ldne;Laks;[B[B[B)V

    invoke-virtual {v8, v1}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a(Lbyo;)V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbpd;->h()V

    goto :goto_0

    :cond_1
    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_2
    :goto_1
    return-object v2
.end method

.method public final c(Landroid/app/FragmentManager;)Lbyt;
    .locals 3

    iget-object v0, p0, Lbyu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyt;

    if-nez v0, :cond_1

    const-string v0, "com.bumptech.glide.manager"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lbyt;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Lbyt;

    invoke-direct {v1}, Lbyt;-><init>()V

    iget-object v2, p0, Lbyu;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lbyu;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    const-string v3, "com.bumptech.glide.manager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "RMRetriever"

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    move-object p1, v4

    const/4 v7, 0x0

    goto/16 :goto_7

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcq;

    iget-object v1, p0, Lbyu;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbzb;

    invoke-virtual {p1, v3}, Lcq;->e(Ljava/lang/String;)Lbw;

    move-result-object v8

    check-cast v8, Lbzb;

    if-ne v8, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eq v0, v7, :cond_3

    iget-boolean v0, p1, Lcq;->t:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcq;->i()Lcx;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcx;->o(Lbw;Ljava/lang/String;)V

    if-eqz v8, :cond_2

    invoke-virtual {v0, v8}, Lcx;->k(Lbw;)V

    :cond_2
    invoke-virtual {v0}, Lcx;->c()V

    iget-object v0, p0, Lbyu;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v7, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    move-object p1, v4

    goto/16 :goto_7

    :cond_3
    :goto_0
    iget-boolean v0, p1, Lcq;->t:Z

    if-eqz v0, :cond_4

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Parent was destroyed before our Fragment could be added, all requests for the destroyed parent are cancelled"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ERROR: Tried adding Fragment twice and failed twice, giving up and cancelling all associated requests! This probably means you\'re starting loads in a unit test with an Activity that you haven\'t created and never create. If you\'re using Robolectric, create the Activity as part of your test setup"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    iget-object v0, v1, Lbzb;->a:Lbyi;

    invoke-virtual {v0}, Lbyi;->b()V

    :goto_2
    iget-object v0, p0, Lbyu;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    goto/16 :goto_7

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/FragmentManager;

    iget-object v1, p0, Lbyu;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbyt;

    invoke-virtual {p1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lbyt;

    if-ne v8, v1, :cond_6

    goto/16 :goto_6

    :cond_6
    if-eqz v8, :cond_8

    iget-object v9, v8, Lbyt;->c:Lbpd;

    if-nez v9, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We\'ve added two fragments with requests! Old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " New: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    if-eq v0, v7, :cond_b

    invoke-virtual {p1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz v8, :cond_a

    invoke-virtual {v0, v8}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_a
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lbyu;->c:Landroid/os/Handler;

    invoke-virtual {v0, v7, v7, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    move-object p1, v4

    goto :goto_7

    :cond_b
    :goto_4
    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Parent was destroyed before our Fragment could be added"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    const-string v0, "Tried adding Fragment twice and failed twice, giving up!"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_5
    iget-object v0, v1, Lbyt;->a:Lbyi;

    invoke-virtual {v0}, Lbyi;->b()V

    :goto_6
    iget-object v0, p0, Lbyu;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    :goto_7
    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v5, :cond_e

    if-nez v4, :cond_e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
