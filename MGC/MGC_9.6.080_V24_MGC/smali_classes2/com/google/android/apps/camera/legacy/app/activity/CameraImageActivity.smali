.class public Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;
.super Ljha;
.source "PG"


# instance fields
.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljha;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->s:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final isVoiceInteractionRoot()Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean p0, p0, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-super {p0}, Ljha;->isVoiceInteractionRoot()Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 31

    goto/32 :goto_7a

    nop

    nop

    :goto_0
    invoke-super/range {p0 .. p1}, Ljha;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/32 :goto_3e

    nop

    nop

    :goto_2
    new-instance v5, Ljhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v10, v1, Ljip;->M:Ltur;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v14, 0x1

    nop

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

    :goto_7
    move-object/from16 v16, v6

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

    nop

    nop

    :goto_8
    move-object/from16 v14, v30

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljip;->r()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_c
    move-object v6, v0

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v10, v1, Ljip;->iy:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljip;->s()Z

    move-result v3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v7, v2, v4}, Lmaf;-><init>(Ltxm;Ltxm;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Ljip;->a:Ljip;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v14 .. v29}, Lgoa;-><init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;I[I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Ltum;->d(Ltur;)Ltur;

    move-result-object v8

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v15, Ljhh;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_17
    check-cast v10, Lpiz;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v9, v1, Ljip;->n:Ltur;

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_19
    move-object v2, v13

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_1a
    move-object/from16 v23, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_20
    check-cast v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_21
    move-object v11, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_22
    invoke-direct/range {v4 .. v11}, Lmwi;-><init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;I[F)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v12, 0x0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_24
    invoke-virtual {v13, v1}, Liyi;->a(Landroid/content/Intent;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_26
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v12, Lrtm;

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

    :goto_28
    check-cast v8, Lmjv;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v11, Llyv;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v1, Ljip;->hS:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2b
    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->isVoiceInteractionRoot()Z

    move-result v2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v27, v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {}, Lhyq;->b()Lhoa;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v1, Ljip;->n:Ltur;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v13, v1, v3}, Liyi;->c(Landroid/content/Intent;Z)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, v0, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 p1, v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_33
    invoke-direct {v13, v3}, Lixi;-><init>(Lmhz;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-class v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_35
    const/4 v10, 0x6

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_36
    move-object/from16 v17, v7

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v6, v1, Ljip;->k:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_38
    invoke-virtual/range {p0 .. p0}, Ljha;->s()Lmhz;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v7, v1, Ljip;->h:Ltur;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v4, v1, Ljip;->M:Ltur;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v12, v1, Ljip;->i:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_3c
    invoke-static/range {v30 .. v30}, Ltum;->d(Ltur;)Ltur;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v15, v2}, Ljhh;-><init>(Lhon;)V

    goto/32 :goto_8e

    nop

    nop

    :goto_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v3, v1, Ljip;->k:Ltur;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_42
    new-instance v13, Lixi;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct/range {v4 .. v12}, Ljaf;-><init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;I[Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_44
    move-object v9, v0

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v30, Lgoa;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v2, Lhoa;->a:Lhoa;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_47
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_0
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_48
    iget-object v2, v1, Ljip;->iu:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v29, 0x0

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v13, v2}, Liyi;->d(Lnne;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_4c
    move-object/from16 v0, p0

    nop

    nop

    :goto_4d
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual/range {p0 .. p0}, Ljha;->r()Lhon;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v24, v12

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_51
    iget-object v3, v13, Liyi;->a:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_52
    move-object v10, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8a

    nop

    :goto_54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    :goto_55
    move-object v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object/from16 v20, v8

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_57
    new-instance v13, Liyi;

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

    :goto_58
    iget-object v0, v1, Ljip;->bT:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_59
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v0, p1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v11, v1, Ljip;->iz:Ltur;

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

    :goto_5c
    const/4 v11, 0x5

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5d
    invoke-static {v2}, Ltum;->d(Ltur;)Ltur;

    move-result-object v9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_5e
    move v2, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_59

    nop

    nop

    :goto_60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v7, Lmaf;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move-object v12, v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_63
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    :goto_64
    xor-int/2addr v3, v14

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

    :goto_65
    iget-object v2, v13, Liyi;->a:Landroid/app/Activity;

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

    nop

    nop

    :goto_66
    invoke-virtual {v1}, Ljip;->q()Z

    move-result v4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move-object v4, v0

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v13, v2, v1}, Liyi;->b(Lrss;Landroid/content/Intent;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_69
    new-instance v6, Liai;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_6a
    iget-object v0, v1, Ljip;->hR:Ltur;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_6c
    iget-object v14, v1, Ljip;->u:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6d
    invoke-direct {v5, v2}, Ljhg;-><init>(Lhon;)V

    goto/32 :goto_69

    nop

    nop

    :goto_6e
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/32 :goto_84

    nop

    nop

    :goto_6f
    const/high16 v2, 0x10000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_70
    invoke-direct/range {v2 .. v12}, Liyi;-><init>(ZZZLnch;Landroid/app/Activity;Lmjv;Lfdn;Lpiz;Llyv;Lrtm;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-static {v0}, Ltum;->d(Ltur;)Ltur;

    move-result-object v0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_72
    iget-object v0, v1, Ljip;->u:Ltur;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual/range {p0 .. p0}, Ljpy;->finish()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_76
    move-object v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_77
    new-instance v0, Lmwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    new-instance v0, Ljaf;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast v7, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const v0, 0x8

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

    :goto_7b
    move-object/from16 v22, v10

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, v1, Ljip;->bW:Ltur;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7d
    new-instance v2, Llvl;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7e
    iget-object v9, v1, Ljip;->ix:Ltur;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v2, v13, v0, v14, v3}, Llvl;-><init>(Ltxm;Ltxm;I[B)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_80
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object/from16 v0, p0

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

    :goto_82
    move-object/from16 v19, v4

    nop

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

    :goto_83
    move-object/from16 v18, v2

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_a0

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_4d

    nop

    nop

    :goto_87
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_88
    invoke-interface {v0}, Ltur;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v8, v1, Ljip;->iw:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move-object/from16 v21, v9

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v3, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v2, v1, Ljip;->gb:Ltur;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_8f
    const/16 v28, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_90
    new-instance v1, Landroid/content/Intent;

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

    :goto_91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->isVoiceInteractionRoot()Z

    goto/32 :goto_24

    nop

    nop

    :goto_92
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v0, v2}, Lhoa;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const-string v0, "gca_eng_fake_viroot"

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

    :goto_95
    move-object v5, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_96
    check-cast v9, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_97
    check-cast v6, Lnch;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_98
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_5
    :goto_99
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    move-object v7, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_9b
    iput-boolean v2, v0, Lcom/google/android/apps/camera/legacy/app/activity/CameraImageActivity;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9c
    move-object/from16 v26, v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9d
    const v1, 0x17

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_9e
    invoke-direct {v6, v3, v4}, Liai;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_a0
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_a1
    move-object v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_a2
    check-cast v2, Lnne;

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

    nop

    :goto_a3
    move-object/from16 v25, v14

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_a5
    iget-object v0, v1, Ljip;->M:Ltur;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_a6
    iget-object v4, v1, Ljip;->iv:Ltur;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a8
    const-class v2, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraVoiceActivity;

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

    nop

    nop
.end method
