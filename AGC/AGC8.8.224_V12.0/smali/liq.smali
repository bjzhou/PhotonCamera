.class public final Lliq;
.super Ljava/lang/Object;

# interfaces
.implements Llil;


# instance fields
.field public final a:Lnox;

.field public final b:Logd;


# direct methods
.method public constructor <init>(Llij;Landroid/content/Context;Lnox;Logd;Loiw;Loiw;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4, p5}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-object p1, p2

    check-cast p1, Landroid/app/Application;

    iput-object p3, p0, Lliq;->a:Lnox;

    iput-object p4, p0, Lliq;->b:Logd;

    new-instance p1, Ldkg;

    const/4 p3, 0x5

    invoke-direct {p1, p0, p2, p3}, Ldkg;-><init>(Lliq;Landroid/content/Context;I)V

    invoke-static {p1}, Llkj;->D(Lmrl;)Lmrl;

    new-instance p1, Ldet;

    const/16 p2, 0x10

    invoke-direct {p1, p6, p2}, Ldet;-><init>(Loiw;I)V

    invoke-static {p1}, Llkj;->D(Lmrl;)Lmrl;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lliq;->b:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ab()V
    .locals 2

    new-instance v0, Lkxc;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lkxc;-><init>(Lliq;I)V

    iget-object v1, p0, Lliq;->a:Lnox;

    invoke-static {v0, v1}, Lnsy;->E(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method
