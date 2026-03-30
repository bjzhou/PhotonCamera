.class public final Landroid/support/v7/widget/ViewStubCompat;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:I

.field private d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {p0, p2}, Landroid/support/v7/widget/ViewStubCompat;->RWuiiTdSoDSLZloE(Landroid/support/v7/widget/ViewStubCompat;Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Landroid/support/v7/widget/ViewStubCompat;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->oENGVyZtnggPeedi(Landroid/support/v7/widget/ViewStubCompat;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 p1, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v1, p0, Landroid/support/v7/widget/ViewStubCompat;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, p2, v1, p3, v0}, Landroid/support/v7/widget/ViewStubCompat;->rOUnzBUgCKjcdcuO(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    invoke-static {p1, p2, p3}, Landroid/support/v7/widget/ViewStubCompat;->ZceAQNnFWqLXZoAg(Landroid/content/res/TypedArray;II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    iput v0, p0, Landroid/support/v7/widget/ViewStubCompat;->b:I

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

    nop

    :goto_10
    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/ViewStubCompat;->KFSfBJHJzTYAPuoK(Landroid/content/res/TypedArray;II)I

    move-result v1

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

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    sget-object v1, Lew;->A:[I

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

    :goto_13
    invoke-static {p1}, Landroid/support/v7/widget/ViewStubCompat;->slkMITUaWJSJaSMq(Landroid/content/res/TypedArray;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v0, p3}, Landroid/support/v7/widget/ViewStubCompat;->SpBxYMIePkftkSFU(Landroid/content/res/TypedArray;II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_5

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    const/4 p2, 0x1

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

    :goto_1a
    invoke-static {p0, p3}, Landroid/support/v7/widget/ViewStubCompat;->kFiRrpVtYTpNbGIA(Landroid/support/v7/widget/ViewStubCompat;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p3, -0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public static BxJzLuLwVzIAcQga(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JkidyLvZqGYVvWWX(Landroid/support/v7/widget/ViewStubCompat;)Landroid/view/ViewParent;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static JryVxTYKVlZESJkj(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static KFSfBJHJzTYAPuoK(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

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
    return v0

    nop

    nop
.end method

.method public static OfQqUKVuBVDJzaDt(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

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
.end method

.method public static RWuiiTdSoDSLZloE(Landroid/support/v7/widget/ViewStubCompat;Z)V
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
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->setWillNotDraw(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static SpBxYMIePkftkSFU(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static TElNmylhfPRWDxCq(Landroid/support/v7/widget/ViewStubCompat;)Landroid/view/View;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ZceAQNnFWqLXZoAg(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

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
.end method

.method public static aODpQjyaIhOEcJzS(Landroid/support/v7/widget/ViewStubCompat;II)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ViewStubCompat;->setMeasuredDimension(II)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static bYwBGyNcDKkJLfNq(Landroid/support/v7/widget/ViewStubCompat;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

.method public static ddfHAelGWmQuwKrL(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static kFiRrpVtYTpNbGIA(Landroid/support/v7/widget/ViewStubCompat;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->setId(I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static kigETeySEDNWeLQt(Landroid/view/ViewGroup;Landroid/view/View;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

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

    :goto_1
    return v0

    nop

    nop
.end method

.method public static mPzdTsgFIMmOOrRf(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

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

    nop
.end method

.method public static oENGVyZtnggPeedi(Landroid/support/v7/widget/ViewStubCompat;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static pYiaIypZTtHbPpCU(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static qOrcikxZrAFxTfcT(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

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
.end method

.method public static rOUnzBUgCKjcdcuO(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static slkMITUaWJSJaSMq(Landroid/content/res/TypedArray;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static tTARbNVidkIytdGr(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

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
.end method

.method public static wlsuPCRzOYuEDecI(Landroid/support/v7/widget/ViewStubCompat;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getContext()Landroid/content/Context;

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
.end method

.method public static yiXgyrpfYmvQDsFY(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    const-string v0, "ViewStub must have a non-null ViewGroup viewParent"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->d:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Landroid/support/v7/widget/ViewStubCompat;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroid/support/v7/widget/ViewStubCompat;->wlsuPCRzOYuEDecI(Landroid/support/v7/widget/ViewStubCompat;)Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7
    return-object v1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Landroid/support/v7/widget/ViewStubCompat;->bYwBGyNcDKkJLfNq(Landroid/support/v7/widget/ViewStubCompat;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const-string v0, "ViewStub must have a valid layoutResource"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroid/support/v7/widget/ViewStubCompat;->a:Landroid/view/LayoutInflater;

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

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_10
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_30

    nop

    nop

    :goto_12
    throw p0

    nop

    :goto_13
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Landroid/view/ViewGroup;

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

    :goto_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    nop

    :goto_17
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne v2, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, p0}, Landroid/support/v7/widget/ViewStubCompat;->kigETeySEDNWeLQt(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v2

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

    :goto_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v2, p0, Landroid/support/v7/widget/ViewStubCompat;->c:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/widget/ViewStubCompat;->JryVxTYKVlZESJkj(Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, p0, Landroid/support/v7/widget/ViewStubCompat;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1, v2, v0, v3}, Landroid/support/v7/widget/ViewStubCompat;->BxJzLuLwVzIAcQga(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_27
    invoke-static {v1, v2}, Landroid/support/v7/widget/ViewStubCompat;->yiXgyrpfYmvQDsFY(Landroid/view/View;I)V

    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    :goto_2b
    invoke-static {v1}, Landroid/support/v7/widget/ViewStubCompat;->OfQqUKVuBVDJzaDt(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    nop

    nop

    :goto_2c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0}, Landroid/support/v7/widget/ViewStubCompat;->JkidyLvZqGYVvWWX(Landroid/support/v7/widget/ViewStubCompat;)Landroid/view/ViewParent;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0, p0}, Landroid/support/v7/widget/ViewStubCompat;->ddfHAelGWmQuwKrL(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ViewStubCompat;->tTARbNVidkIytdGr(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :goto_31
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_32
    const v1, 0x16

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
.end method

.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method protected final onMeasure(II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p1}, Landroid/support/v7/widget/ViewStubCompat;->aODpQjyaIhOEcJzS(Landroid/support/v7/widget/ViewStubCompat;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final setVisibility(I)V
    .locals 1

    goto/32 :goto_5

    nop

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    :goto_3
    if-nez p0, :cond_2

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

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->mPzdTsgFIMmOOrRf(Landroid/view/View;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->d:Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Landroid/support/v7/widget/ViewStubCompat;->pYiaIypZTtHbPpCU(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Landroid/support/v7/widget/ViewStubCompat;->TElNmylhfPRWDxCq(Landroid/support/v7/widget/ViewStubCompat;)Landroid/view/View;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->qOrcikxZrAFxTfcT(Landroid/view/View;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string p1, "setVisibility called on un-referenced view"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
