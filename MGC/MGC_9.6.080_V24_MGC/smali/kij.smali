.class public final Lkij;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhf;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Lqwy;Lcom/google/googlex/gcam/YuvWriteView;Lprw;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

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

    :goto_1
    return-object p1

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lppl;

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

    :goto_3
    check-cast p0, Ljava/lang/Long;

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

    :goto_4
    iget-object p0, p1, Lqwy;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-direct {p1, p2, p3, p4}, Lppl;-><init>(Lcom/google/googlex/gcam/YuvWriteView;J)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final b(Lqwy;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object p0, p1, Lqwy;->b:Ljava/lang/Object;

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

    :goto_1
    new-instance p1, Lppm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p2, v0, v1}, Lppm;-><init>(Landroid/hardware/HardwareBuffer;J)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    check-cast p0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    const v1, 0xa

    nop

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

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
