.class public Lnwp;
.super Lnvw;
.source "PG"


# static fields
.field private static final a:Lsdb;

.field private static final b:Ljava/lang/Object;

.field public static i:I

.field public static j:I


# instance fields
.field public final A:Landroid/view/animation/Interpolator;

.field public final B:I

.field public final C:F

.field public final D:F

.field public final E:Z

.field public F:Z

.field public G:F

.field public H:F

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Lrss;

.field public M:F

.field public final N:Ljqb;

.field public O:I

.field public P:I

.field public final Q:Lmjv;

.field public final R:Lhoh;

.field private final S:Ljava/util/Set;

.field private final T:Landroid/animation/AnimatorSet;

.field private final U:Z

.field private final V:Landroid/animation/AnimatorSet;

.field private final W:Landroid/animation/AnimatorSet;

.field private final X:Ljava/util/Set;

.field private final Y:Z

.field private final Z:F

.field private final aa:I

.field private ab:Landroid/animation/AnimatorSet;

.field private ac:Z

.field private ad:I

.field private final c:Landroid/animation/AnimatorListenerAdapter;

.field private final d:Landroid/animation/AnimatorListenerAdapter;

.field private final e:Landroid/animation/AnimatorListenerAdapter;

.field private final f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;

.field public final k:Lhdd;

.field public final l:Loyn;

.field public final m:Loyn;

.field public final n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

.field public final o:Landroid/widget/SeekBar;

.field public final p:Landroid/animation/ValueAnimator;

.field public final q:Landroid/animation/ValueAnimator;

.field public final r:Landroid/animation/ValueAnimator;

.field public final s:Landroid/animation/ValueAnimator;

.field public final t:F

.field public final u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

.field public final v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

.field public final w:Lnvf;

.field public final x:Lrss;

.field public final y:Loyd;

