.class public final Ling;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field private final a:Lils;

.field private final b:Lijg;

.field private final c:Lsxx;

.field private final d:Liim;

.field private final e:Limf;

.field private final f:Loyd;

.field private final g:Z

.field private final h:Lhoh;


# direct methods
.method public constructor <init>(Lils;Lhoh;Lijg;Lsxx;Liim;Limf;Loyd;Z)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Ling;->h:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Ling;->c:Lsxx;

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

    :goto_2
    iput-object p5, p0, Ling;->d:Liim;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p7, p0, Ling;->f:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p8, p0, Ling;->g:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    iput-object p1, p0, Ling;->a:Lils;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p6, p0, Ling;->e:Limf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iput-object p3, p0, Ling;->b:Lijg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ling;->b()Lcom/google/googlex/gcam/ViewfinderProcessingOptions;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lcom/google/googlex/gcam/ViewfinderProcessingOptions;
    .locals 9

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v6}, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v1, v0, Liim;->m:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_motion_processing_method_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;I)V

    goto/32 :goto_23

    nop

    nop

    :goto_3
    sget-object v0, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1, v6, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_process_gyro_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

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

    :goto_7
    const v0, 0x1d

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1, v6, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_verbose_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, v6, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_compute_psaf_capture_time_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    iput-boolean v1, v0, Liim;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c
    iget-wide v1, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1, v6, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_save_motion_trace_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    goto/32 :goto_3c

    nop

    nop

    :goto_e
    iget-object v0, p0, Ling;->e:Limf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ling;->b:Lijg;

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

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3a

    nop

    :cond_0
    goto/32 :goto_39

    nop

    :goto_11
    iput-boolean v7, v0, Liim;->b:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

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

    :goto_13
    invoke-virtual {v0}, Loyu;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    iget-object v0, p0, Ling;->e:Limf;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Lime;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v1, v6, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_compute_payload_capture_time_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Ling;->c:Lsxx;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1a
    iget-boolean v0, p0, Ling;->g:Z

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Ling;->e:Limf;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p0}, Lijg;->e(Lils;)Z

    move-result p0

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

    :goto_1e
    invoke-virtual {v0}, Limf;->j()Z

    move-result v0

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    iget-wide v1, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_22
    move-object v2, v6

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_23
    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v2, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_will_capture_max_res_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;Z)V

    :goto_26
    goto/32 :goto_3

    nop

    nop

    :goto_27
    iget v0, v0, Lsxx;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Limf;->g()Z

    move-result v0

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
    iput-boolean v8, v0, Liim;->c:Z

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

    nop

    :goto_2a
    invoke-virtual {v0, v5}, Liim;->a(Lcom/google/googlex/gcam/ShotParams;)Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    move-result-object v5

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2b
    const v1, 0x12

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

    :goto_2c
    iget-object v0, p0, Ling;->d:Liim;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2d
    invoke-virtual {v1}, Limf;->l()Z

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Lime;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v3, v5, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Ling;->e:Limf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v8, 0x1

    nop

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

    :goto_35
    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_36
    iget-object v1, p0, Ling;->f:Loyd;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_37
    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Ling;->a:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3c
    return-object v6

    nop

    nop

    :goto_3d
    goto/32 :goto_2e

    nop

    nop

    :goto_3e
    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderProcessingOptions_burst_spec_options_set(JLcom/google/googlex/gcam/ViewfinderProcessingOptions;JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v1, Lime;->b:Lime;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_40
    iget-wide v0, v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    new-instance v6, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
