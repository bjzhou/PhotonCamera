.class final Lpqa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpqh;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    iput-wide v0, p0, Lpqa;->a:J

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
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

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

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v1, 0x16

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

    :goto_6
    const v0, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    iget-wide v0, p0, Lpqa;->a:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lpqa;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method

.method public final b(Lpqm;[Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    invoke-direct {p2}, Lpqp;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/util/TreeMap;

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

    :goto_2
    invoke-static {p2}, Lpqc;->a([Ljava/lang/Object;)Lpqc;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    check-cast p2, Lpqr;

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

    :goto_5
    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p2, Lpqp;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-eqz p2, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    :goto_d
    add-long/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    iget-wide p0, p2, Lpqp;->a:J

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const v1, 0xa

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p1, Lpqm;->b:Ljava/lang/Object;

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

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    check-cast p2, Lpqp;

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

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v0, p0, Lpqa;->a:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lnar;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    iput-wide p0, p2, Lpqp;->a:J

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p2, p0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    check-cast p2, Ljava/util/TreeMap;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method
