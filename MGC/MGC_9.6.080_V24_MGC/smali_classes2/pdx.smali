.class public Lpdx;
.super Ljava/lang/Exception;
.source "PG"


# instance fields
.field public final a:Lpdr;

.field public final b:Lpnx;

.field public final c:Z


# direct methods
.method public constructor <init>(Lpnx;Lpdr;Z)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, " encountered a fatal error "

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

    :goto_4
    const-string v0, "before opening: "

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    if-ne v0, p3, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    const-string v3, "Camera "

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    const-string v0, "after open: "

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p1, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

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

    :goto_12
    goto/32 :goto_9

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    iput-object p2, p0, Lpdx;->a:Lpdr;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean p3, p0, Lpdx;->c:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lpdx;->b:Lpnx;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x20

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

    nop

    :goto_1a
    goto/16 :goto_e

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Lpdr;->c()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_1e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop
.end method

.method public static a(Lpnx;Lpdr;Z)Lpdx;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lpdx;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lpdt;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1, p2}, Lpdt;-><init>(Lpnx;Lpdr;Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lpdw;

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

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_12

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, p1, p2}, Lpdx;-><init>(Lpnx;Lpdr;Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0, p1, p2}, Lpdw;-><init>(Lpnx;Lpdr;Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lpdr;->a:Lpdr;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0, p1, p2}, Lpdv;-><init>(Lpnx;Lpdr;Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, p1, p2}, Lpdu;-><init>(Lpnx;Lpdr;Z)V

    goto/32 :goto_f

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    :pswitch_4
    goto/32 :goto_e

    nop

    nop

    :goto_e
    new-instance v0, Lpds;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :goto_10
    invoke-virtual {p1}, Lpdr;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lpdu;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    new-instance v0, Lpdv;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-direct {v0, p0, p1, p2}, Lpds;-><init>(Lpnx;Lpdr;Z)V

    goto/32 :goto_4

    nop

    nop
.end method
