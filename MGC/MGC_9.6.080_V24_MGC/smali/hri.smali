.class final Lhri;
.super Lefb;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lefb;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const-string p0, "INSERT OR ABORT INTO `shots` (`shot_id`,`title`,`start_millis`,`persisted_millis`,`canceled_millis`,`deleted_millis`,`most_recent_event_millis`,`capture_session_type`,`capture_session_shot_id`,`pid`,`stuck`,`failed`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final bridge synthetic b(Lehv;Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0xa

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
    iget-wide v0, p2, Lhrn;->j:J

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p0, 0xc

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-wide v0, p2, Lhrn;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1, v0}, Lehv;->f(I)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_27

    nop

    nop

    :goto_c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_29

    nop

    nop

    :goto_e
    iget-wide v0, p2, Lhrn;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_11
    const/16 p0, 0xb

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    iget-object p0, p2, Lhrn;->h:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xe

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v0, p2, Lhrn;->f:J

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

    nop

    :goto_19
    invoke-interface {p1, v0, p0}, Lehv;->g(ILjava/lang/String;)V

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_2

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

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v0, p2, Lhrn;->e:J

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1d
    iget-wide v0, p2, Lhrn;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean p0, p2, Lhrn;->k:Z

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    const/4 p0, 0x6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p2, Lhrn;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1, v0}, Lehv;->f(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, v0, p0}, Lehv;->g(ILjava/lang/String;)V

    :goto_27
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    iget-object p0, p2, Lhrn;->i:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_29
    iget-boolean p0, p2, Lhrn;->l:Z

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2a
    invoke-interface {p1, v0}, Lehv;->f(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_2b
    invoke-interface {p1, v0, p0}, Lehv;->g(ILjava/lang/String;)V

    :goto_2c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p0, 0x4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p2, Lhrn;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f
    const v1, 0x1

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

    :goto_30
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_3

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    :goto_32
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_33
    int-to-long v0, p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_34
    iget-wide v0, p2, Lhrn;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_35
    goto :goto_2c

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_39
    int-to-long v0, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3a
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 p0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3d
    goto/32 :goto_38

    nop

    :goto_3e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1, p0, v0, v1}, Lehv;->e(IJ)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method
