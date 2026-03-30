.class public final Lfga;
.super Lfhn;
.source "PG"


# static fields
.field public static final a:Lfht;


# instance fields
.field private final A:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final B:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Lpat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_3

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
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const-string v1, "AndCam2Set"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    sput-object v0, Lfga;->a:Lfht;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lfht;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v1, 0x1c

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

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/graphics/Rect;Lfhs;Lfhs;)V
    .locals 5

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_61

    nop

    nop

    :goto_2
    sget-object v2, Lfhc;->e:Lfhc;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_3c

    nop

    :goto_4
    goto/32 :goto_86

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne p2, p4, :cond_1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    :goto_7
    if-eq p2, p4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lfhn;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v2, Lfhc;->f:Lfhc;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1, p2}, Lfhn;->j(II)V

    :goto_b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p2, v0, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_91

    nop

    nop

    :goto_d
    invoke-direct {v1, v2}, Lpat;-><init>([B)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x17

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

    :goto_10
    iput-object p2, p0, Lfga;->z:Lfhs;

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_3c

    nop

    nop

    :goto_13
    goto/32 :goto_94

    nop

    nop

    :goto_14
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    nop

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

    nop

    :goto_15
    iput-object p2, p0, Lfga;->B:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_16
    iput-boolean p2, p0, Lfga;->x:Z

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

    :goto_17
    invoke-virtual {p0, p4}, Lfhn;->k(Lfhs;)V

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p2, p0, Lfga;->t:Lfhe;

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

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

    :goto_1e
    iput-byte p2, p0, Lfga;->n:B

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_4

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

    :cond_4
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_20
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p2, Ljava/lang/Integer;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    iput-boolean p2, p0, Lfga;->w:Z

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_84

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p1, "camera must not be null"

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object p1, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_2f
    iput p2, p0, Lfga;->q:I

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_30
    invoke-direct {v1, v4, v4, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p3}, Lfhn;->l(Lfhs;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_33
    check-cast p1, Landroid/util/Size;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_34
    iput-object p2, p0, Lfga;->s:Lfhd;

    nop

    nop

    :goto_35
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_37
    iput-object v1, p0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_38
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

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

    nop

    :goto_3a
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v2, Lfhc;->c:Lfhc;

    nop

    nop

    :goto_3c
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_3f
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_40
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_41
    if-eq p2, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v1, p0, Lfga;->c:Lpat;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_43
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_44
    goto :goto_3c

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_47
    check-cast p2, Landroid/util/Range;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 p4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_49
    if-nez p2, :cond_6

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p0, p2, p3}, Lfga;->b1051a9d8893542362ad09051775f8f6m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_4d
    if-ne p2, p4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_50
    invoke-direct {p2, p3, p1}, Lfhs;-><init>(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {p0, p2, p3}, Lfga;->b1051a9d8893542362ad09051775f8f6m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_53
    if-nez p1, :cond_8

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_8
    goto/32 :goto_49

    nop

    nop

    :goto_54
    new-instance p0, Ljava/lang/NullPointerException;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int v0, v0, v1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_58
    iput p2, p0, Lfga;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_59
    invoke-static {p2}, Lffz;->a(I)Lfhd;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iput-object p2, p0, Lfga;->u:Lfhf;

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_5d
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5e
    throw p0

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_60
    const v0, 0xe

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_63
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_65
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {p0, p2, p3}, Lfga;->b1051a9d8893542362ad09051775f8f6m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_69
    if-nez p2, :cond_a

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

    :cond_a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iput-boolean v4, p0, Lfga;->g:Z

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {p2}, Lffz;->c(I)Lfhf;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6e
    check-cast p2, Ljava/lang/Integer;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_4f

    nop

    :goto_70
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_71
    check-cast p2, Ljava/lang/Integer;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_72
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_73
    iput-object v2, p0, Lfga;->r:Lfhc;

    nop

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

    :goto_74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {p2}, Lffz;->b(I)Lfhe;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_b
    goto/32 :goto_4e

    nop

    :goto_78
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast p2, Ljava/lang/Integer;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_7b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

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

    :goto_7c
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v1, Lpat;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_7e
    iput-boolean v0, p0, Lfga;->v:Z

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_7f
    if-nez p2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_74

    nop

    nop

    :goto_80
    invoke-direct {p0, p2, p3}, Lfga;->b1051a9d8893542362ad09051775f8f6m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const-string p1, "activeArray must not be null"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_82
    invoke-direct {p0, p2, p3}, Lfga;->b1051a9d8893542362ad09051775f8f6m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_83
    move v0, v4

    nop

    :goto_84
    goto/32 :goto_7e

    nop

    nop

    :goto_85
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_86
    sget-object v2, Lfhc;->b:Lfhc;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_8c

    nop

    nop

    :goto_89
    throw p0

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_96

    nop

    nop

    :goto_8b
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_8c
    sget-object v2, Lfhc;->d:Lfhc;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    new-instance v1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    if-nez p2, :cond_d

    nop

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

    :cond_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-ne p2, v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    check-cast p2, Ljava/lang/Byte;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_91
    const/4 p4, 0x2

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

    :goto_92
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    new-instance p2, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_95
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    new-instance p0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_97
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_98
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfga;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    iget-object v1, p1, Lfga;->c:Lpat;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const v1, 0x1a

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lpat;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Lfga;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lfga;->B:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lfga;->c:Lpat;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_f

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lfga;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Lfhn;-><init>(Lfhn;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Lpat;-><init>(Lpat;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x12

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    iget-object v0, p1, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

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

    :goto_16
    iget-object v0, p1, Lfga;->B:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_6
    return-object p2

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

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

    nop
.end method

.method private static final n(DI)I
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xd

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

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    double-to-int p0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    int-to-double v0, p2

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
.end method


# virtual methods
.method public final a()Lfhn;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lfga;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lfga;-><init>(Lfga;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_6a

    nop

    nop

    :goto_0
    iget-object v3, p0, Lfga;->z:Lfhs;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_2
    iget v3, p0, Lfga;->i:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, p0, Lfga;->i:I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

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

    :goto_5
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lfga;->c:Lpat;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3}, Lfhs;->a()I

    move-result v3

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_c
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lfga;->x:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean v3, p0, Lfga;->v:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_14
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v2, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->CfByBUphyjI:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_18
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_71

    nop

    nop

    :goto_19
    if-eq v1, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_5
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_1c
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_1f
    iget v3, p0, Lfga;->h:I

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_21
    if-eq p1, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1, p2}, Lpat;->h(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v2, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_27
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v3, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_29
    goto/32 :goto_8a

    nop

    nop

    :goto_2a
    if-nez v0, :cond_8

    nop

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

    :cond_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2b
    iget-object v3, p0, Lfga;->z:Lfhs;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lfga;->e:Ljava/util/List;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_30
    iget-object v3, p0, Lfga;->z:Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_31
    if-eq v3, v4, :cond_9

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_33
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_34
    iget-object v2, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

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

    :goto_35
    goto/16 :goto_5c

    nop

    :goto_36
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_3b
    if-eq v3, v4, :cond_a

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_3e
    if-eq v3, v0, :cond_b

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_40
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v2, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v0, Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_c

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_46
    if-eqz v0, :cond_d

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_d
    :goto_47
    goto/32 :goto_8d

    nop

    nop

    :goto_48
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_7

    nop

    nop

    :goto_4a
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v3, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_11

    nop

    nop

    :goto_4c
    iget-object v2, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, p0, Lfga;->f:Ljava/util/List;

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

    :goto_4e
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v3}, Lfhs;->b()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_52
    invoke-static {v0, v2}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_53
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

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

    :goto_54
    if-eq p1, v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_55
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 p2, 0x0

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_25

    nop

    nop

    :goto_5b
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5d
    move v3, v2

    nop

    nop

    :goto_5e
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_5f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    nop

    nop

    :goto_60
    iget-boolean v0, p0, Lfga;->w:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_62
    if-eq p1, v0, :cond_11

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_68

    nop

    nop

    :goto_63
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eq p1, v0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_12
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_65
    sget-object v0, Lfga;->a:Lfht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_66
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_67
    iget-object v0, p0, Lfga;->z:Lfhs;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_68
    iget v0, p0, Lfga;->q:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_69
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

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

    :goto_6a
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v3}, Lfhs;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_6c
    const/4 v1, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    check-cast v0, Landroid/util/Size;

    nop

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

    :goto_6e
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_71
    iget-object v0, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v3, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_13
    :goto_74
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-byte v0, p0, Lfga;->n:B

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_77
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v3}, Lfhs;->b()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_79
    if-eq v3, v0, :cond_14

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_6e

    nop

    nop

    :goto_7a
    if-eqz v0, :cond_15

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v3, p0, Lfga;->z:Lfhs;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v0, :cond_16

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_80
    if-eq p1, v0, :cond_17

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_17
    goto/32 :goto_4d

    nop

    nop

    :goto_81
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_83
    if-eqz v3, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_85
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_88
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

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

    :goto_89
    if-lez v0, :cond_19

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_81

    nop

    :goto_8a
    iget-boolean v3, p0, Lfga;->v:Z

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8b
    if-eq p1, v0, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_8c
    if-eq p1, v0, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_67

    nop

    nop

    :goto_8d
    move v2, v1

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_8e
    goto/16 :goto_5c

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v2, p0, Lfga;->A:Landroid/hardware/camera2/CaptureRequest$Builder;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_92
    if-eqz v0, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_1c
    goto/32 :goto_57

    nop

    nop

    :goto_93
    goto/16 :goto_5c

    nop

    :goto_94
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 23

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    sub-int v21, v8, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2
    iget-object v6, v0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v6, v5, Landroid/graphics/Rect;->left:I

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

    :goto_4
    const-wide v15, 0x409f400000000000L    # 2000.0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v11, v12, v9}, Lfga;->n(DI)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    int-to-double v13, v6

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    add-int v18, v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    add-int/lit8 v2, v2, 0x1

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

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-int v20, v7, v18

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

    :goto_c
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr v8, v5

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_e
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    add-int/lit16 v6, v6, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-array v1, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v6, v0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v9, v10, v6}, Lfga;->n(DI)I

    move-result v6

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1b
    int-to-double v10, v6

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    aput-object v5, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    div-double/2addr v13, v15

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1e
    add-int/lit16 v5, v5, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_20
    iget-object v6, v0, Lfga;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_21
    iget-object v6, v0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_23
    iget v7, v5, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v10, v11, v6}, Lfga;->n(DI)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_25
    iget v8, v6, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    div-double/2addr v11, v15

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_27
    iget v4, v4, Landroid/hardware/Camera$Area;->weight:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_28
    check-cast v4, Landroid/hardware/Camera$Area;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v6, v6, -0x1

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

    :goto_2a
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2b
    iget-object v5, v4, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

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

    :goto_2c
    div-double/2addr v11, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2d
    int-to-double v11, v9

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-double v11, v8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_45

    nop

    :goto_30
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_44

    nop

    nop

    :goto_33
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_35
    mul-double/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_36
    int-to-double v12, v7

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_37
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_38
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

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

    :goto_3a
    iget-object v6, v0, Lfga;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3b
    mul-double/2addr v11, v13

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v9, v0, Lfga;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3d
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/lit16 v8, v8, 0x3e8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3f
    add-int/lit16 v7, v7, 0x3e8

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

    :goto_40
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_41
    div-double/2addr v12, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_42
    int-to-double v9, v6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int/2addr v7, v6

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return-object v1

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_46
    mul-double/2addr v10, v12

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_47
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_48
    if-lt v2, v3, :cond_2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v9, v10, v6}, Lfga;->n(DI)I

    move-result v5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4b
    mul-double/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget v8, v5, Landroid/graphics/Rect;->right:I

    nop

    nop

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
    add-int v19, v9, v6

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct/range {v17 .. v22}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-int/lit8 v9, v9, -0x1

    nop

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

    :goto_50
    iget v7, v6, Landroid/graphics/Rect;->left:I

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

    :goto_51
    new-instance v5, Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_52
    int-to-double v11, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v9, v0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_54
    int-to-double v9, v6

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

    :goto_55
    iget v10, v9, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_57
    iget-object v6, v0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_58
    move-object/from16 v17, v5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_59
    iget v9, v6, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move/from16 v22, v4

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

    :goto_5b
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_31

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object v2, p0, Lfga;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    div-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

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

    :goto_7
    neg-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmpg-float p0, v3, v1

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

    nop

    :goto_9
    iget v1, p0, Lfga;->p:F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lfga;->B:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    div-float/2addr v1, v2

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

    nop

    :goto_12
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    div-int/lit8 v1, v1, 0x2

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

    :goto_14
    neg-float p0, p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_17
    div-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lfga;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v4, 0x0

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

    :goto_1b
    iget-object v1, p0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, p0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v0, p0, Lfhn;->p:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    iget v2, p0, Lfga;->p:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_22
    div-float v1, p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

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

    :goto_25
    float-to-double v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v2, v4, v4, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    move v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sub-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    :goto_2c
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_51

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    :goto_31
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lfga;->B:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lfga;->k:Lfhs;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v1, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

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

    :goto_3a
    iget-object v2, p0, Lfga;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3b
    div-float/2addr v3, p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    iget-object v2, p0, Lfga;->B:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3f
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lfga;->B:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_42
    iget-object v1, p0, Lfga;->B:Landroid/graphics/Rect;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Lfga;->B:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_44
    invoke-static {v3, v4, v1}, Lfga;->n(DI)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_45
    new-instance p0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_46
    mul-float/2addr v3, p0

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

    :goto_47
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_48
    int-to-float v0, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lfhs;->a()I

    move-result p0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2, v3, v0}, Lfga;->n(DI)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4b
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-ltz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1, p0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_4c

    nop

    nop

    :goto_50
    move p0, v1

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_52
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_54
    float-to-double v2, v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result p0

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

    :goto_56
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

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

    :goto_57
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0}, Lfhs;->b()I

    move-result v3

    nop

    goto/32 :goto_15

    nop

    nop
.end method
