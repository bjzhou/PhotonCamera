.class public final Lkhg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhf;


# instance fields
.field private final a:Lpcu;

.field private final b:Lrss;

.field private final c:Ltud;

.field private final d:J

.field private final e:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

.field private final f:Ltbs;

.field private final g:Lrss;

.field private final h:Llss;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/HardwareBuffer;JLcom/google/googlex/gcam/ShotMetadata;)Lprw;
    .locals 7

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    or-long v4, v3, v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v3, p0, Lkhg;->d:J

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

    :goto_2
    new-instance p0, Lppm;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, p2, p3}, Lppm;-><init>(Landroid/hardware/HardwareBuffer;J)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_23

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Lppm;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/camera/moments/MomentsUtils;->allocateHardwareBuffer(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

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

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, p2, p3}, Lppm;-><init>(Landroid/hardware/HardwareBuffer;J)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, p2, p3}, Lppm;-><init>(Landroid/hardware/HardwareBuffer;J)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Lppm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

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

    :goto_11
    const-wide/16 v5, 0x300

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

    :goto_12
    iget-object p0, p0, Lkhg;->b:Lrss;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lltg;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    invoke-interface {p0, p1, v0, p4}, Lltg;->d(Landroid/hardware/HardwareBuffer;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lkhg;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lkhg;->b:Lrss;

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

    :goto_20
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    :goto_25
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_4

    nop

    :goto_27
    sget-object p4, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->abhXBBcO:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p0, Lppm;

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

    :goto_29
    invoke-direct {p0, p1, p2, p3}, Lppm;-><init>(Landroid/hardware/HardwareBuffer;J)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0, p4}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public constructor <init>(Lpcu;Lrss;Ltud;JLcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;Lrss;Llss;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iput-wide p4, p0, Lkhg;->d:J

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
    iput-object p1, p0, Lkhg;->a:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    iput-object v0, p0, Lkhg;->f:Ltbs;

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
    new-instance v0, Ltbs;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    iput-object p6, p0, Lkhg;->e:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const-string v0, "khg"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-interface {p1, v0}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

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

    :goto_7
    iput-object p7, p0, Lkhg;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lkhg;->c:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lkhg;->b:Lrss;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ltbs;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p8, p0, Lkhg;->h:Llss;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Lhws;Lprw;Lqwy;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;
    .locals 11

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p3, p1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    nop

    nop

    :try_start_0
    iget-object v3, p3, Lqwy;->c:Ljava/lang/Object;

    nop

    check-cast v3, Lsue;

    nop

    iget-object v3, v3, Lsue;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v7, v3

    nop

    check-cast v7, Lpro;

    nop

    nop

    iget-object v3, p0, Lkhg;->h:Llss;

    nop

    nop

    nop

    nop

    nop

    move-object v4, p2

    nop

    nop

    nop

    check-cast v4, Lppm;

    nop

    iget-wide v4, v4, Lppm;->a:J

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5}, Llss;->b(J)Llso;

    move-result-object v3

    nop

    new-instance v10, Lhwy;

    nop

    nop

    nop

    nop

    nop

    iget-object p3, p3, Lqwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v8

    nop

    invoke-static {p4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v9

    nop

    nop

    nop

    move-object v6, p3

    nop

    nop

    nop

    nop

    check-cast v6, Llyd;

    nop

    nop

    nop

    nop

    nop

    move-object v4, v10

    nop

    nop

    nop

    nop

    nop

    move-object v5, p2

    nop

    nop

    invoke-direct/range {v4 .. v9}, Lhwy;-><init>(Lprw;Llyd;Lpro;Lrss;Lrss;)V

    invoke-interface {p1, v10}, Lhws;->a(Lhwy;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lsui;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lhwr;

    nop

    nop

    nop

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v3, v1

    nop

    nop

    nop

    nop

    nop

    sget-object p4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {p3, v3, v4, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p3

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkhg;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ms"

    nop

    nop

    nop

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p3}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lhwr;->a()Lprw;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    return-object p2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lkhg;->a:Lpcu;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Post-processing - image transformer finished. Took "

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const-string p3, "Couldn\'t apply post-processing"

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

    :goto_e
    goto/32 :goto_1

    nop

    :goto_f
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lqwy;Lcom/google/googlex/gcam/YuvWriteView;Lprw;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;
    .locals 21

    goto/32 :goto_69

    nop

    nop

    :goto_0
    move-object v1, v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v9}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;-><init>(Lpck;IZZLpro;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v6, v0, Lkhg;->a:Lpcu;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_6
    check-cast v10, Lprv;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_7
    move v10, v7

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_9
    move-object/from16 v20, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v6}, Lprv;->getRowStride()I

    move-result v18

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_c
    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v9

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

    :goto_d
    move-object/from16 v3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v9, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    check-cast v6, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_11
    move-object v9, v10

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_12
    invoke-interface {v6}, Lprw;->b()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_14
    new-instance v6, Lppl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_15
    if-eqz v6, :cond_0

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

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v7, "No PD data, skipping blur."

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v6, v0, Lkhg;->a:Lpcu;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, v0, Lkhg;->c:Ltud;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    goto/32 :goto_4c

    nop

    nop

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/YuvWriteView;->b()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_1c
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1e
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v8

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    iget-object v6, v0, Lkhg;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_22
    check-cast v4, Lhws;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v8, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v2, Landroid/hardware/HardwareBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v10}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_26
    invoke-static/range {v9 .. v14}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v8

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v6, v0, Lkhg;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_28
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_29
    invoke-static {v8}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    :goto_2a
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2b
    invoke-interface/range {p3 .. p3}, Lprw;->d()J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v4}, Ltud;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v6, v8}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v6, v8}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static/range {v9 .. v20}, Lcom/google/android/apps/camera/moments/MomentsUtils;->yuv2hwyuv(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILandroid/hardware/HardwareBuffer;)J

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_30
    const/16 v11, 0x23

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_31
    const-string v8, "Unable to get RawWriteView from PD, skipping blur."

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move v11, v15

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v8

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

    :goto_34
    const-string v7, "Fast bokeh controller is absent, skipping blur."

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v6, Lprv;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_44

    nop

    :goto_37
    goto/16 :goto_58

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_39
    iget-object v6, v0, Lkhg;->f:Ltbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v8, 0x0

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_43

    nop

    :goto_3d
    invoke-virtual {v9}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->close()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v6, v6, Lppl;->b:Ljava/util/List;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->d()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_4d

    nop

    nop

    :goto_44
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v10, v8, v9}, Lpck;-><init>(II)V

    goto/32 :goto_91

    nop

    nop

    :goto_46
    invoke-interface {v10}, Lprv;->getPixelStride()I

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v6, Lkjn;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_49
    invoke-static/range {v8 .. v13}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_4a
    new-instance v14, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4b
    new-instance v10, Lpck;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_4c
    throw v1

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4e
    iget-object v6, v0, Lkhg;->g:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4f
    if-nez v8, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_50
    move-object v8, v14

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

    :goto_51
    const/4 v11, 0x1

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

    :goto_52
    const/4 v11, 0x1

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_53
    invoke-virtual {v8, v6, v2, v14, v3}, Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;->c(Lcom/google/googlex/gcam/RawWriteView;Lcom/google/googlex/gcam/YuvWriteView;Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthResult;Lcom/google/googlex/gcam/ShotMetadata;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v8, v0, Lkhg;->e:Lcom/google/android/apps/camera/dynamicdepth/DynamicDepthUtils;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v4, v1, Lqwy;->b:Ljava/lang/Object;

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

    :goto_56
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move-object v2, v8

    nop

    nop

    :goto_58
    goto/32 :goto_24

    nop

    nop

    :goto_59
    move-object/from16 v7, p3

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v6}, Lprv;->getPixelStride()I

    move-result v19

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_5e
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_60
    invoke-interface {v6}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object/from16 v7, p3

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_1a

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_63
    invoke-interface {v6}, Lprw;->c()I

    move-result v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v9, v6, Lppl;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_65
    invoke-direct {v0, v2, v4, v5, v3}, Lkhg;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/HardwareBuffer;JLcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {v6}, Lkjn;->a()Landroid/util/Pair;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_68
    const/4 v12, 0x1

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_69
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_6a
    if-eqz v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_5
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v8}, Lpcg;->ordinal()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_6c
    invoke-direct {v6, v2, v7, v8}, Lppl;-><init>(Lcom/google/googlex/gcam/YuvWriteView;J)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v9, Lprv;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface/range {p3 .. p3}, Lprw;->i()Z

    move-result v6

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_71
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-boolean v6, v1, Lqwy;->a:Z

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

    :goto_73
    invoke-interface {v10}, Lprv;->getRowStride()I

    move-result v15

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

    nop

    :goto_74
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v6, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_76
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_77
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_78
    invoke-interface {v9}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v6, v0, Lkhg;->a:Lpcu;

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

    :goto_7a
    invoke-direct {v0, v4, v2, v1, v3}, Lkhg;->da190e616797844b591057d0190e7728m(Lhws;Lprw;Lqwy;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7b
    move v9, v2

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_7c
    invoke-interface {v9}, Lprv;->getRowStride()I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/YuvWriteView;->a()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_80
    invoke-static/range {p2 .. p2}, Lsgj;->v(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v6, v7}, Ltbs;->a(Lprw;)Lrss;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_82
    if-eqz v6, :cond_6

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_2a

    nop

    :goto_84
    goto/32 :goto_27

    nop

    nop

    :goto_85
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_86
    const-wide/16 v12, 0x33

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_87
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_88
    invoke-interface {v6, v7}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_4

    nop

    nop

    :goto_8c
    new-instance v9, Lcom/google/googlex/gcam/LockedHardwareBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_8d
    const-wide/16 v10, 0x33

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v10, v6, Lppl;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_8f
    move v10, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_90
    const/4 v10, 0x3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_91
    sget-object v8, Lpcg;->a:Lpcg;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_92
    check-cast v4, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_93
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-interface {v9}, Lprv;->getPixelStride()I

    move-result v13

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_95
    sget-object v8, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->CIjFPUUdzFFSF:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_96
    invoke-direct {v9, v8, v10, v11}, Lcom/google/googlex/gcam/LockedHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;J)V

    :try_start_1
    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v6

    nop

    invoke-virtual {v9}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->b()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v10

    nop

    nop

    nop

    invoke-static {v6, v10}, Lcom/google/googlex/gcam/image/ImageUtils;->a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v6, v7}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const-wide/16 v13, 0x133

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lqwy;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p1, Lqwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2, v0, v1, p3}, Lkhg;->33f5b80483094659737b73d90f80a8a4m(Landroid/hardware/HardwareBuffer;JLcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Ljava/lang/Long;

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

    :goto_3
    check-cast v0, Lhws;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lkhg;->c:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, p2, p1, p3}, Lkhg;->da190e616797844b591057d0190e7728m(Lhws;Lprw;Lqwy;Lcom/google/googlex/gcam/ShotMetadata;)Lprw;

    move-result-object p0

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

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
