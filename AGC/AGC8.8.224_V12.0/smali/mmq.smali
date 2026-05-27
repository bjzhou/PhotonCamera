.class final Lmmq;
.super Lmmk;


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lmms;


# direct methods
.method public constructor <init>(Lmms;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lmmq;->b:Lmms;

    iput-object p2, p0, Lmmq;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Lmmk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lmmq;->b:Lmms;

    iget-object v0, v0, Lmms;->a:Ljava/lang/Object;

    iget-object v1, p0, Lmmq;->a:Landroid/os/IBinder;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lmmc;

    if-eqz v3, :cond_1

    move-object v1, v2

    check-cast v1, Lmmc;

    goto :goto_0

    :cond_1
    new-instance v2, Lmmc;

    invoke-direct {v2, v1}, Lmmc;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    check-cast v0, Lmmt;

    iput-object v1, v0, Lmmt;->k:Landroid/os/IInterface;

    iget-object v0, p0, Lmmq;->b:Lmms;

    iget-object v0, v0, Lmms;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    move-object v2, v0

    check-cast v2, Lmmt;

    iget-object v2, v2, Lmmt;->k:Landroid/os/IInterface;

    check-cast v2, Lcbe;

    iget-object v2, v2, Lcbe;->a:Landroid/os/IBinder;

    move-object v3, v0

    check-cast v3, Lmmt;

    iget-object v3, v3, Lmmt;->h:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    check-cast v0, Lmmt;

    iget-object v0, v0, Lmmt;->l:Llzz;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "linkToDeath failed"

    invoke-virtual {v0, v2, v3, v1}, Llzz;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lmmq;->b:Lmms;

    iget-object v0, v0, Lmms;->a:Ljava/lang/Object;

    check-cast v0, Lmmt;

    invoke-static {v0}, Lmmt;->d(Lmmt;)V

    iget-object v0, p0, Lmmq;->b:Lmms;

    iget-object v0, v0, Lmms;->a:Ljava/lang/Object;

    check-cast v0, Lmmt;

    iget-object v0, v0, Lmmt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lmmq;->b:Lmms;

    iget-object v0, v0, Lmms;->a:Ljava/lang/Object;

    check-cast v0, Lmmt;

    iget-object v0, v0, Lmmt;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
