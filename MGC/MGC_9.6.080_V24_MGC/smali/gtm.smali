.class final Lgtm;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lgto;


# direct methods
.method public constructor <init>(Lgto;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lgtm;->a:Lgto;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lgtm;->a:Lgto;

    nop

    iget-boolean v2, v1, Lgto;->h:Z

    nop

    nop

    nop

    if-nez v2, :cond_c

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, v1, Lgto;->f:Llxr;

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

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

    nop

    const/16 p2, 0x30a

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "audioDeviceStateManager is null"

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit p1

    nop

    nop

    nop

    return-void

    nop

    :cond_1
    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    nop

    const/4 v1, -0x1

    nop

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    nop

    if-eq p2, v1, :cond_a

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_6

    nop

    nop

    nop

    if-eq p2, v3, :cond_3

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    if-eq p2, v0, :cond_2

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p0, p0, Lgtm;->a:Lgto;

    nop

    nop

    const/4 p2, 0x4

    nop

    iput p2, p0, Lgto;->j:I

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object p2, p0, Lgtm;->a:Lgto;

    nop

    iput v1, p2, Lgto;->j:I

    nop

    iget v1, p2, Lgto;->k:I

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    nop

    sget-object p2, Lgto;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 v0, 0x308

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    const-string v0, "Retry to disconnect"

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->s(Ljava/lang/String;)V

    iget-object p0, p0, Lgtm;->a:Lgto;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lgto;->b()V

    monitor-exit p1

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

    :cond_4
    iget-object p2, p2, Lgto;->f:Llxr;

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Llxq;->d:Llxq;

    nop

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-virtual {p2, v0, v1}, Llxr;->f(Llxq;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lgtm;->a:Lgto;

    nop

    iput v3, p0, Lgto;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    :cond_5
    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_6
    iget-object p2, p0, Lgtm;->a:Lgto;

    nop

    nop

    nop

    nop

    iput v2, p2, Lgto;->j:I

    nop

    nop

    nop

    iget p2, p2, Lgto;->k:I

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_9

    nop

    nop

    nop

    nop

    nop

    if-ne p2, v1, :cond_7

    nop

    nop

    nop

    nop

    sget-object p2, Lgto;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    const/16 v0, 0x306

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    const-string v0, "Retry to connect"

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->s(Ljava/lang/String;)V

    iget-object p0, p0, Lgtm;->a:Lgto;

    nop

    iget-object p2, p0, Lgto;->f:Llxr;

    nop

    nop

    nop

    sget-object v0, Llxq;->d:Llxq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Llxr;->d(Llxq;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-virtual {p0, p2}, Lgto;->a(Ljava/lang/String;)V

    monitor-exit p1

    nop

    return-void

    nop

    nop

    :cond_7
    if-ne p2, v3, :cond_8

    nop

    nop

    sget-object p2, Lgto;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    const/16 v0, 0x305

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    const-string v0, "Disconnected from system, stop bluetooth sco"

    nop

    invoke-interface {p2, v0}, Lscz;->s(Ljava/lang/String;)V

    iget-object p2, p0, Lgtm;->a:Lgto;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lgto;->c:Landroid/media/AudioManager;

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_8
    iget-object p2, p0, Lgtm;->a:Lgto;

    nop

    iget-object p2, p2, Lgto;->f:Llxr;

    nop

    nop

    nop

    sget-object v0, Llxq;->d:Llxq;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {p2, v0, v1}, Llxr;->f(Llxq;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lgtm;->a:Lgto;

    nop

    nop

    nop

    iput v3, p0, Lgto;->k:I

    nop

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    :cond_9
    throw v0

    nop

    nop

    :cond_a
    sget-object p2, Lgto;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 v0, 0x303

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    const-string v0, "receive SCO_AUDIO_STATE_ERROR"

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->s(Ljava/lang/String;)V

    iget-object p0, p0, Lgtm;->a:Lgto;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lgto;->c:Landroid/media/AudioManager;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_b
    :goto_1
    monitor-exit p1

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_c
    :goto_2
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lgtm;->a:Lgto;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lgto;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const v1, 0x1a

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

    :goto_e
    if-lez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3

    nop
.end method
