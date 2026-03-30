.class public final Llum;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljpn;
.implements Ljpt;
.implements Ljpu;
.implements Ljpk;


# instance fields
.field public final a:Lpcu;

.field public b:Z

.field c:Z

.field private final d:Landroid/content/Context;

.field private final e:Lfxg;

.field private f:Z

.field private final g:Landroid/content/BroadcastReceiver;

.field private final h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfxg;Lpct;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "ActivityCloseSec"

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

    :goto_1
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Llum;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    iput-object p1, p0, Llum;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    iput-object v1, p0, Llum;->g:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p0}, Lluk;-><init>(Llum;)V

    goto/32 :goto_7

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Llum;->a:Lpcu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iput-object v1, p0, Llum;->h:Landroid/content/BroadcastReceiver;

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

    :goto_d
    new-instance v1, Llul;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Llum;->c:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_13
    const v0, 0x13

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    invoke-interface {p3, p1}, Lpct;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    iput-object p2, p0, Llum;->e:Lfxg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    new-instance v1, Lluk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    invoke-direct {v1, p0}, Llul;-><init>(Llum;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v0, p0, Llum;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Llum;->a:Lpcu;

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
    invoke-interface {v1, v0}, Lpcu;->f(Ljava/lang/String;)V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Llum;->d:Landroid/content/Context;

    nop

    iget-object v1, p0, Llum;->h:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    const-string v2, "unregisterReceiver screenOnReceiver fail"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

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

    :goto_8
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x19

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1, v0}, Lpcu;->f(Ljava/lang/String;)V

    :goto_b
    :try_start_1
    iget-object v0, p0, Llum;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llum;->g:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Llum;->f:Z

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "Detaching secure activity shutdown receivers."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "unregisterReceiver screenOffReceiver fail"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Llum;->a:Lpcu;

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

    :goto_15
    goto/32 :goto_1e

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_17
    iget-object v1, p0, Llum;->a:Lpcu;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    goto/16 :goto_b

    nop

    nop

    nop

    :catch_0
    move-exception v0

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

    :goto_1a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_1b
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    :goto_1f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean v0, p0, Llum;->f:Z

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfxg;->a(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Llum;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Llum;->e:Lfxg;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public final de()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Llum;->b()V

    goto/32 :goto_1

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
.end method

.method public final dj()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Llum;->b:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final dv()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Llum;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const-string v0, "Already received ScreenOff broadcast so closing the activity."

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Llum;->b:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Llum;->c(Ljava/lang/String;)V

    :goto_7
    goto/32 :goto_4

    nop

    nop
.end method

.method public final k()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "android.intent.action.SCREEN_ON"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xd

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Llum;->h:Landroid/content/BroadcastReceiver;

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

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_4
    invoke-interface {v0, v1}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const-string v1, "Attaching secure activity shutdown receivers."

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const v1, 0x1

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

    :goto_7
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/content/IntentFilter;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Llum;->g:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Llum;->f:Z

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Llum;->f:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroid/content/IntentFilter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_12
    const-string v1, "android.intent.action.SCREEN_OFF"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Llum;->a:Lpcu;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Llum;->d:Landroid/content/Context;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Llum;->d:Landroid/content/Context;

    nop

    goto/32 :goto_2

    nop

    nop
.end method
