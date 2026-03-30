.class final Lkww;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Ljava/util/Set;

.field private volatile b:J

.field private volatile c:D


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_a

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide v0, p0, Lkww;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    iput-object p1, p0, Lkww;->a:Ljava/util/Set;

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

    :goto_c
    const-wide/16 v0, -0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iput-wide v0, p0, Lkww;->b:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    const v1, 0xe

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 12

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Ljava/lang/Long;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_8
    move-wide v10, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-static {v6, v7}, Lnzk;->C(J)D

    move-result-wide v6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    cmp-long v3, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_e
    if-gtz v3, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lkww;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/16 :goto_2a

    nop

    :goto_11
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-wide v3, p0, Lkww;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    move-wide v4, v3

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    iget-wide v3, p0, Lkww;->c:D

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    sub-long v6, v1, v6

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    check-cast v2, Lkwv;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    iput-wide v6, p0, Lkww;->c:D

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

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-wide v8, p0, Lkww;->c:D

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    cmpl-double v3, v8, v10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gtz v3, :cond_3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_21
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    move-wide v4, v8

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    move-object v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-wide v10, v8

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2b
    move-wide v8, v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0xe

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_4

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    :goto_2e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_32
    iget-wide v6, p0, Lkww;->b:J

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-wide v1, p0, Lkww;->b:J

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface/range {v2 .. v7}, Lkwv;->a(Lpro;DD)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_5

    nop

    :goto_37
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_38
    if-gez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_39
    move-wide v6, v10

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3a
    iget-wide v3, p0, Lkww;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3b
    move-wide v8, v6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    cmp-long v3, v3, v5

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop
.end method
