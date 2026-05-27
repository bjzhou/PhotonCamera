.class public final Ljgq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lbyb;I)V
    .locals 0

    iput p2, p0, Ljgq;->b:I

    iput-object p1, p0, Ljgq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljgo;I)V
    .locals 0

    iput p2, p0, Ljgq;->b:I

    iput-object p1, p0, Ljgq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p0, Ljgq;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbxz;

    iget-object v0, p0, Ljgq;->a:Ljava/lang/Object;

    check-cast v0, Lbyb;

    invoke-virtual {v0, p1}, Lbyb;->c(Lbxz;)V

    const/4 v2, 0x1

    goto/16 :goto_1

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Ljgq;->a:Ljava/lang/Object;

    check-cast v0, Ljgo;

    iget-object v0, v0, Ljgo;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljgn;

    iget-object v1, p0, Ljgq;->a:Ljava/lang/Object;

    check-cast v1, Ljgo;

    iget-object v1, v1, Ljgo;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljgp;

    if-eqz v1, :cond_2

    iget v2, v1, Ljgp;->b:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const-string v2, "GmsClientSupervisor"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v1, Ljgp;->f:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Landroid/content/ComponentName;

    iget-object p1, p1, Ljgn;->c:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-direct {v2, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2}, Ljgp;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_2
    monitor-exit v0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_2
    iget-object v0, p0, Ljgq;->a:Ljava/lang/Object;

    check-cast v0, Ljgo;

    iget-object v0, v0, Ljgo;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljgn;

    iget-object v4, p0, Ljgq;->a:Ljava/lang/Object;

    check-cast v4, Ljgo;

    iget-object v4, v4, Ljgo;->c:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljgp;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljgp;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, v4, Ljgp;->c:Z

    if-eqz v5, :cond_3

    iget-object v5, v4, Ljgp;->g:Ljgo;

    iget-object v5, v5, Ljgo;->e:Landroid/os/Handler;

    iget-object v6, v4, Ljgp;->e:Ljgn;

    invoke-virtual {v5, v3, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v5, v4, Ljgp;->g:Ljgo;

    iget-object v6, v5, Ljgo;->f:Ljhw;

    iget-object v5, v5, Ljgo;->d:Landroid/content/Context;

    invoke-virtual {v6, v5, v4}, Ljhw;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-boolean v2, v4, Ljgp;->c:Z

    iput v1, v4, Ljgp;->b:I

    :cond_3
    iget-object v1, p0, Ljgq;->a:Ljava/lang/Object;

    check-cast v1, Ljgo;

    iget-object v1, v1, Ljgo;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_0
    return v2

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lbxz;

    iget-object v0, p0, Ljgq;->a:Ljava/lang/Object;

    check-cast v0, Lbyb;

    iget-object v0, v0, Lbyb;->c:Lbpd;

    invoke-virtual {v0, p1}, Lbpd;->f(Lbzz;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
