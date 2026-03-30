.class public final Lhzb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lhzb;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhzb;->a:Ljava/lang/Object;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lhyj;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    check-cast v0, Lhyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lhyj;->e()Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iget v0, p0, Lhzb;->b:I

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

    nop

    :goto_9
    check-cast p0, Lhyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhzb;->a:Ljava/lang/Object;

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

    :goto_c
    return-void

    nop

    nop
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    goto/32 :goto_de

    nop

    nop

    :goto_0
    check-cast v0, Lhyj;

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_2
    iget-object v5, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_3
    iget-object v0, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_6
    iget-object v8, v2, Ljnq;->b:Lnpl;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget v4, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Llmd;->f()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v4, v7, Ljnq;->k:Ljny;

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_b
    if-ltz v4, :cond_0

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Llmd;

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_e
    iget v6, v4, Lnpl;->b:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    iget-object v6, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_10
    add-float/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v5, Llvn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_12
    if-eq v2, v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean v6, v2, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->J:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_15
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v2, Llmd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_163

    nop

    :goto_1a
    if-eq v2, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :cond_2
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Llmd;->c()V

    :goto_1d
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v2, v2, Lnpl;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/high16 v8, 0x43b40000    # 360.0f

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v1, Llvo;->f:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_21
    check-cast v1, Llmd;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_22
    mul-float/2addr v1, v1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v2, Ljnq;

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_24
    const v10, 0x3f59999a    # 0.85f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_25
    cmpl-double v1, v1, v4

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_26
    aget v1, v1, v5

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-wide v5, v1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmpl-double v10, v10, v12

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, v2, Llmd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_2a
    aget v2, v2, v4

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-wide v2, v1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_2c
    aget v4, v4, v3

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :goto_2d
    iget-object v6, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_2e
    const v7, 0x3e19999a    # 0.15f

    nop

    goto/32 :goto_15b

    nop

    nop

    :goto_2f
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aget v4, v4, v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x17

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_33
    mul-float/2addr v6, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_34
    aget v3, v4, v3

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_36
    check-cast v0, Ljnq;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    :goto_38
    iget-wide v6, v4, Ljnq;->e:J

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    :goto_39
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v0, p0

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-wide v5, v2, Llmd;->w:J

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_3c
    aget v3, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_3d
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v5, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    move-object v10, v5

    nop

    nop

    nop

    nop

    check-cast v10, Llmd;

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v10, Llmd;->c:J

    nop

    const-wide/16 v14, 0x1

    nop

    nop

    add-long/2addr v14, v10

    nop

    nop

    move-object v6, v5

    nop

    nop

    nop

    check-cast v6, Llmd;

    nop

    iput-wide v14, v6, Llmd;->c:J

    nop

    nop

    nop

    nop

    nop

    long-to-int v6, v10

    nop

    nop

    nop

    rem-int/2addr v6, v9

    nop

    check-cast v5, Llmd;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Llmd;->b:[D

    nop

    aput-wide v3, v5, v6

    nop

    move-wide v3, v12

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    :goto_3e
    if-ge v6, v9, :cond_4

    nop

    nop

    nop

    nop

    nop

    aget-wide v10, v5, v6

    nop

    add-double/2addr v3, v10

    nop

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto :goto_3e

    nop

    nop

    nop

    :cond_4
    monitor-exit v2

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_153

    nop

    nop

    :goto_3f
    mul-float/2addr v3, v7

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-boolean v4, v2, Ljnq;->c:Z

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-float/2addr v2, v8

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_11

    nop

    nop

    :goto_43
    iget-object v0, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_44
    aget v2, v2, v6

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v8, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    mul-float/2addr v2, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_4a
    iget-boolean v4, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->J:Z

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_4b
    goto/16 :goto_f8

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4d
    if-ltz v10, :cond_5

    nop

    goto/32 :goto_c2

    nop

    :cond_5
    goto/32 :goto_c1

    nop

    nop

    :goto_4e
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-wide v11, v2, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->K:J

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_50
    iget-wide v5, v1, Llmd;->w:J

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_51
    cmp-long v4, v9, v7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_52
    invoke-virtual {v4, v6, v7, v5}, Lnpl;->a(FFF)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-boolean v3, v2, Ljnq;->c:Z

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v4, v2, Ljnq;->b:Lnpl;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_56
    aget v6, v6, v7

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_57
    iput-wide v4, v3, Llmd;->v:D

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_58
    mul-float/2addr v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v0, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5a
    check-cast v2, Llvm;

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_5b
    aget v7, v7, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    aget v6, v6, v7

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-wide v10, v2, Llmd;->v:D

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v6, Ljnq;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_63
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_64
    aget v7, v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-ltz v5, :cond_7

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_67
    add-float/2addr v2, v4

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_69
    float-to-double v3, v2

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_6a
    aget v3, v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    aget v6, v6, v5

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_6f
    sub-long/2addr v9, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_70
    float-to-double v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_71
    cmp-long v2, v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_72
    mul-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_73
    if-eq v2, v4, :cond_8

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v2, v2, Ljnq;->b:Lnpl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

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

    :goto_76
    if-ne v2, v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_78
    iget-object v1, v1, Llvo;->e:[F

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast v4, Llvo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v0, Ljnq;

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast v2, Llvo;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_7c
    sub-long/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const-wide v5, 0x3f8eb851e0000000L    # 0.014999999664723873

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_7e
    if-gtz v5, :cond_a

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    aget v4, v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_80
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_81
    return-void

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_83
    aput v6, v2, v4

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_84
    cmp-long v6, v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v2, v3, v1}, Lhze;->f(J[F)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    sub-float/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_88
    iget-object v2, v1, Llvo;->g:[F

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_89
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_8a
    iget-wide v3, v2, Llmd;->u:D

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-wide v14, v6, Llmd;->x:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_174

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-gtz v1, :cond_b

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    return-void

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_139

    nop

    nop

    :goto_90
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_91
    aget v4, v2, v3

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

    nop

    :goto_92
    add-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-gtz v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :cond_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_95
    add-float/2addr v3, v2

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v7, v7, Ljnq;->g:[F

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_97
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_98
    iput-wide v5, v2, Llmd;->w:J

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    :goto_99
    aput v4, v2, v5

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_9a
    iget-wide v8, v4, Ljnq;->e:J

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    aget v2, v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_9c
    mul-float/2addr v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast v2, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_a0
    if-eq v2, v3, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_14c

    nop

    nop

    :goto_a1
    iget-object v6, v6, Ljnq;->g:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_a2
    check-cast v3, Llmd;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_a3
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_a4
    add-float/2addr v2, v1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    move-object v1, v0

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-wide v10, v5, Llmd;->u:D

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_a7
    throw v0

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    mul-float/2addr v4, v6

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-direct {v5, v4, v3, v2}, Llvn;-><init>(FFF)V

    goto/32 :goto_150

    nop

    nop

    :goto_ab
    iget-object v0, v0, Ljnq;->d:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_ad
    invoke-interface {v4, v2}, Ljny;->a(Ljava/lang/Object;)V

    :goto_ae
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_af
    mul-float/2addr v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_b0
    check-cast v4, Ljnq;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v2, v2, Llvo;->e:[F

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_b2
    iget-object v4, v2, Ljnq;->b:Lnpl;

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    mul-float/2addr v3, v7

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget v9, v8, Lnpl;->a:F

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b5
    goto/16 :goto_176

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    check-cast v7, Ljnq;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b8
    if-lt v6, v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_126

    nop

    nop

    nop

    :goto_b9
    iget-object v4, v4, Llvo;->c:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_ba
    iget-object v1, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_bb
    return-void

    nop

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_ee

    nop

    nop

    :goto_bd
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_be
    iget-object v0, v0, Ljnq;->i:Liic;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_c0
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_c1
    add-float/2addr v4, v8

    nop

    :goto_c2
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    check-cast v2, Lhyj;

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :goto_c4
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v0, v2, v3, v4}, Liic;->c([FJ)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_c8
    return-void

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_ca
    float-to-double v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    aget v4, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_cc
    check-cast v0, Llmd;

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    aget v4, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    if-ne v2, v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d1
    iput-wide v2, v4, Ljnq;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_d2
    iget-wide v2, v1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d4
    aget v1, v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_d5
    if-lez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_162

    nop

    :goto_d6
    iget-object v1, v1, Llvo;->f:[F

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_d7
    aget v6, v6, v3

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    return-void

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_d9
    aget v3, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_da
    invoke-static {v2, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-object v0, v0, Ljnq;->i:Liic;

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_dc
    throw v0

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_de
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_3
    move-object v8, v2

    nop

    nop

    check-cast v8, Ljnq;

    nop

    nop

    nop

    nop

    iget-object v8, v8, Ljnq;->f:[F

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    aget v10, v8, v9

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    aget v11, v11, v9

    nop

    long-to-float v6, v6

    nop

    nop

    nop

    nop

    const v7, 0x3089705f    # 1.0E-9f

    nop

    nop

    nop

    nop

    mul-float/2addr v6, v7

    nop

    mul-float/2addr v11, v6

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v10, v11

    nop

    nop

    nop

    aput v10, v8, v9

    nop

    move-object v7, v2

    nop

    nop

    nop

    check-cast v7, Ljnq;

    nop

    nop

    nop

    nop

    iget-object v7, v7, Ljnq;->f:[F

    nop

    nop

    nop

    nop

    nop

    aget v8, v7, v3

    nop

    nop

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    aget v9, v9, v3

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v9, v6

    nop

    add-float/2addr v8, v9

    nop

    aput v8, v7, v3

    nop

    nop

    nop

    move-object v7, v2

    nop

    nop

    nop

    check-cast v7, Ljnq;

    nop

    iget-object v7, v7, Ljnq;->f:[F

    nop

    nop

    nop

    aget v8, v7, v5

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    aget v9, v9, v5

    nop

    nop

    mul-float/2addr v9, v6

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v8, v9

    nop

    nop

    nop

    nop

    nop

    aput v8, v7, v5

    nop

    nop

    nop

    nop

    nop

    move-object v5, v2

    nop

    nop

    nop

    nop

    check-cast v5, Ljnq;

    nop

    nop

    nop

    nop

    nop

    iget v5, v5, Ljnq;->h:I

    nop

    add-int/2addr v5, v3

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ljnq;

    nop

    nop

    iput v5, v3, Ljnq;->h:I

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    goto :goto_e5

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_e0
    goto/16 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_132

    nop

    nop

    :goto_e2
    iget-object v1, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    aget v6, v2, v4

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    throw v0

    nop

    :goto_e5
    goto/32 :goto_2b

    nop

    nop

    :goto_e6
    sub-double/2addr v3, v10

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_e7
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_11
    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_e8
    iput v3, v8, Lnpl;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-interface {v2, v5}, Llvm;->g(Llvn;)V

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_ea
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v1, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_ec
    iget-object v2, v1, Llvo;->g:[F

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_ef
    mul-float/2addr v3, v7

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object v6, v6, Ljnq;->g:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    :goto_f2
    add-float/2addr v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_f3
    iget-wide v6, v1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    return-void

    nop

    nop

    :goto_f5
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    check-cast v1, Llvo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iput-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->J:Z

    nop

    nop

    nop

    :goto_f8
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    return-void

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_fc
    iget-object v0, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_fd
    if-nez v2, :cond_12

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_fe
    aget v6, v6, v5

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_ff
    check-cast v7, Ljnq;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_101
    cmpg-float v10, v4, v9

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_102
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_103
    if-gtz v2, :cond_13

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    :cond_13
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_104
    iget-object v2, v2, Ljnq;->d:[F

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_105
    aget v4, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :goto_106
    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_107
    iput-wide v7, v2, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->K:J

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_108
    iput v2, v7, Ljnq;->l:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_109
    aget v2, v2, v6

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    check-cast v6, Llmd;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_10b
    mul-float/2addr v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_10c
    if-nez v4, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_ea

    nop

    nop

    :goto_10d
    aget v5, v8, v5

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    iget-wide v4, v3, Llmd;->u:D

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object v4, v2, Ljnq;->b:Lnpl;

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_110
    check-cast v1, Llvo;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_111
    mul-float/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_112
    check-cast v1, Llvo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_113
    if-eqz v4, :cond_15

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_114
    add-float/2addr v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_115
    invoke-virtual {v0, v2, v3, v4}, Liic;->d([FJ)V

    :goto_116
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    aput v1, v0, v5

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_118
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_119
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_11a
    if-ne v2, v9, :cond_16

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    :cond_16
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_11c
    iget-object v4, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    sub-float/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_11e
    if-eq v2, v4, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :cond_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11f
    iget-object v7, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_120
    mul-float/2addr v2, v2

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    aget v7, v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_123
    monitor-enter v1

    nop

    nop

    :try_start_4
    check-cast v0, Llvo;

    nop

    iget-object v0, v0, Llvo;->h:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

    nop

    nop

    monitor-exit v1

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_124
    cmpl-double v2, v3, v5

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-wide v9, v1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_127
    iput v6, v4, Lnpl;->a:F

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    iput-wide v4, v3, Llmd;->u:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_129
    check-cast v1, Llmd;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    const/4 v6, 0x0

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

    :goto_12b
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_12c
    iget v2, v0, Lhzb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_12d
    mul-float/2addr v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v0, v1}, Lhyj;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :goto_130
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_131
    check-cast v6, Ljnq;

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    move v3, v6

    nop

    nop

    :goto_133
    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    const-wide/high16 v4, 0x4004000000000000L    # 2.5

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

    :goto_135
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_136
    iget-object v7, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_137
    rem-float/2addr v4, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_138
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_139
    iget-object v0, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    check-cast v5, Llmd;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    add-float/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    move-object v4, v2

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_13d
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13e
    cmp-long v5, v5, v7

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_13f
    iget-object v2, v2, Ljnq;->d:[F

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    :goto_140
    aput v4, v2, v3

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

    :goto_141
    invoke-static {v1, v3, v9, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_142
    div-double/2addr v3, v5

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    const-wide/16 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_144
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_145
    const/4 v5, 0x2

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_146
    iget-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

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

    :goto_147
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_148
    if-eqz v10, :cond_18

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    if-nez v2, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_59

    nop

    nop

    :goto_14a
    check-cast v2, Llmd;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_14b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_14d
    check-cast v2, Ljnq;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_14e
    add-float/2addr v6, v9

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_14f
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_150
    iget-object v1, v1, Llvo;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_151
    aput v4, v2, v3

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_152
    const v7, 0x42652ee1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_153
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_154
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_155
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_156
    rem-float/2addr v2, v8

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_157
    iput-wide v12, v0, Llmd;->v:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    if-ne v2, v4, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    :cond_1a
    goto/32 :goto_154

    nop

    nop

    :goto_15a
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_15b
    mul-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15c
    aget v6, v6, v4

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    iget-object v3, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    if-eq v2, v4, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :cond_1b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    iput-wide v12, v0, Llmd;->u:D

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_160
    const-wide/16 v7, 0x32

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_161
    iget-object v7, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_162
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_163
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_164
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_165
    iget-wide v3, v1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_166
    iget-object v6, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_167
    mul-float/2addr v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_168
    iget-object v0, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_169
    iget-object v2, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_16a
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_16b
    sub-long/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_16c
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_16e
    iput-wide v5, v2, Llmd;->x:J

    nop

    nop

    nop

    nop

    :goto_16f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_170
    check-cast v0, Ljnq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_171
    aget v6, v6, v3

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

    :goto_172
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    :goto_174
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_175
    iput v3, v4, Lnpl;->c:F

    nop

    nop

    :goto_176
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_177
    iget-boolean v4, v2, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->z:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_178
    check-cast v0, Lhze;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_179
    invoke-virtual {v2}, Lhyj;->e()Z

    move-result v2

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_17a
    mul-float/2addr v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_17b
    iget-object v6, v0, Lhzb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_17c
    if-eqz v4, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_17d
    cmpg-float v5, v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_17e
    iput-wide v3, v5, Llmd;->u:D

    nop

    nop

    nop

    nop

    :goto_17f
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_180
    iget-object v4, v1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_181
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_182
    check-cast v2, Ljnq;

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_183
    aput v4, v2, v6

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop
.end method
