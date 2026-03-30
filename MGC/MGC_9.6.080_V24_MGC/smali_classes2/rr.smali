.class public final Lrr;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public volatile e:Ljava/lang/Integer;

.field public final f:Lufg;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/Map;

.field private final i:J

.field private final j:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrr;->f:Lufg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p6, p0, Lrr;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_3
    throw p0

    nop

    nop

    :goto_4
    if-eq p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iput-object p7, p0, Lrr;->h:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p2, p0, Lrr;->a:Z

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

    :goto_7
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

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

    nop

    :goto_8
    invoke-direct {p1}, Lufg;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p1, Lrw;->b:Luep;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lufg;

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
    return-void

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    iput-object p3, p0, Lrr;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lrr;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide p1, p0, Lrr;->i:J

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    const-string p1, "CaptureRequestList and CaptureMetadataList must have a 1:1 mapping."

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Luep;->c()J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p4, p0, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    iput-object p5, p0, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    const-string v0, "SequenceNumber has not been set for "

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lrr;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw v0

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrr;->e:Ljava/lang/Integer;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_13
    const-string v1, "SequenceNumber has not been set for "

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

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_15
    const v0, 0xa

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v2, 0x21

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

    :goto_1b
    return p0

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    :goto_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lrr;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop
.end method

