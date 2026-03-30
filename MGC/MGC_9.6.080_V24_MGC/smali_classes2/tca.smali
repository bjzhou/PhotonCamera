.class public final synthetic Ltca;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/googlex/gcam/base/function/IntByteArrayConsumer;


# instance fields
.field public final synthetic a:Lina;


# direct methods
.method public synthetic constructor <init>(Lina;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltca;->a:Lina;

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
.end method


# virtual methods
.method public final accept(I[B)V
    .locals 10

    goto/32 :goto_17

    nop

    nop

    :goto_0
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_55

    nop

    nop

    :goto_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lina;->h:Lhon;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Lscs;->b()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_7
    iget v5, p2, Ltct;->p:I

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lina;->h:Lhon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_b
    move v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v4, v5, v0, p2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lina;->c:Linb;

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

    :goto_e
    invoke-virtual {v2}, Lind;->n()Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_f
    iget-wide v0, v2, Lcom/google/googlex/gcam/JpgEncoderMetadata;->a:J

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lina;->c:Linb;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_11
    invoke-static {v5, v6, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->JpgEncoderMetadata_hardware_jpg_encoder_used_get(JLcom/google/googlex/gcam/JpgEncoderMetadata;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v4, "Error deserializing shot log data"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Lind;->h()Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2, v1}, Liof;->j(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v3, v0, Linb;->u:I

    nop

    :try_start_0
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v4, Ltct;->a:Ltct;

    nop

    nop

    nop

    nop

    array-length v5, p2

    nop

    nop

    nop

    invoke-static {v4, p2, v1, v5, v0}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object p2

    nop

    nop

    invoke-static {p2}, Ltkg;->E(Ltkg;)V

    check-cast p2, Ltct;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Lind;->l()Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x19

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

    :goto_18
    invoke-virtual {v2, v4, v3}, Linb;->e(II)V

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Linb;->t:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p2, Ltct;->e:Ltkl;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_1f
    move v0, v2

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v2, Linb;->t:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    iget v7, p0, Lina;->e:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Lina;->a:Lind;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, p1}, Lhon;->l(I)Ljava/util/List;

    move-result-object p1

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_96

    nop

    :catch_0
    move-exception p2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, p0, p2, v0}, Lilq;->do(Linb;Lmjq;Lscn;)V

    :goto_27
    goto/32 :goto_81

    nop

    nop

    :goto_28
    iget-object p1, p0, Lina;->f:Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_29
    add-int/lit8 v1, v1, 0x1

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

    :goto_2a
    if-eq v0, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v3, v5

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2e
    check-cast p2, Lscz;

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

    :goto_2f
    cmpl-float v2, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0, v1, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->JpgEncoderMetadata_hardware_jpg_encoder_requested_set(JLcom/google/googlex/gcam/JpgEncoderMetadata;Z)V

    goto/32 :goto_7c

    nop

    nop

    :goto_31
    iget-object p0, p0, Lina;->c:Linb;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v1, Lhoa;->d:Lhoa;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, v0, Linb;->t:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_34
    invoke-static {v5}, La;->N(I)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v0, Linb;->a:Lsdb;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Ltca;->a:Lina;

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

    :goto_37
    move v8, v4

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_39
    if-eqz v5, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3b
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_5
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3c
    const/16 v5, 0x67d

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p2, Linb;->a:Lsdb;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3e
    if-nez p2, :cond_6

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_3f
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v0, Linb;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_42
    iget v4, p0, Lina;->e:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_43
    iget-wide v5, v0, Lcom/google/googlex/gcam/JpgEncoderMetadata;->a:J

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_44
    move v9, v3

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v5}, La;->N(I)I

    move-result v5

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

    :goto_49
    add-int v0, v0, v1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4a
    const-string v1, "HDR+ pipeline completed"

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Lind;->m()Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_4c
    invoke-virtual {p2}, Lhon;->k()Lmjq;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v2, p2, Ltct;->e:Ltkl;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p2, p0, Lina;->b:Lhoa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v2}, Lind;->f()Lrss;

    move-result-object v2

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_51
    invoke-interface {v2, v1}, Ltkl;->d(I)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_40

    nop

    :goto_53
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_a7

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v0, Lscn;

    nop

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

    :goto_59
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v2}, Lind;->k()Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5b
    invoke-static {v4, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->JpgEncoderMetadata_hardware_jpg_encoder_requested_get(JLcom/google/googlex/gcam/JpgEncoderMetadata;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_5c
    iget v5, p2, Ltct;->o:I

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_5d
    invoke-interface {p1, v1}, Llxa;->H(Ljava/lang/String;)V

    :goto_5e
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_5f
    if-ne v2, v0, :cond_7

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_60
    iput-wide v1, p2, Lmjq;->c:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const/16 v1, 0x67c

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_62
    sget v0, Lcom/a;->aa:I

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

    nop

    :goto_63
    iget-object v1, p0, Lina;->c:Linb;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v5, :cond_8

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget v6, p0, Lina;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_67
    invoke-direct/range {v4 .. v9}, Lscn;-><init>(Ltct;IIII)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_68
    if-ne v2, v0, :cond_9

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

    :cond_9
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object p2, p0, Lina;->g:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_6a
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6b
    invoke-static {v0, v1, v2, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->JpgEncoderMetadata_hardware_jpg_encoder_used_set(JLcom/google/googlex/gcam/JpgEncoderMetadata;Z)V

    :goto_6c
    goto/32 :goto_35

    nop

    nop

    :goto_6d
    if-nez p1, :cond_a

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

    :cond_a
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_6e
    iget-object p1, p0, Lina;->a:Lind;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v2}, Ltkl;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_70
    invoke-virtual {v2, v4, v5}, Linb;->e(II)V

    :goto_71
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_72
    invoke-interface {p2, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    :goto_73
    if-eqz v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-ne p2, v1, :cond_c

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_69

    nop

    nop

    :goto_75
    const-string v1, "Black frame detected! Please immediately take and file a bug report."

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

    :goto_76
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_77
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_78
    const/4 v2, 0x1

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

    :goto_79
    iget-object v2, v2, Lina;->c:Linb;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7a
    const/4 v1, 0x0

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object p1, p0, Lina;->a:Lind;

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

    :goto_7c
    iget-wide v0, v2, Lcom/google/googlex/gcam/JpgEncoderMetadata;->a:J

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v2, p0, Lina;->c:Linb;

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

    :goto_7f
    if-eqz v4, :cond_d

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-boolean v2, p2, Ltct;->q:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_81
    return-void

    nop

    :goto_82
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    move-object v5, p2

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-wide v4, v0, Lcom/google/googlex/gcam/JpgEncoderMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v2, :cond_e

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_e
    :goto_86
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v2, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_f
    :goto_88
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_89
    move v5, v3

    nop

    :goto_8a
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_8b
    iget-boolean v2, p2, Ltct;->q:Z

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_8c
    if-lez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_10
    goto/32 :goto_45

    nop

    :goto_8d
    check-cast p1, Lilq;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8e
    iget-object v2, p0, Lina;->a:Lind;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8f
    iget-object v0, p0, Lina;->c:Linb;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_90
    if-lt v1, v2, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_11
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_91
    if-eqz v2, :cond_12

    nop

    goto/32 :goto_71

    nop

    :cond_12
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget v4, p0, Lina;->d:I

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_46

    nop

    :goto_94
    invoke-virtual {p1}, Lind;->m()Lrss;

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

    nop

    nop

    nop

    :goto_95
    sget-object p2, Ltct;->a:Ltct;

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_97
    iget-object v1, p2, Lmjq;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_98
    iget-object v2, p0, Lina;->c:Linb;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v2}, Lind;->g()Lrss;

    move-result-object v4

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_9c
    const-string v1, "Black frame detected"

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-nez v1, :cond_13

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_9e
    sget v1, Lcom/a;->aa:I

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

    :goto_9f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a0
    iget v0, v0, Linb;->u:I

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v0, p0, Lina;->c:Linb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_a4
    iget-object v1, v1, Linb;->s:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

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

    :goto_a6
    move v9, v4

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_66

    nop

    nop

    :goto_a8
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_a9
    if-eqz v4, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object p0, p0, Ltca;->a:Lina;

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_ab
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-interface {p2, v1}, Lscz;->M(I)Lsdo;

    move-result-object p2

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

    nop

    nop
.end method
