.class public Lcom/google/android/apps/camera/manual/panel/ManualPanelLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "PG"


# instance fields
.field private a:I

.field private final b:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lcom/google/android/apps/camera/manual/panel/ManualPanelLayoutManager;->a:I

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

    :goto_1
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/apps/camera/manual/panel/ManualPanelLayoutManager;->b:Ljava/util/function/Supplier;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(I)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final ak(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljtf;

    nop

    goto/32 :goto_9

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lcom/google/android/apps/camera/manual/panel/ManualPanelLayoutManager;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_16

    nop

    nop

    :goto_8
    iput p2, v0, Lkx;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v0, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lkl;->aY(Lkx;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-direct {v0, p1, v1}, Ljtf;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x17

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Lcom/google/android/apps/camera/manual/panel/ManualPanelLayoutManager;->a:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x11

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

    :goto_14
    iget v0, p1, Landroid/support/v7/widget/RecyclerView;->E:I

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

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(ILkq;Lky;)I
    .locals 6

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILkq;Lky;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

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
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    :goto_8
    if-gtz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_63

    nop

    nop

    :goto_9
    move v1, v5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->I()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_c
    sub-int/2addr v0, p1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v2, v3, :cond_3

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_3
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_52

    nop

    nop

    :goto_f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v4, v5

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v5}, Lkl;->N(I)Landroid/view/View;

    move-result-object v0

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

    :goto_15
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_5e

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILkq;Lky;)I

    move-result p0

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->H()I

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_13

    nop

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
    add-int/lit8 v5, v0, -0x1

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    :goto_1e
    return p0

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_55

    nop

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

    :goto_21
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    move v3, v5

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_25
    if-nez v4, :cond_7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lkl;->ap()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2a
    if-ltz p1, :cond_9

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

    :cond_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v1, :cond_a

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

    :cond_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_31

    nop

    nop

    :goto_2e
    invoke-virtual {p3}, Lky;->a()I

    move-result v3

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

    :goto_2f
    move v1, v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_30
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_4d

    nop

    :goto_32
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_33
    goto :goto_39

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_38

    nop

    nop

    :goto_35
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILkq;Lky;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_38
    move v0, v5

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3a
    const v1, 0x2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILkq;Lky;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v1, p0, Lkl;->C:I

    nop

    nop

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

    :goto_3d
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3f
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz v1, :cond_c

    nop

    goto/32 :goto_4

    nop

    :cond_c
    goto/32 :goto_2f

    nop

    nop

    :goto_41
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILkq;Lky;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_44
    if-nez v3, :cond_d

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_d
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_46
    move v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Lkl;->ao()I

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-eqz v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v0, :cond_f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v2, :cond_10

    nop

    goto/32 :goto_62

    nop

    :cond_10
    goto/32 :goto_61

    nop

    nop

    :goto_4b
    iget-object v3, p0, Lcom/google/android/apps/camera/manual/panel/ManualPanelLayoutManager;->b:Ljava/util/function/Supplier;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4c
    return p0

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_4e
    sub-int p1, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_f

    nop

    nop

    :goto_51
    return p0

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lkl;->au()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_54
    return p0

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_56
    if-lez v0, :cond_11

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_e

    nop

    :goto_57
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_58
    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0}, Lkl;->at()I

    move-result v1

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_5a
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5b
    move v3, v4

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v1, :cond_12

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sub-int p1, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_23

    nop

    nop

    :goto_63
    if-nez v0, :cond_13

    nop

    goto/32 :goto_36

    nop

    :cond_13
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto :goto_6a

    nop

    :goto_65
    goto/32 :goto_69

    nop

    nop

    :goto_66
    if-eq v0, v4, :cond_14

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_14
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_67
    move v2, v4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v0, 0x1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_69
    move v2, v5

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_40

    nop

    nop

    :goto_6b
    invoke-virtual {p0, v0}, Lkl;->N(I)Landroid/view/View;

    move-result-object v0

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

    :goto_6c
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0}, Lkl;->ao()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method
