.class public final Ltst;
.super Ljava/lang/Exception;
.source "PG"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "VR Service disabled"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    goto/16 :goto_e

    nop

    nop

    :pswitch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "This operation is not supported on this device"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto :goto_e

    nop

    nop

    :pswitch_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_e

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_10

    nop

    nop

    :goto_6
    goto :goto_e

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const-string p1, "An unknown failure occurred"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "VR Service not connected"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "Invalid connection result: "

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "VR Service missing"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    const-string p1, "VR Service obsolete"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p1, "VR Service present"

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const-string p1, "No permission to do operation"

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

    :goto_11
    goto :goto_e

    nop

    nop

    :pswitch_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_e

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

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

    :goto_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :goto_15
    const-string p1, "VR Service updating"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_e

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method
