.class public abstract Lrjj;
.super Landroid/graphics/drawable/Drawable;
.source "PG"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final a:Landroid/util/Property;


# instance fields
.field private b:Landroid/animation/ValueAnimator;

.field private c:Landroid/animation/ValueAnimator;

.field private final d:F

.field private e:F

.field final i:Landroid/content/Context;

.field final j:Lrir;

.field public k:Ljava/util/List;

.field public l:Z

.field final m:Landroid/graphics/Paint;

.field public n:I

.field final o:Lqqy;


# direct methods
.method private final varargs 166277962e993c138a6b1f0c9b571cc0m([Landroid/animation/ValueAnimator;)V
    .locals 2

    goto/32 :goto_e

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x14

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    aget-object p1, p1, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lrjj;->l:Z

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

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    iput-boolean v0, p0, Lrjj;->l:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    iput-boolean v1, p0, Lrjj;->l:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const-class v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    invoke-direct {v0, v1}, Lrji;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    const v0, 0xd

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

    nop

    :goto_7
    new-instance v0, Lrji;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lrjj;->a:Landroid/util/Property;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    const v1, 0x5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
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
.end method

.method public constructor <init>(Landroid/content/Context;Lrir;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lqqy;

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

    :goto_1
    invoke-direct {p1}, Lqqy;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lrjj;->j:Lrir;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/high16 v0, -0x40800000    # -1.0f

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
    const/16 p1, 0xff

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lrjj;->setAlpha(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lrjj;->d:F

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

    :goto_8
    iput-object v0, p0, Lrjj;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    iput-object p1, p0, Lrjj;->i:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lrjj;->o:Lqqy;

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
.end method

.method static synthetic m(Lrjj;)V
    .locals 1

    goto/32 :goto_1

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
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-super {p0, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public e(ZZZ)Z
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

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

    nop

    :goto_1
    goto/16 :goto_29

    nop

    nop

    :goto_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrjj;->isVisible()Z

    move-result v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_9
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_b
    if-nez p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :cond_2
    :goto_c
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5f

    nop

    nop

    :goto_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lrjj;->a:Landroid/util/Property;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_50

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lrjj;->c:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_83

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_16
    iput-boolean v3, p0, Lrjj;->l:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lrjj;->c:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lrir;->c()Z

    move-result p1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p2, :cond_4

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

    :cond_4
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1c
    if-eqz p3, :cond_5

    nop

    goto/32 :goto_7c

    nop

    :cond_5
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lrjj;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lrjj;->c:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_f

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lrjj;->j:Lrir;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lrjj;->c:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2b
    sget-object v1, Lrer;->b:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_2c
    invoke-direct {v1, p0}, Lrjh;-><init>(Lrjj;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    :goto_2e
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lrjj;->j:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_30
    new-instance v1, Lrjh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_31
    invoke-direct {v4, p0}, Lrjg;-><init>(Lrjj;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_33
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_5b

    nop

    nop

    :goto_35
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p2, :cond_7

    nop

    goto/32 :goto_12

    nop

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Lrir;->d()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_38
    return v1

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_3c
    goto/32 :goto_13

    nop

    nop

    :goto_3d
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_8
    goto/32 :goto_80

    nop

    nop

    :goto_3e
    new-array v3, v3, [F

    nop

    nop

    nop

    fill-array-data v3, :array_1

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_6e

    nop

    nop

    :goto_42
    return v1

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_68

    nop

    nop

    :goto_44
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_45
    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez p3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

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

    nop

    :goto_48
    sget-object p1, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->PZiim:Ljava/lang/String;

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

    :goto_49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v0, p0, Lrjj;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4d
    if-eqz v0, :cond_b

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :cond_b
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0, p2}, Lrjj;->166277962e993c138a6b1f0c9b571cc0m([Landroid/animation/ValueAnimator;)V

    :goto_50
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_54
    if-nez p1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_69

    nop

    nop

    :goto_55
    iget-boolean p2, p0, Lrjj;->l:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_58
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v4, Lrjg;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v0, p0, Lrjj;->b:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v0, :cond_d

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez p1, :cond_e

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5e
    const-string p1, "Cannot set hideAnimator while the current hideAnimator is running."

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    return v1

    nop

    nop

    :goto_60
    goto/32 :goto_54

    nop

    nop

    :goto_61
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_62
    invoke-direct {p0, p1}, Lrjj;->166277962e993c138a6b1f0c9b571cc0m([Landroid/animation/ValueAnimator;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_64
    filled-new-array {v0}, [Landroid/animation/ValueAnimator;

    move-result-object p1

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

    :goto_65
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_74

    nop

    nop

    :goto_66
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_f
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_67
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-nez p1, :cond_10

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Lrjj;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6a
    const-wide/16 v1, 0x1f4

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput-object v0, p0, Lrjj;->b:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_6c
    iput-boolean p2, p0, Lrjj;->l:Z

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_4e

    nop

    nop

    :goto_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_6f
    if-eqz v0, :cond_11

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_70
    invoke-super {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-eqz v4, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_72
    move v1, v3

    nop

    :goto_73
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_74
    iget-object v0, p0, Lrjj;->c:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v0, Lrjj;->a:Landroid/util/Property;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_76
    filled-new-array {v0}, [Landroid/animation/ValueAnimator;

    move-result-object p2

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

    nop

    :goto_77
    return v1

    nop

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

    :goto_78
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    return p0

    nop

    :goto_7c
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_7d
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_80
    iget-object v2, p0, Lrjj;->c:Landroid/animation/ValueAnimator;

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

    :goto_81
    if-lez v0, :cond_14

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_5

    nop

    :goto_82
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_84
    new-array v4, v3, [F

    nop

    nop

    fill-array-data v4, :array_0

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, p0, Lrjj;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, p0, Lrjj;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_87
    sget-object v4, Lrer;->b:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_88
    iput-object v0, p0, Lrjj;->c:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop
.end method

.method final f()F
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrjj;->j:Lrir;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 p0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrir;->d()Z

    move-result v0

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

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lrjj;->j:Lrir;

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

    :goto_8
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lrjj;->e:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lrir;->c()Z

    move-result v0

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
.end method

.method final g()F
    .locals 6

    goto/32 :goto_17

    nop

    nop

    :goto_0
    cmpl-float v3, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    div-float/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrjj;->j:Lrir;

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

    :goto_7
    cmpg-float p0, v0, v1

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_9
    if-gtz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-long/2addr v2, v4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_d
    int-to-long v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    float-to-int p0, v2

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_10
    div-float/2addr v2, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ltz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v2, v2, Lrir;->i:I

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2d

    nop

    nop

    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    rem-float/2addr v0, p0

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

    :goto_16
    add-float/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_18
    const/high16 v3, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_19
    const/high16 p0, 0x3f800000    # 1.0f

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

    :goto_1a
    const/4 v1, 0x0

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

    :goto_1b
    cmpl-float v2, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Lqqy;->m(Landroid/content/ContentResolver;)F

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

    :goto_1f
    int-to-float v2, v2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Lrjj;->j:Lrir;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_23
    return v0

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lrjj;->i:Landroid/content/Context;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    iget v0, v0, Lrir;->k:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    instance-of v2, p0, Lrjf;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return v0

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lrjj;->j:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2e
    long-to-float v0, v2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    int-to-float p0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_30
    if-gtz v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_31
    iget p0, p0, Lrir;->k:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v2}, Lrir;->b(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lrjj;->j:Lrir;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_36
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v0, p0, Lrjj;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_38
    int-to-float p0, p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_39
    iget v2, v2, Lrir;->h:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3a
    mul-float/2addr v2, v3

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

    :goto_3b
    iget-object v2, p0, Lrjj;->j:Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop
.end method

.method public final getAlpha()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget p0, p0, Lrjj;->n:I

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

.method public getOpacity()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, -0x3

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
.end method

.method public final h(Leki;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrjj;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrjj;->k:Ljava/util/List;

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

    :goto_3
    iget-object v0, p0, Lrjj;->k:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

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

    goto/32 :goto_a

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
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lrjj;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop
.end method

.method final i(F)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrjj;->invalidateSelf()V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget v0, p0, Lrjj;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    cmpl-float v0, v0, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lrjj;->e:F

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

.method public final isRunning()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

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

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrjj;->j()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lrjj;->k()Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrjj;->c:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

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
    iget-object p0, p0, Lrjj;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(ZZZ)Z
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2, v1}, Lrjj;->e(ZZZ)Z

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lrjj;->i:Landroid/content/Context;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float p3, v0, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

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
    if-gtz p3, :cond_2

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

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    :goto_12
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Lqqy;->m(Landroid/content/ContentResolver;)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v0, v0}, Lrjj;->l(ZZZ)Z

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

    :goto_2
    const/4 v0, 0x0

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

.method public final o(Leki;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrjj;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_5
    iget-object v0, p0, Lrjj;->k:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

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

    :goto_8
    iput-object p1, p0, Lrjj;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lrjj;->k:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final setAlpha(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrjj;->invalidateSelf()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lrjj;->n:I

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

    :goto_2
    return-void

    nop

    nop
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    goto/32 :goto_3

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
    invoke-virtual {p0}, Lrjj;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrjj;->m:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, v0}, Lrjj;->l(ZZZ)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final start()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0, v0, v1}, Lrjj;->e(ZZZ)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const v0, 0x13

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_8

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

    goto/32 :goto_5

    nop

    nop
.end method

.method public final stop()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

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

    :goto_5
    invoke-virtual {p0, v0, v1, v0}, Lrjj;->e(ZZZ)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

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

    goto/32 :goto_b

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    const v1, 0x1d

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
.end method
