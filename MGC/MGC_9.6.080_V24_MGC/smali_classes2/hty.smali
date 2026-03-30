.class public final Lhty;
.super Lhug;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lhug;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "CANCEL_AFTER_SHUTDOWN"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lhug;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const-string v0, "TOO_SHORT"

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    goto/16 :goto_15

    nop

    :pswitch_1
    goto/32 :goto_13

    nop

    nop

    :goto_5
    goto/16 :goto_15

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_15

    nop

    :pswitch_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_f

    nop

    nop

    :goto_8
    sget-object p1, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->pnwC:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_15

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "CANCELLED_EXTERNALLY"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    :goto_f
    const-string v0, "TEST_REASON"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    const-string v0, "LONG_PRESS_TOO_SHORT"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    const-string v0, "STATIC_SCENE_OR_NO_BETTER_FRAME"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "null"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    const-string v0, "START_TOO_CLOSE_TO_SHUTTER"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "UNKNOWN"

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :goto_17
    goto :goto_15

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_15

    nop

    :pswitch_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->rxqbjb:Ljava/lang/String;

    nop

    goto/32 :goto_2

    nop

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

    :goto_2
    invoke-direct {p0, v0, p1}, Lhug;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
