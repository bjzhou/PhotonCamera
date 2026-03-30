.class public final Lhc;
.super Lfn;
.source "PG"


# instance fields
.field g:Lha;

.field public h:I

.field public i:Lhb;

.field public j:Lgy;

.field public k:Lkok;

.field final l:Lei;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private final r:Landroid/util/SparseBooleanArray;

.field private s:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhc;->l:Lei;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lfn;-><init>(Landroid/content/Context;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lei;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0, v0}, Lei;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 v0, 0x2

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

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    new-instance p1, Landroid/util/SparseBooleanArray;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lhc;->r:Landroid/util/SparseBooleanArray;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a(Lfz;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhc;->s:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lhc;->s:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lfz;->m()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p0, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p2, p1}, Lgj;->f(Lfz;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7f0e0003

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

    :goto_12
    check-cast v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_14
    goto/32 :goto_30

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_16
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Landroid/support/v7/widget/ActionMenuView;->o(Landroid/view/ViewGroup$LayoutParams;)Lhf;

    move-result-object p0

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

    :goto_1b
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

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

    :goto_1c
    check-cast p2, Lgj;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_24

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

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

    :goto_20
    invoke-virtual {p1}, Lfz;->getActionView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lhc;->f:Lgk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v1, 0x8

    nop

    nop

    :goto_24
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

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

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    check-cast p2, Lgj;

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    :goto_2a
    if-ne p0, p1, :cond_4

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_2b
    instance-of v0, p2, Lgj;

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

    nop

    :goto_2c
    iget-object p2, p0, Lfn;->d:Landroid/view/LayoutInflater;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2e
    iget-boolean p1, p1, Lfz;->o:Z

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v2, p2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-object v0

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_25

    nop

    nop

    :goto_32
    goto :goto_29

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2c

    nop

    nop

    :goto_34
    iget-object p0, p0, Lhc;->s:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_35
    move-object v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_36
    iput-object v0, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Lfw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    :goto_38
    instance-of p1, p0, Lhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/content/Context;Lfx;)V
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

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

    :goto_1
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lhc;->g:Lha;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    iget-object v0, p0, Lhc;->g:Lha;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhc;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lha;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Le;->e(Landroid/content/Context;)I

    move-result p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_a
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_24

    nop

    nop

    :goto_c
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_e
    iput v0, p0, Lhc;->o:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const v1, 0xe

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
    invoke-direct {v1, p0, v0}, Lha;-><init>(Lhc;Landroid/content/Context;)V

    goto/32 :goto_30

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lhc;->n:Z

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lhc;->g:Lha;

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput p1, p0, Lhc;->p:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    iget-object v0, p0, Lhc;->g:Lha;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr p1, v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    const v0, 0x2

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

    :goto_1c
    iput-object p2, p0, Lfn;->c:Lfx;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v0, v0}, Lha;->measure(II)V

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_14

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

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

    :goto_26
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget p1, p0, Lhc;->o:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2a
    iget-boolean v0, p0, Lhc;->m:Z

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

    nop

    nop

    :goto_2b
    div-int/lit8 v0, v0, 0x2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_2d
    iget-object v0, p0, Lfn;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v1, Lha;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2f
    iput p1, p0, Lhc;->h:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v1, p0, Lhc;->g:Lha;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_31
    iput-object p1, p0, Lfn;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_32
    iput-boolean v0, p0, Lhc;->m:Z

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lfx;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhc;->n()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfn;->e:Lgh;

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

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1, p2}, Lgh;->a(Lfx;Z)V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 17

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    move/from16 v16, v13

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

    :goto_1
    const/4 v13, 0x1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v11, v3

    nop

    :goto_3
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v15, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

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

    :goto_7
    const/4 v13, 0x0

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8
    invoke-virtual {v9, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v9, v0, Lhc;->r:Landroid/util/SparseBooleanArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v12, Lfz;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v14, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v13, v14, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_2
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_13
    iget-boolean v13, v14, Lfz;->o:Z

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

    :goto_14
    move/from16 v16, v13

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v4, v3

    nop

    :goto_16
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_17
    iget v13, v2, Lfz;->b:I

    nop

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

    :goto_18
    goto/16 :goto_96

    nop

    :goto_19
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v12, v13}, Lfz;->k(Z)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v13, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    :cond_3
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_1c
    move/from16 v16, v3

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v0, Lhc;->c:Lfx;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v5, v5, -0x1

    nop

    nop

    :goto_20
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_21
    move v5, v3

    nop

    :goto_22
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v2, Lfz;

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

    :goto_24
    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Lfx;->f()Ljava/util/ArrayList;

    move-result-object v1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_43

    nop

    :goto_27
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v9, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x1d

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v15, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_5
    :goto_2b
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2d
    goto/16 :goto_98

    nop

    nop

    :goto_2e
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_30
    invoke-virtual {v0, v12, v2, v8}, Lfn;->a(Lfz;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_31
    if-nez v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_32
    move v10, v3

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

    :goto_33
    if-nez v15, :cond_7

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

    nop

    :cond_7
    goto/32 :goto_71

    nop

    nop

    :goto_34
    invoke-virtual {v2, v13}, Lfz;->k(Z)V

    :goto_35
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v15, :cond_8

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_37
    iget v6, v0, Lhc;->p:I

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v1, 0xc

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_3a
    if-lt v15, v10, :cond_9

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop

    nop

    :goto_3b
    invoke-virtual {v14}, Lfz;->r()Z

    move-result v15

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3c
    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean v13, v0, Lhc;->q:Z

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v13, :cond_a

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_47
    if-nez v13, :cond_b

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_49
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4a
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_4b
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v14}, Lfz;->q()Z

    move-result v15

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4d
    if-eqz v11, :cond_c

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v2, v16

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

    :goto_4f
    sub-int/2addr v5, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_50
    sub-int/2addr v6, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_51
    move-object/from16 v0, p0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_52
    goto :goto_61

    nop

    :goto_53
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_54
    move v11, v10

    nop

    :goto_55
    goto/32 :goto_6f

    nop

    nop

    :goto_56
    move v10, v9

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_57
    return v3

    nop

    :goto_58
    goto/32 :goto_c

    nop

    nop

    :goto_59
    move v9, v3

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0, v12, v2, v8}, Lfn;->a(Lfz;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_7e

    nop

    nop

    :goto_5e
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move v3, v2

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v12, v2}, Lfz;->k(Z)V

    :goto_61
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eqz v11, :cond_d

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_16

    nop

    :goto_65
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_66
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_67
    check-cast v14, Lfz;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_68
    sub-int/2addr v6, v3

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_1d

    nop

    :goto_6a
    goto/32 :goto_1c

    nop

    nop

    :goto_6b
    invoke-virtual {v12, v3}, Lfz;->k(Z)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v8, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_6d
    if-gt v12, v5, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    :cond_e
    :goto_6e
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_6f
    if-lt v10, v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5a

    nop

    nop

    :goto_70
    if-nez v16, :cond_10

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_71
    add-int/lit8 v12, v12, 0x1

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

    :goto_72
    if-lez v5, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_73
    add-int/2addr v12, v11

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_74
    move-object v1, v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_75
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_77
    if-gtz v3, :cond_12

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-eqz v10, :cond_13

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v8, v0, Lhc;->f:Lgk;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget v5, v0, Lhc;->h:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_7c
    iget v14, v12, Lfz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_7d
    move v10, v13

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_80
    add-int v3, v6, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    move v11, v14

    nop

    nop

    :goto_84
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move v3, v13

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_86
    move v11, v10

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_87
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_8a
    if-nez v14, :cond_14

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_30

    nop

    nop

    :goto_8b
    if-nez v14, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_15
    goto/32 :goto_8e

    nop

    nop

    :goto_8c
    add-int/lit8 v5, v5, -0x1

    nop

    :goto_8d
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget v14, v12, Lfz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_92
    if-nez v14, :cond_16

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_48

    nop

    nop

    :goto_93
    invoke-virtual {v12}, Lfz;->r()Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_94
    if-nez v9, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_95
    const/16 v16, 0x0

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move v12, v11

    nop

    :goto_98
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_9a
    iget-boolean v9, v0, Lhc;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_9b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_9c
    if-nez v3, :cond_18

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-lez v0, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_8f

    nop

    :goto_9e
    goto/16 :goto_7e

    nop

    nop

    :goto_9f
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v2}, Lfz;->o()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a1
    move/from16 v3, v16

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez v1, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v12}, Lfz;->q()Z

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_a4
    if-gtz v6, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lgp;)Z
    .locals 8

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_34

    nop

    :goto_3
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_31

    nop

    :goto_6
    move v5, v1

    nop

    nop

    :goto_7
    goto/32 :goto_23

    nop

    nop

    :goto_8
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_a
    return v4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lhc;->j:Lgy;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lfn;->c:Lfx;

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, v0, Lgp;->k:Lfx;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_47

    nop

    nop

    :goto_12
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lhc;->j:Lgy;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_14
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0, p1}, Lgh;->b(Lfx;)Z

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v7, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_18
    iget-object v0, p1, Lgp;->l:Lfz;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lhc;->b:Landroid/content/Context;

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

    :goto_1c
    if-eqz v3, :cond_5

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

    :cond_5
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    if-eq v7, v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    :goto_21
    const/4 v3, 0x0

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lfx;->size()I

    move-result v0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_23
    if-lt v5, v4, :cond_7

    nop

    goto/32 :goto_26

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return v1

    nop

    :goto_28
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Lgg;->d(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Lgp;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2c
    new-instance v0, Lgy;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2d
    if-ne v2, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_8
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_9

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, v0, Lgp;->l:Lfz;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_31
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_33
    move-object v0, p1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_35
    check-cast v7, Lgj;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_27

    nop

    nop

    :goto_38
    if-eqz v2, :cond_a

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Lfn;->e:Lgh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3b
    move-object v3, v6

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Lfx;->hasVisibleItems()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3f
    instance-of v7, v6, Lgj;

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

    :goto_40
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_41
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_42
    goto/16 :goto_26

    nop

    :goto_43
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v2}, Lfx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v2, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_55

    nop

    nop

    :goto_47
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Lhc;->f:Lgk;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_49
    move-object v0, v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_32

    nop

    nop

    :goto_4b
    iget-object v3, p0, Lhc;->c:Lfx;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4c
    invoke-direct {v0, p0, v2, p1, v3}, Lgy;-><init>(Lhc;Landroid/content/Context;Lgp;Landroid/view/View;)V

    goto/32 :goto_d

    nop

    nop

    :goto_4d
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Lgg;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_50
    const-string p1, "MenuPopupHelper cannot be used without an anchor"

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-lt v2, v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_44

    nop

    nop

    :goto_52
    invoke-interface {v7}, Lgj;->a()Lfz;

    move-result-object v7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_53
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_54
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_14

    nop

    nop

    :goto_56
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

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

    :goto_57
    move v1, v4

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

    nop
