.class final Lgtn;
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

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgtn;->a:Lgto;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lgtn;->a:Lgto;

    nop

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

    :goto_3
    const v1, 0x6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    monitor-enter p1

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    nop

    iget-object p0, p0, Lgtn;->a:Lgto;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lgto;->h:Z

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p0, p0, Lgto;->f:Llxr;

    nop

    nop

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    sget-object p0, Lgto;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    const/16 p2, 0x30c

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

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

    const-string p2, "audioDeviceStateManager is null"

    nop

    nop

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
    const-string p0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    const-string p0, "android.media.extra.SCO_AUDIO_STATE"

    nop

    nop

    nop

    nop

    const/4 v0, -0x1

    nop

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    :cond_2
    monitor-exit p1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_3
    :goto_5
    monitor-exit p1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-lez v0, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    const v0, 0xb

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p1, Lgto;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
