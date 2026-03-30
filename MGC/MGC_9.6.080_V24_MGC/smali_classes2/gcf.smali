.class public final Lgcf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lryh;

.field public static final b:Lryh;

.field private static final f:Lryh;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Lpdf;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltbh;->e:Ltbh;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lryd;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3
    sget-object v1, Ltbh;->J:Ltbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lryd;->b()Lryh;

    move-result-object v0

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

    :goto_5
    const-string v2, "all_in_film_blender.tflite.uncompressed"

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6
    const-string v2, "hoi_classifier_256x256_rgb_and_boxes.tflite.uncompressed"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_8
    new-instance v1, Lryd;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Lryd;->b()Lryh;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lgcf;->b:Lryh;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ltbh;->C:Ltbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v1, Ltbh;->k:Ltbh;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_10
    const-string v3, "fssd_custom-op.tflite.uncompressed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Ltbh;->f:Ltbh;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "raid_instance_segmenter_with_objects_no_people.tflite.uncompressed"

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_14
    invoke-virtual {v1, v0}, Lryd;->j(Ljava/util/Map;)V

    goto/32 :goto_60

    nop

    nop

    :goto_15
    invoke-direct {v1}, Lryd;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lgcf;->f:Lryh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    const-string v2, "hssd_large_8bit_4orient_v5.tflite.uncompressed"

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v1, Ltbh;->K:Ltbh;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_19
    const-string v3, "27f6d09d5d944709b6e46c0ed9524c08/27f6d09d5d944709b6e46c0ed9524c08.uncompressed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Ltbh;->M:Ltbh;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1d
    const-string v2, "raid_foreground_mosaic_512_qat.tflite.uncompressed"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v1, Ltbh;->I:Ltbh;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    const-string v3, "raid_person_segmenter_from_face_detection_with_occlusions-graph-custom_op.tflite.uncompressed"

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_0
    goto/32 :goto_52

    nop

    :goto_21
    const-string v2, "face_attributes_client_options.pb.uncompressed"

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_22
    new-instance v1, Lryd;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_23
    sget-object v1, Ltbh;->E:Ltbh;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_24
    invoke-virtual {v1, v0}, Lryd;->j(Ljava/util/Map;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_25
    sget-object v1, Ltbh;->B:Ltbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v2, "portrait_matting_mask_1024_768.tflite.uncompressed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_27
    const v1, 0x1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_28
    const-string v2, "people_depth_ordering.tflite.uncompressed"

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v2, "midasnet_mobilenetv2_dptmqn_dec256_sep_082421_384_384_fp16_opt.tflite.uncompressed"

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v2, "looknet_v2.1_float.tflite.uncompressed"

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

    :goto_2b
    const-string v2, "hssd_anchors_v5.pb.uncompressed"

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

    :goto_2c
    invoke-virtual {v1, v2, v3}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v2, v3}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v0, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2f
    sget-object v2, Ltbh;->p:Ltbh;

    nop

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

    :goto_30
    sget-object v1, Ltbh;->F:Ltbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_31
    sget-object v1, Ltbh;->H:Ltbh;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v2, "raid_person_segmenter_from_face_detection_with_occlusions.tflite.uncompressed"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    :goto_34
    sget-object v2, Ltbh;->D:Ltbh;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v2, "pssd_large_8bit_v2.300x300.tflite.uncompressed"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_39
    invoke-direct {v0}, Lryd;-><init>()V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3b
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v1, Ltbh;->j:Ltbh;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3d
    sget-object v0, Ltbh;->h:Ltbh;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3e
    sget-object v1, Ltbh;->y:Ltbh;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3f
    const-string v3, "5098e597cb4a4dd8a0827a2e7b3e2057/5098e597cb4a4dd8a0827a2e7b3e2057.uncompressed"

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, v2, v3}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_41
    sget-object v1, Ltbh;->G:Ltbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, v0, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v1, Ltbh;->l:Ltbh;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_44
    invoke-virtual {v1, v0, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v2, "movenet_label_map.binarypb.uncompressed"

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v2, "fusion_pwc_raft_super_1m_c1_s10_d2_8k_42130179_384x512_16f.uncompressed"

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

    :goto_47
    invoke-virtual {v1}, Lryd;->b()Lryh;

    move-result-object v0

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

    :goto_48
    sget-object v1, Ltbh;->g:Ltbh;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_49
    const-string v2, "matting_v2_768.f16.tflite.uncompressed"

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v2, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->oAZUics:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4c
    const-string v2, "movenet_256.tflite.uncompressed"

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4d
    sget-object v1, Ltbh;->x:Ltbh;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1, v2, v3}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1, v0, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_38

    nop

    nop

    :goto_53
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v2, "mobile_raid_v26_640_qat_u8_attached_objects_trained_no_post.tflite.uncompressed"

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

    :goto_55
    sget-object v2, Ltbh;->u:Ltbh;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, v0, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_57
    sput-object v1, Lgcf;->a:Lryh;

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

    :goto_58
    sget-object v0, Ltbh;->o:Ltbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_59
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5a
    const-string v2, "pssd_anchors_v2.pb.uncompressed"

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v2, Ltbh;->N:Ltbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v1}, Lryd;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5e
    sget-object v1, Ltbh;->i:Ltbh;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5f
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v2, Ltbh;->w:Ltbh;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v2, "shadow_segmenter.tflite.uncompressed"

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_63
    const-string v3, "matting_v2_768_custom-op.tflite.uncompressed"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_64
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0, v1, v2}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_66
    invoke-virtual {v1, v2, v3}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lpdf;Lhoh;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lhlw;->n:Lhmn;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgcf;->c:Landroid/content/Context;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3, p1}, Lhoh;->o(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lgcf;->d:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lgcf;->e:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
