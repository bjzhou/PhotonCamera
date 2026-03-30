.class final Lhxk;
.super Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;
.source "PG"


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/lang/Float;

.field private final d:Ljava/lang/Float;

.field private final e:Landroid/graphics/Point;

.field private final f:Landroid/graphics/Point;

.field private final g:Landroid/graphics/Point;

.field private final h:Landroid/graphics/Point;

.field private final i:Landroid/graphics/Point;

.field private final j:Landroid/graphics/Point;

.field private final k:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;[F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p10, p0, Lhxk;->j:Landroid/graphics/Point;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lhxk;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p6, p0, Lhxk;->f:Landroid/graphics/Point;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lhxk;->d:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p9, p0, Lhxk;->i:Landroid/graphics/Point;

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

    :goto_7
    iput-object p1, p0, Lhxk;->a:Landroid/graphics/Rect;

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

    :goto_8
    iput-object p2, p0, Lhxk;->b:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p7, p0, Lhxk;->g:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p8, p0, Lhxk;->h:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p11, p0, Lhxk;->k:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lhxk;->c:Ljava/lang/Float;

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public bounds()Landroid/graphics/Rect;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhxk;->a:Landroid/graphics/Rect;

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

.method public confidence()Ljava/lang/Float;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

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
    iget-object p0, p0, Lhxk;->c:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->noseTip()Landroid/graphics/Point;

    move-result-object v3

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

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_40

    nop

    nop

    :goto_3
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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->confidence()Ljava/lang/Float;

    move-result-object v1

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

    :goto_5
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_56

    nop

    nop

    :goto_6
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_3
    :goto_7
    goto/32 :goto_59

    nop

    nop

    :goto_8
    goto/16 :goto_19

    nop

    nop

    :goto_9
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_4

    nop

    goto/32 :goto_d

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_5
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->bounds()Landroid/graphics/Rect;

    move-result-object v3

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_10
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_11
    instance-of v1, p1, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;

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

    nop

    :goto_12
    goto/16 :goto_46

    nop

    nop

    :goto_13
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_1b

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_19
    goto/32 :goto_4d

    nop

    nop

    :goto_1a
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lhxk;->g:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lhxk;->f:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_8
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_9

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_9
    :goto_22
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->confidence()Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_24
    iget-object p1, p1, Lhxk;->k:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    if-eqz v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->index()Ljava/lang/Integer;

    move-result-object v3

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

    :goto_27
    if-nez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_b
    :goto_28
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lhxk;->j:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

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

    :goto_2b
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_c
    :goto_2c
    goto/32 :goto_1e

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->panAngleDegrees()Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_d

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lhxk;->h:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_32
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_e
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_35
    instance-of v1, p1, Lhxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_4f

    nop

    nop

    :goto_38
    if-eqz v1, :cond_f

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

    :cond_f
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3a
    if-eqz v1, :cond_10

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_54

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->noseTip()Landroid/graphics/Point;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3c
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_11
    :goto_3d
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v1, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_12
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, p0, Lhxk;->a:Landroid/graphics/Rect;

    nop

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

    :goto_43
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->faceAttributes()[F

    move-result-object p1

    nop

    nop

    :goto_46
    goto/32 :goto_2e

    nop

    nop

    :goto_47
    if-nez v1, :cond_14

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_14
    :goto_48
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v1, :cond_15

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, p0, Lhxk;->e:Landroid/graphics/Point;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v1, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_16
    goto/32 :goto_4b

    nop

    nop

    :goto_4f
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_37

    nop

    :goto_51
    invoke-virtual {v1, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v1, :cond_17

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_17
    :goto_53
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->rightEarTragion()Landroid/graphics/Point;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_55
    if-lez v0, :cond_18

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_36

    nop

    :goto_56
    iget-object v1, p0, Lhxk;->b:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v1, p0, Lhxk;->i:Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz v1, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->leftEye()Landroid/graphics/Point;

    move-result-object v1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eqz v1, :cond_1a

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_1a
    goto/32 :goto_6a

    nop

    nop

    :goto_5e
    check-cast p1, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;

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

    :goto_5f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->rightEye()Landroid/graphics/Point;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Lhxk;->k:[F

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_61
    iget-object v1, p0, Lhxk;->d:Ljava/lang/Float;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_53

    nop

    nop

    :goto_63
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_65
    if-eqz v1, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1b
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast p1, Lhxk;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_67
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->rightEarTragion()Landroid/graphics/Point;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v1, p0, Lhxk;->c:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->leftEye()Landroid/graphics/Point;

    move-result-object v3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->rightEye()Landroid/graphics/Point;

    move-result-object v1

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

    :goto_6b
    if-eqz v1, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_1c
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->panAngleDegrees()Ljava/lang/Float;

    move-result-object v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->leftEarTragion()Landroid/graphics/Point;

    move-result-object v1

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

    :goto_6e
    if-eqz v1, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->mouthCenter()Landroid/graphics/Point;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->index()Ljava/lang/Integer;

    move-result-object v1

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

    :goto_71
    if-eq p1, p0, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-eqz v1, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_1f
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_73
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_75
    goto/16 :goto_48

    nop

    nop

    :goto_76
    goto/32 :goto_5f

    nop

    nop

    :goto_77
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->leftEarTragion()Landroid/graphics/Point;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_78
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p1}, Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;->mouthCenter()Landroid/graphics/Point;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_7d
    if-eqz v1, :cond_20

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

    :cond_20
    goto/32 :goto_7a

    nop

    nop

    nop

    nop
.end method

.method public faceAttributes()[F
    .locals 0

    goto/32 :goto_1

    nop

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
    iget-object p0, p0, Lhxk;->k:[F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_3
    goto/32 :goto_5b

    nop

    nop

    :goto_10
    const v1, 0xf4243

    nop

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

    :goto_11
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_12
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    iget-object v2, p0, Lhxk;->i:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_4

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    :goto_16
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    move v2, v3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    mul-int/2addr v0, v1

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

    :goto_1b
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1c
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1d
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1e
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    nop

    nop

    :goto_20
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_22
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    :goto_24
    const v1, 0x16

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

    :goto_25
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_26
    xor-int/2addr v0, v2

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

    :goto_27
    iget-object v2, p0, Lhxk;->b:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_28
    xor-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v2, :cond_6

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_2a
    mul-int/2addr v0, v1

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

    :goto_2b
    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    nop

    :goto_2c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, p0, Lhxk;->f:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_7

    nop

    nop

    :goto_30
    goto/16 :goto_5e

    nop

    nop

    :goto_31
    goto/32 :goto_5d

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v3

    nop

    :goto_33
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v2, :cond_7

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_8
    goto/32 :goto_57

    nop

    nop

    :goto_38
    move v2, v3

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_39
    mul-int/2addr v0, v1

    nop

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

    :goto_3a
    iget-object v2, p0, Lhxk;->g:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3b
    return p0

    nop

    nop

    :goto_3c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v2, p0, Lhxk;->h:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3f
    move v2, v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_40
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_41
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_42
    xor-int/2addr v0, v3

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

    :goto_43
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v2, p0, Lhxk;->c:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    nop

    :goto_47
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_48
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_49
    xor-int/2addr v0, v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4b
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4c
    goto :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_18

    nop

    nop

    :goto_4f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_50
    xor-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lhxk;->k:[F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_52
    mul-int/2addr v0, v1

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

    :goto_53
    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_57
    move v2, v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_58
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_59
    iget-object v2, p0, Lhxk;->d:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v2, p0, Lhxk;->j:Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v2, p0, Lhxk;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_1f

    nop

    nop

    :goto_62
    iget-object v0, p0, Lhxk;->a:Landroid/graphics/Rect;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public index()Ljava/lang/Integer;
    .locals 0

    goto/32 :goto_1

    nop

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
    iget-object p0, p0, Lhxk;->b:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public leftEarTragion()Landroid/graphics/Point;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhxk;->i:Landroid/graphics/Point;

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

.method public leftEye()Landroid/graphics/Point;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhxk;->e:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public mouthCenter()Landroid/graphics/Point;
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
    iget-object p0, p0, Lhxk;->h:Landroid/graphics/Point;

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

.method public noseTip()Landroid/graphics/Point;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhxk;->g:Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public panAngleDegrees()Ljava/lang/Float;
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
    iget-object p0, p0, Lhxk;->d:Ljava/lang/Float;

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
.end method

.method public rightEarTragion()Landroid/graphics/Point;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhxk;->j:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public rightEye()Landroid/graphics/Point;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhxk;->f:Landroid/graphics/Point;

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

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

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

    nop

    :goto_3
    iget-object v9, p0, Lhxk;->c:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v9, p0, Lhxk;->b:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    const-string v9, "{"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_11
    iget-object v5, p0, Lhxk;->f:Landroid/graphics/Point;

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

    :goto_12
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_13
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    :goto_16
    iget-object v2, p0, Lhxk;->i:Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_23

    nop

    nop

    :goto_18
    iget-object v1, p0, Lhxk;->j:Landroid/graphics/Point;

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

    :goto_19
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p0, "}"

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

    :goto_1d
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lhxk;->k:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    :goto_22
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_27
    const-string v7, ", "

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v6, p0, Lhxk;->e:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v7, p0, Lhxk;->a:Landroid/graphics/Rect;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2f
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_33
    iget-object v4, p0, Lhxk;->g:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Lhxk;->h:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_20

    nop

    :goto_38
    iget-object p0, p0, Lhxk;->d:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method
