.class public final Lelu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldxm;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lelu;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lelu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 4

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

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

    :goto_1
    iget-object p0, p0, Lelu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2
    const v1, 0x1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_4
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_8
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_2
    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3d

    nop

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c:I

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

    nop

    :goto_10
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Lelu;->a:Ljava/lang/Object;

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

    :goto_13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    if-eq v3, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    :goto_16
    sget-object v2, Ldwd;->a:[I

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

    :goto_17
    neg-int v0, v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_18
    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    check-cast p0, Lelw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1b
    add-int/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v0, v2

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq v0, v1, :cond_6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->f:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

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

    :goto_21
    goto/16 :goto_46

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_45

    nop

    nop

    :goto_23
    check-cast p0, Lelw;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Lelw;->w(I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v1

    nop

    nop

    :goto_26
    goto/32 :goto_35

    nop

    nop

    :goto_27
    iget v0, p0, Lelu;->b:I

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

    :goto_28
    iget-object v0, p0, Lelu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

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

    :goto_2b
    return v1

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return v1

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v0, v1, :cond_7

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v3, :cond_8

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_31
    check-cast v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_32
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_33
    const/4 v0, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lelu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v1, v2

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, p1}, Lelw;->w(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move v0, v1

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

    :goto_39
    iget-object p0, p0, Lelu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3a
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return v1

    nop

    :goto_3d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v0, :cond_9

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

    :cond_9
    goto/32 :goto_21

    nop

    nop

    :goto_40
    check-cast p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

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

    :goto_41
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_45
    move v2, v0

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->o(Landroid/view/View;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ad(Landroid/view/View;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    nop

    nop

    :goto_4a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
