.class public final Likd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;

.field private final d:Ltxm;

.field private final e:Ltxm;

.field private final f:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_6

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
    iput-object p5, p0, Likd;->e:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object p2, p0, Likd;->b:Ltxm;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iput-object p1, p0, Likd;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Likd;->d:Ltxm;

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

    :goto_5
    iput-object p6, p0, Likd;->f:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Likd;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 23

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v8, 0x0

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

    :goto_1
    new-instance v2, Lcom/google/googlex/gcam/FloatArray2;

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v2, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v3, v10, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_pecan_pie_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    :goto_5
    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_6
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    :goto_a
    goto/32 :goto_104

    nop

    nop

    nop

    :goto_b
    const-string v0, "bWVyZ2Vfa2V5"

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v8, v2, Lcom/google/googlex/gcam/FloatArray2;->a:J

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_d
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_e
    invoke-static {v1, v15}, Lijz;->c(Landroid/content/pm/PackageInfo;Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2, v15, v1, v14, v0}, Lijz;->d(Lsyi;Lcom/google/googlex/gcam/StaticMetadata;ILpnu;Lhoh;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v1

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v3, Lfdn;

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, v0, Likd;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Landroid/graphics/Rect;->getWidth()I

    move-result v6

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_15
    cmp-long v2, v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/StaticMetadata;->k(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_17
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_18
    if-nez v15, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v2, v11}, Lpnv;->h(Lpog;)Ljava/util/List;

    move-result-object v11

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-gez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_1
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/StaticMetadata;->q(I)V

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_1f
    sget v7, Lcom/a;->ae:I

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_16b

    nop

    :goto_23
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v14}, Lijz;->b(Lpnu;)Z

    move-result v15

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_9a

    nop

    nop

    :goto_26
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move/from16 v19, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_28
    iget-object v0, v0, Likd;->f:Ltxm;

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v7, Lsyi;->i:Lsyi;

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v13, v15}, Lcom/google/googlex/gcam/StaticMetadataVector;->c(Lcom/google/googlex/gcam/StaticMetadata;)V

    :goto_2c
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lt v11, v6, :cond_3

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_2e
    const/high16 v10, 0x41200000    # 10.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_2f
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_4
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-wide v2, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v1, Lhlx;->e:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v1, v6, :cond_5

    nop

    nop

    goto/32 :goto_aa

    nop

    :cond_5
    :goto_33
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/StaticMetadata;->l(I)V

    goto/32 :goto_69

    nop

    nop

    :goto_35
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

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

    :goto_36
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a7

    nop

    nop

    :goto_37
    div-float/2addr v2, v6

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v6}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->x(Lpnu;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v15

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_39
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/StaticMetadata;->s(F)V

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v15}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v1

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/StaticMetadata;->j(Lsxc;)V

    :try_start_0
    sget-object v1, Lcom/CameraLensSpecification;->MIb:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    invoke-interface {v14, v1}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3d
    move/from16 v19, v6

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    :cond_7
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_106

    nop

    nop

    :goto_41
    sget-object v10, Lsyi;->g:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    :goto_43
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_45
    move-object/from16 v19, v10

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v13, v1}, Lcom/google/googlex/gcam/StaticMetadataVector;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v1, v15}, Lijz;->c(Landroid/content/pm/PackageInfo;Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v1, v1, Lsxc;->k:I

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/StaticMetadata;->t(F)V

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_4a
    invoke-static {v1}, Lsxc;->a(I)Lsxc;

    move-result-object v1

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

    nop

    :goto_4b
    move-object/from16 v18, v2

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

    :goto_4c
    sget-object v2, Lhnl;->g:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_4d
    check-cast v10, Lcom/google/googlex/gcam/InitParams;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v0, v1, v2}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_50
    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v10, Lhnb;->a:Lhmo;

    nop

    nop

    :goto_52
    goto/32 :goto_1cc

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_6d

    nop

    nop

    :goto_55
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    :cond_8
    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_56
    iget-wide v11, v13, Lcom/google/googlex/gcam/StaticMetadataVector;->a:J

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    :goto_57
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_58
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_9
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-wide v2, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v7, Lsyi;->h:Lsyi;

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget v10, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v5}, Lpdf;->g()V

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-gez v0, :cond_a

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    :goto_61
    iget-object v1, v0, Likd;->a:Ltxm;

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v0, "bWVyZ2VfcHJvY2Vzc29yX2tleQ"

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-lt v9, v6, :cond_b

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_66
    aput-object v9, v8, v10

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_68
    if-nez v2, :cond_c

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_c
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/StaticMetadata;->k(I)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6a
    sget-object v6, Lsyi;->e:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-static {v13, v3}, Lijz;->a(Lcom/google/googlex/gcam/StaticMetadataVector;Lsxs;)F

    move-result v3

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_6d
    sget-object v1, Lhlx;->d:Lhmo;

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_6e
    const-string v7, "HalideRuntime.checkGcamHalideRuntime -> Failed"

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_70
    move-object/from16 v18, v2

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    :goto_71
    iget-wide v6, v2, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_72
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v7, v15, v1, v14, v0}, Lijz;->d(Lsyi;Lcom/google/googlex/gcam/StaticMetadata;ILpnu;Lhoh;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v1

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_74
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_77

    nop

    nop

    :catchall_0
    :goto_76
    :try_start_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v14, v1}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/util/Size;

    nop

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/StaticMetadata;->q(I)V

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    nop

    nop

    nop

    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/StaticMetadata;->p(I)V

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE_MAXIMUM_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v14, v6}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Landroid/graphics/Rect;

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->f()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    iget v10, v6, Landroid/graphics/Rect;->left:I

    nop

    nop

    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    iget v10, v6, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    iget v10, v6, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    invoke-virtual {v2, v7}, Lcom/google/googlex/gcam/StaticMetadata;->i(Lcom/google/googlex/gcam/PixelRect;)V

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    nop

    nop

    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/StaticMetadata;->l(I)V

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/StaticMetadata;->k(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_77
    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    :goto_78
    sget-object v6, Lhnl;->i:Lhmn;

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v2}, Lpbv;->b()Lpnv;

    move-result-object v2

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v5, v0, Likd;->e:Ltxm;

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move/from16 v6, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v4}, Ltuu;->b()Ljava/util/Set;

    move-result-object v4

    nop

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

    nop

    :goto_7d
    check-cast v6, Lscz;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1}, Landroid/graphics/Rect;->getHeight()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v2, v3, v10, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_spatial_merge_processor_error_fallback_set(JLcom/google/googlex/gcam/InitParams;Z)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const/high16 v10, 0x40600000    # 3.5f

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_82
    new-instance v0, Lijv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_83
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_84
    iget-object v3, v0, Likd;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_85
    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_86
    sget-object v2, Lhmu;->bp:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_87
    sget v7, Lcom/a;->af:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_88
    const-string v1, "Gcam"

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_89
    const-string v2, "Not all sensors are unique."

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_8a
    if-nez v6, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1ba

    nop

    nop

    nop

    :goto_8b
    check-cast v1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    sget-object v0, Lsxq;->a:Lsxq;

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

    nop

    :goto_8d
    const/4 v0, 0x1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_8e
    iget-wide v2, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    :goto_90
    goto/16 :goto_14c

    nop

    :goto_91
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v13, v1}, Lcom/google/googlex/gcam/StaticMetadataVector;->c(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_165

    nop

    nop

    nop

    :goto_93
    move-object/from16 v17, v1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v1, v3, Lfdn;->a:Ljava/lang/Object;

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

    nop

    :goto_95
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_96
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v6, v7}, Lscz;->s(Ljava/lang/String;)V

    :goto_98
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    :try_start_2
    invoke-virtual {v0}, Lcom/google/googlex/gcam/Gcam;->f()Z

    move-result v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_9c
    invoke-virtual {v0, v1}, Lhoh;->o(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9d
    move/from16 v19, v6

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

    :goto_9e
    sget-object v1, Lhni;->af:Lhmn;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-ne v7, v10, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    :cond_e
    goto/32 :goto_1af

    nop

    nop

    :goto_a0
    invoke-virtual {v2, v8, v3}, Lcom/google/googlex/gcam/FloatArray2;->b(IF)V

    goto/32 :goto_1b5

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sget-object v3, Lsxs;->b:Lsxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_a3
    goto/16 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_f8

    nop

    nop

    :goto_a5
    invoke-static {v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StandardToQuadBayerPattern(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_a6
    check-cast v0, Lhoh;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    sget-object v1, Lhlx;->c:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    sget-object v7, Lhnl;->h:Lhmn;

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/StaticMetadata;->s(F)V

    :goto_aa
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-wide v6, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    check-cast v10, Ljava/lang/Float;

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_ad
    if-eqz v7, :cond_f

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    :cond_f
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v6, v7, v2, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_ghawb_clut_control_enabled_set(JLcom/google/googlex/gcam/StaticMetadata;Z)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_af
    sget-object v6, Lijz;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-direct {v7, v15}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_b1
    sget-object v2, Lhmu;->ae:Lhmn;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    sget-object v6, Lsyi;->k:Lsyi;

    nop

    :goto_b3
    goto/32 :goto_a8

    nop

    nop

    :goto_b4
    const/4 v6, 0x1

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

    :goto_b5
    move-object v10, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    goto/32 :goto_192

    nop

    nop

    :goto_b7
    const-string v6, "custom.shading_map_enable"

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/StaticMetadata;->r(Lsyi;)V

    goto/32 :goto_1e2

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_bd
    const v1, 0x10

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v7, v2}, Lcom/google/googlex/gcam/StaticMetadata;->i(Lcom/google/googlex/gcam/PixelRect;)V

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_c0
    sget-object v2, Lhmu;->bf:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_c1
    invoke-static {v2, v3, v10, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_kepler_gan_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    :goto_c2
    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-ltz v10, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    :cond_10
    goto/32 :goto_143

    nop

    nop

    :goto_c4
    sget-object v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusAndroidInterface;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    new-instance v2, Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_c6
    if-nez v10, :cond_11

    nop

    goto/32 :goto_1b4

    nop

    nop

    :cond_11
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-ne v1, v6, :cond_12

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_12
    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    :goto_c8
    if-eqz v16, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iget-wide v8, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    goto/16 :goto_f9

    nop

    nop

    nop

    nop

    :goto_cc
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_cd
    if-ne v1, v2, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :cond_14
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/StaticMetadata;->l(I)V

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v2, v10}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d1
    move-wide/from16 v17, v6

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    if-nez v2, :cond_15

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_d3
    sget-object v1, Lhlx;->g:Lhmo;

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_d5
    if-nez v1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_1d5

    nop

    nop

    :goto_d6
    invoke-interface {v2, v15}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v2, v6, v3}, Lcom/google/googlex/gcam/FloatArray2;->b(IF)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v6, v6, Lpnt;->b:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    sget-object v2, Lsyi;->a:Lsyi;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_da
    invoke-static {v4, v0}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_db
    sget-object v7, Lsyi;->c:Lsyi;

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_dd
    move-object/from16 v2, v18

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_de
    move-object/from16 v17, v1

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    :goto_df
    if-eqz v7, :cond_17

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_e0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_e1
    goto/16 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    :goto_e3
    iget-wide v2, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/StaticMetadata;->p(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_e5
    check-cast v14, Lpnx;

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    if-eq v7, v10, :cond_18

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1f

    nop

    nop

    :goto_e8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v13, v2}, Lcom/google/googlex/gcam/StaticMetadataVector;->c(Lcom/google/googlex/gcam/StaticMetadata;)V

    :goto_ea
    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    if-nez v15, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    :cond_19
    goto/32 :goto_18a

    nop

    nop

    :goto_ec
    new-instance v2, Lcom/google/googlex/gcam/StaticMetadata;

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

    nop

    :goto_ed
    iget v10, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-static {v6}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    :goto_ef
    invoke-static {v2, v3, v10, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_ml_walnut_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    :goto_f0
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    check-cast v6, Lpnt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_f2
    if-eqz v16, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v1, :cond_1b

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_f4
    sget-object v2, Lsyi;->d:Lsyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_f5
    move-object/from16 v17, v1

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {v13, v1}, Lcom/google/googlex/gcam/StaticMetadataVector;->c(Lcom/google/googlex/gcam/StaticMetadata;)V

    :goto_f7
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    const/4 v0, 0x1

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_144

    nop

    nop

    :goto_fa
    if-nez v6, :cond_1c

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_fb
    if-nez v2, :cond_1d

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_133

    nop

    nop

    nop

    :goto_fc
    check-cast v1, Ljava/lang/Integer;

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_fd
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    if-eqz v2, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_1e
    goto/32 :goto_1a6

    nop

    nop

    :goto_ff
    invoke-virtual {v1}, Lcom/google/googlex/gcam/StaticMetadata;->b()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    move-object/from16 v17, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_101
    sget-object v2, Lhmu;->aX:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    :goto_102
    move-object/from16 v18, v2

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1a5

    nop

    nop

    :goto_106
    iget-wide v2, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_107
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v1}, Landroid/graphics/Rect;->getHeight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_109
    if-eq v1, v2, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_1f
    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_10a
    sget-object v1, Lhnl;->i:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_10b
    invoke-static {v2, v3, v10, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_spatial_merge_processor_type_set(JLcom/google/googlex/gcam/InitParams;I)V

    :goto_10c
    goto/32 :goto_30

    nop

    nop

    :goto_10d
    new-instance v7, Lcom/google/googlex/gcam/StaticMetadata;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {v2, v7}, Lcom/google/googlex/gcam/StaticMetadata;->i(Lcom/google/googlex/gcam/PixelRect;)V

    goto/32 :goto_14

    nop

    nop

    :goto_110
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_111
    sget-object v2, Lsyi;->k:Lsyi;

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v6}, Lscs;->b()Lsdo;

    move-result-object v6

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->b()F

    move-result v1

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :goto_114
    if-nez v2, :cond_20

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_115
    aput-object v9, v8, v7

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    :goto_116
    sget-object v9, Lpog;->b:Lpog;

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

    :goto_117
    iget v0, v0, Lsxq;->b:I

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_118
    check-cast v1, Lnpf;

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_119
    if-nez v0, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    :cond_21
    goto/32 :goto_62

    nop

    nop

    :goto_11a
    invoke-static {v0}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v0

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_11b
    invoke-interface {v2, v14}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v14

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11c
    const/4 v8, 0x0

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-direct {v2, v15}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v0, v10}, Lhoh;->p(Lhmn;)Z

    move-result v10

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

    :goto_11f
    goto/16 :goto_1eb

    nop

    nop

    :goto_120
    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    invoke-static {}, Lcom/google/googlex/gcam/hdrplus/HalideRuntime;->checkGcamHalideRuntime()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    :goto_122
    cmpl-float v1, v1, v10

    nop

    nop

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

    :goto_123
    iget-wide v2, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    check-cast v2, Lpbv;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_126
    sget-object v2, Lsyi;->b:Lsyi;

    nop

    nop

    nop

    nop

    nop

    :goto_127
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_128
    invoke-virtual {v15}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v7

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->f()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v7

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-interface {v5, v6}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-interface {v14}, Lpnu;->u()Ljava/util/List;

    move-result-object v10

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_12d
    sget-object v2, Lhmu;->bo:Lhmn;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_12e
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    :goto_12f
    iget-wide v6, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_132
    invoke-direct {v2}, Lcom/google/googlex/gcam/FloatArray2;-><init>()V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_133
    iget-wide v2, v10, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_134
    goto/16 :goto_16b

    nop

    :goto_135
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :catchall_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_137
    new-instance v12, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_138
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_139
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-virtual {v1}, Landroid/graphics/Rect;->getWidth()I

    move-result v6

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

    :goto_13b
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_13c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

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

    :goto_13e
    goto/16 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    goto/32 :goto_126

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v13}, Lcom/google/googlex/gcam/StaticMetadataVector;->a()J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    :goto_141
    sget-object v2, Lhmu;->ah:Lhmn;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_143
    sget-object v1, Lhlx;->c:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_144
    const-string v2, "MERGE_RPOCESSOR_SET"

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

    nop

    :goto_145
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_146
    invoke-virtual {v1}, Lnpf;->b()Landroid/content/pm/PackageInfo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_147
    invoke-virtual {v7, v1}, Lcom/google/googlex/gcam/StaticMetadata;->q(I)V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_148
    invoke-static {v13, v3}, Lijz;->a(Lcom/google/googlex/gcam/StaticMetadataVector;Lsxs;)F

    move-result v3

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_149
    if-eqz v6, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_154

    nop

    nop

    nop

    :goto_14a
    invoke-static {v14}, Lcom/a;->e(Ljava/lang/Object;)V

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    :goto_14b
    move v11, v10

    nop

    nop

    nop

    :goto_14c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_14d
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14e
    sget v0, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_14f
    move-object/from16 v18, v2

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_151
    sget v6, Lsyr;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_152
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_153
    if-eqz v15, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_154
    invoke-static {}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusAndroidInterface;->staticInitializeNative()V

    :goto_155
    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_156
    sget-object v7, Lhmu;->ap:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v1}, Lcom/google/googlex/gcam/StaticMetadata;->a()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_158
    if-nez v15, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    :cond_24
    goto/32 :goto_12c

    nop

    nop

    :goto_159
    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/Gcam;-><init>(J)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_15b
    if-eq v1, v6, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_15c
    const-string v6, "Gcam#provide"

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    sget-object v10, Lhlx;->e:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    if-ltz v2, :cond_26

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    goto/16 :goto_ea

    nop

    nop

    nop

    :goto_160
    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_161
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    :goto_162
    goto/32 :goto_1cd

    nop

    nop

    :goto_163
    move-object/from16 v22, v2

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_164
    invoke-static/range {v8 .. v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_Create(JLcom/google/googlex/gcam/InitParams;JLcom/google/googlex/gcam/StaticMetadataVector;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_165
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :goto_166
    goto/32 :goto_100

    nop

    nop

    :goto_167
    sget-object v10, Lsyi;->k:Lsyi;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    int-to-long v8, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_169
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16a
    sget-object v1, Lsyi;->a:Lsyi;

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    goto/32 :goto_d9

    nop

    nop

    :goto_16c
    goto/16 :goto_b3

    nop

    nop

    nop

    :goto_16d
    goto/32 :goto_b2

    nop

    nop

    :goto_16e
    move-object/from16 v18, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_16f
    sget-object v2, Lsyi;->o:Lsyi;

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

    :goto_170
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_161

    nop

    nop

    :goto_171
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_172
    goto/16 :goto_188

    nop

    nop

    nop

    :goto_173
    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_174
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    check-cast v10, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_176
    new-array v8, v6, [Lpog;

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_177
    check-cast v15, Lpnx;

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_179
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    :goto_17a
    invoke-virtual {v0, v7}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    :goto_17b
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_17c
    add-float/2addr v1, v1

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_17d
    sget-object v10, Lhmq;->ae:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_17e
    sget-object v6, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_17f
    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_180
    if-nez v2, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_181
    iget v10, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_182
    sget-object v1, Lsyi;->e:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_183
    if-eqz v1, :cond_28

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_184
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_185
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_186
    invoke-direct {v2}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    goto/32 :goto_9d

    nop

    nop

    :goto_187
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    :goto_188
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_189
    if-nez v0, :cond_29

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_18a
    iget-object v6, v15, Lpnx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    invoke-static/range {v17 .. v22}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_reference_focal_length_35mm_set(JLcom/google/googlex/gcam/InitParams;JLcom/google/googlex/gcam/FloatArray2;)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    sget-object v2, Lhmu;->aZ:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_18d
    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    :goto_18f
    invoke-virtual {v2, v1}, Lcom/google/googlex/gcam/StaticMetadata;->t(F)V

    goto/32 :goto_1e7

    nop

    nop

    :goto_190
    invoke-static {v2, v3, v10, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_pecan_light_model_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    :goto_191
    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_192
    add-int/2addr v10, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_193
    if-nez v0, :cond_2a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_194
    invoke-virtual {v13, v15}, Lcom/google/googlex/gcam/StaticMetadataVector;->c(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_195
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_196
    cmpg-float v10, v1, v10

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_197
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    :goto_198
    if-nez v2, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_86

    nop

    nop

    :goto_199
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_19a
    invoke-static {v6}, Lijz;->b(Lpnu;)Z

    move-result v15

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_19b
    check-cast v5, Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19c
    invoke-static {v6, v7, v10, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_portrait_brightening_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_19d
    sget-object v7, Lsyi;->l:Lsyi;

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    div-float/2addr v2, v6

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_19f
    if-lez v0, :cond_2c

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_b8

    nop

    :goto_1a0
    new-instance v13, Lcom/google/googlex/gcam/StaticMetadataVector;

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    :goto_1a1
    invoke-virtual {v10}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    invoke-static {v14}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->x(Lpnu;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v15

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

    :goto_1a3
    sget-object v1, Lsyi;->j:Lsyi;

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

    nop

    :goto_1a4
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_1a5
    iget-object v4, v0, Likd;->d:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a7
    sget-object v2, Lhmu;->bg:Lhmn;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    check-cast v15, Lpnx;

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    sget-object v1, Lsyi;->n:Lsyi;

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    sget-object v6, Lsyi;->n:Lsyi;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1ab
    if-eq v1, v7, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2d
    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_1ac
    invoke-virtual {v2, v6}, Lcom/google/googlex/gcam/StaticMetadata;->p(I)V

    goto/32 :goto_129

    nop

    nop

    :goto_1ad
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    sget-object v1, Lhnl;->c:Lhmn;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    sget-object v10, Lsyi;->b:Lsyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    sget-object v9, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b2
    if-nez v6, :cond_2e

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_1b3
    goto/16 :goto_5b

    nop

    nop

    nop

    :goto_1b4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    sget-object v3, Lsxs;->c:Lsxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_1b6
    check-cast v4, Ltuu;

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

    :goto_1b7
    move-wide/from16 v20, v8

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    if-nez v15, :cond_2f

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_1b9
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    :goto_1ba
    sget-object v6, Lsyi;->m:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    sget-object v1, Lhnl;->g:Lhmn;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    move/from16 v19, v6

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    :goto_1bd
    aget-object v11, v8, v9

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

    nop

    :goto_1be
    if-ne v7, v10, :cond_30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    :cond_30
    goto/32 :goto_167

    nop

    nop

    :goto_1bf
    invoke-virtual {v0, v7}, Lhoh;->o(Lhmn;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    if-eqz v6, :cond_31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    :cond_31
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_1c1
    invoke-static {v2, v3, v10, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_lancet_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    :goto_1c2
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c3
    goto/16 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_1c5
    if-eq v7, v10, :cond_32

    nop

    goto/32 :goto_52

    nop

    :cond_32
    :goto_1c6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    goto/16 :goto_162

    nop

    nop

    nop

    :goto_1c8
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    if-nez v7, :cond_33

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_1cb
    invoke-static {v6}, Lcom/a;->e(Ljava/lang/Object;)V

    goto/32 :goto_38

    nop

    nop

    :goto_1cc
    sget-object v10, Lsyi;->k:Lsyi;

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_1cd
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_1ce
    add-float/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cf
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    goto/16 :goto_1de

    nop

    nop

    nop

    :goto_1d1
    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    invoke-static {v0}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1d3
    if-ne v1, v6, :cond_34

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_34
    :goto_1d4
    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_1d5
    invoke-virtual {v15}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    invoke-virtual {v0, v6}, Lhoh;->p(Lhmn;)Z

    move-result v6

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

    :goto_1d7
    const/16 v7, 0x630

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_1d8
    invoke-direct {v13}, Lcom/google/googlex/gcam/StaticMetadataVector;-><init>()V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1d9
    new-instance v2, Lcom/google/googlex/gcam/PixelRect;

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    if-eqz v6, :cond_35

    nop

    nop

    goto/32 :goto_155

    nop

    :cond_35
    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    :goto_1db
    sget-object v2, Lhmu;->ba:Lhmn;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dc
    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    :goto_1dd
    move v9, v10

    nop

    :goto_1de
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    invoke-virtual {v7, v10}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_1e0
    if-nez v1, :cond_36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    move-object/from16 v1, v17

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_1e2
    invoke-virtual {v15}, Lcom/google/googlex/gcam/StaticMetadata;->d()Lsxc;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1e3
    sget-object v6, Lsyi;->j:Lsyi;

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

    :goto_1e4
    invoke-static {v2, v3, v10, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_finish_pecan_enabled_set(JLcom/google/googlex/gcam/InitParams;Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e5
    if-nez v7, :cond_37

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_29

    nop

    nop

    :goto_1e6
    invoke-interface {v5}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    invoke-virtual {v2}, Lcom/google/googlex/gcam/StaticMetadata;->a()F

    move-result v1

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_1e8
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1e9
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    sget-object v7, Lsyi;->g:Lsyi;

    nop

    nop

    nop

    :goto_1eb
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_1ec
    invoke-virtual {v0, v10}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    if-eq v1, v2, :cond_38

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_1ee
    sget v6, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop
.end method
