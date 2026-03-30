.class public final synthetic Lrex;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field private final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lrkp;Ljava/lang/Integer;I)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

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

    nop

    :goto_1
    iput-object p4, p0, Lrex;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lrex;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrex;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lrex;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iput p6, p0, Lrex;->f:I

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

    :goto_7
    iput-object p2, p0, Lrex;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public synthetic constructor <init>(Lhfp;Lhfn;Lhfm;Landroid/graphics/Point;Landroid/graphics/Rect;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p5, p0, Lrex;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lrex;->d:Ljava/lang/Object;

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

    :goto_2
    iput p6, p0, Lrex;->f:I

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

    :goto_3
    iput-object p3, p0, Lrex;->a:Ljava/lang/Object;

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

    nop

    :goto_4
    iput-object p4, p0, Lrex;->b:Ljava/lang/Object;

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lrex;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "fadeInGap"

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lrfc;->a()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_2b

    nop

    nop

    :goto_8
    goto/32 :goto_61

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    :goto_b
    invoke-virtual {v3, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_e
    iget-object p0, v0, Lcom/google/android/material/appbar/AppBarLayout;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lrex;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_11
    invoke-virtual {v1, v0}, Lrkp;->n(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    iget-object p1, v7, Lhfp;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_14
    neg-int v1, p1

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

    :goto_15
    iget-object v0, p1, Lhfr;->a:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_18
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    check-cast v1, Lrkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    invoke-virtual {v2, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, v2, Lhfn;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Lrkp;->h()Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lrex;->e:Ljava/lang/Object;

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

    nop

    :goto_1e
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    :goto_20
    if-nez p1, :cond_4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, p0, Lrex;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    iget-object v3, v2, Lhfn;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->c(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_62

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v5, v2, Lhfn;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->i:Ljava/lang/Integer;

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

    :goto_28
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_29
    iget-object p0, p1, Lhfr;->a:Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_2b
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v7, v6, v5, v4, v3}, Lhfp;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, v2, Lhfn;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v0, "alpha"

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_30
    check-cast v7, Lhfp;

    nop

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

    :goto_31
    iget-object v3, v2, Lhfn;->c:Landroid/graphics/Rect;

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

    :goto_32
    iget-object v1, p0, Lrex;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_34
    invoke-virtual {v3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lrex;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v2, Lhfn;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0, v1, p1}, Lrgw;->h(IIF)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3a
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3d
    iget-object v3, v2, Lhfn;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

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

    :goto_3f
    iget-object v2, v2, Lhfn;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, v0, Lcom/google/android/material/appbar/AppBarLayout;->g:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz p0, :cond_5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    :goto_42
    iget-object v6, v2, Lhfn;->a:Landroid/graphics/Rect;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_43
    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lcom/google/android/apps/camera/cameravisionkit/NewQrGleamingView;->invalidate()V

    goto/32 :goto_2

    nop

    nop

    :goto_45
    check-cast v0, Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_46
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_47
    iget-object p1, v7, Lhfp;->b:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

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

    :goto_49
    iget-object v1, p0, Lrex;->d:Ljava/lang/Object;

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

    :goto_4a
    iget-object v1, p0, Lrex;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_47

    nop

    nop

    :goto_4f
    iget-object v7, p0, Lrex;->e:Ljava/lang/Object;

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

    nop

    :goto_50
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, p0, Lrex;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p1, v7, Lhfp;->d:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v1, Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p0, p0, Lrex;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast p1, Lhfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_13

    nop

    nop

    :goto_58
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_6
    goto/32 :goto_24

    nop

    :goto_5a
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_68

    nop

    nop

    :goto_5b
    iget-object v3, v2, Lhfn;->c:Landroid/graphics/Rect;

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

    :goto_5c
    check-cast p1, Lrfc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5d
    check-cast v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lrex;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_60
    iget-object v3, v2, Lhfn;->a:Landroid/graphics/Rect;

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

    :goto_61
    return-void

    nop

    nop

    :goto_62
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v4, v2, Lhfn;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_66
    iget-object p1, v7, Lhfp;->a:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_68
    iget-object p0, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_69
    iget-object v3, v2, Lhfn;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    nop

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
.end method
