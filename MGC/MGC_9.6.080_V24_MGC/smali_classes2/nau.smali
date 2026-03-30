.class final Lnau;
.super Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;
.source "PG"


# instance fields
.field private final a:I

.field private final b:F

.field private final c:Landroid/graphics/RectF;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Float;

.field private final g:Ljava/lang/Float;

.field private final h:Ljava/lang/Float;


# direct methods
.method public constructor <init>(IFLandroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p3, p0, Lnau;->c:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lnau;->b:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lnau;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-object p8, p0, Lnau;->h:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p5, p0, Lnau;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iput-object p6, p0, Lnau;->f:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p4, p0, Lnau;->d:Ljava/lang/String;

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

    :goto_9
    iput-object p7, p0, Lnau;->g:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public bounds()Landroid/graphics/RectF;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnau;->c:Landroid/graphics/RectF;

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

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    :goto_2
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Lnau;->a:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->roll()Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_3

    nop

    goto/32 :goto_2d

    nop

    :cond_3
    :goto_9
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq p1, p0, :cond_5

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

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lnau;->g:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lnau;->c:Landroid/graphics/RectF;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->bounds()Landroid/graphics/RectF;

    move-result-object v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    if-eqz p0, :cond_6

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    :goto_16
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->label()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v1, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->libraryDisplayName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->id()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of v1, p1, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->pan()Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_8
    :goto_1f
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_9

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

    :cond_9
    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->libraryDisplayName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p1, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Lnau;->f:Ljava/lang/Float;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    if-eqz v1, :cond_a

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->label()Ljava/lang/String;

    move-result-object v3

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

    :goto_29
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_2b
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2c
    return v0

    nop

    nop

    :goto_2d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->pan()Ljava/lang/Float;

    move-result-object v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v1, :cond_d

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eq v1, v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_e
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->score()F

    move-result v3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->bounds()Landroid/graphics/RectF;

    move-result-object v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return v0

    nop

    :goto_39
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->tilt()Ljava/lang/Float;

    move-result-object p0

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

    :goto_3b
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->roll()Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2f

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lnau;->h:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3f
    if-nez v1, :cond_11

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

    nop

    :cond_11
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_50

    nop

    :goto_41
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/jni/ObjectInfo;->tilt()Ljava/lang/Float;

    move-result-object p1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_42
    if-eqz p0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_12
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_43
    goto :goto_4a

    nop

    :goto_44
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, p0, Lnau;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_49
    if-nez v1, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_13
    :goto_4a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-lez v0, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_14
    goto/32 :goto_4f

    nop

    :goto_4c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, p1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4e
    if-eqz v1, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_16

    nop

    nop

    :goto_50
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget v1, p0, Lnau;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_52
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_54
    const/4 v0, 0x1

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

    :goto_55
    iget-object v1, p0, Lnau;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v1, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_16
    :goto_57
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_22

    nop

    nop

    :goto_0
    iget-object v1, p0, Lnau;->e:Ljava/lang/String;

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

    :goto_1
    goto/16 :goto_25

    nop

    :goto_2
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    move v1, v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lnau;->d:Ljava/lang/String;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    const v2, 0xf4243

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lnau;->g:Ljava/lang/Float;

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

    :goto_9
    mul-int/2addr v0, v2

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

    :goto_a
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_b
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lnau;->c:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_26

    nop

    nop

    :goto_11
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result v3

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_39

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_2

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

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    if-eqz p0, :cond_3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lnau;->f:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Lnau;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_23
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    nop

    nop

    :goto_25
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_27
    if-eqz v1, :cond_4

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

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    goto :goto_20

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    mul-int/2addr v0, v2

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

    :goto_2e
    iget v1, p0, Lnau;->b:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_14

    nop

    :goto_30
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_31
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_33
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_34
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_35
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lnau;->h:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v1, v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Ljava/lang/Float;->hashCode()I

    move-result v1

    nop

    nop

    :goto_39
    goto/32 :goto_23

    nop

    nop

    :goto_3a
    invoke-virtual {v1}, Landroid/graphics/RectF;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3c
    move v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_12

    nop

    nop

    :goto_41
    xor-int p0, v0, v3

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

    :goto_42
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_43
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    :goto_44
    move v1, v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0xe

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop
.end method

.method public id()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lnau;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public label()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnau;->d:Ljava/lang/String;

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

    :goto_1
    return-object p0

    nop
.end method

.method public libraryDisplayName()Ljava/lang/String;
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

    :goto_1
    iget-object p0, p0, Lnau;->e:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public pan()Ljava/lang/Float;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnau;->f:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public roll()Ljava/lang/Float;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnau;->g:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public score()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lnau;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public tilt()Ljava/lang/Float;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnau;->h:Ljava/lang/Float;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnau;->g:Ljava/lang/Float;

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

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    :goto_5
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v2, p0, Lnau;->a:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    const-string v2, ", "

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

    nop

    nop

    :goto_c
    const v1, 0x17

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

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lnau;->f:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string p0, "}"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnau;->d:Ljava/lang/String;

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

    :goto_14
    iget-object v0, p0, Lnau;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_17
    return-object p0

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lnau;->h:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    iget v3, p0, Lnau;->b:F

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

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lnau;->c:Landroid/graphics/RectF;

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
.end method
