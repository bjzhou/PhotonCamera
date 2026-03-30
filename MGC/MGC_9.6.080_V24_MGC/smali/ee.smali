.class abstract Lee;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field final synthetic c:Lej;


# direct methods
.method public constructor <init>(Lej;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lee;->c:Lej;

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


# virtual methods
.method public abstract a()Landroid/content/IntentFilter;
.end method

.method public abstract b()V
.end method

.method final c()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const v1, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    :try_start_0
    iget-object v1, p0, Lee;->c:Lej;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lej;->h:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lee;->a:Landroid/content/BroadcastReceiver;

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    const v0, 0x15

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lee;->a:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop
.end method

.method final d()V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lee;->c:Lej;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iput-object v1, p0, Lee;->a:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lee;->a:Landroid/content/BroadcastReceiver;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iget-object v1, v1, Lej;->h:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lee;->a()Landroid/content/IntentFilter;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lee;->c()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_d
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/32 :goto_12

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Led;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_16
    invoke-direct {v1, p0}, Led;-><init>(Lee;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lee;->a:Landroid/content/BroadcastReceiver;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
