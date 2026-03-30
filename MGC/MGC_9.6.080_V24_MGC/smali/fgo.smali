.class public final Lfgo;
.super Lfhn;
.source "PG"


# static fields
.field private static final a:Lfht;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    const v0, 0x15

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfht;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lfgo;->a:Lfht;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

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

    :goto_c
    const-string v1, "AndCamSet"

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

    :goto_d
    const v1, 0x9

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
.end method

.method public constructor <init>(Lfgo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfhn;-><init>(Lfhn;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public constructor <init>(Lfhg;Landroid/hardware/Camera$Parameters;)V
    .locals 4

    goto/32 :goto_31

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, p1}, Lfhs;-><init>(II)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lfhc;->values()[Lfhc;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lfhb;->g:Lfhb;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lfhc;->values()[Lfhc;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "recording-hint"

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

    nop

    :goto_a
    invoke-direct {v2, v3, v1}, Lfhs;-><init>(II)V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_0
    invoke-static {v1}, Landroidx/wear/ambient/SharedLibraryVersion;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-class v2, Lfhe;

    nop

    nop

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lfhe;

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Lfhn;->p:F

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    aget v2, v1, v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "true"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_63

    nop

    :goto_17
    :try_start_1
    invoke-static {v1}, Landroidx/wear/ambient/SharedLibraryVersion;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-class v2, Lfhd;

    nop

    nop

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lfhd;

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result p1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Lfhd;->values()[Lfhd;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_21
    aget-object v1, v1, v0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_54

    nop

    nop

    :goto_23
    const/high16 v2, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0}, Lfhn;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_26
    iget-object v0, p1, Lfhg;->w:Landroidx/wear/ambient/SharedLibraryVersion;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Lfhn;->i(I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0}, Lfhg;->d(Lfhb;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0, p1}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

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

    nop

    :goto_2c
    aget-object v0, v1, v0

    nop

    nop

    :goto_2d
    goto/32 :goto_57

    nop

    nop

    :goto_2e
    invoke-static {}, Lfhe;->values()[Lfhe;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_30
    aget-object v0, v1, v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, v1}, Lfhg;->d(Lfhb;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_34
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_35
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v1, Lfhb;->a:Lfhb;

    nop

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

    :goto_38
    new-instance v2, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_39
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_3a
    iput v1, p0, Lfhn;->q:I

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_3b
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_56

    nop

    nop

    :goto_3d
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v1, p0, Lfhn;->s:Lfhd;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3f
    iput v1, p0, Lfhn;->p:F

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_40
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_41
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_44
    move-object v0, v1

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

    :goto_45
    goto/16 :goto_22

    nop

    nop

    :goto_46
    :try_start_2
    invoke-static {v1}, Landroidx/wear/ambient/SharedLibraryVersion;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    const-class v2, Lfhc;

    nop

    nop

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lfhc;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, v0}, Lfhn;->k(Lfhs;)V

    goto/32 :goto_18

    nop

    nop

    :goto_48
    iput p1, p0, Lfhn;->o:I

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

    :goto_49
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4a
    sget-object p0, Lfgo;->a:Lfht;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v1

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

    :goto_4c
    iput v1, p0, Lfhn;->h:I

    nop

    :goto_4d
    goto/32 :goto_34

    nop

    nop

    :goto_4e
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

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

    :goto_4f
    invoke-static {}, Lfhe;->values()[Lfhe;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_50
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    nop

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

    :goto_51
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    aget v1, v1, v3

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_54
    iput-object v1, p0, Lfhn;->r:Lfhc;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_55
    iput-boolean v0, p0, Lfhn;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_56
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_57
    iput-object v0, p0, Lfhn;->t:Lfhe;

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

    nop

    :goto_58
    const-string p1, "Settings ctor requires a non-null Camera.Parameters."

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_59
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5b
    goto :goto_63

    nop

    :catch_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0, v2, v1}, Lfhn;->j(II)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    new-instance v0, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5e
    const v1, 0x10

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5f
    invoke-static {}, Lfhd;->values()[Lfhd;

    move-result-object v1

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

    :goto_60
    iput v1, p0, Lfhn;->i:I

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

    nop

    :goto_61
    goto/16 :goto_22

    nop

    :catch_2
    goto/32 :goto_5

    nop

    nop

    :goto_62
    aget-object v1, v1, v0

    nop

    :goto_63
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput-boolean p1, p0, Lfhn;->y:Z

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

    :goto_65
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_66
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0, v2}, Lfhn;->l(Lfhs;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput v1, p0, Lfhn;->j:I

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_11

    nop

    nop

    :goto_6c
    iput v1, p0, Lfhn;->l:I

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

    :goto_6d
    new-array v1, v1, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6e
    if-gtz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lfhn;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lfgo;-><init>(Lfgo;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lfgo;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
