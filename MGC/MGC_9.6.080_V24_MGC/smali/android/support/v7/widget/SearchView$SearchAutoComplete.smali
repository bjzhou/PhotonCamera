.class public Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.super Lhi;
.source "PG"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f04004f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->yFIbYBilAETkzsJL(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)I

    move-result p1

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
    iput p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lhi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static AOsnFyIiWbsEPMap(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Landroid/view/KeyEvent$DispatcherState;
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
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static BHmYCSvjkmXDivaX(Landroid/view/KeyEvent$DispatcherState;Landroid/view/KeyEvent;Ljava/lang/Object;)V
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

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static BkoKVxBQZKvjOZWI(Lhi;ILandroid/view/KeyEvent;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Lhi;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

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

.method public static FPXSettDNGRTAitN(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

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
    return-object v0

    nop

    nop
.end method

.method public static IyLaTeltnBmmagwh(Landroid/view/KeyEvent;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

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

.method public static OGCMwovtQbzmmowR(Lhi;I)V
    .locals 0

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
    invoke-super {p0, p1}, Lhi;->setThreshold(I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static OaEqJUqEYmluEODX(Lhi;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lhi;->onWindowFocusChanged(Z)V

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
.end method

.method public static RhxmyXbYzkNLdKXD(Landroid/view/KeyEvent;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCanceled()Z

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

    nop
.end method

.method public static VSUotddDuIsnjsMd(Lhi;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0}, Lhi;->onFinishInflate()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static XQwCqpRWVklGWsOb(Landroid/content/res/Resources;)Landroid/content/res/Configuration;
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

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

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

.method public static aYuNoxVIJyevZCQQ(Landroid/support/v7/widget/SearchView$SearchAutoComplete;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static cLpJytcstAowDNgL(Landroid/view/KeyEvent;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

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
.end method

.method public static dKrqvgNZANDFSzqD(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

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

.method public static dRgxBRggkpzQNnOK(Landroid/view/KeyEvent;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

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

    nop

    nop

    nop
.end method

.method public static duzCpaMgzVnllzbo(Landroid/view/KeyEvent;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

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

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static iTYxRkGbRBFLEtNW(Lhi;ZILandroid/graphics/Rect;)V
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

    :goto_1
    invoke-super {p0, p1, p2, p3}, Lhi;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static lWMOWfhbpKdTAgsx(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Landroid/content/res/Resources;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static lnKfHxHwENomHOxA(IFLandroid/util/DisplayMetrics;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static rCFDtQuSTwsjkZyi(Lhi;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lhi;->enoughToFilter()Z

    move-result v0

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
.end method

.method public static sPEmLqIzMRKuCsNI(Landroid/view/KeyEvent$DispatcherState;Landroid/view/KeyEvent;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    goto/32 :goto_1

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
.end method

.method public static wGhawAakWeZhxJtM(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Landroid/content/res/Resources;
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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static yFIbYBilAETkzsJL(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I

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

    nop
.end method


# virtual methods
.method public final enoughToFilter()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return p0

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    if-gtz v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->rCFDtQuSTwsjkZyi(Lhi;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    if-ge v2, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v4, 0x3c0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0xc0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-static {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->XQwCqpRWVklGWsOb(Landroid/content/res/Resources;)Landroid/content/res/Configuration;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dKrqvgNZANDFSzqD(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

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

    :goto_c
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

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

    :goto_10
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->VSUotddDuIsnjsMd(Lhi;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->wGhawAakWeZhxJtM(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Landroid/content/res/Resources;

    move-result-object v1

    nop

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

    :goto_14
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_1d

    nop

    :goto_15
    const v1, 0x13

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    const/16 v1, 0xa0

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

    :goto_19
    float-to-int v0, v0

    nop

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

    :goto_1a
    if-ge v3, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->aYuNoxVIJyevZCQQ(Landroid/support/v7/widget/SearchView$SearchAutoComplete;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v2, v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->lnKfHxHwENomHOxA(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_22
    const/16 v1, 0x258

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->lWMOWfhbpKdTAgsx(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_24
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    const/16 v1, 0x100

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

    :goto_26
    const/16 v4, 0x2d0

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
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->iTYxRkGbRBFLEtNW(Lhi;ZILandroid/graphics/Rect;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_1
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->cLpJytcstAowDNgL(Landroid/view/KeyEvent;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    move p1, v0

    nop

    nop

    :goto_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, p2, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->BHmYCSvjkmXDivaX(Landroid/view/KeyEvent$DispatcherState;Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->AOsnFyIiWbsEPMap(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    :goto_b
    if-eq p1, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_5

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

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    goto :goto_17

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    return p0

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->sPEmLqIzMRKuCsNI(Landroid/view/KeyEvent$DispatcherState;Landroid/view/KeyEvent;)V

    :goto_13
    goto/32 :goto_24

    nop

    nop

    :goto_14
    if-nez p1, :cond_6

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

    :cond_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    invoke-static {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->FPXSettDNGRTAitN(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->RhxmyXbYzkNLdKXD(Landroid/view/KeyEvent;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    invoke-static {p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->IyLaTeltnBmmagwh(Landroid/view/KeyEvent;)I

    move-result p1

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

    :goto_20
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->duzCpaMgzVnllzbo(Landroid/view/KeyEvent;)I

    move-result p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v1

    nop

    nop

    :goto_23
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dRgxBRggkpzQNnOK(Landroid/view/KeyEvent;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_27
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    invoke-static {p0, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->BkoKVxBQZKvjOZWI(Lhi;ILandroid/view/KeyEvent;)Z

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->OaEqJUqEYmluEODX(Lhi;Z)V

    goto/32 :goto_2

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

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

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
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

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

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final performCompletion()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method protected final replaceText(Ljava/lang/CharSequence;)V
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

    nop

    nop
.end method

.method public final setThreshold(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->OGCMwovtQbzmmowR(Lhi;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
