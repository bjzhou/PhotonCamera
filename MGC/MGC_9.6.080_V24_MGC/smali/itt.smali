.class public final synthetic Litt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Litt;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Litt;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 10

    goto/32 :goto_3d

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

    :pswitch_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_5c

    nop

    nop

    :goto_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_4
    const v1, 0x7f08030d

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljph;->e(Ljpv;)V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Livx;->d:Livl;

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_7d

    nop

    nop

    :goto_a
    iget-object p0, p0, Ljaa;->r:Lcom/google/android/apps/camera/jupiter/JupiterButton;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_6b

    nop

    nop

    :goto_d
    iget-object v0, p0, Ljaa;->a:Landroid/content/Context;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lixe;->c:Ljph;

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

    :goto_f
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x7f0802ae

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_11
    int-to-double v1, v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljar;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljbs;->i()V

    goto/32 :goto_7f

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lhp;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :pswitch_3
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

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

    :goto_18
    iget v8, v3, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->a:I

    nop

    nop

    nop

    goto/32 :goto_61

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

    :pswitch_4
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Livx;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1b
    mul-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Ljaa;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Litu;->b:Lpcm;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_20
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_21
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Liuh;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_85

    nop

    nop

    :goto_26
    double-to-int v7, v1

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_92

    nop

    nop

    :goto_28
    check-cast p0, Litu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_29
    iget-object v3, p0, Ljbs;->k:Ljbk;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x7f0802ad

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Ljaa;->r:Lcom/google/android/apps/camera/jupiter/JupiterButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_2c
    iget-object p0, p0, Livx;->d:Livl;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v3, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Lkcf;->b:Lkcf;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, v0, Litw;->c:Livg;

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

    :goto_33
    check-cast p0, Ljbx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_34
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

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

    nop

    :goto_35
    sget-object v0, Ljay;->b:Ljay;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_36
    invoke-static {v1}, Lnzk;->r(Landroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    :pswitch_6
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Ljaa;->a:Landroid/content/Context;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Ljaa;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_9f

    nop

    nop

    :goto_3d
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getWidth()I

    move-result v5

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    div-double/2addr v1, v3

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

    :goto_40
    check-cast p0, Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_42
    iget v1, v1, Livu;->b:I

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

    :goto_43
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_46
    iput-wide v0, v3, Ljbk;->a:J

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

    :goto_47
    sget-object v1, Ljar;->d:Ljar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Ljaa;->r:Lcom/google/android/apps/camera/jupiter/JupiterButton;

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p0, p0, Litu;->c:Litw;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_4b
    check-cast p0, Livw;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v1, p0, Ljaa;->r:Lcom/google/android/apps/camera/jupiter/JupiterButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getHeight()I

    move-result v6

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Ljaa;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_50
    iget-object v0, p0, Ljaa;->a:Landroid/content/Context;

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

    nop

    :goto_51
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast p0, Ljaa;

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

    :goto_54
    sget-object v0, Lixe;->a:Ljava/lang/Object;

    nop

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

    :goto_55
    div-int/lit16 v2, v2, 0x7e90

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_56
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast p0, Livd;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0}, Lixe;->j()V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p0}, Llxj;->e()V

    goto/32 :goto_4e

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Ljbx;->f()V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast p0, Liuh;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Livd;->a()V

    goto/32 :goto_2f

    nop

    nop

    :goto_60
    iget-object p0, p0, Litw;->f:Loxv;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v9, v3, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_63
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_64
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_66
    iget-object v0, p0, Livx;->i:Lcom/google/android/libraries/vision/opengl/Texture;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0, v0}, Ljbs;->k(Ljay;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_68
    iput-boolean v2, v3, Ljbk;->b:Z

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_69
    check-cast v0, Ljar;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6a
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

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

    :goto_6b
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget v2, v1, Livu;->a:I

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Litu;->c:Litw;

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

    :goto_6e
    const v1, 0x7f0802f5

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

    nop

    :goto_6f
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_71
    invoke-virtual {p0}, Livw;->f()V

    goto/32 :goto_4a

    nop

    nop

    :goto_72
    invoke-static {p0}, La;->aF(Loyn;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_73
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/4 v0, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0, v2, v2}, Liuh;->h(ZI)V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    return-void

    nop

    nop

    :pswitch_c
    goto/32 :goto_12

    nop

    nop

    :goto_78
    invoke-interface {p0}, Lixf;->h()V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget v0, p0, Litt;->b:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0}, Livd;->c()V

    goto/32 :goto_c

    nop

    nop

    :goto_7c
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

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
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7f
    return-void

    nop

    :pswitch_d
    goto/32 :goto_21

    nop

    nop

    :goto_80
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_81
    monitor-enter v0

    nop

    :try_start_1
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lixe;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lixe;->q:Lixf;

    nop

    if-eqz v1, :cond_3

    nop

    invoke-interface {v1}, Lixf;->e()Ljava/lang/Runnable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lixe;

    nop

    nop

    nop

    iget-object v2, v2, Lixe;->q:Lixf;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lixe;

    nop

    invoke-virtual {p0, v2}, Lixe;->f(Lixf;)V

    goto :goto_82

    nop

    nop

    :cond_3
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_82
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_83
    check-cast p0, Ljbs;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, p0, Ljaa;->m:Loyn;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v0, p0, Liuh;->b:Livx;

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

    :goto_88
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_89
    return-void

    nop

    nop

    :pswitch_e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v1}, Lnzk;->r(Landroid/view/View;)I

    move-result v1

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

    :goto_8b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_8c
    check-cast v3, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    long-to-double v1, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v0}, Livx;->close()V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0}, Lcom/google/android/libraries/vision/opengl/Texture;->getName()I

    move-result v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_f
        :pswitch_2
        :pswitch_13
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_10
        :pswitch_12
        :pswitch_1
        :pswitch_e
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_11
    .end packed-switch

    :goto_93
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_94
    return-void

    nop

    :pswitch_f
    goto/32 :goto_56

    nop

    nop

    :goto_95
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_1f

    nop

    nop

    :goto_96
    invoke-virtual {p0, v0}, Lhp;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_97
    invoke-interface {v1, v0}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_98
    return-void

    nop

    nop

    :pswitch_10
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_99
    iget-object p0, p0, Ljaa;->r:Lcom/google/android/apps/camera/jupiter/JupiterButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9a
    check-cast p0, Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_9b
    invoke-virtual {v3}, Ljbk;->a()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_9c
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/apps/camera/imax/cyclops/processing/NativeCaptureImpl;->initialize(IIIIIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9d
    iget-object p0, p0, Liuh;->l:Livc;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    check-cast p0, Livx;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a0
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_a1
    invoke-interface {p0}, Livl;->release()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_a3
    goto/32 :goto_73

    nop

    nop

    :goto_a4
    iget-object v1, p0, Livx;->h:Livu;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast v0, Lixe;

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

    :goto_a6
    check-cast p0, Ljaa;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_a7
    invoke-virtual {p0, v0}, Lhp;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a8
    return-void

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0}, Livc;->close()V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    return-void

    nop

    nop

    :pswitch_13
    goto/32 :goto_88

    nop

    nop

    :goto_ac
    iget-object v0, p0, Ljaa;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_ae
    invoke-static {p0}, La;->aG(Loyn;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object p0, p0, Litt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {p0, v0}, Lhp;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    check-cast p0, Llxj;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v1, p0, Ljaa;->r:Lcom/google/android/apps/camera/jupiter/JupiterButton;

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
.end method
