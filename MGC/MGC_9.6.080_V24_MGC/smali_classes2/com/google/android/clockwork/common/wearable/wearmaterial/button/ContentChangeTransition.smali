.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;
.super Landroid/transition/TransitionSet;
.source "PG"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, ":visibility"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sput-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e:Ljava/lang/String;

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

    :goto_5
    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a:[Ljava/lang/String;

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

    :goto_6
    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lead;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :goto_a
    invoke-direct {v0}, Lead;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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
    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->f:Ljava/lang/String;

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

    :goto_f
    new-instance v0, Leab;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->c:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    const-class v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    const-string v2, ":content-version"

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

    :goto_19
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Leab;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    sget-object p2, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->c:Landroid/view/animation/Interpolator;

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

    :goto_1
    invoke-virtual {p1, p2}, Lnyt;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_19

    nop

    :goto_4
    const-wide/16 v0, 0x12c

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

    nop

    :goto_5
    invoke-direct {p1}, Lnyt;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Lnyw;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Lnyt;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lnyw;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-direct {p1}, Lnyw;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->setOrdering(I)Landroid/transition/TransitionSet;

    goto/32 :goto_a

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0, v1}, Lnyt;->setDuration(J)Landroid/transition/Transition;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0, v1}, Lnyw;->setDuration(J)Landroid/transition/Transition;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const v0, 0xa

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    const-wide/16 v0, 0x96

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p2, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method static a(Ljava/util/Map;)I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Integer;

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

    :goto_1
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

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
    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e:Ljava/lang/String;

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
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static b(Landroid/transition/TransitionValues;)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

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

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1a

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

    :goto_a
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->f:Ljava/lang/String;

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

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    :goto_12
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    :goto_14
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

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

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

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

    :goto_16
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    :goto_18
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

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

    :goto_1c
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    const v1, 0x11

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

    nop

    :goto_1e
    iget-object v2, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

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

    :goto_1f
    sget-object v3, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e:Ljava/lang/String;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x7f0b0484

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

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

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

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto :goto_13

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_1

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

    :goto_d
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    const v1, 0x15

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    const v0, 0x7f0b0484

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    if-eq v0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_1a
    return-void

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1b

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    instance-of v1, v0, Landroid/text/Spanned;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method static d(Ljava/util/Map;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

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

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

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
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_4

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 3

    goto/32 :goto_1d

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

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

    :goto_2
    invoke-static {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a(Ljava/util/Map;)I

    move-result p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-ne p0, p1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

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

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->d(Ljava/util/Map;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v2

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    nop

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

    :goto_11
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    invoke-static {v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a(Ljava/util/Map;)I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    iget-object p0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_1c
    invoke-static {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->d(Ljava/util/Map;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x12

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method
