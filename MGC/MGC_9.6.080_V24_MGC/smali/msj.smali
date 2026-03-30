.class public Lmsj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final c:Lmse;

.field public final d:Landroid/content/Context;

.field public e:Lmsi;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lmse;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    nop

    :goto_2
    iput-object p1, p0, Lmsj;->d:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmsj;->c:Lmse;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method protected final b()Landroid/view/View;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmsj;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    const v0, 0x7f0e015c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method protected final c(Landroid/view/View;Ljava/util/List;ILrmb;Lrmj;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 5

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f0b0518

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrmm;->a()V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v3}, Lke;->l(Lkg;)V

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    iget-object p3, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_6
    invoke-direct {p4, p3, v2}, Lrml;-><init>(Landroid/view/ViewGroup;I)V

    goto/32 :goto_a

    nop

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

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p4, p0, Lrmm;->e:Lrmk;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-gt p3, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p4, p0, Lrmm;->f:Lrmb;

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

    :goto_b
    iput-boolean v2, v0, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p4, Lrml;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, v3}, Lke;->l(Lkg;)V

    :goto_e
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p4, p0, Lrmm;->e:Lrmk;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_10
    if-eqz p3, :cond_1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    :goto_11
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_12
    iget-object p3, p0, Lrmm;->c:Lke;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3, p4}, Lcom/google/android/material/tabs/TabLayout;->f(Lrma;)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lrmm;->b:Landroidx/viewpager2/widget/ViewPager2;

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

    :goto_16
    invoke-direct {p3, p0}, Lrmi;-><init>(Lrmm;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_17
    const/4 v1, 0x1

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

    :goto_18
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

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

    :goto_19
    iget-boolean p3, p0, Lrmm;->d:Z

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

    :goto_1a
    iget-object p0, p0, Lmsj;->d:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p3, p0, Lrmm;->b:Landroidx/viewpager2/widget/ViewPager2;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v0, Landroidx/viewpager2/widget/ViewPager2;->i:Lkg;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p4}, Lcom/google/android/material/tabs/TabLayout;->f(Lrma;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p3, p0}, Lcom/google/android/material/tabs/TabLayout;->p(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v1, Lmsi;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p3, p0, Lrmm;->c:Lke;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->Y(Lke;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v4, v3, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_26
    const-string p1, "TabLayoutMediator attached before ViewPager2 has an adapter"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_27
    iget-object p3, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

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

    :goto_28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5c

    nop

    nop

    :goto_29
    invoke-direct {p4, p3}, Lrmk;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p3, p3, Landroidx/viewpager2/widget/ViewPager2;->a:Lell;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v3}, Lke;->k(Lkg;)V

    goto/32 :goto_79

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2e
    invoke-virtual {p3, p4}, Lell;->d(Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2f
    iput-object p3, p0, Lrmm;->g:Lkg;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    iget-object p4, p0, Lrmm;->g:Lkg;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_31
    const/16 p0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_32
    if-lt v1, v3, :cond_3

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v3, p0}, Lpuq;->w(ILandroid/content/Context;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move v1, v2

    nop

    nop

    :goto_38
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_39
    iget-object p4, p0, Lrmm;->f:Lrmb;

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

    :goto_3a
    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->b()Lke;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v2, v0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3d
    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3f
    const p3, 0x7f0b047f

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_40
    new-instance p0, Lrmm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_42
    iget-object v3, v0, Landroidx/viewpager2/widget/ViewPager2;->j:Ldwc;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_43
    iput-object p3, p0, Lrmm;->c:Lke;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p3, p0, Lrmm;->b:Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p3}, Lelw;->x()V

    :goto_47
    goto/32 :goto_1a

    nop

    nop

    :goto_48
    if-nez p3, :cond_4

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5f

    nop

    nop

    :goto_49
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getChildCount()I

    move-result v3

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

    :goto_4b
    invoke-virtual {p3, p4}, Lke;->k(Lkg;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4c
    check-cast v3, Lelw;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v3}, Lelw;->x()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v1, p2, p3}, Lmsi;-><init>(Ljava/util/List;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->c()V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 p2, 0x2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    :goto_57
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p3, v0, Landroidx/viewpager2/widget/ViewPager2;->j:Ldwc;

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

    :goto_59
    invoke-virtual {v1, v3}, Lke;->k(Lkg;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_5a
    invoke-direct {p0, p1, v0, p5}, Lrmm;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lrmj;)V

    goto/32 :goto_19

    nop

    nop

    :goto_5b
    iget-object v3, v3, Lelw;->b:Lkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    throw p0

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    new-instance p4, Lrmk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5f
    iput-boolean v1, p0, Lrmm;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v2, v0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v2, v0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast p3, Lelw;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_63
    iget-object v3, v3, Lelw;->b:Lkg;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_64
    iget-object p3, p0, Lrmm;->a:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v3, v0, Landroidx/viewpager2/widget/ViewPager2;->i:Lkg;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const v3, 0x7f070291

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p3, p0, Lrmm;->b:Landroidx/viewpager2/widget/ViewPager2;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance p3, Lrmi;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_69
    throw p0

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_11

    nop

    nop

    :goto_6b
    const-string p1, "TabLayoutMediator is already attached"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_6c
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_6d
    if-lt p0, p2, :cond_5

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v4, :cond_6

    nop

    goto/32 :goto_77

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const v0, 0x1c

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_70
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

    :goto_71
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_33

    nop

    :goto_72
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_73
    return-object v0

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_52

    nop

    nop

    :goto_77
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v3, v0, Landroidx/viewpager2/widget/ViewPager2;->j:Ldwc;

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
    iput-object v1, p0, Lmsj;->e:Lmsi;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    add-int/lit8 v1, v1, 0x1

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

    :goto_7b
    check-cast v3, Lelw;

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

    nop

    nop

    :goto_7c
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_26

    nop

    nop
.end method

.method public final d(ILandroid/view/View;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    invoke-direct {v4, p0, v0}, Lgqk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x4

    nop

    goto/32 :goto_2

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

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    move-object v5, p3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lmsj;->c:Lmse;

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

    :goto_b
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    new-instance v4, Lgqk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    move-object v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-virtual/range {v0 .. v5}, Lmse;->p(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method
