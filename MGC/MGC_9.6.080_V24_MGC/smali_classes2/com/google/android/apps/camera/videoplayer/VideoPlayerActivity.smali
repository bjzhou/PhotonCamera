.class public Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;
.super Ldt;
.source "PG"


# instance fields
.field private final o:Landroid/content/BroadcastReceiver;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m(Landroid/net/Uri;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0, p1}, Lcp;->l(ILbo;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lbr;->dq()Lcj;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Lai;-><init>(Lcj;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const p0, 0x7f0b04fd

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
    invoke-virtual {v0}, Lcp;->f()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const-string v1, "no_seek_bar"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroid/os/Bundle;

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

    :goto_e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "auto_loop_enabled"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, p1}, Lnqc;->c(Landroid/os/Bundle;Landroid/net/Uri;)Lnqc;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldt;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lnqb;-><init>(Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->o:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    new-instance v0, Lnqb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m()Lnqc;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcj;->c(I)Lbo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lbr;->dq()Lcj;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    :goto_3
    const v0, 0x7f0b04fd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lnqc;

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Ldt;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Landroid/content/IntentFilter;

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

    :goto_4
    return-void

    nop

    :goto_5
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->132cd3b981019b59dc42653eea0b34b4m(Landroid/net/Uri;)V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const-string v0, "android.intent.action.SCREEN_OFF"

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

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->o:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lmy;->setContentView(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->d116db4599d9ddc8c35e61366a4f4967m()Lnqc;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    const p1, 0x7f0e0170

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method protected final onDestroy()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Ldt;->onDestroy()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->o:Landroid/content/BroadcastReceiver;

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

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->132cd3b981019b59dc42653eea0b34b4m(Landroid/net/Uri;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lbr;->dq()Lcj;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance v2, Lai;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Ldt;->onNewIntent(Landroid/content/Intent;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Lcp;->f()V

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lcom/google/android/apps/camera/videoplayer/VideoPlayerActivity;->d116db4599d9ddc8c35e61366a4f4967m()Lnqc;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

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

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

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

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v0}, Lcp;->j(Lbo;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    invoke-direct {v2, v1}, Lai;-><init>(Lcj;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