.method public final b(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;J)V
    .locals 6

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const-string p2, "onTotalCaptureResult"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    check-cast p2, Lqj;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v3, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_54

    nop

    nop

    :goto_12
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_14
    const-string v0, "onCaptureCompleted"

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1b
    const-string v0, "InvokeRequestListeners"

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v3, v3, 0x1

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

    :goto_1d
    new-instance v1, Lrc;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_1f
    invoke-interface {v5, p1}, Lqj;->m(Lsb;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    const-string p2, "InvokeInternalListeners"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v5, Lqj;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v4, Lqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_2b

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_27
    iget-object v4, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Lrr;->f(Landroid/hardware/camera2/CaptureRequest;)Lsb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2a
    move v3, v2

    nop

    nop

    :goto_2b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v0, "onCaptureSequenceComplete"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2d
    const-string v3, "onComplete"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_43

    nop

    nop

    :goto_2f
    if-lt v3, p2, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    :goto_32
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lrr;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_34
    invoke-interface {v4, p1, p3, p4, v1}, Lqj;->c(Lsb;JLpn;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v5, v5, Lqk;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_36
    iget-object p2, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2d

    nop

    nop

    :goto_39
    goto :goto_32

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, v3, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3f
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_48

    nop

    nop

    :goto_41
    invoke-direct {v1, p2, v0, p1}, Lrc;-><init>(Landroid/hardware/camera2/TotalCaptureResult;Ljava/lang/String;Lsb;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_43
    iget-object v0, p0, Lrr;->d:Ljava/util/List;

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

    :goto_44
    check-cast v4, Lqj;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_45
    if-lt v2, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_47
    invoke-interface {p2, p1, p3, p4, v1}, Lqj;->c(Lsb;JLpn;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_48
    if-lt v4, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p2, p2, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_4a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4c
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_16

    nop

    nop

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Lrr;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v4, p1}, Lqj;->m(Lsb;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

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

    :goto_57
    invoke-virtual {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->c(Lrr;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_58
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 6

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v5, v2}, Lqj;->e(Lsb;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1
    const-string v0, "onCaptureSequenceAborted"

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v4, v3, :cond_0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v1, v0

    nop

    :goto_4
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v1, v0

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_c
    const-string v1, "onCaptureSequenceAborted was invoked on "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_13
    if-lt v1, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lrr;->c:Ljava/util/List;

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

    nop

    :goto_15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v5, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_17
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_55

    nop

    nop

    :goto_19
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v4, v0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lrr;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lrr;->f:Lufg;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_21
    const v0, 0x9

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

    :goto_22
    const-string p1, "InvokeRequestListeners"

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v5, Lqj;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_24
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v0}, Luhf;->M(Ljava/lang/Object;)Z

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v5, v5, Lqk;->c:Ljava/util/List;

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

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_28
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 p0, 0x21

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2c
    iget-object v3, v3, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2e
    check-cast v2, Lsb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    if-lt v4, v3, :cond_2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lrr;->a()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_33
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_34
    const-string p1, "InvokeInternalListeners"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_36
    if-eq v0, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_a

    nop

    nop

    :goto_3a
    const-string p0, ", but expected "

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_3b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p0, Lrr;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    :goto_40
    goto/16 :goto_57

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_45
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_47
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v2, Lsb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4c
    invoke-virtual {v2}, Lsb;->a()Lqk;

    move-result-object v5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lrr;->a()I

    move-result v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-lt v1, p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_52
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_53
    invoke-interface {v5, v2}, Lqj;->e(Lsb;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_48

    nop

    nop

    :goto_56
    move v4, v0

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->c(Lrr;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v5, Lqj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final d(IJ)V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrr;->a()I

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    check-cast v2, Lsb;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4
    const-string v0, "onCaptureSequenceCompleted"

    nop

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

    :goto_5
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v1, v0

    nop

    nop

    :goto_7
    goto/32 :goto_30

    nop

    nop

    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_9
    move v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_4c

    nop

    nop

    :goto_c
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

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

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

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

    nop

    :goto_11
    const-string p1, "InvokeRequestListeners"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lrr;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

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

    nop

    nop

    :goto_15
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p0, ", but expected "

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_48

    nop

    :goto_1e
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->c(Lrr;)V

    goto/32 :goto_31

    nop

    nop

    :goto_20
    throw p1

    nop

    :goto_21
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v5, v2, p2, p3}, Lqj;->f(Lsb;J)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

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

    :goto_24
    if-lt v4, v3, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_25
    const/16 p0, 0x21

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_26
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v5, p0, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq v0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_2f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_30
    if-lt v1, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Lrr;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Lsb;->a()Lqk;

    move-result-object v5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_34
    const-string p1, "InvokeInternalListeners"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_35
    iget-object p1, p0, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p0, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_38
    if-lt v1, p1, :cond_3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3d
    const v1, 0x3

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3e
    goto :goto_41

    nop

    nop

    :goto_3f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v1, v0

    nop

    nop

    :goto_41
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string p3, "onCaptureSequenceCompleted was invoked on "

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v5, v5, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_44
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_45
    iget-object v3, p0, Lrr;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v5, v2, p2, p3}, Lqj;->f(Lsb;J)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move v4, v0

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_4a
    check-cast v5, Lqj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4b
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4c
    iget-object p1, p0, Lrr;->c:Ljava/util/List;

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

    :goto_4d
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v3, v3, Lqk;->c:Ljava/util/List;

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

    :goto_4f
    return-void

    nop

    :goto_50
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_53
    if-lt v4, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    :goto_55
    check-cast v5, Lqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_56
    check-cast v2, Lsb;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop
.end method

.method public final e(Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 9

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-wide v5, p4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/16 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_2c

    nop

    nop

    :goto_3
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4
    const-string v0, "onCaptureStarted"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    move-wide v5, p4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2f

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    check-cast v1, Lqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    invoke-interface/range {v1 .. v6}, Lqj;->i(Lsb;JJ)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_13
    move v8, v7

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_14

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_32

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

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

    :goto_1a
    invoke-interface/range {v1 .. v6}, Lqj;->i(Lsb;JJ)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v2, p1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v1, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v1, Lqj;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Lrr;->f(Landroid/hardware/camera2/CaptureRequest;)Lsb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "InvokeInternalListeners"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Luhf;->M(Ljava/lang/Object;)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v0, Lqk;->c:Ljava/util/List;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_24
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    move-wide v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_28
    if-lt v8, v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x14

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2a
    move-wide v3, p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lrr;->f:Lufg;

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

    :goto_2c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :goto_2f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_30
    if-lt v7, p0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_31
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_31

    nop

    nop

    :goto_33
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_36
    const v1, 0xa

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_7

    nop
.end method

.method public final f(Landroid/hardware/camera2/CaptureRequest;)Lsb;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v2, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, " in "

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lsb;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lrr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    :goto_15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lrr;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    goto/32 :goto_23

    nop

    nop

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    const-string v2, "Failed to find CaptureRequest "

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lrr;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Lsb;JLql;)V
    .locals 4

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqk;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_21

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_8
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    if-lt v2, v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lqj;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

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
    add-int v0, v0, v1

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

    nop

    nop

    :goto_11
    invoke-interface {v0, p1, p2, p3, p4}, Lqj;->d(Lsb;JLql;)V

    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2a

    nop

    :goto_14
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->c(Lrr;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "InvokeInternalListeners"

    nop

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

    :goto_18
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

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

    :goto_19
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    check-cast v3, Lqj;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v3, p1, p2, p3, p4}, Lqj;->d(Lsb;JLql;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lrr;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0xd

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop
.end method

.method public final onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_33

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Lsb;->a()Lqk;

    move-result-object p3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    const-string p1, " on frame "

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

    :goto_7
    if-lt v1, p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Lsb;->a()Lqk;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iget-object p0, p0, Lqk;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p3, p3, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    move v1, v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p1, p1, Lqq;->a:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    const-string p1, "Unable to find the streamId for "

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    goto :goto_d

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_16
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_19
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    check-cast v2, Lqj;

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

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_2

    nop

    :goto_1d
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_22
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    check-cast p1, Lqq;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lt v0, p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p2}, Lrr;->f(Landroid/hardware/camera2/CaptureRequest;)Lsb;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2c
    invoke-static {p4, p5}, Lpp;->a(J)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v0, 0x0

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

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lrr;->h:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    throw p1

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1b

    nop

    nop

    :goto_34
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_35
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_36
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_37
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p3, Lqj;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_39
    const-string p3, "InvokeInternalListeners"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3a
    invoke-interface {p3, p2, p4, p5, p1}, Lqj;->b(Lsb;JI)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v2, p2, p4, p5, p1}, Lqj;->b(Lsb;JI)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    const-string p1, "onCaptureBufferLost"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p3, p0, Lrr;->d:Ljava/util/List;

    nop

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

    nop
.end method

.method public final onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

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
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    nop

    goto/32 :goto_c

    nop

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

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    invoke-virtual {p0, p2, p3, v0, v1}, Lrr;->b(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p2}, Lrr;->f(Landroid/hardware/camera2/CaptureRequest;)Lsb;

    move-result-object p1

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

    :goto_5
    const-string p1, "onCaptureFailed"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-direct {p2, p1, p3}, Lqz;-><init>(Lsb;Landroid/hardware/camera2/CaptureFailure;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xb

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

    :goto_9
    new-instance p2, Lqz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1, v0, v1, p2}, Lrr;->g(Lsb;JLql;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    iget-object p2, p2, Lqk;->c:Ljava/util/List;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p3, p1}, Lrd;-><init>(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    move v1, p3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v2, p1, v0}, Lqj;->k(Lsb;Lpo;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lrd;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    :goto_10
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p2, Lqj;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_15
    check-cast v2, Lqj;

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

    :goto_16
    const/4 p3, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_18
    if-lt v1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    const-string p2, "InvokeInternalListeners"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object p2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p2, p1, v0}, Lqj;->k(Lsb;Lpo;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lqk;->c:Ljava/util/List;

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

    :goto_20
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    :goto_25
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_7

    nop

    nop

    :goto_27
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_29
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2a
    if-lt p3, p0, :cond_1

    nop

    goto/32 :goto_2c

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_11

    nop

    nop

    :goto_2d
    const-string p1, "onCaptureProgressed"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p0, Lrr;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_30
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p1, p0, Lrr;->g:Ljava/lang/String;

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

    nop

    :goto_32
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    goto/32 :goto_31

    nop

    nop

    :goto_33
    invoke-virtual {p0, p2}, Lrr;->f(Landroid/hardware/camera2/CaptureRequest;)Lsb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_34
    const v1, 0x13

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
.end method

.method public final onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Lrr;->c(I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lrr;->d(IJ)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

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

    :goto_2
    goto/32 :goto_b

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const v1, 0x16

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

    :goto_6
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    move-wide v2, p5

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

    :goto_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

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

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-wide v4, p3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {v0 .. v5}, Lrr;->e(Landroid/hardware/camera2/CaptureRequest;JJ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onReadoutStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    if-lt p4, p2, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p2, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->kFxuxrPSxklXd:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object p0

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

    nop

    :goto_4
    move p4, p3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lsb;->a()Lqk;

    move-result-object p2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p4, p4, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p2, p1}, Lqj;->l(Lsb;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    :goto_16
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    :goto_18
    if-lt p3, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    invoke-interface {p5, p1}, Lqj;->l(Lsb;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

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

    :goto_1b
    iget-object p2, p0, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    check-cast p2, Lqj;

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

    :goto_1d
    sget-object p1, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->vKjYGnSTUaA:Ljava/lang/String;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_e

    nop

    nop

    :goto_22
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 p2, 0x0

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
    iget-object p2, p2, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    check-cast p5, Lqj;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p5, p0, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_28
    invoke-virtual {p0, p2}, Lrr;->f(Landroid/hardware/camera2/CaptureRequest;)Lsb;

    move-result-object p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const-string v1, "Camera2CaptureSequence-"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v1, p0, Lrr;->i:J

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop
.end method
