.class final Lpkw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Lpra;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    const/16 v3, 0x237

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x0

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

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lpra;

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

    :goto_6
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

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

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lpkw;->b:Lpra;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop
.end method

.method public static a(Lpmm;Landroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    nop

    invoke-direct {v0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-static {p0, v0}, Lpkw;->b(Lpmm;Landroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const-string p0, "OutputConfigs"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "The illegal argument may be caused by invalid surface."

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static b(Lpmm;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpmm;->h:Lphj;

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

    :goto_1
    iget-object v0, p0, Lpmm;->f:Lpnx;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lpmm;->l()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->setStreamUseCase(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpmm;->h:Lphj;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    sget-object v2, Lpkw;->b:Lpra;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v2, v2, Lpra;->e:Z

    nop

    nop

    :try_start_1
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->setDynamicRangeProfile(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget v0, v0, Lphj;->k:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x10

    nop

    nop

    goto/32 :goto_b

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

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lpmm;->g:Z

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

    nop

    :goto_e
    iget-object v0, v0, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lpmm;->l()J

    move-result-wide v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_3
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;->addSensorPixelModeUsed(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmp-long v2, v0, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    iget-wide v0, v0, Lphj;->m:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_23

    nop

    nop

    :goto_18
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->ziuePiiVdJqa:Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_1d
    if-gez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    :goto_20
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_4

    nop

    goto/32 :goto_3

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmp-long v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method
