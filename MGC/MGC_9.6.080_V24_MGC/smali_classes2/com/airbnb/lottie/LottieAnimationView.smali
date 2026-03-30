.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "PG"


# static fields
.field public static final a:Lezo;


# instance fields
.field public b:I

.field public final c:Lezm;

.field public d:Z

.field public final e:Ljava/util/Set;

.field private final f:Lezo;

.field private final g:Lezo;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Z

.field private final l:Ljava/util/Set;

.field private m:Lezu;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/util/AttributeSet;I)V
    .locals 8

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, -0x1

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

    :goto_3
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v6}, Lfbv;-><init>([Ljava/lang/String;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_7
    if-ge v1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, v3, Lezm;->b:Lffc;

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

    :goto_9
    const/16 v0, 0x12

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->e(Ljava/lang/String;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    :goto_d
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->f(I)V

    :goto_f
    goto/32 :goto_c5

    nop

    nop

    :goto_10
    iput v0, v1, Lezm;->p:I

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v6, v3}, Lffl;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_2
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_13
    if-ne v0, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v1, v2

    nop

    :goto_15
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v5, 0x11

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

    :goto_17
    const-string p1, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    nop

    nop

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

    :goto_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    nop

    nop

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

    :goto_19
    goto/32 :goto_a1

    nop

    nop

    :goto_1a
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lezm;->t(I)V

    :goto_1c
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_4
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_5
    goto/32 :goto_57

    nop

    nop

    :goto_20
    invoke-direct {p0, v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->3fd9578e124c68aa49885b22b61b4ec8m(FZ)V

    goto/32 :goto_40

    nop

    nop

    :goto_21
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->51550bab6b6440a4fd45f825c221b363m(Lezu;)V

    :goto_22
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    invoke-virtual {v3}, Lezm;->invalidateSelf()V

    :goto_27
    goto/32 :goto_95

    nop

    nop

    :goto_28
    iput-object v0, v3, Lezm;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1, v0, v3}, Lezg;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezu;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    :goto_2c
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v3, v1}, Lezx;-><init>(I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->c(Ljava/lang/String;)V

    goto/32 :goto_c0

    nop

    nop

    :goto_30
    goto/32 :goto_1a

    nop

    nop

    :goto_31
    const/4 v3, 0x7

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_34
    const/4 v3, 0x0

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

    :goto_35
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_36
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(I)V

    :goto_38
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_3a
    iput v0, v3, Lffc;->c:F

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

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

    :goto_3d
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

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

    :goto_3e
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

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

    nop

    :goto_3f
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_40
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

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

    :goto_42
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_be

    nop

    nop

    :goto_44
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

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

    :goto_45
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v3, :cond_7

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-boolean v0, v1, Lffc;->l:Z

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move v2, p2

    nop

    :goto_4b
    goto/32 :goto_a2

    nop

    nop

    :goto_4c
    invoke-virtual {v1}, Lezm;->k()V

    :goto_4d
    goto/32 :goto_a3

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->b(I)V

    goto/32 :goto_a9

    nop

    nop

    :goto_50
    invoke-static {v1, v0, v3}, Lezg;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezu;

    move-result-object v0

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_53
    sget-object v1, Lezw;->a:[I

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v0, :cond_9

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

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

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

    :goto_57
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_58
    iput-object v0, v3, Ljaj;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5b
    new-instance v1, Lfbv;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_5c
    const-string v6, "**"

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v3, v1, v7, v6}, Lezm;->g(Lfbv;Ljava/lang/Object;Lffl;)V

    :goto_5e
    goto/32 :goto_91

    nop

    nop

    :goto_5f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_71

    nop

    nop

    :goto_62
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

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

    :goto_63
    if-nez v3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_65
    const-string v0, "animator_duration_scale"

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_66
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

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

    nop

    :goto_67
    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_c
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :cond_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-boolean v6, v3, Lezm;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_6a
    if-lez v0, :cond_e

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_e
    goto/32 :goto_19

    nop

    :goto_6b
    if-nez v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_6c
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v3, :cond_10

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_9a

    nop

    nop

    :goto_6e
    if-nez p0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_70
    if-nez v5, :cond_12

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v3}, Lezm;->h()V

    :goto_72
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_73
    const v0, 0x15

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

    :goto_74
    const/16 v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_75
    if-nez v3, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_35

    nop

    nop

    :goto_76
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_77
    iput-boolean v0, v3, Lezm;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

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

    :goto_79
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_7b
    cmpl-float p0, p0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_7c
    const/16 v0, 0xc

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_7e
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7f
    if-nez v3, :cond_14

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_14
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_80
    iget-object v0, v3, Lezm;->a:Lezb;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-eqz v4, :cond_15

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    :cond_15
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput-boolean v2, p1, Lezm;->c:Z

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const v1, 0x19

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_84
    goto/16 :goto_33

    nop

    nop

    :goto_85
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_86
    iget-boolean v5, v3, Lezm;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_88
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_8a
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_8b
    new-instance v3, Lezx;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez v4, :cond_16

    nop

    goto/32 :goto_c1

    nop

    nop

    :cond_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v1, v1, Lezm;->b:Lffc;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_8f
    new-instance v6, Lffl;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const-string v3, "url_"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/16 v1, 0xd

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

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

    nop

    :goto_95
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_96
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_97
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_98
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-nez v1, :cond_17

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

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

    :goto_9c
    if-nez v1, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_18
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9d
    const/16 v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

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

    :goto_9f
    invoke-virtual {v3}, Lezm;->w()Ljaj;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    return-void

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_a3
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_a4
    sget-object v7, Lezr;->K:Landroid/graphics/ColorFilter;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const/16 v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_a7
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_ac
    invoke-static {v3, v1}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-static {p0, v0, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_ae
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iput-boolean v0, v5, Lfdd;->j:Z

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_26

    nop

    nop

    :goto_b2
    iput-boolean v0, v1, Lezm;->d:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

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

    :goto_b5
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v5, v3, Lezm;->k:Lfdd;

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_b8
    invoke-static {}, La;->A()[I

    goto/32 :goto_7

    nop

    nop

    :goto_b9
    goto/16 :goto_51

    nop

    :goto_ba
    goto/32 :goto_b3

    nop

    nop

    :goto_bb
    invoke-static {}, La;->A()[I

    move-result-object v0

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_bc
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_bd
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_be
    iput-boolean v0, v3, Lezm;->i:Z

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_22

    nop

    :goto_c1
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_c2
    const/16 v0, 0xe

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

    :goto_c3
    if-nez v6, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_c4
    if-eq v6, v0, :cond_1a

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_1a
    goto/32 :goto_42

    nop

    nop

    :goto_c5
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_c6
    sget-object v0, Lffi;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lezu;->g(Lezo;)V

    goto/32 :goto_f

    nop

    nop

    :goto_1
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Lezu;->f(Lezo;)V

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Lezu;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lezo;

    nop

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Lezo;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const v0, 0x3

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

    :goto_f
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Lezu;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(FZ)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

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

    :goto_2
    invoke-virtual {p0, p1}, Lezm;->s(F)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Leza;->b:Leza;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Lezu;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    const v1, 0x5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lezo;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

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

    :goto_7
    invoke-virtual {p1, v0}, Lezu;->e(Lezo;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Lezu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_d
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Lezo;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lezm;->j()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Lezu;->d(Lezo;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Leza;->a:Leza;

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

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Leyw;-><init>()V

    goto/32 :goto_3

    nop

    nop

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
    new-instance v0, Leyw;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->a:Lezo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

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

    :goto_1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Ljava/util/Set;

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

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Leyy;

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

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/util/AttributeSet;I)V

    goto/32 :goto_a

    nop

    nop

    :goto_5
    new-instance p1, Leyv;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lezm;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Lezo;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-direct {p1, p0}, Leyy;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto/32 :goto_11

    nop

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lezo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    const v0, 0x7f040460

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

    :goto_13
    new-instance p1, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p1, Ljava/util/HashSet;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1, p0}, Leyv;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lezm;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p0}, Leyy;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Leyv;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Ljava/util/Set;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/util/AttributeSet;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Ljava/util/HashSet;

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

    :goto_f
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lezo;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Leyv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p1, Leyy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lezm;

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

    :goto_14
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    const p1, 0x7f040460

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Lezo;

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/util/AttributeSet;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p0}, Leyy;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lezm;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Ljava/util/Set;

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

    :goto_5
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->b:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/HashSet;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    new-instance p1, Leyy;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p1, p0}, Leyv;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto/32 :goto_12

    nop

    nop

    :goto_f
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    const/4 p1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    new-instance p1, Leyv;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:Lezo;

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

    :goto_13
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lezo;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    new-instance v0, Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_13

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lezm;->n()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    sget-object v1, Leza;->f:Leza;

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

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1, p1, v0}, Lezg;->g(Landroid/content/Context;ILjava/lang/String;)Lezu;

    move-result-object v0

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lezu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_b
    new-instance v1, Leyx;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->51550bab6b6440a4fd45f825c221b363m(Lezu;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_e
    invoke-static {v0, p1}, Lezg;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const v1, 0x14

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, p1, v1}, Lezg;->g(Landroid/content/Context;ILjava/lang/String;)Lezu;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

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

    nop

    :goto_14
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, p0, p1}, Leyx;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, v1, p1}, Lezu;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

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

    nop

    :goto_1a
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

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

    :goto_1d
    const v0, 0x1f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    :goto_0
    invoke-static {v0, p1, v1}, Lezg;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezu;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    nop

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

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p1, v1}, Lezg;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lezu;

    move-result-object v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lezu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->51550bab6b6440a4fd45f825c221b363m(Lezu;)V

    goto/32 :goto_7

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    new-instance v2, Lgiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, p0, p1, v3, v1}, Lgiw;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x10

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v2, v3}, Lezu;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_1d
    goto/16 :goto_4

    nop

    nop

    :goto_1e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    :goto_20
    const-string v2, "asset_"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_12

    nop

    :goto_22
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Z

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

    :goto_23
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public final d(Lezb;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

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

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_3
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

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

    :goto_5
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

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

    :goto_9
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Lezm;->u()Z

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Lezq;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_17
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_23

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

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

    :goto_1b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    const v1, 0x14

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

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    :goto_1f
    invoke-virtual {v0, p0}, Lezm;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p1}, Lezm;->v(Lezb;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_28
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lezm;->q()V

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Lezq;->a()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

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

    nop
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

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

    :goto_1
    iput-object p1, p0, Lezm;->g:Ljava/lang/String;

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

    :goto_2
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final f(I)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lezm;->t(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Leza;->d:Leza;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final g(I)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    sget-object v1, Leza;->c:Leza;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lffc;->setRepeatMode(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    const v0, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lezm;->b:Lffc;

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

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

.method public final invalidate()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    instance-of v1, v0, Lezm;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->invalidate()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, v0, Lezm;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lezm;

    nop

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

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

    :goto_e
    const v0, 0x3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1f

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

    :goto_10
    invoke-virtual {p0}, Lezm;->invalidateSelf()V

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, v1}, Landroid/support/v7/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    :goto_4
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onAttachedToWindow()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lezm;->n()V

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_45

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p1, Leyz;->d:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p1, Leyz;->a:Ljava/lang/String;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_5
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p1, Leyz;->f:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_c
    sget-object v1, Leza;->a:Leza;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

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

    :goto_12
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v0, p1, Leyz;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_5

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

    :cond_5
    goto/32 :goto_33

    nop

    nop

    :goto_19
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1a
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

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

    :goto_1e
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1f
    iget v0, p1, Leyz;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->g(I)V

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_6

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_6
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->3fd9578e124c68aa49885b22b61b4ec8m(FZ)V

    :goto_24
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_25
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_26
    sget-object v1, Leza;->f:Leza;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_27
    sget-object v1, Leza;->a:Leza;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_28
    sget-object v1, Leza;->c:Leza;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_29
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2d
    sget-object v1, Leza;->e:Leza;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Leyz;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2f
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->f(I)V

    :goto_32
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_33
    iget-object v0, p1, Leyz;->e:Ljava/lang/String;

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

    :goto_34
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_35
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_3

    nop

    nop

    :goto_36
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->b(I)V

    :goto_37
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3a
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v0, p1, Leyz;->b:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v1, Leza;->d:Leza;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v1, Leza;->b:Leza;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p1, Leyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->e(Ljava/lang/String;)V

    :goto_43
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    :goto_45
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v1, 0x0

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

    :goto_47
    goto/32 :goto_7

    nop

    nop

    :goto_48
    iget p1, p1, Leyz;->g:I

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

    :goto_49
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->c(Ljava/lang/String;)V

    :goto_4a
    goto/32 :goto_3b

    nop

    nop

    :goto_4b
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz v0, :cond_b

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_48

    nop

    nop
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    iput p0, v1, Leyz;->g:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lezm;->c()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lezm;->b:Lffc;

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

    :goto_7
    iput-object v0, v1, Leyz;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    :goto_d
    iget-object v0, v0, Lezm;->b:Lffc;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lffc;->getRepeatMode()I

    move-result v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x12

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    iput-object v2, v1, Leyz;->e:Ljava/lang/String;

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

    :goto_15
    invoke-direct {v1, v0}, Leyz;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    iput v0, v1, Leyz;->b:I

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
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, v0, Lffc;->k:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lezm;->isVisible()Z

    move-result v2

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

    :goto_1e
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1f
    move v0, v3

    nop

    nop

    :goto_20
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, v0, Lezm;->o:I

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

    nop

    nop

    :goto_22
    const/4 v2, 0x2

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

    :goto_23
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    iget-object v2, v0, Lezm;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_25
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_26
    iput v0, v1, Leyz;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    iput v0, v1, Leyz;->f:I

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_28
    goto/32 :goto_12

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq v0, v2, :cond_2

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v1, Leyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    const/4 v2, 0x3

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

    :goto_2d
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-boolean v0, v1, Leyz;->d:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lezm;->e()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final setImageResource(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    instance-of v0, p1, Lezm;

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

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

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

    :goto_b
    invoke-virtual {v0}, Lezm;->m()V

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->c:Lezm;

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

    :goto_e
    invoke-virtual {v0}, Lezm;->u()Z

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lezm;->u()Z

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lezm;

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

    :goto_12
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

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

    :goto_14
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lezm;->m()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    :goto_1e
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
