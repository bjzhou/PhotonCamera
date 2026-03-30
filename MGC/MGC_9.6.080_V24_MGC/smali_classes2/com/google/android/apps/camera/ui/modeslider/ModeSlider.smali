.class public Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements Lndd;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:I

.field public c:Lndc;

.field public final d:Ljava/util/List;

.field public e:I

.field public final f:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_16

    nop

    nop

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, -0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Ljava/util/ArrayList;

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

    nop

    :goto_6
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    iput p2, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->e:I

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

    :goto_9
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7f070599

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_17

    nop

    nop

    :goto_11
    const p2, 0x7f07059b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    const p0, 0x800013

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p2, 0x0

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

    :goto_16
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->f:Landroid/widget/LinearLayout$LayoutParams;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b()I

    move-result v3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    add-int/2addr v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    div-int v1, v2, v1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    :goto_4
    check-cast v0, Landroid/widget/TextView;

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

    :goto_5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const v1, 0x7fffffff

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v3, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lnnr;->k(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b()I

    move-result v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    sub-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->e:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const v2, 0x7f07059f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    :goto_16
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/2addr v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_0

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_19
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

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

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b()I

    move-result v0

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

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_1d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sub-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_6

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->b()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getMeasuredWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    :goto_25
    goto/32 :goto_26

    nop

    nop

    :goto_26
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v2, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_2a
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

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

    :goto_2c
    const v0, 0x1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_31
    if-lt v2, v0, :cond_3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_16

    nop

    nop

    :goto_35
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v1, v0, -0x1

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

    :goto_39
    if-gtz v0, :cond_4

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_25

    nop

    nop

    :goto_3b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3d
    const v2, 0x7f0705a0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-gt v4, v2, :cond_5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-gt v0, v4, :cond_6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    :goto_42
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->f:Landroid/widget/LinearLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v4, 0x7f0705a1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_46
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_34

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setEnabled(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setEnabled(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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

    :goto_2
    return-void

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final f(Lndc;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method

.method public final g(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method public final h(IZ)V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_3
    const/4 v3, 0x1

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

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5
    const v3, 0x7f040198

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3e

    nop

    nop

    :goto_8
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v4, 0x7f080162

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->j(Landroid/widget/TextView;I)V

    goto/32 :goto_18

    nop

    nop

    :goto_c
    invoke-virtual {p0, v2, v4}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->j(Landroid/widget/TextView;I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v1, p1, :cond_2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_e
    check-cast v2, Landroid/widget/TextView;

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

    :goto_f
    const/4 v3, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, p0, v0}, Lndc;->a(Landroid/view/View;Z)V

    :goto_13
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:Lndc;

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

    :goto_15
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getChildCount()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    :goto_1e
    invoke-static {p1, p2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ne p1, v0, :cond_6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_23
    invoke-static {v2, v3}, Lrgw;->f(Landroid/view/View;I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_25
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x6

    nop

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

    :goto_27
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    move v1, v0

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:Lndc;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p1, v0}, Lndc;->b(Z)V

    :goto_2c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2d
    const-string p2, "Illegal index: "

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2, v4}, Lrgw;->f(Landroid/view/View;I)I

    move-result v4

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

    :goto_2f
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

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

    :goto_33
    goto/32 :goto_8

    nop

    :goto_34
    const v1, 0x13

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_35
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_36
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz p2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v4, 0x7f0401bc

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3b
    if-lt v1, v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_3d
    throw p0

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    :goto_41
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v2, v4}, Lrgw;->f(Landroid/view/View;I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-gez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3f

    nop

    nop

    :goto_44
    const v4, 0x7f04018f

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
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

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final j(Landroid/widget/TextView;I)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    :goto_3
    invoke-static {p0, v1, v0}, Ldtx;->a(Landroid/content/Context;ILdtw;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1}, Lncu;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7f09001a

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lncu;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getContext()Landroid/content/Context;

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

    nop

    nop

    :goto_c
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop
.end method

.method public final k()Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->getVisibility()I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const/4 p0, 0x1

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    goto/32 :goto_0

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

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method
