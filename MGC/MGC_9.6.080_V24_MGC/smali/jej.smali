.class public final synthetic Ljej;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgv;


# instance fields
.field public final synthetic a:Ljel;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljel;Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljej;->a:Ljel;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-boolean p2, p0, Ljej;->b:Z

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

    nop
.end method


# virtual methods
.method public final a(Lpge;)V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget-boolean p0, p0, Ljej;->b:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ljej;->a:Ljel;

    nop

    :try_start_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    iget-object p0, v0, Ljel;->g:Ljfn;

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Ljfn;->e(Lpge;)V

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    :goto_e
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object p0

    nop

    if-eqz p0, :cond_4

    nop

    nop

    nop

    iget-object v1, v0, Ljel;->e:Lpdf;

    nop

    const-string v2, "MotionBlurVf#wrapFrame"

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, v0, Ljel;->c:Llgc;

    nop

    nop

    nop

    new-instance v2, Loel;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1, p1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Ljel;->e:Lpdf;

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/String;

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpro;->b()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    if-eqz v1, :cond_4

    nop

    nop

    invoke-static {v1}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v1

    nop

    iget-object v3, v0, Ljel;->e:Lpdf;

    nop

    const-string v4, "MotionBlurVf#getGyroSampleVector"

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, v0, Ljel;->e:Lpdf;

    nop

    nop

    const-string v4, "MotionBlurVf#convertToGcamFrameMetadata"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v3, v0, Ljel;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p0, v4, v4, v1}, Ltbt;->w(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p0

    nop

    nop

    nop

    iget-object v1, v0, Ljel;->e:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    iget-object v1, v0, Ljel;->b:Ljfy;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Loel;->j()Lprw;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, p0}, Ljfy;->c(Lprw;Lcom/google/googlex/gcam/FrameMetadata;)V

    :cond_4
    :goto_f
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
