.class public abstract Lojy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final s:[Logb;


# instance fields
.field a:Lokp;

.field public final b:Landroid/content/Context;

.field final c:Landroid/os/Handler;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field protected f:Lojt;

.field public final g:Ljava/util/ArrayList;

.field public h:I

.field public final i:I

.field public volatile j:Ljava/lang/String;

.field public k:Lofz;

.field public l:Z

.field public volatile m:Lokd;

.field protected final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public o:Lokv;

.field public volatile p:Lpic;

.field public final q:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field public final r:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private volatile t:Ljava/lang/String;

.field private final u:Lokl;

.field private v:Landroid/os/IInterface;

.field private w:Loju;

.field private final x:Ljava/lang/String;


# direct methods
.method private final 58bdc013cbfa0784191428aca07544ffm(ILandroid/os/IInterface;)V
    .locals 11

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v5, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    move v5, v2

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v5, v3

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, v10, Lokk;->b:Ljava/lang/String;

    nop

    const-string p2, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    nop

    nop

    invoke-static {p1, p2}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

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

    nop

    monitor-exit v4

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    :cond_2
    iget-object p1, p0, Lojy;->w:Loju;

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lojy;->u:Lokl;

    nop

    iget-object v0, p0, Lojy;->a:Lokp;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lokp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lokp;->d:Ljava/lang/Object;

    nop

    nop

    iget v0, v0, Lokp;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lojy;->u()Ljava/lang/String;

    iget-object v0, p0, Lojy;->a:Lokp;

    nop

    nop

    iget-boolean v0, v0, Lokp;->b:Z

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p2, v1, v2, p1, v0}, Lokl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    iput-object v6, p0, Lojy;->w:Loju;

    nop

    nop

    nop

    nop

    :cond_3
    :goto_6
    monitor-exit v5

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v5

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "Calling connect() while still connected, missing disconnect() for "

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    goto/32 :goto_28

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_10

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    :goto_e
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    move v6, v3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    invoke-static {v5}, La;->au(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    if-eqz p2, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne p1, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    :goto_16
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    :goto_18
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    move v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    move v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    :goto_1c
    move v5, v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, p0, Lojy;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "unable to connect to service: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_21
    monitor-enter v5

    nop

    :try_start_2
    iput p1, p0, Lojy;->h:I

    nop

    nop

    iput-object p2, p0, Lojy;->v:Landroid/os/IInterface;

    nop

    nop

    const/4 v6, 0x0

    nop

    if-eq p1, v3, :cond_2

    nop

    nop

    nop

    nop

    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    if-eq p1, v7, :cond_8

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    if-eq p1, v8, :cond_8

    nop

    nop

    nop

    if-eq p1, v4, :cond_7

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_7
    invoke-static {p2}, Lolx;->ag(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_8
    iget-object p1, p0, Lojy;->w:Loju;

    nop

    nop

    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lojy;->a:Lokp;

    nop

    if-eqz p2, :cond_9

    nop

    nop

    nop

    const-string v4, "GmsClient"

    nop

    iget-object v8, p2, Lokp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lokp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    nop

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lojy;->u:Lokl;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lojy;->a:Lokp;

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lokp;->c:Ljava/lang/Object;

    nop

    iget-object v8, v1, Lokp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget v1, v1, Lokp;->a:I

    nop

    nop

    nop

    invoke-virtual {p0}, Lojy;->u()Ljava/lang/String;

    iget-object v1, p0, Lojy;->a:Lokp;

    nop

    nop

    nop

    iget-boolean v1, v1, Lokp;->b:Z

    nop

    check-cast v8, Ljava/lang/String;

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v4, v8, p1, v1}, Lokl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    iget-object p1, p0, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_9
    new-instance p1, Loju;

    nop

    nop

    iget-object p2, p0, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    nop

    nop

    nop

    invoke-direct {p1, p0, p2}, Loju;-><init>(Lojy;I)V

    iput-object p1, p0, Lojy;->w:Loju;

    nop

    nop

    nop

    new-instance p2, Lokp;

    nop

    nop

    nop

    invoke-virtual {p0}, Lojy;->v()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {p0}, Lojy;->d()Ljava/lang/String;

    move-result-object v4

    nop

    invoke-virtual {p0}, Lojy;->B()Z

    move-result v8

    nop

    nop

    nop

    invoke-direct {p2, v1, v4, v8}, Lokp;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lojy;->a:Lokp;

    nop

    nop

    nop

    nop

    iget-boolean v1, p2, Lokp;->b:Z

    nop

    nop

    if-eqz v1, :cond_b

    nop

    invoke-virtual {p0}, Lojy;->a()I

    move-result v1

    nop

    nop

    nop

    const v4, 0x1110e58

    nop

    nop

    if-lt v1, v4, :cond_a

    nop

    goto :goto_22

    nop

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p2, Lokp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    nop

    nop

    nop

    check-cast p1, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :cond_b
    :goto_22
    iget-object v1, p0, Lojy;->u:Lokl;

    nop

    iget-object v4, p2, Lokp;->c:Ljava/lang/Object;

    nop

    nop

    iget-object v8, p2, Lokp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget p2, p2, Lokp;->a:I

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lojy;->u()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    iget-object v9, p0, Lojy;->a:Lokp;

    nop

    nop

    nop

    nop

    iget-boolean v9, v9, Lokp;->b:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lojy;->G()V

    new-instance v10, Lokk;

    nop

    nop

    nop

    nop

    check-cast v8, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/String;

    nop

    invoke-direct {v10, v4, v8, v9}, Lokk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, v1, Lokl;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    monitor-enter v4

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v8, v1, Lokl;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lokm;

    nop

    nop

    iget-object v9, v1, Lokl;->h:Ljava/util/concurrent/Executor;

    nop

    if-nez v8, :cond_c

    nop

    nop

    new-instance v8, Lokm;

    nop

    nop

    nop

    invoke-direct {v8, v1, v10}, Lokm;-><init>(Lokl;Lokk;)V

    invoke-virtual {v8, p1, p1}, Lokm;->d(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V

    invoke-static {v8, p2}, Lokm;->c(Lokm;Ljava/lang/String;)Lofz;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object p2, v1, Lokl;->c:Ljava/util/HashMap;

    nop

    invoke-virtual {p2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    nop

    nop

    nop

    :cond_c
    iget-object v1, v1, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v8, p1}, Lokm;->a(Landroid/content/ServiceConnection;)Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, p1, p1}, Lokm;->d(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V

    iget v1, v8, Lokm;->b:I

    nop

    nop

    if-eq v1, v3, :cond_e

    nop

    nop

    nop

    nop

    if-eq v1, v7, :cond_d

    nop

    :goto_23
    move-object p1, v6

    nop

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    nop

    :cond_d
    invoke-static {v8, p2}, Lokm;->c(Lokm;Ljava/lang/String;)Lofz;

    move-result-object p1

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    :cond_e
    iget-object p2, v8, Lokm;->f:Landroid/content/ComponentName;

    nop

    nop

    nop

    iget-object v1, v8, Lokm;->d:Landroid/os/IBinder;

    nop

    nop

    invoke-interface {p1, p2, v1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_23

    nop

    nop

    :goto_24
    iget-boolean p2, v8, Lokm;->c:Z

    nop

    nop

    const/4 v1, -0x1

    nop

    nop

    nop

    if-eqz p2, :cond_f

    nop

    nop

    nop

    sget-object p1, Lofz;->a:Lofz;

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    :cond_f
    if-eqz p1, :cond_10

    nop

    goto :goto_25

    nop

    nop

    nop

    nop

    :cond_10
    new-instance p1, Lofz;

    nop

    nop

    invoke-direct {p1, v1}, Lofz;-><init>(I)V

    :goto_25
    monitor-exit v4

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_26
    :try_start_4
    invoke-virtual {p1}, Lofz;->b()Z

    move-result p2

    nop

    if-nez p2, :cond_3

    nop

    nop

    nop

    const-string p2, "GmsClient"

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lojy;->a:Lokp;

    nop

    iget-object v3, v2, Lokp;->c:Ljava/lang/Object;

    nop

    nop

    iget-object v2, v2, Lokp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p1, Lofz;->c:I

    nop

    if-ne p2, v1, :cond_11

    nop

    const/16 p2, 0x10

    nop

    nop

    :cond_11
    iget-object v0, p1, Lofz;->d:Landroid/app/PendingIntent;

    nop

    if-eqz v0, :cond_12

    nop

    nop

    new-instance v6, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "pendingIntent"

    nop

    nop

    nop

    iget-object p1, p1, Lofz;->d:Landroid/app/PendingIntent;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_12
    iget-object p1, p0, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2, v6, p1}, Lojy;->y(ILandroid/os/Bundle;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_5

    nop

    nop

    :goto_27
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lojy;->s:[Logb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    new-array v0, v0, [Logb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lokl;Loge;ILandroidx/wear/ambient/AmbientMode$AmbientController;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lojr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0, p2}, Lojr;-><init>(Lojy;Landroid/os/Looper;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    new-instance v1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p4, p1}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lojy;->t:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "Looper must not be null"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2c

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    iput-object p8, p0, Lojy;->x:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    iput p5, p0, Lojy;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p3, p1}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lojy;->k:Lofz;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-boolean v1, p0, Lojy;->l:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    iput-object v1, p0, Lojy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Lojy;->g:Ljava/util/ArrayList;

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

    :goto_1a
    iput-object v1, p0, Lojy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lojy;->m:Lokd;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2, p1}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_20
    iput-object p6, p0, Lojy;->r:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1, v0}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string p1, "Supervisor must not be null"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    iput v1, p0, Lojy;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_27
    const-string p1, "API availability must not be null"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

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

    :goto_2a
    iput-object p1, p0, Lojy;->b:Landroid/content/Context;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p1, p0, Lojy;->c:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    iput-object p3, p0, Lojy;->u:Lokl;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p7, p0, Lojy;->q:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v0, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->FlhQNu:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static bridge synthetic F(Lojy;I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lojy;->58bdc013cbfa0784191428aca07544ffm(ILandroid/os/IInterface;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final A(IILandroid/os/IInterface;)Z
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v0, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const v1, 0x14

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p0, Lojy;->h:I

    nop

    nop

    nop

    if-eq v1, p1, :cond_1

    nop

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

    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    nop

    :cond_1
    invoke-direct {p0, p2, p3}, Lojy;->58bdc013cbfa0784191428aca07544ffm(ILandroid/os/IInterface;)V

    monitor-exit v0

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    return p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lojy;->d:Ljava/lang/Object;

    nop

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method protected B()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final C()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    iget-object p0, p0, Lojy;->m:Lokd;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public D()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public E()[Logb;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected G()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected H()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected abstract b(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public e()[Logb;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lojy;->s:[Logb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iget-object p0, p0, Lojy;->a:Lokp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const-string v0, "Failed to connect when checking package"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lokp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lojy;->k()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lojy;->t:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public i(Lojt;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    iput-object p1, p0, Lojy;->f:Lojt;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, v0}, Lojy;->58bdc013cbfa0784191428aca07544ffm(ILandroid/os/IInterface;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lojy;->t:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lojy;->w()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    :try_start_0
    iget p0, p0, Lojy;->h:I

    nop

    nop

    nop

    nop

    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    if-ne p0, v1, :cond_1

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    return p0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    const v1, 0xa

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lojy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    nop

    nop
.end method

.method public final l()Z
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lojy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget p0, p0, Lojy;->h:I

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    if-eq p0, v1, :cond_2

    nop

    nop

    const/4 v1, 0x3

    nop

    if-ne p0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_c
    monitor-exit v0

    nop

    return v2

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public m()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public n()Z
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

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final o()[Logb;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lojy;->m:Lokd;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lokd;->b:[Logb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p(Lokq;Ljava/util/Set;)V
    .locals 21

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2, v4, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, v5, Loki;->g:Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_40

    nop

    nop

    :goto_7
    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v13, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_3c

    nop

    :goto_b
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_c
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lojy;->D()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v6, "com.google"

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

    :goto_10
    sget v7, Loge;->c:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, [Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2, v3, v3, v0}, Lojy;->x(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_15
    sget-object v10, Loki;->a:[Lcom/google/android/gms/common/api/Scope;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_16
    move/from16 v15, v19

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v2, v5, Loki;->h:[Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_19
    iget v6, v1, Lojy;->i:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_1c
    check-cast v4, Landroid/content/AttributionSource;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    sget-object v14, Loki;->b:[Logb;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_21
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_56

    nop

    nop

    :goto_27
    iget-object v4, v4, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual/range {p0 .. p0}, Lojy;->e()[Logb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v2, "GmsClient"

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct/range {v4 .. v18}, Loki;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Logb;[Logb;ZIZLjava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v2, v5, Loki;->o:Z

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    :try_start_0
    iget-object v4, v1, Lojy;->e:Ljava/lang/Object;

    nop

    monitor-enter v4

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, v1, Lojy;->o:Lokv;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    new-instance v6, Loku;

    nop

    iget-object v7, v1, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    nop

    nop

    invoke-direct {v6, v1, v7}, Loku;-><init>(Lojy;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v9, "com.google.android.gms.common.internal.IGmsServiceBroker"

    nop

    nop

    invoke-virtual {v7, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v5, v7, v3}, Lofh;->a(Loki;Landroid/os/Parcel;I)V

    iget-object v0, v0, Lokv;->a:Landroid/os/IBinder;

    nop

    nop

    nop

    nop

    const/16 v2, 0x2e

    nop

    nop

    invoke-interface {v0, v2, v7, v8, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto :goto_2d

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    return-void

    nop

    nop

    :cond_4
    const-string v0, "GmsClient"

    nop

    const-string v2, "mServiceBroker is null, client disconnected"

    nop

    nop

    nop

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    monitor-exit v4

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

    :catchall_1
    move-exception v0

    nop

    monitor-exit v4

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    return-void

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v0, v5, Loki;->k:[Logb;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2f
    new-array v4, v3, [Lcom/google/android/gms/common/api/Scope;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v4, v5, Loki;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual/range {p0 .. p0}, Lojy;->r()Landroid/accounts/Account;

    move-result-object v2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_36
    move-object/from16 v0, p1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_37
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v3, "IGmsServiceBroker.getService failed"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_39
    iget-object v4, v1, Lojy;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v0, v5, Loki;->l:[Logb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3b
    iget-object v4, v1, Lojy;->j:Ljava/lang/String;

    nop

    nop

    :goto_3c
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v2, "GmsClient"

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, v1, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v5, v20

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_40
    invoke-virtual/range {p0 .. p0}, Lojy;->E()[Logb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_41
    if-eqz v2, :cond_6

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

    :cond_6
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_43
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_44
    iget-object v4, v1, Lojy;->p:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_45
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v5, :cond_7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v4, v1, Lojy;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_49
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-lez v0, :cond_8

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_71

    nop

    :goto_4c
    move-object/from16 v18, v4

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_4d
    move-object/from16 v20, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput-object v2, v5, Loki;->j:Landroid/accounts/Account;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual/range {p0 .. p0}, Lojy;->s()Landroid/os/Bundle;

    move-result-object v3

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_52
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_53
    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_55
    invoke-virtual/range {p0 .. p0}, Lojy;->n()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_56
    iget-object v0, v1, Lojy;->c:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const v0, 0x14

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput-object v3, v5, Loki;->i:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_59
    iget-object v4, v1, Lojy;->p:Lpic;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5a
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v2, Landroid/accounts/Account;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v1, "Pixel3"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, v0, Lfum;->a:Landroid/os/IBinder;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v2, ""

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_62
    new-instance v11, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_3c

    nop

    nop

    :goto_68
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sget-object v4, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->jgrBvtfTALvumiC:Ljava/lang/String;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6a
    iget-object v1, v1, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6b
    iget-object v4, v1, Lojy;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_6d
    const/4 v5, 0x6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_6f
    move-object v4, v15

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_61

    nop

    :goto_72
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_73
    const-string v3, "IGmsServiceBroker.getService failed"

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_74
    new-instance v15, Loki;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_75
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_76
    const/16 v19, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_77
    goto/16 :goto_66

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_59

    nop

    nop

    nop

    nop
.end method

.method public final q(Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    check-cast p1, Loil;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Loil;->k:Loio;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, v0}, Lodu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Lodu;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public r()Landroid/accounts/Account;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop
.end method

.method protected s()Landroid/os/Bundle;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Landroid/os/Bundle;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final t()Landroid/os/IInterface;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lojy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lojy;->h:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lojy;->k()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lojy;->v:Landroid/os/IInterface;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Client is connected but service is null"

    nop

    invoke-static {p0, v1}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :cond_1
    new-instance p0, Landroid/os/DeadObjectException;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop
.end method

.method protected final u()Ljava/lang/String;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object p0, p0, Lojy;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lojy;->x:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop
.end method

.method protected v()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string p0, "com.google.android.gms"

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public w()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    :goto_0
    monitor-enter v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lojy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lojy;->g:Ljava/util/ArrayList;

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_8
    if-ge v2, v1, :cond_0

    nop

    iget-object v3, p0, Lojy;->g:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lojs;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lojs;->e()V

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lojy;->g:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v0, 0x13

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :try_start_2
    iput-object v0, p0, Lojy;->o:Lokv;

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_3
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, v1, v0}, Lojy;->58bdc013cbfa0784191428aca07544ffm(ILandroid/os/IInterface;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lojy;->g:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method protected x(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lojy;->c:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p3, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lojw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, p1, p2, p3}, Lojw;-><init>(Lojy;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x1

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

    nop

    nop

    :goto_7
    iget-object p0, p0, Lojy;->c:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final y(ILandroid/os/Bundle;I)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1, p2}, Lojx;-><init>(Lojy;ILandroid/os/Bundle;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget-object p1, p0, Lojy;->c:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1e

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x7

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lojy;->c:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    new-instance v0, Lojx;

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_11
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final z(Lojt;ILandroid/app/PendingIntent;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lojy;->c:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lojy;->f:Lojt;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lojy;->n:Ljava/util/concurrent/atomic/AtomicInteger;

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

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
