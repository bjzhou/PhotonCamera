.class public final Lkse;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkru;


# instance fields
.field final synthetic a:Lgvg;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lgvg;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lkse;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkse;->a:Lgvg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Lgvg;I[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lkse;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkse;->a:Lgvg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lkrv;)Lksf;
    .locals 17

    goto/32 :goto_45

    nop

    nop

    :goto_0
    sget-object v8, Lkrx;->a:Lkrx;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1
    check-cast v0, Lpoh;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_2
    filled-new-array {v2}, [Ljava/lang/Integer;

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

    :goto_3
    invoke-static {v5, v6, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v11}, Lhdn;->v()Z

    move-result v5

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

    :goto_5
    invoke-virtual {v0, v1}, Lgvg;->x(Lkrv;)Lhdn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_70

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lgvg;->x(Lkrv;)Lhdn;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8
    sget-object v8, Lkrx;->d:Lkrx;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_9
    const-string v6, "limited or full"

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_a
    invoke-virtual {v11, v12}, Lhdn;->y([Ljava/lang/Integer;)Z

    move-result v12

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v3, "hw_jpeg, sw_jpeg, reprocessing"

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_c
    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lksf;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v5, "edge"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lhdn;->t()Z

    move-result v0

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const-class v12, Ljava/lang/Integer;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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

    nop

    nop

    :goto_15
    const-string v7, "flash fired"

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

    :goto_16
    sget-object v6, Lkrx;->b:Lkrx;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v11, v6}, Lhdn;->x([Lkrx;)Z

    move-result v6

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4}, Lgvg;->y()Lgvg;

    move-result-object v4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lksf;

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

    nop

    :goto_1b
    check-cast v6, Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_1c
    new-array v2, v10, [Lkrx;

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

    :goto_1d
    invoke-static {v5, v4, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_69

    nop

    nop

    :goto_20
    invoke-static {v4, v0, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v6, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_80

    nop

    nop

    :goto_22
    invoke-static {v8, v6, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v2, v10, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_24
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

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

    :goto_25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9c

    nop

    nop

    :goto_26
    const-string v2, "aberration"

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v2, v1}, Lksf;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_28
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_29
    const/4 v3, 0x2

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Lkse;->a:Lgvg;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_2b
    iget v2, v0, Lkse;->b:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    aput-object v6, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lkse;->a:Lgvg;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v0, Lkse;->a:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v11, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_31
    aput-object v6, v2, v10

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_32
    new-instance v0, Lksf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_33
    return-object v0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2a

    nop

    nop

    :goto_35
    aput-object v8, v6, v9

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

    :goto_36
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v4, Lgvg;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_38
    const-string v5, "af converged"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Lhdn;->s()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v0, v2, v1}, Lksf;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v6, v11, Lhdn;->c:Ljava/lang/Object;

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

    :goto_3d
    invoke-virtual {v4, v5, v6}, Lgvg;->v(Landroid/hardware/camera2/CaptureResult$Key;[Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    filled-new-array {v2, v7, v12}, [Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v6, Lkrx;->d:Lkrx;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_40
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_41
    invoke-static {v2, v0, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    :goto_42
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_43
    invoke-static {v3, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v8, "hw jpeg, sw jpeg, reprocessing"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_47
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_48
    filled-new-array {v2, v3}, [Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_49
    sget-object v6, Lkrx;->a:Lkrx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_4a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4b
    aput-object v3, v2, v9

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

    :goto_4c
    array-length v0, v0

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object v8, Lkrx;->b:Lkrx;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0}, Lhdn;->t()Z

    move-result v2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v7, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_55
    invoke-virtual {v0, v2}, Lhdn;->y([Ljava/lang/Integer;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v7, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_57
    const-string v2, "flash"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v0, [I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v2, v0, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_32

    nop

    nop

    :goto_5a
    invoke-virtual {v0, v2}, Lhdn;->y([Ljava/lang/Integer;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v6, v8, v7}, Lgvg;->u(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5c
    return-object v0

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const-string v7, "single image"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5f
    return-object v0

    nop

    nop

    :goto_60
    goto/32 :goto_7e

    nop

    nop

    :goto_61
    const-string v2, "npf reprocessing"

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v3, "processing method"

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-ne v2, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v6, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_66
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_67
    sget-object v3, Lkrx;->c:Lkrx;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_68
    invoke-static {v7, v6, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_86

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Lhdn;->u()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    aput-object v6, v2, v9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6b
    const/4 v7, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_6c
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_6d
    invoke-direct {v0, v2, v1}, Lksf;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, v1}, Lgvg;->x(Lkrv;)Lhdn;

    move-result-object v11

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

    :goto_6f
    invoke-virtual {v0, v2}, Lhdn;->y([Ljava/lang/Integer;)Z

    move-result v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_60

    nop

    :goto_71
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const/4 v8, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_73
    return-object v0

    nop

    nop

    :goto_74
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v11}, Lhdn;->u()Z

    move-result v2

    nop

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

    :goto_76
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_77
    const-string v2, "regular"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0}, Lhdn;->v()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v7, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_7a
    invoke-static {v5, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual/range {v11 .. v16}, Lhdn;->w(Ljava/lang/Class;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    filled-new-array {v3, v6, v14, v7, v8}, [Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_7f
    const-string v11, "flash off"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_80
    new-array v2, v8, [Lkrx;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_81
    aput-object v8, v6, v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_83
    invoke-virtual {v6}, Lgvg;->y()Lgvg;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_84
    invoke-static {v2, v3}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v15

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_85
    invoke-direct {v0, v2, v1}, Lksf;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v11}, Lhdn;->s()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_87
    invoke-static {v6, v12, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_88
    const-string v4, "noise reduction"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    new-instance v0, Lksf;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_8b
    invoke-static {v3, v2, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8c
    iget-object v0, v0, Lkse;->a:Lgvg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8d
    sget-object v13, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v2, v3}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v16

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8f
    if-gt v0, v10, :cond_4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_4
    goto/32 :goto_8d

    nop

    nop

    :goto_90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0, v4}, Lpoh;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    aput-object v8, v6, v10

    nop

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

    :goto_93
    filled-new-array {v14, v2, v7}, [Ljava/lang/Integer;

    move-result-object v12

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v0, v0, Lgvg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0, v2}, Lhdn;->x([Lkrx;)Z

    move-result v2

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v0, v1}, Lgvg;->x(Lkrv;)Lhdn;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_97
    iget-object v4, v11, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {v4, v5, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_9a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_75

    nop

    nop

    :goto_9b
    new-instance v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v0}, Lhdn;->u()Z

    move-result v2

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_9d
    new-array v6, v8, [Lkrx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9e
    invoke-static {v11, v0, v1}, Lkav;->j(Ljava/lang/String;ZLjava/util/List;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0, v2}, Lhdn;->x([Lkrx;)Z

    move-result v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const-string v2, "legacy"

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_a1
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop
.end method
