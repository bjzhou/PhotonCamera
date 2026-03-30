.class public final Lokm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/Map;

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Lokk;

.field public f:Landroid/content/ComponentName;

.field final synthetic g:Lokl;


# direct methods
.method public constructor <init>(Lokl;Lokk;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lokm;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput p1, p0, Lokm;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lokm;->e:Lokk;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lokm;->g:Lokl;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method static bridge synthetic c(Lokm;Ljava/lang/String;)Lofz;
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "Dynamic lookup for intent failed for action "

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lokm;->e:Lokk;

    nop

    nop

    iget-object v3, p0, Lokm;->g:Lokl;

    nop

    nop

    iget-object v3, v3, Lokl;->d:Landroid/content/Context;

    nop

    iget-boolean v4, v2, Lokk;->e:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    new-instance v4, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "serviceActionBundleKey"

    nop

    iget-object v7, v2, Lokk;->b:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lolc; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    nop

    sget-object v6, Lokk;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    nop

    nop
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lolc; {:try_start_1 .. :try_end_1} :catch_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_11

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    if-nez v3, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    :try_start_2
    const-string v6, "serviceIntentCall"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6, v5, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lolc; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_1e

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    invoke-static {v6}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    const v0, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "ConnectionStatusConfig"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
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

    nop

    nop

    :goto_f
    move-object v4, v5

    nop

    nop

    nop

    nop

    :goto_10
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    const-string v6, "Dynamic intent resolution failed: "

    nop

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    if-eqz v4, :cond_4

    nop

    nop

    const-string v3, "serviceResponseIntentKey"

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    nop

    nop

    check-cast v3, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    if-nez v3, :cond_3

    nop

    nop

    const-string v5, "serviceMissingResolutionIntentKey"

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Landroid/app/PendingIntent;

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    goto :goto_12

    nop

    :cond_2
    iget-object p0, v2, Lokk;->b:Ljava/lang/String;

    nop

    nop

    nop

    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but has possible resolution"

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lolc;

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lofz;

    nop

    nop

    nop

    nop

    nop

    const/16 v0, 0x19

    nop

    nop

    nop

    invoke-direct {p1, v0, v4}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lolc;-><init>(Lofz;)V

    throw p0

    nop

    nop

    nop

    nop

    :cond_3
    :goto_12
    move-object v5, v3

    nop

    nop

    :cond_4
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    iget-object v1, v2, Lokk;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Dynamic lookup for intent failed for action: "

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v5, :cond_6

    nop

    nop

    new-instance v0, Landroid/content/Intent;

    nop

    iget-object v1, v2, Lokk;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lokk;->c:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Lolc; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lokm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    move-object v3, v5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    invoke-static {v6}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v4

    nop

    :try_start_5
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    throw v4

    nop

    nop

    nop

    :goto_17
    new-instance v3, Landroid/os/RemoteException;

    nop

    const-string v4, "Failed to acquire ContentProviderClient"

    nop

    nop

    nop

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lolc; {:try_start_5 .. :try_end_5} :catch_2

    :catch_1
    move-exception v3

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

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    nop

    nop

    nop

    nop

    :try_start_6
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    nop

    invoke-direct {v0, v6}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    invoke-static {v0}, Lolx;->c(Landroid/os/StrictMode$VmPolicy$Builder;)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :try_start_7
    iget-object v0, p0, Lokm;->g:Lokl;

    nop

    iget-object v1, v0, Lokl;->f:Lols;

    nop

    nop

    nop

    iget-object v2, v0, Lokl;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    const/16 v5, 0x1081

    nop

    nop

    nop

    nop

    nop

    move-object v0, v1

    nop

    move-object v1, v2

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    invoke-virtual/range {v0 .. v5}, Lols;->c(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lokm;->c:Z

    nop

    nop

    nop

    if-eqz p1, :cond_7

    nop

    iget-object p1, p0, Lokm;->g:Lokl;

    nop

    iget-object p1, p1, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    iget-object v0, p0, Lokm;->e:Lokk;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    nop

    nop

    nop

    iget-object v0, p0, Lokm;->g:Lokl;

    nop

    nop

    iget-object v0, v0, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    iget-object p0, p0, Lokm;->g:Lokl;

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Lokl;->g:J

    nop

    nop

    nop

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p0, Lofz;->a:Lofz;

    nop

    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    const/4 p1, 0x2

    nop

    nop

    iput p1, p0, Lokm;->b:I

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object p1, p0, Lokm;->g:Lokl;

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lokl;->f:Lols;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lokl;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, p0}, Lols;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_3
    :try_start_9
    new-instance p0, Lofz;

    nop

    nop

    nop

    const/16 p1, 0x10

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lofz;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lolc;->a:Lofz;

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/ServiceConnection;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lokm;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lokm;->a:Ljava/util/Map;

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

    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object p0, p0, Lokm;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lokm;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    iget-object v0, p0, Lokm;->g:Lokl;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lokm;->g:Lokl;

    nop

    nop

    nop

    iget-object v1, v1, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    iget-object v2, p0, Lokm;->e:Lokk;

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lokm;->d:Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lokm;->f:Landroid/content/ComponentName;

    nop

    nop

    iget-object v1, p0, Lokm;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Landroid/content/ServiceConnection;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_6

    nop

    nop

    :cond_1
    iput v3, p0, Lokm;->b:I

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lokl;->c:Ljava/util/HashMap;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    iget-object v0, v0, Lokl;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lokm;->g:Lokl;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lokm;->e:Lokk;

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    nop

    nop

    nop

    iput-object v1, p0, Lokm;->d:Landroid/os/IBinder;

    nop

    nop

    nop

    iput-object p1, p0, Lokm;->f:Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lokm;->a:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/content/ServiceConnection;

    nop

    nop

    nop

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_7

    nop

    nop

    nop

    :cond_0
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    iput p1, p0, Lokm;->b:I

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

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

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_9
    const v0, 0x19

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lokm;->g:Lokl;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
