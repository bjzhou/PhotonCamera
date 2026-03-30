.class public final Lokl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Landroid/os/HandlerThread;

.field public static i:Lokl;


# instance fields
.field public final c:Ljava/util/HashMap;

.field public final d:Landroid/content/Context;

.field public volatile e:Landroid/os/Handler;

.field public final f:Lols;

.field public final g:J

.field public volatile h:Ljava/util/concurrent/Executor;

.field private final j:Lokn;

.field private final k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lokl;->a:Ljava/lang/Object;

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

    :goto_2
    new-instance v0, Ljava/lang/Object;

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    new-instance v0, Lokn;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p1, p0, Lokl;->k:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

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

    :goto_9
    const-wide/32 p1, 0x493e0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lokl;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 p1, 0x1388

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_f
    const v1, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p0, v1}, Lokn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    new-instance p1, Loof;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lokl;->j:Lokn;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    iput-wide p1, p0, Lokl;->g:J

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

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_b

    nop

    nop

    :goto_19
    invoke-static {}, Lols;->a()Lols;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lokl;->c:Ljava/util/HashMap;

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

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    :goto_1c
    invoke-direct {p1, p2, v0}, Loof;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lokl;->f:Lols;

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

    :goto_1e
    iput-object p1, p0, Lokl;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Z)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p2, p4}, Lokk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xe

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

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Lokl;->c:Ljava/util/HashMap;

    nop

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Lokm;

    nop

    nop

    nop

    if-eqz p2, :cond_3

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Lokm;->a(Landroid/content/ServiceConnection;)Z

    move-result p4

    nop

    nop

    nop

    if-eqz p4, :cond_2

    nop

    nop

    iget-object p4, p2, Lokm;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lokm;->b()Z

    move-result p2

    nop

    nop

    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    const/4 p3, 0x0

    nop

    nop

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    nop

    nop

    nop

    nop

    iget-object p3, p0, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Lokl;->k:J

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    iget-object p2, v0, Lokk;->b:Ljava/lang/String;

    nop

    const-string p3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    nop

    nop

    nop

    invoke-static {p2, p3}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    iget-object p2, v0, Lokk;->b:Ljava/lang/String;

    nop

    const-string p3, "Nonexistent connection status for service config: "

    nop

    nop

    nop

    invoke-static {p2, p3}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v1, 0xd

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

    nop

    nop

    :goto_a
    new-instance v0, Lokk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lokl;->c:Ljava/util/HashMap;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
