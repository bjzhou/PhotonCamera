.class public final Ldwn;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "PG"


# instance fields
.field private final a:Ldwm;

.field private b:Ljava/util/List;

.field private c:Ljava/util/ArrayList;

.field private final d:Ljava/util/HashMap;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Landroid/view/WindowInsetsAnimation;)Lscn;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1}, Lscn;-><init>(Landroid/view/WindowInsetsAnimation;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldwn;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    check-cast v0, Lscn;

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

    :goto_4
    new-instance v0, Lscn;

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

    :goto_5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ldwn;->d:Ljava/util/HashMap;

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

.method public constructor <init>(Ldwm;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ldwn;->d:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldwn;->a:Ldwm;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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
    return-void

    nop

    :goto_6
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Ldwm;->a:Landroid/view/View;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    invoke-direct {p0, p1}, Ldwn;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/WindowInsetsAnimation;)Lscn;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldwn;->d:Ljava/util/HashMap;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    iget-object v0, p0, Ldwn;->a:Ldwm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x18

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
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Ldwm;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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

    :goto_2
    iput p1, p0, Ldwm;->b:I

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

    :goto_3
    aget p1, p1, v0

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

    :goto_4
    iget-object p1, p0, Ldwm;->d:[I

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

    :goto_5
    iget-object p0, p0, Ldwn;->a:Ldwm;

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ldwm;->d:[I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ldwn;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/WindowInsetsAnimation;)Lscn;

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    :goto_1
    iget-object v1, p0, Ldwn;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2
    iget-object v1, v0, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

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

    :goto_4
    check-cast v0, Landroid/view/WindowInsetsAnimation;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_2e

    nop

    :goto_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v1, Landroid/view/WindowInsetsAnimation;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_d
    goto/32 :goto_37

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_f
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lfdn;->a:Ljava/lang/Object;

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

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_34

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_15
    const/4 v1, 0x0

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

    :goto_16
    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, v3, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    iget-object v0, v0, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    iget-object v1, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_20
    iget-object v3, v2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_21
    check-cast v0, Lscn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_22
    check-cast v3, Landroid/view/WindowInsetsAnimation;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p2, p0, Ldwn;->a:Ldwm;

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

    :goto_24
    iget-object p2, p2, Ldwm;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

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

    :goto_26
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Ldwn;->c:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_28
    iput-object v0, p0, Ldwn;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v1, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, v1}, Ldwn;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/WindowInsetsAnimation;)Lscn;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    :goto_2c
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_31
    and-int/lit8 v1, v1, 0x8

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

    :goto_32
    iget-object p0, p0, Ldwn;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Ldwn;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_17

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Ldwy;->e()Landroid/view/WindowInsets;

    move-result-object p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    nop

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

    :goto_39
    invoke-static {p1}, Ldwy;->m(Landroid/view/WindowInsets;)Ldwy;

    move-result-object p1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x14

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3c
    if-gez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v1, Landroid/view/WindowInsetsAnimation;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_40
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_41
    iget p0, p2, Ldwm;->c:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_42
    invoke-static {p0, v1, v0}, Lrer;->b(IIF)I

    move-result p0

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

    :goto_43
    check-cast v3, Lfdn;

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

    nop

    nop
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_1
    iget-object p0, p0, Ldwn;->a:Ldwm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    goto/32 :goto_e

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation$Bounds;->getLowerBound()Landroid/graphics/Insets;

    move-result-object p1

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
    invoke-direct {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Ldua;->c(Landroid/graphics/Insets;)Ldua;

    move-result-object p2

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

    :goto_7
    new-instance p0, Landroid/view/WindowInsetsAnimation$Bounds;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-static {p1}, Ldua;->c(Landroid/graphics/Insets;)Ldua;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    iget v1, p0, Ldwm;->b:I

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

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldwm;->a:Landroid/view/View;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    :goto_d
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ldwm;->d:[I

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

    :goto_f
    aget v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ldua;->a()Landroid/graphics/Insets;

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

    nop

    :goto_11
    invoke-virtual {p2}, Ldua;->a()Landroid/graphics/Insets;

    move-result-object p2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iget-object p0, p0, Ldwm;->a:Landroid/view/View;

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

    :goto_13
    iput v1, p0, Ldwm;->c:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Ldwm;->d:[I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ldwn;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/WindowInsetsAnimation;)Lscn;

    goto/32 :goto_4

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Landroid/view/WindowInsetsAnimation$Bounds;->getUpperBound()Landroid/graphics/Insets;

    move-result-object p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-float v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    sub-int/2addr v1, v0

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

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
