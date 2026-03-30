.class public final Lrcl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrbz;


# static fields
.field private static final a:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lrcl;->a:Landroid/util/SparseArray;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lqqm;->k()Landroid/util/SparseArray;

    move-result-object v0

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

    nop

    nop
.end method

.method public constructor <init>()V
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

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrcs;Landroid/view/View;)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    instance-of p0, p0, Landroid/graphics/drawable/ColorDrawable;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "backgroundColor"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-interface {p1, v0, p0}, Lrcs;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

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

    :goto_8
    const v0, 0x10

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_d
    const-string v0, "isLaidOut"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v1, v3, :cond_1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

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

    :goto_12
    invoke-interface {p1, p2, p0}, Lrcs;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, v0, p0}, Lrcs;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_14
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v2, Lrcl;->a:Landroid/util/SparseArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

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

    nop

    :goto_19
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "#%08X"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1, v0, p0}, Lrcs;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    :goto_1e
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    invoke-interface {p1, v0, p0}, Lrcs;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_21
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_23
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    :goto_24
    const-string p2, "layerType"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

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

    :goto_26
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    and-int v4, p0, v3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Ldsz;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_31
    const-string p0, " | "

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v4, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    :goto_33
    invoke-interface {p1, v0, p0}, Lrcs;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    :goto_35
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_37
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_38
    if-nez p0, :cond_5

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p1, v0, p0}, Lrcs;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_3b
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3c
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sget-object p0, Ldwd;->a:[I

    nop

    nop

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

    :goto_41
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_42
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v0, "background"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_45
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_46
    const-string v0, "isLayoutRequested"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_47
    instance-of p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_48
    goto :goto_3f

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v0, "coordinatorLayout_behavior"

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v0, "systemUiVisibility"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop
.end method
