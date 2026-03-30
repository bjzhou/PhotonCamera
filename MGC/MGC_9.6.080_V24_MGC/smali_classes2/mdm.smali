.class public final Lmdm;
.super Ljava/lang/RuntimeException;
.source "PG"


# instance fields
.field private final a:Ljava/lang/Throwable;

.field private final b:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmdm;->a:Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lmdm;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "FRAME_SERVER_HI_RES_REQUEST_FAIL"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    const-string p0, "null"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_6

    nop

    :pswitch_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

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

    nop

    :goto_5
    const-string p0, "RING_BUFFER_FETCH_FAIL"

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p0, "RING_BUFFER_NULL_RAW_IMAGE"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_f
    iget p0, p0, Lmdm;->b:I

    nop

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string p0, "FRAME_SERVER_VF_REQUEST_FAIL"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p0, "VF_NULL_IMAGE"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lmdm;->a:Ljava/lang/Throwable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "SmartsFrameFetchException{reason="

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    :goto_17
    const-string p0, "RING_BUFFER_NULL_METADATA"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    const-string p0, "RING_BUFFER_FRAME_NULL"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_6

    nop

    nop

    :pswitch_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_6

    nop

    nop

    :pswitch_4
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v0, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    const-string v2, "}"

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

    :goto_20
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

    nop

    nop

    :goto_21
    invoke-static {v0, p0, v3, v1, v2}, La;->bl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_22
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, ", exception="

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
