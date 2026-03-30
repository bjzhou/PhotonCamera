.class final Lmon;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lmpw;

.field final synthetic b:Lmoq;


# direct methods
.method public constructor <init>(Lmoq;Lmpw;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lmon;->a:Lmpw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmon;->b:Lmoq;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, p0, Lmon;->b:Lmoq;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6
    sub-double/2addr v4, v6

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    goto/32 :goto_46

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_8
    sub-long/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x19

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide v0, 0x3f8eb851e0000000L    # 0.014999999664723873

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5b

    nop

    :goto_f
    invoke-virtual {p1, v0}, Lmnp;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    mul-float/2addr v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_11
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    cmpl-double v0, v8, v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p1, Lmoq;->l:Loxv;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    if-gtz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    cmp-long v0, v0, v4

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

    :goto_17
    float-to-double v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    mul-float/2addr v4, v4

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

    :goto_19
    iget-wide v6, v2, Lmoq;->N:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    cmpl-double v6, v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    const-wide/16 v4, 0x32

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1d
    div-double/2addr v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    iget-wide v6, v5, Lmoq;->K:D

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    aget v4, v4, v5

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

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_22
    iget-wide v0, p1, Lmoq;->M:J

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_23
    iget-wide v1, v0, Lmoq;->M:J

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

    :goto_24
    iget-object p1, p0, Lmon;->b:Lmoq;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Lmnp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lmon;->b:Lmoq;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_27
    sget-object v0, Lmnp;->f:Lmnp;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2a
    iget-wide v6, v0, Lmoq;->L:D

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lmon;->b:Lmoq;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lmon;->a:Lmpw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v6, :cond_4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2f
    iput-wide v6, v5, Lmoq;->K:D

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_32
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lmoq;->e()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_34
    iput-wide v1, v0, Lmoq;->N:J

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_37
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lmon;->b:Lmoq;

    nop

    iget-wide v6, v2, Lmoq;->d:J

    nop

    nop

    nop

    nop

    const-wide/16 v10, 0x1

    nop

    add-long/2addr v10, v6

    nop

    iput-wide v10, v2, Lmoq;->d:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v10, 0x3

    nop

    nop

    nop

    nop

    nop

    rem-long/2addr v6, v10

    nop

    nop

    nop

    long-to-int v6, v6

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lmoq;->c:[D

    nop

    nop

    nop

    aput-wide v4, v2, v6

    nop

    nop

    :goto_38
    const/4 v4, 0x3

    nop

    nop

    if-ge v1, v4, :cond_5

    nop

    aget-wide v4, v2, v1

    nop

    nop

    nop

    add-double/2addr v8, v4

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_5
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-gtz v1, :cond_6

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    :goto_3a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3b
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, p0, Lmon;->b:Lmoq;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, v0, Lmoq;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3e
    iget-wide v4, v0, Lmoq;->K:D

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-float/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    aget v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_41
    iput-wide v4, v2, Lmoq;->L:D

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_44
    mul-float/2addr v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_45
    invoke-interface {p1}, Llmf;->c()V

    :goto_46
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_47
    if-eq v0, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, v3}, Lmoq;->g(Z)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aget v2, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4a
    iput-wide v1, v0, Lmoq;->M:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_53

    nop

    nop

    :goto_4c
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4d
    iget-wide v4, v2, Lmoq;->K:D

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lmon;->b:Lmoq;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    float-to-double v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lmon;->b:Lmoq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_52
    cmp-long v1, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_53
    throw p0

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_20

    nop

    nop

    :goto_55
    iget-object v0, p0, Lmon;->b:Lmoq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, p0, Lmon;->b:Lmoq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_58
    iput-wide v4, v2, Lmoq;->K:D

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p1, p1, Lmpw;->r:Llmf;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    add-float/2addr v0, v2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop
.end method
