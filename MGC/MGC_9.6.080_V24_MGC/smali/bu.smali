.class public final Lbu;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public a:Z

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private d:Landroid/view/View$OnApplyWindowInsetsListener;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p0, p0, Lbu;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lbu;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcj;)V
    .locals 5

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, p1, v0}, Lcj;->E(Lcg;Z)V

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p3, Lbo;->R:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

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

    :goto_6
    invoke-virtual {p2}, Lohx;->b()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5d

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lbu;->b:Ljava/util/List;

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

    nop

    :goto_10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_12
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_13
    iput-object p0, p3, Lbo;->Q:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p3, v1, Lbo;->C:Lcj;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v2, v4, :cond_4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    iget-object v2, p3, Lcj;->l:Lbw;

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

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_33

    nop

    nop

    :goto_19
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_5
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p0, v1, Lbo;->Q:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_40

    nop

    nop

    :goto_1c
    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_1d
    invoke-interface {p2}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1e
    check-cast p3, Lbo;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p3, Lcj;->y:Lfbt;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    :goto_21
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string p3, "FragmentContainerView must have an android:id to add Fragment "

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    nop

    :goto_25
    iput-boolean v0, v1, Lbo;->y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_27
    iput-object v0, p0, Lbu;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p2, Ljava/lang/StringBuilder;

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

    :goto_29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4f

    nop

    nop

    :goto_2a
    iput-object v3, v1, Lbo;->I:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lbu;->getId()I

    move-result v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lcp;->n()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v4, :cond_6

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

    :cond_6
    goto/32 :goto_7

    nop

    nop

    :goto_2f
    iget v0, p3, Lbo;->H:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v4, v1}, Lbv;->b(Ljava/lang/String;)Lbo;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_32
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_33
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lbu;->getId()I

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_38
    iget-object p2, p1, Lai;->a:Lcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_39
    invoke-virtual {p1, p2, v1, v3}, Lcp;->h(ILbo;Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p3}, Lcj;->g()Lbv;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x10

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Lfbt;->d()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_3e
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput v2, v1, Lbo;->G:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v2, v1, Lbo;->D:Lbw;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p3, v2}, Lcj;->c(I)Lbo;

    move-result-object v4

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

    nop

    nop

    :goto_43
    iput-boolean v0, p0, Lbu;->a:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_45
    iget-object p3, p2, Lohx;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p2}, Lohx;->e()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_47
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_48
    sget-object v2, Lag;->b:[I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p2, Lohx;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Lcp;->o()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4c
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance p1, Lai;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_4e
    const-string p0, " with tag "

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_26

    nop

    nop

    :goto_52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1, p1, p2, v2}, Lbo;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/32 :goto_4d

    nop

    nop

    :goto_54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p2

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

    nop

    nop

    :goto_56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_58
    goto :goto_62

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput v2, v1, Lbo;->H:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5b
    throw p1

    nop

    nop

    :goto_5c
    goto/32 :goto_3b

    nop

    nop

    :goto_5d
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_5e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p1, p3}, Lai;-><init>(Lcj;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_60
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_20

    nop

    :goto_61
    const-string p0, ""

    nop

    :goto_62
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    goto/32 :goto_4

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

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "Views added to a FragmentContainerView must be associated with a Fragment. View "

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p0, p2}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lcj;->f(Landroid/view/View;)Lbo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const-string p2, " is not associated with a Fragment."

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Ljava/lang/IllegalStateException;

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

    nop
.end method

.method public final dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v0}, Ldwd;->b(Landroid/view/View;Ldwy;)Ldwy;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_4
    invoke-virtual {v0}, Ldwy;->q()Z

    move-result v1

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
    return-object p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ldwy;->m(Landroid/view/WindowInsets;)Ldwy;

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

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    if-lt v2, v1, :cond_3

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

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    iget-object v1, p0, Lbu;->d:Landroid/view/View$OnApplyWindowInsetsListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Ldwy;->m(Landroid/view/WindowInsets;)Ldwy;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v1, p0, p1}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

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

    :goto_11
    invoke-virtual {p0, v2}, Lbu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, v0}, Ldwd;->c(Landroid/view/View;Ldwy;)Ldwy;

    move-result-object v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lbu;->getChildCount()I

    move-result v1

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

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1

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

    :goto_1d
    goto :goto_14

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, v1, v2, v3}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lbu;->getDrawingTime()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iget-object v0, p0, Lbu;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    iget-boolean v0, p0, Lbu;->a:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_8

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
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

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

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

    :goto_3
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lbu;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lbu;->a:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lbu;->b:Ljava/util/List;

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

    :goto_d
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final endViewTransition(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

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
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lbu;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lbu;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lbu;->a:Z

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->endViewTransition(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop
.end method

.method public final removeAllViewsInLayout()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_1

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
    invoke-direct {p0, v1}, Lbu;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/View;)V

    goto/32 :goto_10

    nop

    nop

    :goto_6
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lbu;->getChildCount()I

    move-result v0

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

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

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_10
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Lbu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lbu;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public final removeViewAt(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Lbu;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/View;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lbu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final removeViewInLayout(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lbu;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/View;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final removeViews(II)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lbu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    if-lt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_b

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

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_a
    goto :goto_11

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    :goto_e
    add-int v1, p1, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v1}, Lbu;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    :goto_10
    move v0, p1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    :goto_13
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final removeViewsInLayout(II)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const v1, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViewsInLayout(II)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    add-int v1, p1, p2

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v1}, Lbu;->166277962e993c138a6b1f0c9b571cc0m(Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lbu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    move v0, p1

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\"."

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Lbu;->d:Landroid/view/View$OnApplyWindowInsetsListener;

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final startViewTransition(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v0, p0, Lbu;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->startViewTransition(Landroid/view/View;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v0, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
