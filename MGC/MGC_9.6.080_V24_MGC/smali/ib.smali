.class public final Lib;
.super Lju;
.source "PG"

# interfaces
.implements Lid;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroid/widget/ListAdapter;

.field public final c:Landroid/graphics/Rect;

.field public final synthetic d:Lie;

.field private s:I


# direct methods
.method public constructor <init>(Lie;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lju;->l:Landroid/view/View;

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

    :goto_3
    invoke-direct {p0, p2, p3, v0}, Lju;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lib;->d:Lie;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p0, p2}, Lqzf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    iput-object p2, p0, Lib;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    new-instance p1, Lqzf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7f040623

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lju;->m:Landroid/widget/AdapterView$OnItemClickListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lju;->y()V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static synthetic m(Lib;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lju;->s()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final d()Ljava/lang/CharSequence;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lib;->a:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final e(Landroid/widget/ListAdapter;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lju;->e(Landroid/widget/ListAdapter;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lib;->b:Landroid/widget/ListAdapter;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final h(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lib;->s:I

    nop

    goto/32 :goto_1

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

    nop
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lib;->a:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(II)V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_26

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lie;->getSelectedItemPosition()I

    move-result p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-super {p0}, Lju;->s()V

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lju;->x()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lib;->d:Lie;

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

    nop

    :goto_a
    iget-object p2, p0, Lju;->e:Ljb;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const/4 v2, 0x1

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

    :goto_c
    invoke-virtual {p0}, Lju;->u()Z

    move-result v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v1, 0x5

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

    :goto_e
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ljb;->getChoiceMode()I

    move-result v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Lia;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1}, Lju;->v(Landroid/widget/PopupWindow$OnDismissListener;)V

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lie;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lib;->d:Lie;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    iput-boolean v1, p2, Ljb;->a:Z

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p2, p0, v0}, Lgn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lib;->n()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x12

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p2, Lgn;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

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

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    iget-object v1, p0, Lju;->e:Ljb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    invoke-direct {p1, p0, p2}, Lia;-><init>(Lib;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/32 :goto_14

    nop

    nop

    :goto_24
    goto/16 :goto_15

    nop

    nop

    :goto_25
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lju;->u()Z

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, p1, v2}, Ljb;->setItemChecked(IZ)V

    :goto_28
    goto/32 :goto_13

    nop

    nop

    :goto_29
    const/4 v0, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_4

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

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_2c
    invoke-virtual {p2, p1}, Ljb;->setSelection(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 8

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-int v5, v4, v2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_2d

    nop

    nop

    :goto_5
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v6, p0, Lib;->b:Landroid/widget/ListAdapter;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v7, v7, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lib;->d:Lie;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lie;->d:Landroid/graphics/Rect;

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

    nop

    :goto_c
    iget-object v0, p0, Lib;->d:Lie;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    iget-object v6, p0, Lib;->d:Lie;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_e
    iget-object v7, v7, Lie;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v7, v7, Lie;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lib;->d:Lie;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_11
    move v0, v1

    nop

    nop

    :goto_12
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v5}, Lju;->r(I)V

    :goto_14
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Lju;->g:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v6, -0x2

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

    :goto_17
    iget v0, v0, Landroid/graphics/Rect;->left:I

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

    :goto_18
    neg-int v0, v0

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

    :goto_19
    add-int/2addr v2, v1

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

    :goto_1a
    invoke-virtual {p0}, Lju;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_1b
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Lie;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_14

    nop

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v6, v7}, Lie;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, Lkg;->t(Landroid/view/View;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr v0, v4

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

    :goto_24
    iget-object v0, v0, Lie;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v7, p0, Lib;->d:Lie;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    iget v1, p0, Lib;->s:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_35

    nop

    :cond_1
    goto/32 :goto_34

    nop

    :goto_2b
    invoke-virtual {v1}, Lie;->getWidth()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0xa

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

    :goto_2d
    goto/32 :goto_35

    nop

    nop

    :goto_2e
    if-gt v1, v6, :cond_2

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_53

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lib;->d:Lie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_30
    iget-object v0, p0, Lib;->d:Lie;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    if-eq v5, v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v1, p0, Lib;->d:Lie;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sub-int/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Lie;->getPaddingRight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v1}, Lju;->r(I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3b
    iget v7, v7, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3c
    sub-int/2addr v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v5, v1, Lie;->c:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_41
    iput v1, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_42
    if-eq v5, v1, :cond_4

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_4
    goto/32 :goto_52

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Lju;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_12

    nop

    nop

    :goto_45
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v1, p0, Lju;->f:I

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v0, v0, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_49
    sub-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v1, v1, Lie;->d:Landroid/graphics/Rect;

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

    :goto_4b
    iget v1, p0, Lib;->s:I

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4c
    sub-int/2addr v4, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1}, Lie;->getPaddingLeft()I

    move-result v2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lib;->d:Lie;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v1}, Lju;->r(I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_51
    iget-object v7, p0, Lib;->d:Lie;

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

    :goto_52
    sub-int v1, v4, v2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_53
    move v1, v6

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_55
    sub-int/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sub-int/2addr v5, v3

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

    :goto_57
    if-nez v1, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_58
    iput v1, v0, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v0, :cond_6

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    :goto_5a
    sub-int/2addr v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v1}, Lkg;->t(Landroid/view/View;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v6}, Lie;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop
.end method
