.class public Liim;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final n:Lsdb;


# instance fields
.field public a:Z

.field b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:F

.field public k:F

.field public l:Lj$/util/Optional;

.field public m:Lj$/util/Optional;

.field private final o:Lils;

.field private final p:Lijg;

.field private final q:Z

.field private final r:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_2
    sput-object v0, Liim;->n:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v0, "iim"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Lils;Lijg;Z)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Liim;->o:Lils;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Liim;->j:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p4, p0, Liim;->q:Z

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput-object p3, p0, Liim;->p:Lijg;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Liim;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iput v0, p0, Liim;->k:F

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

    :goto_9
    const/high16 v0, -0x40800000    # -1.0f

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

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_b
    iput-object p1, p0, Liim;->r:Lhoh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Liim;->l:Lj$/util/Optional;

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

    :goto_d
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    iput-object v0, p0, Liim;->m:Lj$/util/Optional;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/googlex/gcam/ShotParams;)Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;
    .locals 10

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_2f

    nop

    :goto_1
    goto/32 :goto_2e

    nop

    nop

    :goto_2
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    :cond_0
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_6
    invoke-virtual {v0, v5}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_2
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v1, p0, Liim;->a:Z

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :cond_4
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;-><init>()V

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_10
    const v2, 0x402b851f    # 2.68f

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_11
    sget-object v3, Lhnl;->a:Lhmo;

    nop

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

    nop

    :goto_12
    iget-boolean v5, p0, Liim;->c:Z

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_5
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_15
    invoke-static {v1, v2, v0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_cyclops_preferred_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    goto/32 :goto_d2

    nop

    nop

    :goto_16
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v5, v6, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_default_max_short_frames_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_eb

    nop

    nop

    :goto_1e
    iget-wide v5, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    invoke-virtual {v5}, Lj$/util/Optional;->isPresent()Z

    move-result v5

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean v1, p0, Liim;->a:Z

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_22
    if-nez v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_f8

    nop

    nop

    :goto_23
    sget-object v1, Lhmu;->a:Lhmo;

    nop

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

    :goto_24
    sget-object v3, Lhmu;->h:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_25
    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_cyclops_f_number_scale_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-wide v2, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v5, v6, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_default_min_short_frames_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    :goto_29
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-wide v2, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_8e

    nop

    :goto_2c
    goto/16 :goto_57

    nop

    :goto_2d
    goto/32 :goto_104

    nop

    nop

    :goto_2e
    move v3, v4

    nop

    nop

    :goto_2f
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-wide v2, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v1, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_shasta_zsl_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_36
    invoke-virtual {v1, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_37
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_38
    iget-boolean v5, p0, Liim;->d:Z

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v1}, Lcom/a;->zf(Z)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_3a
    iget-boolean v1, p0, Liim;->b:Z

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v3, v4, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_max_frame_count_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_3e
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v8, 0xc

    nop

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

    :goto_40
    sget-object v1, Lhls;->a:Lhmo;

    nop

    nop

    :goto_41
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v3, Lhmu;->f:Lhmo;

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_45
    iget-wide v2, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_48
    const v5, 0x45bb8000    # 6000.0f

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-boolean v1, p0, Liim;->b:Z

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const v5, 0x447a0000    # 1000.0f

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

    :goto_4b
    const v5, 0x4326aaab

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4c
    iget-boolean v1, p0, Liim;->q:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    long-to-float v1, v5

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-boolean v1, p0, Liim;->d:Z

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v6, Lijv;

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v5}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b(F)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v5, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0, v5}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    :goto_57
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v5, p0, Liim;->l:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_5a
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast v5, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-wide v1, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5d
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_5e
    return-object v0

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/high16 v1, 0x41000000    # 8.0f

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_61
    cmp-long v5, v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v5, v6, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_default_max_bracketing_frames_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    :goto_64
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v3, p0, Liim;->r:Lhoh;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-wide v5, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_67
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-boolean v5, p0, Liim;->e:Z

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

    nop

    :goto_6a
    if-eqz v5, :cond_d

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

    :cond_d
    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_6b
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_6c
    sget-object v1, Lcom/a;->camera_max_bracketing_frames:Lhmo;

    nop

    nop

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

    :goto_6d
    invoke-static {v5, v6, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_include_ultra_short_frame_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_6e
    sget-object v3, Lhmu;->aP:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_6f
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    :goto_70
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_71
    iget-boolean v1, p0, Liim;->c:Z

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v5, :cond_e

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_74
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-wide v5, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    nop

    :goto_77
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_78
    sget-object v3, Lhmu;->k:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-nez v1, :cond_f

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sget-object v3, Lhmu;->f:Lhmo;

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

    nop

    :goto_7b
    invoke-virtual {v5, v6, v7}, Lj$/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_7c
    check-cast v3, Ljava/lang/Integer;

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v1, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v1, -0x1

    nop

    nop

    :goto_80
    goto/32 :goto_138

    nop

    nop

    nop

    :goto_81
    invoke-static {v1, v2, v0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_cyclops_force_trigger_face_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_82
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_83
    invoke-virtual {v1, v3}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_84
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_89
    iget-boolean v4, p0, Liim;->c:Z

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

    :goto_8a
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_ee

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    if-nez v1, :cond_10

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

    :cond_10
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_5f

    nop

    nop

    :goto_8f
    goto/32 :goto_e5

    nop

    nop

    :goto_90
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b(F)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-boolean v1, p0, Liim;->f:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_95
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_97
    invoke-virtual {v1, v5}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_99
    iget-object v1, p0, Liim;->l:Lj$/util/Optional;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-nez v1, :cond_11

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v1, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_9d
    iget-object v3, p0, Liim;->r:Lhoh;

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_9e
    invoke-virtual {v1, v5}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9f
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    :goto_a1
    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_a2
    goto/16 :goto_80

    nop

    :goto_a3
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_a4
    invoke-static {v5, v6, p1, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_max_frame_count_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    :goto_a5
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-wide v5, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_a7
    if-eqz v1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :cond_12
    goto/32 :goto_133

    nop

    nop

    :goto_a8
    if-nez v1, :cond_13

    nop

    goto/32 :goto_122

    nop

    nop

    :cond_13
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_aa
    invoke-virtual {v1, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v0, v5}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b(F)V

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_80

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v0, v3}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    :goto_af
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v4, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    :cond_14
    :goto_b1
    goto/32 :goto_13a

    nop

    nop

    :goto_b2
    invoke-virtual {v1, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_b3
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_b4
    iget-wide v5, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v1, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v5, v6}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v5

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_b7
    sget-object v3, Lhmu;->i:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b8
    sget-object v3, Lhmu;->ad:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_b9
    sget-object v1, Lhml;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget v1, p0, Liim;->j:F

    nop

    nop

    .local v1, "j":F
    goto/32 :goto_134

    nop

    nop

    nop

    :goto_bb
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

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

    :goto_bc
    sget-object v3, Lhnl;->b:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_bd
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_be
    sget-object v1, Lcom/a;->camera_min_bracketing_frames:Lhmo;

    nop

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

    nop

    :goto_bf
    iget-boolean v1, p0, Liim;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_c0
    if-nez v1, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_67

    nop

    nop

    :goto_c1
    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_bento_max_shot_capture_time_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object v1, p0, Liim;->p:Lijg;

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v5, p0, Liim;->l:Lj$/util/Optional;

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

    nop

    :goto_c4
    iget-object v5, p0, Liim;->r:Lhoh;

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_exposure_time_override_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_141

    nop

    nop

    :goto_ca
    iget-wide v1, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_cb
    const/high16 v3, 0x42f00000    # 120.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-boolean v1, p0, Liim;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_cd
    if-nez p1, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_117

    nop

    nop

    :goto_ce
    invoke-virtual {v3, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_cf
    if-eqz v1, :cond_17

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    if-gtz v5, :cond_18

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_d1
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_d2
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_d4
    new-instance v7, Libm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_d5
    sget-object v1, Lhml;->m:Lhmn;

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v1, v5}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-static {v1, v2, v0, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_cyclops_max_shot_capture_time_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V

    goto/32 :goto_5e

    nop

    nop

    :goto_d9
    invoke-virtual {v0, v5}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->c(F)V

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_db
    invoke-static {v1, v2, v0, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_cyclops_force_trigger_full_frame_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_de
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_df
    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_gain_override_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    iget-boolean v1, p0, Liim;->h:Z

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_e1
    goto :goto_ea

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    if-ne v3, v5, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_19
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    new-instance v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-static {v5, v6, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_ultrashort_tet_factor_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_e7
    const/high16 v2, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    if-nez v1, :cond_1a

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const v5, 0x466a6000    # 15000.0f

    nop

    nop

    nop

    nop

    :goto_ea
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-boolean v4, p0, Liim;->d:Z

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v3}, Lj$/util/Optional;->isPresent()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_ed
    goto/16 :goto_12b

    nop

    :goto_ee
    goto/32 :goto_12a

    nop

    nop

    :goto_ef
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    const v3, 0x42855555

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_f1
    iget-boolean v3, p0, Liim;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v1, v3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_f3
    invoke-virtual {v1, v3}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v2, v3, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_recompute_ae_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    goto/32 :goto_e7

    nop

    nop

    :goto_f5
    iget-wide v5, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_f7
    if-eqz v1, :cond_1b

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v3, p0, Liim;->m:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_f9
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_fb
    if-eqz v1, :cond_1c

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    :goto_fc
    goto/32 :goto_9

    nop

    nop

    :goto_fd
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    goto/32 :goto_7f

    nop

    nop

    :goto_ff
    sget-object v5, Lcom/a;->camera_ultrashort_tet_factor:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_100
    iget-wide v2, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_101
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_102
    if-nez v1, :cond_1d

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    iget-boolean v5, p0, Liim;->f:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_105
    invoke-static {v5, v6, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_default_min_bracketing_frames_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    goto/32 :goto_6c

    nop

    nop

    :goto_106
    invoke-direct {v7, p0, v0, v8, v9}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_108
    sget-object v5, Lhnl;->f:Lhmn;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_109
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_10a
    mul-float/2addr v1, v5

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_10b
    const-string v5, "FRAME_COUNT_SET"

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_10d
    iget-wide v1, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_10e
    iget-object v1, p0, Liim;->l:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_10f
    sget-object v2, Lhml;->k:Lhmn;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-static {v5, v6, v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_max_frame_count_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    const/high16 v5, 0x44fa0000    # 2000.0f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_112
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v3, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_115
    iget-object p0, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v1, v5}, Lijg;->e(Lils;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iget-wide v5, p1, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_118
    iget-boolean v1, p0, Liim;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_119
    invoke-virtual {p0, v1}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    sget-object v5, Lhmu;->aV:Lhmn;

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

    nop

    :goto_11b
    if-nez v5, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_1e
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_11c
    iget v1, p0, Liim;->k:F

    nop

    .local v1, "k":F
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_120
    iget-boolean v1, p0, Liim;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_121
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    :goto_122
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_123
    goto/16 :goto_29

    nop

    :goto_124
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v5, p0, Liim;->o:Lils;

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b(F)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_127
    sget-object v6, Lhmu;->O:Lhmn;

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_128
    invoke-virtual {p0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_129
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_12a
    move v1, v3

    nop

    nop

    nop

    :goto_12b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-direct {v6, v0, v3}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_12d
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_12e
    if-nez v1, :cond_1f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_130
    sget-object v3, Lhmu;->h:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    iget-boolean v5, p0, Liim;->d:Z

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_132
    iget-wide v3, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

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

    :goto_133
    iget-boolean v1, p0, Liim;->i:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iget-wide v2, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_135
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    :goto_136
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v1, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_138
    iget-object v3, p0, Liim;->m:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    if-gtz v3, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    :cond_20
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    check-cast v1, Ljava/lang/Integer;

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

    :goto_13d
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_13e
    iget-boolean v1, p0, Liim;->a:Z

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_13f
    iget-object v1, p0, Liim;->r:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_141
    iget-boolean v1, p0, Liim;->h:Z

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

    :goto_142
    iget-wide v5, v0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_143
    if-nez v1, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop
.end method
