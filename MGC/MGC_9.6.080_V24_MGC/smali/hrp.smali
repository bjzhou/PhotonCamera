.class final Lhrp;
.super Lefb;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lefb;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const-string p0, "INSERT OR ABORT INTO `shot_log` (`sequence`,`shot_id`,`time_millis`,`message`) VALUES (nullif(?, 0),?,?,?)"

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
.end method

.method protected final bridge synthetic b(Lehv;Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    iget p0, p2, Lhrr;->a:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget-wide v0, p2, Lhrr;->b:J

    nop

    nop

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

    :goto_2
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p2, Lhrr;->c:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    const v1, 0x18

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

    :goto_5
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p2, Lhrr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    iget-object p0, p2, Lhrr;->d:Ljava/lang/String;

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

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, p2, p0}, Lehv;->g(ILjava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    :goto_12
    const/4 p0, 0x3

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

    :goto_13
    int-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1, p2}, Lehv;->f(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
