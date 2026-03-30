.class public abstract Leug;
.super Leui;
.source "PG"


# instance fields
.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lts;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Leug;->e:Landroid/content/BroadcastReceiver;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p0}, Leuf;-><init>(Leug;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Leui;-><init>(Landroid/content/Context;Lts;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Leuf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a()Landroid/content/IntentFilter;
.end method

.method public abstract c(Landroid/content/Intent;)V
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    iget-object v0, p0, Leui;->a:Landroid/content/Context;

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    sget v0, Leuh;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object v1, p0, Leug;->e:Landroid/content/BroadcastReceiver;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Leug;->a()Landroid/content/IntentFilter;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto/32 :goto_8

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

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    sget v0, Leuh;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object v0, p0, Leui;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Leug;->e:Landroid/content/BroadcastReceiver;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

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

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto/32 :goto_2

    nop

    nop
.end method
