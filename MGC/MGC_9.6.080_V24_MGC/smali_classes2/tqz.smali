.class public final Ltqz;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/vr/audio/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/google/vr/audio/DeviceInfo;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ltqz;->a:Lcom/google/vr/audio/DeviceInfo;

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

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const-string v0, "android.intent.action.HEADSET_PLUG"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

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
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    const-string p1, "state"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide p1, p0, Lcom/google/vr/audio/DeviceInfo;->a:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Ltqz;->a:Lcom/google/vr/audio/DeviceInfo;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_d
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/vr/audio/DeviceInfo;->nativeUpdateHeadphoneStateChange(JI)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v0, p0, Lcom/google/vr/audio/DeviceInfo;->a:J

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    iget-wide p1, p0, Lcom/google/vr/audio/DeviceInfo;->a:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/vr/audio/DeviceInfo;->nativeUpdateHeadphoneStateChange(JI)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Ltqz;->a:Lcom/google/vr/audio/DeviceInfo;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    iget-object p0, p0, Ltqz;->a:Lcom/google/vr/audio/DeviceInfo;

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

    nop

    :goto_1c
    if-ne p1, p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/vr/audio/DeviceInfo;->nativeUpdateHeadphoneStateChange(JI)V

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x14

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method
