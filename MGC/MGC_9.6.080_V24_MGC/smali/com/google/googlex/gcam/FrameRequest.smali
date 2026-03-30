.class public Lcom/google/googlex/gcam/FrameRequest;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x20

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/FrameRequest;-><init>(JZ)V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FrameRequest__SWIG_0()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(JZ)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p1, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-boolean p3, p0, Lcom/google/googlex/gcam/FrameRequest;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public static c(Lcom/google/googlex/gcam/FrameRequest;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_7
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    const v0, 0x3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

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

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_exposure_time_ms_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x14

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()F
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_focus_distance_diopters_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result p0

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

    :goto_8
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v0, 0x11

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final d()Lsxd;
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    if-gez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget-object v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1f

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

    :goto_6
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v4, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, v0, Lsxd;->k:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    const-class v0, Lsxd;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    :goto_c
    goto/16 :goto_1c

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_type_get(JLcom/google/googlex/gcam/FrameRequest;)I

    move-result v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    throw v1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, v1, Lsxd;->k:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_15

    nop

    :goto_13
    sget-object v0, Lsxd;->j:[Lsxd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_14
    const-string v0, " with value "

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v4, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v3, v4, :cond_5

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_5
    :goto_1c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x11

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

    :goto_1e
    const/16 v2, 0x9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    sget-object v1, Lsxd;->j:[Lsxd;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v3, v0, Lsxd;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_22
    const-string v2, "FrameRequest_type"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Lsxd;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Lsxd;->j:[Lsxd;

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

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_27
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "No enum "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2b
    aget-object v0, v0, v4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-wide v2, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_30
    return-object v0

    nop

    :goto_31
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Lsxd;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_35
    if-eq v3, v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_36
    goto/32 :goto_22

    nop

    nop

    :goto_37
    const-string v2, "FrameRequest_type_fix"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v3, p0, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_type_set(JLcom/google/googlex/gcam/FrameRequest;I)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_39
    aget-object v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Lcom/google/googlex/gcam/CyclopsParameters;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/CyclopsParameters;-><init>(JZ)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_cyclops_params_get(JLcom/google/googlex/gcam/FrameRequest;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    new-instance p0, Lcom/google/googlex/gcam/CyclopsParameters;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

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

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    cmp-long p0, v0, v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_12
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    cmp-long v4, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_0

    nop

    iget-boolean v4, p0, Lcom/google/googlex/gcam/FrameRequest;->b:Z

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    const/4 v4, 0x0

    nop

    iput-boolean v4, p0, Lcom/google/googlex/gcam/FrameRequest;->b:Z

    nop

    nop

    nop

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_FrameRequest(J)V

    :cond_1
    iput-wide v2, p0, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    monitor-exit p0

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
    throw v0

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected final finalize()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/gcam/FrameRequest;->f()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method