.field public final z:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "nwp"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    sput v0, Lnwp;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    sput v0, Lnwp;->j:I

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

    :goto_4
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

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
    sput-object v0, Lnwp;->a:Lsdb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_8
    sput-object v0, Lnwp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Ljava/util/Set;Loyn;Loyn;Lmjv;Lrss;Lhdd;Loyd;Lhoh;FLnvf;Ljava/util/Set;Ljqb;)V
    .locals 13

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

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

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static/range {p9 .. p9}, Lnzk;->i(Lhoh;)Z

    move-result v1

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

    :goto_4
    invoke-direct {v10}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v7}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v3, v0, Lnwp;->W:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v3, p0}, Lnwa;-><init>(Lnwp;)V

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_a
    iput-object v7, v0, Lnwp;->x:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_b
    iput-boolean v3, v0, Lnwp;->I:Z

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_c
    iput-object v1, v0, Lnwp;->A:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v5, Lnwc;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v5, Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v7, Lnue;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-array v5, v4, [F

    nop

    fill-array-data v5, :array_0

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_13
    move-object/from16 v7, p4

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

    :goto_14
    new-instance v6, Lngx;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_15
    new-array v4, v4, [Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v2, p9

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_17
    const/4 v8, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_18
    new-instance v3, Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_19
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v7, p5

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v10, v0, Lnwp;->L:Lrss;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_1d
    move-object/from16 v7, p11

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v7, v0, Lnwp;->k:Lhdd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_37

    nop

    nop

    :goto_20
    iput-object v10, v0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_21
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v9, 0x3

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_24
    iput v1, v0, Lnwp;->D:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_25
    iput v1, v0, Lnwp;->B:I

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v5, p0}, Lnwc;-><init>(Lnwp;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v4, Lnwb;

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

    :goto_28
    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v4, Leac;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v5, v0, Lnwp;->e:Landroid/animation/AnimatorListenerAdapter;

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

    :goto_2b
    const/4 v4, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v0, p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    iput-boolean v1, v0, Lnwp;->E:Z

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

    :goto_2f
    iput-boolean v3, v0, Lnwp;->Y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v7, v0, Lnwp;->m:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_31
    iput-object v7, v0, Lnwp;->S:Ljava/util/Set;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object v1, p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_34
    new-instance v7, Lnue;

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

    :goto_35
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v3, Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_38
    iput-object v10, v0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_39
    const/16 v7, 0xf

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

    :goto_3a
    invoke-direct {v10}, Leac;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    :goto_3b
    iput v1, v0, Lnwp;->Z:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move/from16 v7, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_3d
    iput-boolean v8, v0, Lnwp;->ac:Z

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

    :goto_3e
    iput-boolean v8, v0, Lnwp;->J:Z

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_40
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v7, p0, v8}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_42
    move-object/from16 v7, p7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_43
    iput-object v3, v0, Lnwp;->p:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v10}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_45
    iput v7, v0, Lnwp;->O:I

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

    :goto_46
    invoke-direct {v6, p0, v7}, Lngx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_48
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v6, v0, Lnwp;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4a
    move-object/from16 v7, p13

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_4b
    aput-object v3, v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_4c
    invoke-direct {v4, p0}, Lnwb;-><init>(Lnwp;)V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_4d
    iput-object v7, v0, Lnwp;->Q:Lmjv;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_4e
    iput-object v7, v0, Lnwp;->y:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput v1, v0, Lnwp;->C:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v10, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_52
    const v3, 0x10c000d

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x7f070abf

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_55
    iput-object v7, v0, Lnwp;->X:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_56
    const-wide/16 v11, 0x1f4

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_57
    iput v7, v0, Lnwp;->t:F

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-object v4, v0, Lnwp;->d:Landroid/animation/AnimatorListenerAdapter;

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

    :goto_5a
    iput v7, v0, Lnwp;->H:F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5b
    goto/32 :goto_62

    nop

    nop

    :goto_5c
    const/16 v8, 0x8

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_5d
    move-object v7, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5e
    iput-object v7, v0, Lnwp;->z:Landroid/content/res/Resources;

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

    :goto_5f
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_60
    const v1, 0x7f070a73

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_65

    nop

    nop

    :goto_62
    goto/32 :goto_2d

    nop

    nop

    :goto_63
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_64
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_65
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_66
    invoke-direct {v5}, Leac;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput-object v3, v0, Lnwp;->V:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v10, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_69
    invoke-direct {v5, p1}, Lnwd;-><init>(Landroid/view/View;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {p0, v9}, Lnwp;->aaec1d22915a22823a4c3f7bc703c9d8m(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_21

    nop

    nop

    :goto_6c
    invoke-virtual {v10, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_6f

    nop

    nop

    :goto_6d
    new-instance v3, Lnwa;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/4 v7, 0x5

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v10, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_71
    const v1, 0x7f0c00d6

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

    :goto_72
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_73
    iput-object v7, v0, Lnwp;->w:Lnvf;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_74
    iput-boolean v9, v0, Lnwp;->K:Z

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iput v8, v0, Lnwp;->ad:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_76
    iput-object v1, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_77
    iput-object v10, v0, Lnwp;->o:Landroid/widget/SeekBar;

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

    :goto_78
    new-instance v10, Leac;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v10

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-direct {p0}, Lnvw;-><init>()V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_7b
    filled-new-array {v8, v9}, [I

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-direct {v3}, Leac;-><init>()V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_7d
    move-object/from16 v7, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7e
    iput v7, v0, Lnwp;->M:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput-object v3, v0, Lnwp;->q:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_80
    iput-object v2, v0, Lnwp;->R:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_81
    invoke-direct {p0, v8}, Lnwp;->aaec1d22915a22823a4c3f7bc703c9d8m(Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput-object v5, v0, Lnwp;->T:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_83
    new-instance v3, Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iput v9, v0, Lnwp;->P:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-lez v0, :cond_0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_61

    nop

    :goto_86
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v10

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_87
    sget-object v7, Lhnz;->l:Lhmn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_88
    iput-object v3, v0, Lnwp;->s:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_89
    move-object/from16 v7, p12

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v3, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v3, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-direct {v7, p0, v8}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_8e
    move-object/from16 v7, p3

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_8f
    const v1, 0x7f0c0023

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_90
    new-instance v5, Leac;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_91
    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_92
    aput-object v6, v4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_93
    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_94
    new-instance v5, Lnwd;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_95
    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_96
    iput-boolean v7, v0, Lnwp;->U:Z

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    new-instance v3, Leac;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_98
    iput-object v7, v0, Lnwp;->g:Ljava/lang/Runnable;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_99
    iput-object v10, v0, Lnwp;->r:Landroid/animation/ValueAnimator;

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

    :goto_9a
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9b
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_9c
    sget-object v3, Lhmq;->bR:Lhmn;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_9e
    new-instance v10, Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9f
    iput-object v3, v0, Lnwp;->c:Landroid/animation/AnimatorListenerAdapter;

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

    :goto_a0
    const-wide/16 v10, 0x64

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-direct {v4}, Leac;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_a2
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a3
    iput-object v7, v0, Lnwp;->h:Ljava/lang/Runnable;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iput v1, v0, Lnwp;->aa:I

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_a5
    const v1, 0x7f070a72

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_a6
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    const-wide/16 v5, 0x12c

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a8
    sget-object v3, Lhnz;->d:Lhmn;

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

    :goto_a9
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_aa
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_ab
    move-object/from16 v7, p6

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

    :goto_ac
    iput-object v7, v0, Lnwp;->l:Loyn;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_ae
    iput-object v7, v0, Lnwp;->N:Ljqb;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_22

    nop

    nop

    nop
.end method

.method public static I(I)I
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    goto :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private final aaadf0a9c0da915f2782a301bde92c44m(I)Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p1, v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lnwp;->R:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, v0, Lnvf;->h:I

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

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lnwp;->w:Lnvf;

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

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    const/4 v0, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Lhmq;->af:Lhmn;

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

    :goto_11
    if-nez p1, :cond_3

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

    :cond_3
    goto/32 :goto_e

    nop

    nop
.end method

.method private final aaec1d22915a22823a4c3f7bc703c9d8m(Z)Landroid/animation/AnimatorSet;
    .locals 11

    goto/32 :goto_54

    nop

    nop

    :goto_0
    iget-object v1, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

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

    :goto_2
    invoke-direct {v5, v1, v9}, Lngx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v4, 0xc8

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_70

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

    :goto_6
    invoke-direct {v4, p0, v9}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

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

    :goto_8
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_9
    new-instance v5, Lngx;

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

    :goto_a
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_e
    goto/32 :goto_49

    nop

    nop

    :goto_f
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

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

    :goto_11
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    :goto_13
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_17
    aput v2, v10, v5

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

    :goto_18
    const/16 v9, 0x14

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_3

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

    :cond_3
    goto/32 :goto_62

    nop

    nop

    :goto_1b
    iget-object v7, p0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_1c
    aput v4, v10, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnwp;->z:Landroid/content/res/Resources;

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

    :goto_1f
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

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

    nop

    :goto_20
    new-array v10, v9, [F

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

    :goto_21
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    const v2, 0x7f070a82

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v5, v1, v6}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2c
    div-float/2addr v2, v7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2d
    iget-object v7, p0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2e
    const/4 v9, 0x2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-wide/16 v4, 0x1e

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

    :goto_32
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_14

    nop

    nop

    :goto_33
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_35
    const-wide/16 v4, 0x53

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_36
    goto/16 :goto_52

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v4, Lnvy;

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

    nop

    :goto_39
    const v4, 0x7f070a81

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3a
    filled-new-array {v0, v6}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3b
    const v8, 0x7f070a7d

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3c
    new-instance v4, Lnvy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v5, Lnvy;

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

    :goto_3e
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_61

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_40
    sub-int v0, v6, v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_46
    aput v2, v10, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_47
    filled-new-array {v6, v0}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v7, p0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_49
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance p0, Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4b
    goto :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_4d
    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    aput v4, v10, v5

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    nop

    :goto_52
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    filled-new-array {v7, v8}, [I

    move-result-object v1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_54
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v4}, Leac;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_58
    invoke-direct {v4, v1, v5}, Lnvy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_21

    nop

    nop

    :goto_59
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_5b
    iget-object v7, p0, Lnwp;->z:Landroid/content/res/Resources;

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

    :goto_5c
    iget-object v7, p0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5d
    div-float/2addr v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_45

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_3a

    nop

    nop

    :goto_60
    const v9, 0x7f070a7e

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_61
    filled-new-array {v8, v7}, [I

    move-result-object v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_62
    filled-new-array {v3, v5}, [I

    move-result-object v3

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

    :goto_63
    int-to-float v4, v4

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_64
    const-wide/16 v4, 0x12c

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_65
    new-instance v4, Leac;

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

    :goto_66
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v5, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_68
    filled-new-array {v5, v3}, [I

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_6d
    const v7, 0x7f070a80

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_e

    nop

    nop

    :goto_70
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const v6, 0x7f070a78

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

    :goto_72
    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

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

    :goto_73
    new-array v10, v9, [F

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method private final e605802609d859f9b9b73c357712681fm()Z
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    cmpl-float p0, p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const/16 v1, 0x8

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

    :goto_8
    const/4 p0, 0x1

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

    :goto_9
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xf

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

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    nop

    :goto_13
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_3

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getAlpha()F

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final A(Z)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnwp;->T:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lnwp;->J:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setVisibility(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->reverse()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 p1, 0x8

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

    nop

    :goto_8
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    iget-boolean v0, p0, Lnwp;->I:Z

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop
.end method

.method public final B(Z)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Lnxb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Lnxb;->a(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnwp;->X:Ljava/util/Set;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iput-boolean p1, p0, Lnwp;->ac:Z

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

    :goto_d
    iget-boolean v0, p0, Lnwp;->ac:Z

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

    :goto_e
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final C()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lnwp;->M(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lnwp;->P:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final D()V
    .locals 16

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Lnwp;->R:Lhoh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_4
    sget-object v2, Lhnz;->g:Lhmn;

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
    sget-object v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_9
    iget-boolean v1, v0, Lnwp;->J:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
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

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_f
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lnwp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    monitor-enter v2

    nop

    :try_start_0
    iget v3, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    if-ne v3, v4, :cond_2

    nop

    monitor-exit v2

    nop

    goto/16 :goto_12

    nop

    :cond_2
    iput v4, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    const v6, 0x7f070a9a

    nop

    nop

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    const v7, 0x7f070ad9

    nop

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    iget v7, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    nop

    mul-float/2addr v6, v7

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    nop

    nop

    nop

    const v8, 0x7f070aa2

    nop

    nop

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    nop

    nop

    nop

    nop

    const v9, 0x7f070aa1

    nop

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    nop

    nop

    nop

    const v10, 0x7f070a9f

    nop

    nop

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    nop

    nop

    nop

    sub-int v10, v8, v5

    nop

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    div-int/2addr v10, v11

    nop

    nop

    nop

    mul-int/lit8 v9, v9, 0x6

    nop

    nop

    add-int/2addr v10, v9

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    nop

    nop

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    int-to-float v7, v7

    nop

    nop

    nop

    iget v11, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g:F

    nop

    nop

    nop

    nop

    mul-float/2addr v7, v11

    nop

    nop

    nop

    float-to-int v7, v7

    nop

    nop

    nop

    nop

    nop

    iput v7, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v7, 0x186a0

    nop

    nop

    nop

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setMax(I)V

    float-to-int v6, v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v6, v10, v6, v10}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    nop

    nop

    nop

    if-ne v4, v5, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->I(IZ)Landroid/animation/AnimatorSet;

    move-result-object v3

    nop

    nop

    nop

    nop

    new-instance v5, Lnxl;

    nop

    nop

    nop

    invoke-direct {v5, v1}, Lnxl;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v5

    nop

    invoke-static {v5, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v6

    nop

    nop

    invoke-static {v6, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v4

    nop

    nop

    nop

    new-instance v6, Lnxm;

    nop

    nop

    invoke-direct {v6, v1}, Lnxm;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v6

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    invoke-static {v6, v7}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v6

    nop

    nop

    nop

    nop

    new-instance v7, Lnxn;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v1}, Lnxn;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    nop

    iget-object v7, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    if-eqz v3, :cond_4

    nop

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object v1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    throw v0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v2

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual/range {p0 .. p0}, Lnwp;->z()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v5, v0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v0, Lnwp;->l:Loyn;

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Float;

    nop

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->e(F)F

    move-result v6

    nop

    nop

    nop

    nop

    iget v7, v5, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    nop

    nop

    const/high16 v8, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v7, v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    nop

    nop

    nop

    mul-float/2addr v8, v6

    nop

    nop

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    nop

    nop

    nop

    if-eq v7, v8, :cond_7

    nop

    nop

    nop

    iput v6, v5, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    nop

    nop

    nop

    nop

    nop

    :cond_7
    iget-object v5, v0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_12

    nop

    iget v5, v0, Lnwp;->O:I

    nop

    nop

    if-eqz v5, :cond_11

    nop

    nop

    nop

    nop

    nop

    if-ne v5, v3, :cond_8

    nop

    nop

    nop

    nop

    goto/16 :goto_21

    nop

    nop

    nop

    :cond_8
    iget-object v5, v0, Lnwp;->ab:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_9

    nop

    nop

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    nop

    if-eqz v5, :cond_9

    nop

    nop

    nop

    iget-object v5, v0, Lnwp;->ab:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :cond_9
    iget-object v5, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v5

    nop

    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v5, v0, Lnwp;->E:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    iget-object v5, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m()Landroid/widget/ImageView;

    move-result-object v5

    nop

    nop

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object v5, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getRootView()Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    nop

    const v8, 0x7f0b0513

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->x()Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    move-result-object v8

    nop

    nop

    nop

    if-eqz v7, :cond_d

    nop

    nop

    nop

    nop

    if-nez v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    :cond_b
    new-instance v9, Landroid/graphics/Rect;

    nop

    nop

    nop

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-array v7, v2, [I

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v8, v7, v4

    nop

    aget v7, v7, v3

    nop

    nop

    iget v10, v9, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    if-gt v10, v8, :cond_c

    nop

    nop

    nop

    nop

    nop

    iget v10, v9, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    if-gt v8, v10, :cond_c

    nop

    nop

    nop

    nop

    nop

    iget v8, v9, Landroid/graphics/Rect;->top:I

    nop

    if-gt v8, v7, :cond_c

    nop

    nop

    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    nop

    if-gt v7, v8, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    nop

    nop

    :cond_c
    move v7, v4

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_d
    :goto_1d
    move v7, v3

    nop

    :goto_1e
    iget-object v5, v5, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k:Llyv;

    nop

    nop

    sget-object v8, Llyr;->z:Llze;

    nop

    nop

    invoke-virtual {v5, v8}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Ljava/lang/Boolean;

    nop

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_e

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_e

    nop

    nop

    nop

    nop

    move v5, v6

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_e
    move v5, v4

    nop

    nop

    :goto_1f
    iget-object v7, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setVisibility(I)V

    iput v3, v0, Lnwp;->O:I

    nop

    iget-object v5, v0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getWidth()I

    move-result v5

    nop

    iget-object v7, v0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    const v8, 0x7f070aa5

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    nop

    nop

    add-int/2addr v5, v7

    nop

    iget-object v7, v0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    const v8, 0x7f070aa4

    nop

    nop

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    invoke-virtual {v8}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    nop

    const v10, 0x7f070ac0

    nop

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    nop

    nop

    nop

    nop

    iget-object v10, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    invoke-virtual {v10}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v10

    nop

    invoke-virtual {v10}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v10, v5}, [I

    move-result-object v5

    nop

    nop

    nop

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    nop

    new-instance v10, Lnvy;

    nop

    nop

    nop

    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v10, v0, v11}, Lnvy;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v12, 0xc8

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sput v4, Lnwp;->i:I

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    nop

    sput v10, Lnwp;->j:I

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v10, v7}, [I

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v10

    nop

    iget-boolean v14, v0, Lnwp;->Y:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v14, :cond_f

    nop

    nop

    nop

    new-instance v14, Lnvz;

    nop

    invoke-direct {v14, v8, v9, v7}, Lnvz;-><init>(Landroid/widget/ImageView;II)V

    invoke-virtual {v10, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v10, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_f
    new-array v7, v2, [F

    nop

    nop

    nop

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Lnvy;

    nop

    nop

    nop

    invoke-direct {v8, v0, v6}, Lnvy;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v8, 0x53

    nop

    nop

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v12, v2, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v12, :array_1

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    new-instance v13, Lnvy;

    nop

    const/4 v14, 0x5

    nop

    nop

    invoke-direct {v13, v0, v14}, Lnvy;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v12, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v13, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    invoke-virtual {v13}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object v13

    nop

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v13, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object v13

    nop

    const/16 v15, 0x8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v13, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v13

    nop

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v13, Landroid/animation/AnimatorSet;

    nop

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v2, [Landroid/animation/Animator;

    nop

    aput-object v12, v15, v4

    nop

    aput-object v7, v15, v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v12, v0, Lnwp;->E:Z

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_10

    nop

    nop

    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lnwp;->w()I

    move-result v14

    nop

    nop

    nop

    int-to-float v14, v14

    nop

    nop

    nop

    nop

    nop

    const/high16 v15, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v14, v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTranslationX(F)V

    iget v14, v0, Lnwp;->Z:F

    nop

    div-float/2addr v14, v15

    nop

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    nop

    nop

    nop

    const/high16 v14, 0x3f800000    # 1.0f

    nop

    nop

    invoke-virtual {v6, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    nop

    nop

    invoke-virtual {v6, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    nop

    iget v2, v0, Lnwp;->aa:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v3, v2

    nop

    nop

    nop

    invoke-virtual {v6, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v2, v0, Lnwp;->Z:F

    nop

    nop

    nop

    nop

    neg-float v2, v2

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v2, v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lnwp;->w()I

    move-result v3

    nop

    nop

    neg-int v3, v3

    nop

    int-to-float v3, v3

    nop

    nop

    div-float/2addr v3, v15

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lnwp;->v()F

    move-result v4

    nop

    nop

    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lnwp;->w()I

    move-result v15

    nop

    nop

    int-to-float v15, v15

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v4, v15

    nop

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v4, 0x0

    nop

    nop

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v2, v11, [Landroid/animation/Animator;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    aput-object v5, v2, v3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    aput-object v10, v2, v3

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    aput-object v13, v2, v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lnwp;->w()I

    move-result v2

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    filled-new-array {v2, v3}, [I

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    nop

    nop

    new-instance v3, Lngx;

    nop

    nop

    nop

    const/16 v4, 0x13

    nop

    nop

    nop

    invoke-direct {v3, v0, v4}, Lngx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v14, [Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    aput-object v5, v3, v4

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    aput-object v10, v3, v4

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    aput-object v13, v3, v4

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lnwp;->V:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    aput-object v4, v3, v11

    nop

    nop

    nop

    nop

    nop

    aput-object v2, v3, v6

    nop

    nop

    nop

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_20
    new-instance v2, Lnwg;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0}, Lnwg;-><init>(Lnwp;)V

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v7, v0, Lnwp;->ab:Landroid/animation/AnimatorSet;

    nop

    nop

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    const/4 v2, 0x1

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lnwp;->B(Z)V

    monitor-exit v1

    nop

    goto/16 :goto_12

    nop

    :cond_11
    const/4 v0, 0x0

    nop

    nop

    nop

    throw v0

    nop

    :cond_12
    :goto_21
    monitor-exit v1

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit v1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_23

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual/range {p0 .. p0}, Lnwp;->F()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v1, v0, Lnwp;->I:Z

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

    :goto_27
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public final E()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnwp;->T:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lnwp;->D()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lnwp;->J:Z

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

    :goto_5
    return-void

    nop

    :goto_6
    invoke-direct {p0}, Lnwp;->e605802609d859f9b9b73c357712681fm()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop
.end method

.method final F()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_26

    nop

    nop

    :goto_1
    iget-object v1, p0, Lnwp;->R:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 v0, v0, 0xa

    nop

    nop

    nop

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
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_25

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7f0c00db

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

    :goto_8
    const v1, 0x7f0c00dd

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    iget-boolean v1, p0, Lnwp;->I:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lnwp;->U:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    const v0, 0xc

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_11
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_12
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    int-to-long v2, v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    iget-object v0, p0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lnwp;->h:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lnwp;->z:Landroid/content/res/Resources;

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

    :goto_1d
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_17

    nop

    :goto_20
    sget-object v2, Lhnz;->m:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

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

    nop

    :goto_22
    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_23
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_28
    iget-boolean v0, p0, Lnwp;->I:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lnwp;->g:Ljava/lang/Runnable;

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

.method public final G()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnwp;->m:Loyn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnwp;->l:Loyn;

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

    :goto_5
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final H()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    :goto_3
    const v0, 0x11

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

    :goto_4
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->getAccessibilityLiveRegion()I

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p0, v2}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lnue;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    const v2, 0x7f0c00d8

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

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

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
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    int-to-long v2, p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lnwp;->z:Landroid/content/res/Resources;

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

    nop
.end method

.method public final J(IFF)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lhdd;->a()Lpog;

    move-result-object v0

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

    :goto_1
    return-void

    nop

    :goto_2
    iget-object p0, p0, Lnwp;->Q:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lmjv;->q(IFFLpog;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnwp;->k:Lhdd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final K(FI)I
    .locals 3

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lnxe;->ordinal()I

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    sget-object v1, Lnxe;->c:Lnxe;

    nop

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

    :goto_2
    cmpg-float p2, p1, p2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4
    if-gez p2, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lnxe;->a:Lnxe;

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_6
    invoke-virtual {p2, v1}, Lnvf;->a(I)F

    move-result p2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p2, p0, Lnwp;->w:Lnvf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lnxe;->d:Lnxe;

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

    :goto_9
    sget-object p0, Lnxe;->c:Lnxe;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lnxe;->ordinal()I

    move-result v0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2}, Lnvf;->a(I)F

    move-result p0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_11
    return p0

    nop

    :goto_12
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lnxe;->d:Lnxe;

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

    :goto_14
    cmpl-float p2, p1, p2

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

    :goto_15
    invoke-virtual {v1}, Lnxe;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lnwp;->w:Lnvf;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Lnvf;->b()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_18
    if-gez p2, :cond_1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-gez p2, :cond_2

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_1a
    sget-object p0, Lnxe;->c:Lnxe;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1b
    sget-object p0, Lnxe;->a:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_3c

    nop

    :goto_1d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2, v1}, Lnvf;->a(I)F

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_21
    return v1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p2, v1, :cond_3

    nop

    goto/32 :goto_56

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p2, v1}, Lnvf;->a(I)F

    move-result v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lnxe;->ordinal()I

    move-result v0

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

    :goto_26
    if-ne p2, v1, :cond_4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    :goto_27
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_28
    const/4 p0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    invoke-virtual {p0, p2}, Lnvf;->a(I)F

    move-result p0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2a
    iget-object p2, p0, Lnwp;->w:Lnvf;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p2, p0, Lnwp;->w:Lnvf;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget p0, p0, Lnwp;->H:F

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

    :goto_2d
    cmpl-float p2, p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2e
    cmpl-float p2, p1, p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2f
    if-gez p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_31
    if-ne p2, v1, :cond_6

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x9

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_33
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v1, p0, Lnwp;->H:F

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2}, Lnxe;->ordinal()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2, v1}, Lnvf;->a(I)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_37
    if-gez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    :goto_38
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, p0, Lnwp;->w:Lnvf;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    cmpg-float p0, p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3b
    if-gez p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_8
    :goto_3c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a

    nop

    :goto_3e
    iget-object p2, p0, Lnwp;->w:Lnvf;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3f
    iget-object p2, p0, Lnwp;->w:Lnvf;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2, p1, v1}, Lnvf;->c(FF)F

    move-result p1

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

    :goto_42
    invoke-virtual {v1}, Lnxe;->ordinal()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return p0

    nop

    :goto_44
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Lnxe;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p2}, Lnxe;->ordinal()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Lnxe;->ordinal()I

    move-result p0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_49
    sget-object v2, Lnxe;->d:Lnxe;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4a
    sget-object v0, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_4b
    cmpl-float p0, p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object p2, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lnxe;->ordinal()I

    move-result p0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lnwp;->w:Lnvf;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_3c

    nop

    nop

    :goto_50
    goto/32 :goto_3f

    nop

    nop

    :goto_51
    invoke-virtual {p2}, Lnxe;->ordinal()I

    move-result p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_52
    throw p0

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_54
    if-ne p2, v1, :cond_a

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_55
    return p0

    nop

    :goto_56
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_57
    sget-object p2, Lnxe;->b:Lnxe;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_58
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v1, Lnxe;->c:Lnxe;

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

    :goto_5b
    invoke-virtual {p2, v0, p0}, Lnvf;->c(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-ltz p2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_60
    if-nez p2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0}, Lnxe;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p2, v2}, Lnvf;->a(I)F

    move-result p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_64
    add-int/lit8 p2, p2, -0x1

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

    nop

    :goto_65
    cmpg-float p0, p1, p0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final L(I)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_8

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput p1, p0, Lnwp;->ad:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    if-eq v0, p1, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lnwp;->ad:I

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

    :goto_b
    iget-object p0, p0, Lnwp;->S:Ljava/util/Set;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, p1}, Lnwz;->k(I)V

    goto/32 :goto_1

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

    nop

    nop

    :goto_e
    check-cast v0, Lnwz;

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

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final M(I)V
    .locals 22

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iget-object v2, v0, Lnwp;->y:Loyd;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7d

    nop

    :goto_2
    goto/32 :goto_41

    nop

    nop

    :goto_3
    invoke-direct/range {p0 .. p1}, Lnwp;->aaadf0a9c0da915f2782a301bde92c44m(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v2

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

    :goto_7
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_8
    iget-object v3, v0, Lnwp;->w:Lnvf;

    nop

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

    :goto_9
    invoke-virtual {v2, v3}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v3, v1}, Lnwp;->K(FI)I

    move-result v3

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_b
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v4}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v2, v0, Lnwp;->H:F

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
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_f
    const/16 v3, 0x8

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_10
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

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

    :goto_11
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_13
    const v0, 0x8

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, v0, Lnwp;->w:Lnvf;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_15
    iget-object v3, v3, Lnvf;->b:Landroid/animation/ValueAnimator;

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

    :goto_16
    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->E(IZ)V

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_17
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v2, Ljava/lang/Float;

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

    nop

    :goto_19
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v3, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_1c
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    check-cast v2, Lnne;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Lnwp;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v3, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v4, v1}, Lnwp;->K(FI)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_21
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v0, Lscz;

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

    :goto_24
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_26
    if-eqz v3, :cond_2

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_2
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput v1, v0, Lnwp;->P:I

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v0, Lnwp;->m:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v3, v2}, Lnvf;->h(F)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    sget-object v3, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

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

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_2e
    iget-boolean v2, v0, Lnwp;->J:Z

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

    :goto_2f
    invoke-direct/range {p0 .. p0}, Lnwp;->e605802609d859f9b9b73c357712681fm()Z

    move-result v2

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

    :goto_30
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v2}, Lhdd;->a()Lpog;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_32
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_34
    if-nez v2, :cond_3

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

    :cond_3
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2, v3}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_36
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v2, :cond_4

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8b

    nop

    nop

    :goto_38
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_5a

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

    nop

    :goto_39
    iget v2, v0, Lnwp;->P:I

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, v0, Lnwp;->w:Lnvf;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0, v3, v1}, Lnwp;->K(FI)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :goto_3d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v2, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :cond_6
    :goto_40
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v0, p0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->E(IZ)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->F(I)V

    :goto_44
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/16 v1, 0x14c9

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_46
    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v3, v4, v2}, Lnvf;->g(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;F)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-eqz v2, :cond_7

    nop

    goto/32 :goto_3d

    nop

    :cond_7
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_49
    monitor-enter v3

    nop

    :try_start_0
    iget v4, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    nop

    const/4 v6, 0x0

    nop

    if-ne v4, v1, :cond_8

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_8
    iput v1, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->l:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->H(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    nop

    nop

    nop

    const v9, 0x7f070ad5

    nop

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    const v10, 0x7f070ad8

    nop

    nop

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    nop

    nop

    nop

    nop

    const v11, 0x7f070aa1

    nop

    nop

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    const v12, 0x7f070acf

    nop

    nop

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    nop

    nop

    const/4 v12, 0x5

    nop

    if-ne v1, v12, :cond_9

    nop

    move v12, v6

    nop

    nop

    goto :goto_4a

    nop

    nop

    nop

    nop

    :cond_9
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    const v13, 0x7f070acd

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    nop

    nop

    :goto_4a
    sub-int/2addr v9, v7

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x2

    nop

    div-int/2addr v9, v13

    nop

    nop

    nop

    sub-int v14, v10, v11

    nop

    nop

    nop

    nop

    nop

    div-int/2addr v14, v13

    nop

    nop

    nop

    nop

    nop

    const/4 v15, 0x3

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    if-ne v1, v13, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v6, v13}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->J(ZI)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    nop

    nop

    nop

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    iput v8, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v8

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    nop

    nop

    nop

    if-eq v8, v5, :cond_c

    nop

    nop

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_4b

    nop

    nop

    :cond_a
    invoke-virtual {v2, v5, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->J(ZI)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v8

    nop

    nop

    nop

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    nop

    nop

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v6

    nop

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p1 .. p1}, Lnzk;->j(I)Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v13}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_4b

    nop

    nop

    :cond_b
    invoke-virtual {v4, v15}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_c
    :goto_4b
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v12, v7

    nop

    nop

    nop

    nop

    nop

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    nop

    nop

    nop

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_d

    nop

    nop

    nop

    invoke-virtual {v4, v9, v14, v9, v14}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    nop

    if-eqz v4, :cond_11

    nop

    nop

    if-eq v4, v11, :cond_11

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->d(Landroid/view/View;Z)Landroid/animation/ObjectAnimator;

    move-result-object v6

    nop

    new-instance v7, Lnxi;

    nop

    invoke-direct {v7, v2}, Lnxi;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v1, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->I(IZ)Landroid/animation/AnimatorSet;

    move-result-object v5

    nop

    nop

    new-instance v7, Ldxw;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v15}, Ldxw;-><init>(I)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lnxj;

    nop

    invoke-direct {v7, v2}, Lnxj;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    const-wide/16 v8, 0x0

    nop

    nop

    nop

    if-eqz v7, :cond_e

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_e

    nop

    nop

    iget-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->getCurrentPlayTime()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    iget-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_4c

    nop

    nop

    :cond_e
    move-wide v10, v8

    nop

    :goto_4c
    new-instance v7, Landroid/animation/AnimatorSet;

    nop

    nop

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v5, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    if-eqz v4, :cond_f

    nop

    nop

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    iget-object v4, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    cmp-long v4, v10, v8

    nop

    nop

    if-lez v4, :cond_10

    nop

    iget-object v4, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v4

    nop

    nop

    add-long/2addr v4, v10

    nop

    nop

    nop

    nop

    iget-object v6, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    cmp-long v4, v4, v6

    nop

    nop

    nop

    nop

    if-gez v4, :cond_10

    nop

    iget-object v4, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    invoke-virtual {v4, v10, v11}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    goto :goto_4d

    nop

    :cond_10
    sget-object v4, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->b:Lsdb;

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    const/16 v5, 0x14dc

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    move-object/from16 v16, v4

    nop

    check-cast v16, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v17, "Unsupported current playtime = %s, total duration = %s"

    nop

    iget-object v4, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v20

    nop

    nop

    nop

    nop

    move-wide/from16 v18, v10

    nop

    nop

    invoke-interface/range {v16 .. v21}, Lscz;->A(Ljava/lang/String;JJ)V

    :goto_4d
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    const v6, 0x7f08016e

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4f

    nop

    nop

    nop

    :cond_11
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    nop

    nop

    nop

    nop

    filled-new-array {v4, v7}, [I

    move-result-object v4

    nop

    nop

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    nop

    new-instance v5, Lnvy;

    nop

    const/16 v6, 0xa

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v2, v6}, Lnvy;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lnxk;

    nop

    nop

    nop

    nop

    invoke-direct {v5, v2}, Lnxk;-><init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v5, 0xc8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v5

    nop

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    nop

    nop

    const/16 v6, 0x8

    nop

    if-ne v5, v6, :cond_12

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_4e

    nop

    nop

    nop

    nop

    :cond_12
    iget-object v5, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    nop

    if-eqz v5, :cond_13

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    nop

    if-eqz v5, :cond_13

    nop

    iget-object v5, v2, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->i:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_13
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_4e
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->w()Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setVisibility(I)V

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d(Z)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    if-eq v4, v6, :cond_14

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14
    :goto_4f
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->invalidate()V

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_50
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_51
    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_52
    sget-object v3, Lnne;->f:Lnne;

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

    :goto_53
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_54
    move/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_55
    goto/16 :goto_77

    nop

    nop

    :goto_56
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v2, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_58
    if-nez v2, :cond_15

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

    :cond_15
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_9d

    nop

    :goto_5a
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v2, v4}, Lnvf;->d(F)Lnxe;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_5d
    iget-object v4, v0, Lnwp;->l:Loyn;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const-string v1, "showZoomToggleUi - unsupported zoom toggle mode."

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_61
    iget-object v3, v0, Lnwp;->l:Loyn;

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_62
    invoke-interface {v4}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, v0, Lnwp;->R:Lhoh;

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_64
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    :goto_66
    goto/32 :goto_39

    nop

    nop

    :goto_67
    sget-object v3, Lhnz;->g:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_68
    goto :goto_66

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v4, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sget-object v3, Lhmq;->af:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_6c
    iget-object v2, v0, Lnwp;->o:Landroid/widget/SeekBar;

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

    :goto_6d
    if-nez v1, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    :cond_16
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_6e
    sget-object v3, Lnne;->k:Lnne;

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

    :goto_6f
    iget-object v4, v0, Lnwp;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

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

    :goto_72
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_73
    cmpg-float v2, v2, v3

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_74
    sget-object v3, Lpog;->a:Lpog;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v2, :cond_17

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-ne v3, v1, :cond_18

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :cond_18
    :goto_77
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_7a
    iget-object v3, v0, Lnwp;->l:Loyn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

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

    :goto_7c
    throw v0

    nop

    :goto_7d
    goto/32 :goto_29

    nop

    nop

    :goto_7e
    sget-object v2, Lhnz;->g:Lhmn;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct/range {p0 .. p1}, Lnwp;->aaadf0a9c0da915f2782a301bde92c44m(I)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_80
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_81
    iget-object v3, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v3, v0, Lnwp;->l:Loyn;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_83
    if-lez v0, :cond_19

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_19
    goto/32 :goto_1

    nop

    :goto_84
    if-eqz v2, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    :cond_1a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_85
    iget-object v2, v0, Lnwp;->w:Lnvf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_86
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v2

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

    :goto_87
    if-nez v2, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0, v3, v1}, Lnwp;->K(FI)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_89
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit v3

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7c

    nop

    nop

    :goto_8a
    iget-object v2, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_8b
    iget-object v2, v0, Lnwp;->y:Loyd;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v4, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v2, v3}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8f
    iget v3, v0, Lnwp;->P:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v2, v0, Lnwp;->R:Lhoh;

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

    :goto_92
    invoke-virtual {v2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_93
    const v1, 0xd

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

    :goto_94
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_95
    iget-object v2, v0, Lnwp;->k:Lhdd;

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

    :goto_96
    iget-object v1, v0, Lnwp;->R:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_97
    check-cast v2, Lnne;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_98
    iget-object v2, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_99
    check-cast v2, Lnne;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v2, v3, v4}, Lnvf;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v2, v0, Lnwp;->T:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v3, v4, v2}, Lnvf;->g(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;F)V

    :goto_9d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_9e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v3, v0, Lnwp;->w:Lnvf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a0
    if-ne v2, v1, :cond_1c

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_57

    nop

    nop

    :goto_a1
    iget v3, v0, Lnwp;->P:I

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

    :goto_a2
    if-gez v2, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_a3
    if-eq v3, v1, :cond_1e

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_3a

    nop

    nop

    :goto_a4
    check-cast v4, Ljava/lang/Float;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_a5
    if-eqz v2, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    :cond_1f
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_a8
    const/4 v4, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a9
    invoke-virtual/range {p0 .. p0}, Lnwp;->x()Landroid/animation/AnimatorSet;

    :goto_aa
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    if-ne v2, v3, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_20
    :goto_ac
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_ad
    iget-object v2, v0, Lnwp;->y:Loyd;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final v()F
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v0, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    div-float/2addr v0, v2

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

    :goto_5
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lnwp;->C:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    div-float/2addr v1, v2

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v1, 0x10

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

    nop

    :goto_b
    iget v1, p0, Lnwp;->D:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_f
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    const v0, 0x5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final w()I
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lnwp;->P:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_2
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

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnwp;->l:Loyn;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const v1, 0x1c

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

    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->a(I)I

    move-result p0

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

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0, v1}, Lnwp;->K(FI)I

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    const v0, 0x18

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final x()Landroid/animation/AnimatorSet;
    .locals 18

    goto/32 :goto_5

    nop

    nop

    :goto_0
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v7

    nop

    nop

    :try_start_0
    iget-object v1, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    iget v1, v0, Lnwp;->O:I

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    if-eq v1, v8, :cond_0

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, v0, Lnwp;->ab:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    iget-object v1, v0, Lnwp;->ab:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget v1, v0, Lnwp;->P:I

    nop

    nop

    iput v1, v0, Lnwp;->O:I

    nop

    nop

    nop

    iget-object v1, v0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    const v2, 0x7f070ac9

    nop

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    nop

    nop

    iget-object v1, v0, Lnwp;->z:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    const v2, 0x7f070ac0

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v9

    nop

    nop

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    nop

    nop

    iget-object v2, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    iget v3, v0, Lnwp;->P:I

    nop

    nop

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->H(I)I

    move-result v2

    nop

    nop

    nop

    nop

    filled-new-array {v1, v2}, [I

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lngx;

    nop

    nop

    const/16 v2, 0x10

    nop

    nop

    invoke-direct {v1, v9, v2}, Lngx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v11, 0xc8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v13, 0x0

    nop

    sput v13, Lnwp;->i:I

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    sput v1, Lnwp;->j:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    nop

    nop

    filled-new-array {v1, v5}, [I

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    nop

    nop

    nop

    nop

    iget-boolean v1, v0, Lnwp;->Y:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    new-instance v15, Lnvx;

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    move-object v1, v15

    nop

    move-object/from16 v2, p0

    nop

    move-object v3, v9

    nop

    nop

    invoke-direct/range {v1 .. v6}, Lnvx;-><init>(Lnwp;Landroid/widget/ImageView;III)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v14, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_2
    const/4 v1, 0x2

    nop

    nop

    new-array v2, v1, [F

    nop

    nop

    nop

    nop

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    nop

    nop

    nop

    new-instance v3, Lngx;

    nop

    const/16 v4, 0x11

    nop

    nop

    nop

    invoke-direct {v3, v0, v4}, Lngx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x53

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v1, [F

    nop

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    nop

    nop

    nop

    new-instance v6, Lngx;

    nop

    nop

    nop

    nop

    const/16 v11, 0x12

    nop

    nop

    invoke-direct {v6, v0, v11}, Lngx;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lnwe;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v0}, Lnwe;-><init>(Lnwp;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v6

    nop

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object v6

    nop

    nop

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v6

    nop

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v6, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v1, [Landroid/animation/Animator;

    nop

    aput-object v2, v11, v13

    nop

    nop

    nop

    aput-object v5, v11, v8

    nop

    invoke-virtual {v6, v11}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v5, v0, Lnwp;->E:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x3

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    iget-object v5, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    invoke-virtual {v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v5

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lnwp;->v()F

    move-result v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lnwp;->w()I

    move-result v1

    nop

    nop

    nop

    int-to-float v1, v1

    nop

    nop

    const/high16 v16, 0x40000000    # 2.0f

    nop

    nop

    div-float v1, v1, v16

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v15, v1

    nop

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTranslationX(F)V

    iget v1, v0, Lnwp;->Z:F

    nop

    neg-float v1, v1

    nop

    div-float v1, v1, v16

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    iget v5, v0, Lnwp;->aa:I

    nop

    nop

    nop

    move-object/from16 v17, v9

    nop

    int-to-long v8, v5

    nop

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lnwp;->w()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    int-to-float v8, v8

    nop

    nop

    div-float v8, v8, v16

    nop

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    iget v8, v0, Lnwp;->Z:F

    nop

    div-float v8, v8, v16

    nop

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->r()Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    iget v5, v0, Lnwp;->Z:F

    nop

    nop

    div-float v5, v5, v16

    nop

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lnwp;->w()I

    move-result v5

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    div-float v5, v5, v16

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    new-array v1, v11, [Landroid/animation/Animator;

    nop

    nop

    aput-object v10, v1, v13

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    aput-object v14, v1, v3

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    aput-object v6, v1, v3

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    nop

    nop

    nop

    :cond_3
    move-object/from16 v17, v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lnwp;->y()Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    new-array v3, v3, [Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    aput-object v10, v3, v13

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    aput-object v14, v3, v4

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    aput-object v6, v3, v4

    nop

    nop

    nop

    iget-object v4, v0, Lnwp;->W:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    aput-object v4, v3, v11

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    aput-object v1, v3, v4

    nop

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    new-instance v1, Lnwf;

    nop

    nop

    move-object/from16 v3, v17

    nop

    invoke-direct {v1, v0, v3}, Lnwf;-><init>(Lnwp;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, v0, Lnwp;->ab:Landroid/animation/AnimatorSet;

    nop

    nop

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v0, v13}, Lnwp;->B(Z)V

    monitor-exit v7

    nop

    nop

    nop

    nop

    return-object v2

    nop

    nop

    :cond_4
    :goto_3
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    monitor-exit v7

    nop

    nop

    nop

    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit v7

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v0, 0xd

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xd

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

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    :goto_b
    sget-object v7, Lnwp;->b:Ljava/lang/Object;

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

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final y()Landroid/animation/ValueAnimator;
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    new-instance v2, Lmsq;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    invoke-direct {v2, p0, v0, v3}, Lmsq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const v0, 0x1a

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    return-object v1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_11
    const v1, 0x12

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

    :goto_12
    filled-new-array {v2, v1}, [I

    move-result-object v1

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

    :goto_13
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lnwp;->w()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method final z()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

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

    :goto_6
    iget-object p0, p0, Lnwp;->h:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lnwp;->g:Ljava/lang/Runnable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v1, p0, Lnwp;->I:Z

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

    :goto_e
    const v1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_13
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
