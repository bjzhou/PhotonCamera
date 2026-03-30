.class public Lgto;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Landroid/media/AudioManager;

.field public final d:Lows;

.field public final e:Ljava/lang/Object;

.field public final f:Llxr;

.field public g:Z

.field public h:Z

.field public final i:Landroid/content/BroadcastReceiver;

.field public j:I

.field public k:I

.field public final l:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "gto"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lgto;->a:Lsdb;

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

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/media/AudioManager;Llxr;Lhoh;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_1
    iput-object v0, p0, Lgto;->i:Landroid/content/BroadcastReceiver;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    :goto_5
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lgto;->l:Lhoh;

    nop

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

    nop

    :goto_7
    iput-boolean v0, p0, Lgto;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0}, Lgtm;-><init>(Lgto;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lgto;->c:Landroid/media/AudioManager;

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

    nop

    :goto_a
    new-instance v0, Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lgto;->d:Lows;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Lgto;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x10

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
    iput-object p1, p0, Lgto;->b:Landroid/app/Activity;

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

    :goto_f
    iput v1, p0, Lgto;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lgtm;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Lgtn;-><init>(Lgto;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Lgto;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lgtn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lgto;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    iput-object p3, p0, Lgto;->f:Llxr;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    iget-object v0, p0, Lgto;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    :try_start_0
    iget-boolean v1, p0, Lgto;->h:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    sget-object p0, Lgto;->a:Lsdb;

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 p1, 0x319

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string p1, "Already closed. Ignore start()"

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

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

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    iget p1, p0, Lgto;->j:I

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    const/4 v1, 0x5

    nop

    nop

    if-ne p1, v1, :cond_2

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :cond_2
    iput v1, p0, Lgto;->k:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    if-ne p1, v2, :cond_3

    nop

    nop

    sget-object p0, Lgto;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    const/16 p1, 0x316

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    const-string p1, "Bluetooth audio is disconnecting, retry later"

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_3
    iget-object p1, p0, Lgto;->f:Llxr;

    nop

    nop

    sget-object v2, Llxq;->d:Llxq;

    nop

    invoke-virtual {p1, v2}, Llxr;->a(Llxq;)I

    iget-object p1, p0, Lgto;->f:Llxr;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Llxq;->d:Llxq;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Llxr;->a(Llxq;)I

    move-result p1

    nop

    nop

    const/16 v2, 0x1a

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ne p1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lgto;->j:I

    nop

    nop

    iget-object p1, p0, Lgto;->f:Llxr;

    nop

    sget-object v1, Llxq;->d:Llxq;

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    invoke-virtual {p1, v1, v2}, Llxr;->f(Llxq;Ljava/lang/Boolean;)V

    iput v3, p0, Lgto;->k:I

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_4
    sget-object p1, Lhly;->a:Lhmo;

    nop

    iput v1, p0, Lgto;->j:I

    nop

    nop

    iget-object p1, p0, Lgto;->f:Llxr;

    nop

    nop

    sget-object v1, Llxq;->d:Llxq;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {p1, v1, v2}, Llxr;->f(Llxq;Ljava/lang/Boolean;)V

    iput v3, p0, Lgto;->k:I

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object p0, p0, Lgto;->c:Landroid/media/AudioManager;

    nop

    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_5
    const/4 p0, 0x0

    nop

    nop

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

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    iget-object v0, p0, Lgto;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p0, Lgto;->j:I

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    iput v2, p0, Lgto;->k:I

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    if-ne v1, v3, :cond_2

    nop

    nop

    nop

    nop

    sget-object p0, Lgto;->a:Lsdb;

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    const/16 v1, 0x31d

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string v1, "Bluetooth audio is connecting, retry later"

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_2
    iget-object v1, p0, Lgto;->f:Llxr;

    nop

    nop

    nop

    sget-object v3, Llxq;->d:Llxq;

    nop

    nop

    invoke-virtual {v1, v3}, Llxr;->a(Llxq;)I

    move-result v1

    nop

    const/16 v3, 0x1a

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    iput v2, p0, Lgto;->j:I

    nop

    iget-object v1, p0, Lgto;->f:Llxr;

    nop

    nop

    sget-object v2, Llxq;->d:Llxq;

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Llxr;->f(Llxq;Ljava/lang/Boolean;)V

    iput v4, p0, Lgto;->k:I

    nop

    nop

    monitor-exit v0

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

    :cond_3
    const/4 v1, 0x2

    nop

    iput v1, p0, Lgto;->j:I

    nop

    nop

    sget-object v1, Lhly;->a:Lhmo;

    nop

    nop

    nop

    iput v2, p0, Lgto;->j:I

    nop

    iget-object v1, p0, Lgto;->f:Llxr;

    nop

    nop

    nop

    nop

    sget-object v2, Llxq;->d:Llxq;

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Llxr;->f(Llxq;Ljava/lang/Boolean;)V

    iput v4, p0, Lgto;->k:I

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgto;->c:Landroid/media/AudioManager;

    nop

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    throw p0

    nop

    :catchall_0
    move-exception p0

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

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    const v1, 0x5

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

    :goto_9
    const v0, 0x16

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgto;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lgto;->h:Z

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    sget-object p0, Lgto;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    const/16 v1, 0x30e

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "Already closed"

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_0
    iget-object v1, p0, Lgto;->c:Landroid/media/AudioManager;

    nop

    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v1, p0, Lgto;->d:Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lows;->close()V

    iget-object v1, p0, Lgto;->b:Landroid/app/Activity;

    nop

    nop

    sget-object v2, Lhly;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgto;->i:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lgto;->h:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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
    const v0, 0x19

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

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop
.end method
