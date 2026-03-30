.class public Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpcu;

.field public final b:J

.field public final c:Lcom/google/googlex/gcam/Gcam;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ltbs;

.field public final f:Lgjp;


# direct methods
.method public constructor <init>(Lpcu;Lcom/google/googlex/gcam/Gcam;Ljava/util/concurrent/Executor;Ltbs;Lgjp;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iput-object p4, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->e:Ltbs;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->createImpl()J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "FastMomentsHdr"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iput-object p3, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->d:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a:Lpcu;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    invoke-static {}, Liyl;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->f:Lgjp;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, v0}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->c:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method private static native createImpl()J
.end method

.method private static native releaseImpl(J)V
.end method


# virtual methods
.method public final a(Lprw;Lrle;Lkiv;Lkiu;)V
    .locals 11

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lprw;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    rem-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2
    move-object v3, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v5, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const/16 v4, 0x20

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    iget-object v0, p3, Lkiv;->a:Lpck;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v9, 0x4

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

    :goto_a
    move-object v0, v10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    move-object v6, p3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Lprw;->a()I

    move-result v7

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    if-eq v0, v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_0
    :goto_f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p2, Lrle;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v4, 0x25

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v4, 0x24

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_19
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v0, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, v0, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_22
    invoke-direct/range {v0 .. v9}, Lijt;-><init>(Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;Lprw;Lrle;Lcom/google/googlex/gcam/NormalizedRect;Lcom/google/googlex/gcam/ShotMetadata;Lkiv;Landroid/hardware/HardwareBuffer;Lkiu;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move v0, v2

    nop

    :goto_24
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v5, v0

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

    :goto_26
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0, v5, v7, v4}, Lrrf;->r(ZLjava/lang/String;II)V

    goto/32 :goto_16

    nop

    nop

    :goto_29
    iget v0, v0, Lpck;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Lcom/google/googlex/gcam/AeShotParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v0, v1

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

    :goto_2c
    const-string v0, "Only multiple of 2 heights are supported!"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p2, Lrle;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    new-instance v10, Lijt;

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

    :goto_2f
    move-object v8, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p3, Lkiv;->a:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v4, 0x26

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_38
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v4, "Only multiple of 4 widths are supported!"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3e
    if-ne v0, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_40
    if-ne v0, v4, :cond_6

    nop

    goto/32 :goto_f

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Lcom/google/googlex/gcam/AeShotParams;->b()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_42
    rem-int/lit8 v0, v0, 0x4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_43
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_44
    move-object v2, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v5, "Wrong format for input ImageProxy. Got %s, expected RAW10 (%s)"

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
.end method

.method public final finalize()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    cmp-long p0, v0, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->releaseImpl(J)V

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    const-wide/16 v2, 0x0

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

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public native initializeProcessingQueueNative(JJ)V
.end method

.method public native processRaw10ToRgbaHardwareBufferNative(JJIJLandroid/hardware/HardwareBuffer;JJJIIIJI)Landroid/hardware/HardwareBuffer;
.end method

.method public native processRaw10ToYuvHardwareBufferNative(JJIJLandroid/hardware/HardwareBuffer;JJJIIIJI)Landroid/hardware/HardwareBuffer;
.end method

.method public native processRaw10ToYuvImageNative(JJILandroid/hardware/HardwareBuffer;JJJIIIJI)J
.end method
