.class public final Lnyw;
.super Landroid/transition/Transition;
.source "PG"


# static fields
.field private static final a:Ljava/lang/String; = "nyw"

.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/util/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

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

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    const-class v0, Lnyw;

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

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_4
    sput-object v0, Lnyw;->c:Landroid/util/Property;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, ":snapshot"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lnyu;

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lnyw;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Lnyu;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b(Landroid/transition/TransitionValues;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

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

    :goto_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    const/4 v2, 0x0

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

    :goto_4
    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b(Landroid/transition/TransitionValues;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_b
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v3, Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    goto/32 :goto_13

    nop

    nop

    :goto_12
    const v1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    sget-object p1, Lnyw;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    if-eqz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

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

    nop

    :goto_1c
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_20
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    :goto_21
    invoke-direct {v2, v3, p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    :goto_22
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_24
    iget-object p0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_25
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    move-object v3, v2

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    :goto_29
    goto :goto_28

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_2a

    nop

    :goto_2c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2d
    goto :goto_22

    nop

    nop

    :goto_2e
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    goto/32 :goto_16

    nop

    nop

    :goto_0
    sget-object p3, Lnyw;->c:Landroid/util/Property;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lnyv;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_5
    check-cast p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

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

    :goto_6
    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x19

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

    :goto_9
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lnyx;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    sget-object p3, Lnyw;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lnyw;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p2}, Lnyz;-><init>(Landroid/view/View;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lnyv;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

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

    nop

    :goto_15
    new-instance p1, Lnyz;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1, v0}, Lnyx;-><init>(Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
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

    nop

    nop

    :goto_1
    sget-object p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a:[Ljava/lang/String;

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

.method public final isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

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

    :goto_3
    invoke-static {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-nez p0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
