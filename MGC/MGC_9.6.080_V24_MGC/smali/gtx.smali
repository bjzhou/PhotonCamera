.class public final Lgtx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpad;


# instance fields
.field private final a:Lhoh;


# direct methods
.method public constructor <init>(Lhoh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgtx;->a:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/io/FileDescriptor;I)Lpsc;
    .locals 5

    goto/32 :goto_16

    nop

    nop

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    sget-object p1, Lhly;->a:Lhmo;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const-string p2, "gca-muxer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v3, 0x402

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    aput-object v2, v1, v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p1, p2, p1, p2}, Leds;-><init>(JJ)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    new-instance p1, Lqdv;

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    invoke-direct {p1, p0, p2}, Lqdv;-><init>(Lpsc;Ljava/util/concurrent/ExecutorService;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

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
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_14
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Lj$/time/ZoneId;)Ljava/util/TimeZone;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Leds;

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

    :goto_19
    invoke-static {p2}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

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
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p0, Lqdz;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, p2}, Lqdz;-><init>(Ljava/io/FileOutputStream;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p2, Ljava/io/FileOutputStream;

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
    invoke-virtual {p0, v0}, Lqdz;->m(Leds;)V

    goto/32 :goto_2

    nop

    nop

    :goto_21
    check-cast p1, Ljava/lang/Long;

    nop

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

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method
