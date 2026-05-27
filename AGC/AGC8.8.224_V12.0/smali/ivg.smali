.class public final Livg;
.super Landroid/transition/Transition;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/util/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Livg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Livg;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":snapshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Livg;->b:Ljava/lang/String;

    new-instance v0, Live;

    invoke-direct {v0}, Live;-><init>()V

    sput-object v0, Livg;->c:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b(Landroid/transition/TransitionValues;)V

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    invoke-direct {v3, v4, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    :goto_1
    if-eqz v3, :cond_3

    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v0, Livg;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    iget-object p1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object p3, Livg;->b:Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p3, Livg;->c:Landroid/util/Property;

    const/16 v0, 0x19

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p1, p3, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-instance v0, Livf;

    invoke-direct {v0, p1}, Livf;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearSnapshot;)V

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Livh;

    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p1, v0}, Livh;-><init>(Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Livj;

    iget-object p2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p1, p2}, Livj;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Livg;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object p3
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public final isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
