.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;
.super Landroid/transition/TransitionSet;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lakg;

    invoke-direct {v0}, Lakg;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Lake;

    invoke-direct {v0}, Lake;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->c:Landroid/view/animation/Interpolator;

    const-class v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":content-version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":visibility"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->f:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->setOrdering(I)Landroid/transition/TransitionSet;

    new-instance p1, Livg;

    invoke-direct {p1}, Livg;-><init>()V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Livg;->setDuration(J)Landroid/transition/Transition;

    sget-object p2, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Livg;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance p1, Livd;

    invoke-direct {p1}, Livd;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Livd;->setDuration(J)Landroid/transition/Transition;

    sget-object p2, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Livd;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-void
.end method

.method static a(Ljava/util/Map;)I
    .locals 1

    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static b(Landroid/transition/TransitionValues;)V
    .locals 4

    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const v1, 0x7f0b0377

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v3, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->f:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_3

    instance-of v1, p1, Landroid/text/Spanned;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7f0b0377

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method static d(Ljava/util/Map;)Z
    .locals 1

    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->f:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 3

    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v2, 0x0

    if-eq p0, p1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->d(Ljava/util/Map;)Z

    move-result p0

    invoke-static {v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->d(Ljava/util/Map;)Z

    move-result p1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a(Ljava/util/Map;)I

    move-result p0

    invoke-static {v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a(Ljava/util/Map;)I

    move-result p1

    if-eq p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v2
.end method