.end method

.method public final i()V
    .locals 11

    goto/32 :goto_84

    nop

    nop

    :goto_0
    check-cast v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1
    new-instance v1, Lha;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lhc;->f:Lgk;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    instance-of v9, v8, Lgj;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v7}, Lfz;->o()Z

    move-result v8

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_6
    if-lt v6, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    :goto_c
    iget-object v0, p0, Lhc;->c:Lfx;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v4, v2

    nop

    nop

    :goto_e
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lhc;->f:Lgk;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lfn;->c:Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lfx;->e()Ljava/util/ArrayList;

    move-result-object v1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, v0, Lfz;->o:Z

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_17
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v7, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lfx;->k()V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

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

    :goto_1d
    move v5, v2

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lfz;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->n()Lhf;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_66

    nop

    nop

    :goto_23
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lha;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_81

    nop

    nop

    :goto_26
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_74

    nop

    :goto_28
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_2a
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lhc;->g:Lha;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2d
    if-nez v9, :cond_6

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v0, v1, :cond_7

    nop

    goto/32 :goto_3c

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v10, v8, :cond_8

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v7, Lfz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v9}, Lgj;->a()Lfz;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_33
    if-lt v4, v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_9
    goto/32 :goto_34

    nop

    nop

    :goto_34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lfn;->f:Lgk;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v6, v6, 0x1

    nop

    :goto_39
    goto/32 :goto_50

    nop

    nop

    :goto_3a
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_a
    goto/32 :goto_60

    nop

    nop

    :goto_3b
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_3c
    goto/32 :goto_88

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lhc;->g:Lha;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lhc;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_40
    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_41
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v8, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_b
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_43
    iget-object v5, v5, Lfz;->p:Ldvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_44
    invoke-virtual {v3}, Lfx;->f()Ljava/util/ArrayList;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput-boolean p0, v0, Landroid/support/v7/widget/ActionMenuView;->b:Z

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_46
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_48
    goto :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v10, v2}, Landroid/view/View;->setPressed(Z)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-eq v0, v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v9, v1

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_e

    nop

    nop

    :goto_4f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_51
    move-object v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_53
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :cond_d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_74

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v1, p0, v0}, Lha;-><init>(Lhc;Landroid/content/Context;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_57
    iget-boolean p0, p0, Lhc;->m:Z

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_e
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    xor-int/lit8 v2, v0, 0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_5a
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

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

    nop

    :goto_5c
    iget-boolean v0, p0, Lhc;->m:Z

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eq v0, v3, :cond_f

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2c

    nop

    nop

    :goto_5e
    invoke-virtual {p0, v7, v8, v0}, Lfn;->a(Lfz;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v1, p0, Lhc;->g:Lha;

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

    :goto_61
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v3, p0, Lfn;->c:Lfx;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

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

    nop

    :goto_68
    check-cast v5, Lfz;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Lhc;->g:Lha;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v7, p0, Lfn;->f:Lgk;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0}, Lha;->getParent()Landroid/view/ViewParent;

    move-result-object v0

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

    :goto_6d
    if-nez v2, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_6e
    check-cast v7, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v1, p0, Lhc;->f:Lgk;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_72
    iget-object v0, p0, Lhc;->g:Lha;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move v6, v2

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_75
    if-eq v3, v4, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v3}, Lfx;->k()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_78
    iput-boolean v3, v2, Lhf;->a:Z

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast v9, Lgj;

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

    :goto_7a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

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

    nop

    :goto_7b
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, p0, Lhc;->g:Lha;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_7d
    iput-object v1, p0, Lhc;->g:Lha;

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_62

    nop

    :goto_80
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_83
    iget-object v0, p0, Lhc;->f:Lgk;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_84
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, v0, Lfx;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_86
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_87
    if-ne v7, v9, :cond_15

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :cond_15
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_88
    iget-object v0, p0, Lhc;->f:Lgk;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_89
    if-lt v5, v4, :cond_16

    nop

    goto/32 :goto_74

    nop

    :cond_16
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_8a
    if-nez v7, :cond_17

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :goto_8c
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_8d
    iget-object v0, p0, Lhc;->c:Lfx;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8e
    move v6, v5

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_90
    iget-object v4, p0, Lhc;->g:Lha;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_92
    return-void

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p0, p1, Landroid/support/v7/widget/ActionMenuView;->a:Lfx;

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

    :goto_1
    iget-object p0, p0, Lhc;->c:Lfx;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhc;->f:Lgk;

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

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_5
    iget-object p0, p0, Lhc;->i:Lhb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lhc;->f:Lgk;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lhc;->k:Lkok;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_1b

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lgg;->b()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1b

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lhc;->k:Lkok;

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

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x19

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

    :goto_1a
    return v1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final l()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhc;->i:Lhb;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_6

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lgg;->g()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final m()Z
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    iget-object v1, p0, Lhc;->k:Lkok;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Landroid/view/View;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, v1, v2, v3}, Lhb;-><init>(Lhc;Landroid/content/Context;Lfx;Landroid/view/View;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhc;->f:Lgk;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lhc;->l()Z

    move-result v0

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
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iput-object v1, p0, Lhc;->k:Lkok;

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

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    :goto_d
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lhc;->f:Lgk;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v0, p0, Lhc;->m:Z

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

    :goto_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

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

    :goto_14
    iget-object v2, p0, Lhc;->c:Lfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Lhb;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_19
    const v1, 0xe

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, p0, v0, v2}, Lkok;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    :goto_1f
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lfx;->e()Ljava/util/ArrayList;

    move-result-object v0

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

    :goto_21
    new-instance v1, Lkok;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Lhc;->g:Lha;

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

    :goto_23
    iget-object p0, p0, Lhc;->k:Lkok;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    iget-object v0, p0, Lhc;->c:Lfx;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lhc;->b:Landroid/content/Context;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhc;->q()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhc;->k()Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final o()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lhc;->q:Z

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

.method public final p()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lhc;->n:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lhc;->m:Z

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
.end method

.method public final q()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lhc;->j:Lgy;

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lgg;->b()V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop
.end method
