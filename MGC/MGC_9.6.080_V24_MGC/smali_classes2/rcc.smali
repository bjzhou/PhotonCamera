.class public final Lrcc;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String; = "rcc"


# instance fields
.field public final b:Lrcg;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lrcg;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrcc;->b:Lrcg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static final a(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->abortBroadcast()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_25

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

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2
    const-string p2, "Failed to get snapshotter info"

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lrcg;->a:Lufp;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    :goto_a
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lufv;->i(Luad;)Lufs;

    move-result-object p1

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

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p1, "Failed to snapshot hierarchy. Could not find any window to capture."

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_f
    invoke-direct/range {v0 .. v6}, Lrcb;-><init>(Lrcc;Landroid/view/View;Landroid/content/BroadcastReceiver$PendingResult;JLtzy;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    const-string v0, "snapshotter_id"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_19
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Lrcc;->a:Ljava/lang/String;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p2, Lrcb;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_20
    const v1, 0xd

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

    :goto_21
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_22
    move-object v0, p2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_23
    const v0, 0x17

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

    :goto_24
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_31

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_28
    move-object v1, p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_35

    nop

    nop

    :goto_2a
    :try_start_0
    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    if-nez p2, :cond_4

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    :cond_4
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    nop

    nop

    nop

    nop

    const-string v0, ","

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Lqqm;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v1, v2, p1, p2, v3}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lrcc;->getResultData()Ljava/lang/String;

    move-result-object p2

    nop

    if-nez p2, :cond_5

    nop

    nop

    const-string p2, ""

    nop

    nop

    nop

    nop

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lrcc;->setResultData(Ljava/lang/String;)V

    const/4 p1, -0x1

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lrcc;->setResultCode(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v1, v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    const v3, -0x3379fb5d    # -7.026409E7f

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    :goto_30
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1, v0}, Lqqm;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    :goto_35
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_44

    nop

    nop

    :goto_39
    const-string p2, "Receiver does not know how to handle action: "

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3a
    const v3, 0xc917a87

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_34

    nop

    nop

    :goto_3c
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {}, Lrcr;->a()Landroid/view/View;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lrcm; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-string v1, "com.google.android.libraries.snapshot.action.GET_SNAPSHOTTER_INFO"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lrcc;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_41
    sget-object p1, Lrcc;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_42
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_43
    sget-object p0, Lrcc;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_24

    nop

    :goto_47
    const-string v1, "com.google.android.libraries.snapshot.action.CAPTURE_SNAPSHOT"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_48
    if-ne v1, v3, :cond_b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3a

    nop

    nop

    :goto_49
    invoke-static {p1, p2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move-object p2, v7

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_4

    nop

    nop

    :goto_4c
    invoke-static {p1, v7, v0, p2, p0}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop
.end method
