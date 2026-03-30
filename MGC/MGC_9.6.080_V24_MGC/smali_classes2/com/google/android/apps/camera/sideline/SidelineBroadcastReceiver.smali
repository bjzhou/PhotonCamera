.class public Lcom/google/android/apps/camera/sideline/SidelineBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public a:Lmaz;

.field public b:Llyv;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

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

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, v0}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_9
    const v0, 0x2f94f923

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

    :goto_a
    const-class v0, Lmaj;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/apps/camera/sideline/SidelineBroadcastReceiver;->a:Lmaz;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Liye;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lcom/google/android/apps/camera/sideline/SidelineBroadcastReceiver;->a:Lmaz;

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

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lmaz;->a()V

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    if-ne p2, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x0

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_16
    if-nez p1, :cond_4

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_17
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lmaz;->b()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    goto :goto_1e

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lmaj;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1d
    const/4 p1, -0x1

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x6789a577    # 1.300033E24f

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    move p1, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    :goto_25
    if-ne p2, v0, :cond_6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    if-ne p1, v1, :cond_7

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, p2}, Llyv;->c(Llyp;)V

    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

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

    :goto_2c
    sget-object p2, Llyr;->ax:Llzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2d
    const-string p2, "android.intent.action.MY_PACKAGE_REPLACED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lcom/google/android/apps/camera/sideline/SidelineBroadcastReceiver;->b:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2f
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    invoke-interface {p1, p0}, Lmaj;->m(Lcom/google/android/apps/camera/sideline/SidelineBroadcastReceiver;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

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

    :goto_33
    const v0, 0x7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
