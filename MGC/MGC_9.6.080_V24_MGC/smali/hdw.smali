.class final Lhdw;
.super Lefb;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "INSERT OR IGNORE INTO `FatalErrorCounts` (`cameraId`,`failuresBeforeRebootDuringOpen`,`failuresAfterRebootDuringOpen`,`failuresBeforeRebootDuringSession`,`failuresAfterRebootDuringSession`,`lastFatalErrorTimestamp`,`rebootCount`) VALUES (?,?,?,?,?,?,?)"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final bridge synthetic b(Lehv;Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_1
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    int-to-long v0, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    iget p0, p2, Lhdt;->b:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget p0, p2, Lhdt;->c:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    check-cast p2, Lhdt;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    int-to-long v0, p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, v0, p0}, Lehv;->g(ILjava/lang/String;)V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    int-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_e
    int-to-long v0, p0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1, v0}, Lehv;->f(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    :goto_13
    const/4 v0, 0x1

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

    :goto_14
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    iget-wide v0, p2, Lhdt;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    int-to-long v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    :goto_1d
    iget-object p0, p2, Lhdt;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    iget p0, p2, Lhdt;->d:I

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    iget p0, p2, Lhdt;->g:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_12

    nop

    :goto_22
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p0, 0x7

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    iget p0, p2, Lhdt;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x6

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

    :goto_29
    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method
