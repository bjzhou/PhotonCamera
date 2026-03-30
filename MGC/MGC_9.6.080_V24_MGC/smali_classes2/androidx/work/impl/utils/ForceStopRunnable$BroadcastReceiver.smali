.class public Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

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

    nop

    nop

    :goto_1
    const-string v0, "ForceStopRunnable$Rcvr"

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
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/32 :goto_0

    nop

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    sget-wide v2, Lewq;->a:J

    nop

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

    :goto_1
    invoke-static {p1, p2}, Lewq;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

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

    :goto_2
    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Landroid/app/AlarmManager;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_9
    add-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const-string p2, "ACTION_FORCE_STOP_RESCHEDULE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    const/high16 p2, 0xa000000

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

    :goto_e
    sget-wide v0, Lewq;->a:J

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    const-string p0, "alarm"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const v1, 0x7

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x19

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    if-nez p0, :cond_3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    :goto_1a
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    nop

    :goto_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

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
