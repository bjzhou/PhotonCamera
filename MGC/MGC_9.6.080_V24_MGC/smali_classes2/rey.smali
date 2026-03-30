.class public final Lrey;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldvo;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p2, p0, Lrey;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrey;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;Ldwy;)Ldwy;
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lrga;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move p1, v1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lrga;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Ldsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_0

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lrey;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

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

    nop

    :goto_d
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:Ldwy;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lrga;

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

    :goto_10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_11
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:Ldwy;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lrey;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_14
    return-object p2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lrey;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    if-eqz p1, :cond_2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

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

    :goto_1b
    invoke-virtual {p2}, Ldwy;->q()Z

    move-result v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_3
    goto/32 :goto_63

    nop

    :goto_1d
    sget-object v2, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1d

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

    :goto_1f
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_22
    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2}, Ldwy;->d()I

    move-result p1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v0, v1

    nop

    nop

    :goto_25
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v2

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

    :goto_28
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_29
    check-cast p1, Lrga;

    nop

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

    :goto_2a
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_6
    :goto_2b
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget p1, p0, Lrey;->b:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2d
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

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

    :goto_2e
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    :goto_2f
    iget-object v0, p1, Lrga;->g:Lrfz;

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

    nop

    :goto_30
    if-gtz p1, :cond_8

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_33
    if-lt v1, p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_34
    iget-object v1, p1, Lrga;->b:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, p1}, Lrfz;->d(Landroid/view/Window;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_36
    iget-object p1, p1, Lrga;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_37
    check-cast p1, Lrga;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getFitsSystemWindows()Z

    move-result p1

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

    nop

    :goto_39
    invoke-direct {v0, v1, p2}, Lrfz;-><init>(Landroid/view/View;Ldwy;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v0, Lrfz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3b
    iget-object p1, p0, Lrey;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lrey;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3d
    move p1, v0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3e
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->requestLayout()V

    :goto_40
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_42
    if-ne v0, p1, :cond_a

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->k()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v0, p1, Lrga;->g:Lrfz;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p1, Lrga;->g:Lrfz;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_46
    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ag(Lrft;)V

    goto/32 :goto_56

    nop

    nop

    :goto_47
    iget-object p0, p0, Lrey;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_48
    const v1, 0xc

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Lrga;->getWindow()Landroid/view/Window;

    move-result-object p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_64

    nop

    nop

    :goto_4b
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, v0, Ldsz;->a:Ldsw;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v1, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4f
    if-eqz p1, :cond_b

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_52
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_53
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_2

    nop

    nop

    :goto_55
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-object p2

    nop

    :goto_57
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v0, :cond_d

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_d
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_25

    nop

    nop

    :goto_5a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lrga;->g:Lrfz;

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

    :goto_5c
    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5d
    goto :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_65

    nop

    nop

    :goto_5f
    invoke-virtual {p2}, Ldwy;->q()Z

    move-result p1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_60
    return-object p2

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object p1, p2

    nop

    nop

    :goto_66
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_67
    if-nez p1, :cond_e

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

    :cond_e
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop
.end method
