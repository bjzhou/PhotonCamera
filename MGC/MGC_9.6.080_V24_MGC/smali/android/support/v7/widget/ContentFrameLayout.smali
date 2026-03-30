.class public Landroid/support/v7/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public b:Landroid/util/TypedValue;

.field public c:Landroid/util/TypedValue;

.field public d:Landroid/util/TypedValue;

.field public e:Landroid/util/TypedValue;

.field public f:Landroid/util/TypedValue;

.field public g:Landroid/util/TypedValue;

.field public final h:Landroid/graphics/Rect;

.field public i:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

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

    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x0

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public static AbOAMBBrJiPPsVJO(II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

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

    nop

    nop

    nop

    nop
.end method

.method public static BcEyXSBxLEYYzKUs(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

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

.method public static CsJLzBdzecJvCNaA(Liq;)V
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

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Liq;->a()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static DQvpFjtEFRjfxdco(Landroid/util/TypedValue;FF)F
    .locals 1

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static DVAyZbuXXakfWgJz(Landroid/util/TypedValue;Landroid/util/DisplayMetrics;)F
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static GrAVMIqMQGlouNNO(Lfx;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfx;->close()V

    goto/32 :goto_1

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

.method public static KgsYJeEQLvUzqnpp(Landroid/support/v7/widget/ContentFrameLayout;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static MSWfXCBoRtqxLtGS(II)I
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MkhlkBukSArVJvOW(Landroid/widget/FrameLayout;II)V
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

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static OxHyMafLdpFMzSbi(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

.method public static QNCRAZLzUlACpTgV(Landroid/view/View;Ljava/lang/Runnable;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static VACasgKibmxvmehz(Lej;I)Leh;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lej;->M(I)Leh;

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static VZBCjGsJLRXrUJMD(Landroid/util/TypedValue;Landroid/util/DisplayMetrics;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

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

.method public static ViCWQFMuWPzpjKXQ(Landroid/widget/FrameLayout;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    goto/32 :goto_1

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

.method public static XDCPmzXajvOJuimp(II)I
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
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

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

.method public static aQGQhbXYiZlnVorv(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

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

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static bPNIwlKSacbkMWBF(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

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

    nop

    nop

    nop
.end method

.method public static dcerwhOHxOfiEyIP(Landroid/support/v7/widget/ContentFrameLayout;)Landroid/content/Context;
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
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getContext()Landroid/content/Context;

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

.method public static drMWQytRARlZMoyY(II)I
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static gXssebRXQqISuRiB(Landroid/util/TypedValue;FF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/util/TypedValue;->getFraction(FF)F

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

.method public static jayXaisaMWCBovcg(II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

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
    return v0

    nop

    nop

    nop
.end method

.method public static npmBvGMiCYNFVeBy(Landroid/view/Window;)Landroid/view/View;
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
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

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

.method public static opIVdigsnravqLZS(I)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

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

    nop
.end method

.method public static rVXFuzYkosSPTagh(Landroid/util/TypedValue;Landroid/util/DisplayMetrics;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

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

.method public static sNBtOHWMKAFRJLbl(II)I
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

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

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
.end method

.method public static uipLJjLGLPvMUUnb(Lej;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lej;->A()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static vPBLGLiXsYrSyNZP(Landroid/widget/PopupWindow;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

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

    nop
.end method

.method public static xCgVPaPriPqWENac(Landroid/widget/FrameLayout;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

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

    nop
.end method

.method public static ygEpOxCIvujGACug(Landroid/util/TypedValue;FF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static yookxklElNCxQEyP(Landroid/widget/PopupWindow;)V
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
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ywtorZwtuYNQTmwk(I)I
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
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

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


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 3

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Landroid/support/v7/widget/ContentFrameLayout;->CsJLzBdzecJvCNaA(Liq;)V

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroid/support/v7/widget/ContentFrameLayout;->GrAVMIqMQGlouNNO(Lfx;)V

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Leh;->h:Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, v0, Lej;->m:Liq;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1b

    nop

    nop

    :goto_8
    iput-object p0, v0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Landroid/support/v7/widget/ContentFrameLayout;->vPBLGLiXsYrSyNZP(Landroid/widget/PopupWindow;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Landroid/support/v7/widget/ContentFrameLayout;->uipLJjLGLPvMUUnb(Lej;)V

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v0, Lej;->p:Landroid/widget/PopupWindow;

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

    :goto_15
    invoke-static {v0, p0}, Landroid/support/v7/widget/ContentFrameLayout;->VACasgKibmxvmehz(Lej;I)Leh;

    move-result-object p0

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

    :goto_16
    iget-object v1, v0, Lej;->p:Landroid/widget/PopupWindow;

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    :goto_1b
    goto/32 :goto_20

    nop

    nop

    :goto_1c
    check-cast v0, Lej;

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

    :goto_1d
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    :try_start_0
    check-cast p0, Lej;

    nop

    iget-object p0, p0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Landroid/support/v7/widget/ContentFrameLayout;->yookxklElNCxQEyP(Landroid/widget/PopupWindow;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1f
    goto/32 :goto_e

    nop

    nop

    :goto_20
    invoke-static {p0}, Landroid/support/v7/widget/ContentFrameLayout;->ViCWQFMuWPzpjKXQ(Landroid/widget/FrameLayout;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    :goto_22
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, v0, Lej;->i:Landroid/view/Window;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v2}, Landroid/support/v7/widget/ContentFrameLayout;->QNCRAZLzUlACpTgV(Landroid/view/View;Ljava/lang/Runnable;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Landroid/support/v7/widget/ContentFrameLayout;->npmBvGMiCYNFVeBy(Landroid/view/Window;)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_27
    iget-object v2, v0, Lej;->q:Ljava/lang/Runnable;

    nop

    nop

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
.end method

.method protected final onMeasure(II)V
    .locals 13

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v11, v10, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    move v1, v4

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_4
    if-lt p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v4, v5

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    if-eq v11, v7, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v11, v10, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v10, p1}, Landroid/support/v7/widget/ContentFrameLayout;->AbOAMBBrJiPPsVJO(II)I

    move-result p1

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_a
    move v2, v5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_82

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v11, v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v4, :cond_3

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_12
    sub-int/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Landroid/support/v7/widget/ContentFrameLayout;->OxHyMafLdpFMzSbi(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    move v10, v4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v9}, Landroid/support/v7/widget/ContentFrameLayout;->jayXaisaMWCBovcg(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_65

    nop

    nop

    :goto_18
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, v2, p2}, Landroid/support/v7/widget/ContentFrameLayout;->MkhlkBukSArVJvOW(Landroid/widget/FrameLayout;II)V

    :goto_1a
    goto/32 :goto_90

    nop

    nop

    :goto_1b
    const/4 v7, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1c
    invoke-static {v1, v0}, Landroid/support/v7/widget/ContentFrameLayout;->VZBCjGsJLRXrUJMD(Landroid/util/TypedValue;Landroid/util/DisplayMetrics;)F

    move-result v0

    nop

    :goto_1d
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1e
    add-int/2addr v3, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

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

    :goto_20
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_23
    iget v11, v2, Landroid/util/TypedValue;->type:I

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

    :goto_24
    invoke-static {v0}, Landroid/support/v7/widget/ContentFrameLayout;->BcEyXSBxLEYYzKUs(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v10, :cond_5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_b

    nop

    nop

    :goto_27
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float v12, v12

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v12, v11, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v3, v1, Landroid/util/TypedValue;->type:I

    nop

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

    :goto_2c
    invoke-static {v1, v3, v0}, Landroid/support/v7/widget/ContentFrameLayout;->gXssebRXQqISuRiB(Landroid/util/TypedValue;FF)F

    move-result v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2d
    const/4 v6, 0x6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_7a

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_31
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_32
    goto/16 :goto_61

    nop

    nop

    :goto_33
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    int-to-float v11, v11

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

    :goto_37
    if-nez v1, :cond_7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_38
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v1, v1, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3a
    invoke-static {p1, v9}, Landroid/support/v7/widget/ContentFrameLayout;->MSWfXCBoRtqxLtGS(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p1}, Landroid/support/v7/widget/ContentFrameLayout;->aQGQhbXYiZlnVorv(I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3c
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eq v3, v8, :cond_8

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    :goto_3e
    sub-int/2addr v10, v12

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3f
    int-to-float v11, v11

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v8, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eq v3, v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v11, p0, Landroid/support/v7/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_43
    move v0, v5

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_83

    nop

    nop

    :goto_45
    if-eq v11, v6, :cond_a

    nop

    goto/32 :goto_1

    nop

    :cond_a
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_47
    if-eq v3, v6, :cond_b

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4b
    float-to-int v0, v0

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_4c
    if-lt v1, v2, :cond_c

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-gtz v2, :cond_d

    nop

    goto/32 :goto_93

    nop

    nop

    :cond_d
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_4e
    if-eq v11, v7, :cond_e

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_85

    nop

    nop

    :goto_4f
    iget-object v1, p0, Landroid/support/v7/widget/ContentFrameLayout;->c:Landroid/util/TypedValue;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_50
    const/high16 v9, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {p1}, Landroid/support/v7/widget/ContentFrameLayout;->ywtorZwtuYNQTmwk(I)I

    move-result p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    int-to-float v12, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_53
    iget v12, v11, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_55
    invoke-static {p0}, Landroid/support/v7/widget/ContentFrameLayout;->dcerwhOHxOfiEyIP(Landroid/support/v7/widget/ContentFrameLayout;)Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_56
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_57
    invoke-static {v2, v11, v12}, Landroid/support/v7/widget/ContentFrameLayout;->DQvpFjtEFRjfxdco(Landroid/util/TypedValue;FF)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_58
    move v1, v5

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_77

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_5c
    iget-object v10, p0, Landroid/support/v7/widget/ContentFrameLayout;->e:Landroid/util/TypedValue;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5d
    add-int v0, v0, v1

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

    nop

    :goto_5e
    iget v11, v10, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-eq v2, v8, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_80

    nop

    nop

    :goto_60
    iget-object v1, p0, Landroid/support/v7/widget/ContentFrameLayout;->b:Landroid/util/TypedValue;

    nop

    nop

    :goto_61
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {p0, p1, p2}, Landroid/support/v7/widget/ContentFrameLayout;->xCgVPaPriPqWENac(Landroid/widget/FrameLayout;II)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_63
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_64
    move v10, v5

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_66
    iget v11, v11, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {p2}, Landroid/support/v7/widget/ContentFrameLayout;->bPNIwlKSacbkMWBF(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_68
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_69
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_6a
    move v10, v5

    nop

    nop

    :goto_6b
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {v10, v11, v12}, Landroid/support/v7/widget/ContentFrameLayout;->ygEpOxCIvujGACug(Landroid/util/TypedValue;FF)F

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v11, :cond_10

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    add-int/2addr v12, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_6f
    iget-object v2, p0, Landroid/support/v7/widget/ContentFrameLayout;->f:Landroid/util/TypedValue;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_70
    goto/16 :goto_6

    nop

    :goto_71
    goto/32 :goto_5

    nop

    nop

    :goto_72
    iget v11, v2, Landroid/util/TypedValue;->type:I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v1, :cond_11

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v10, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-gtz v10, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v2, p0, Landroid/support/v7/widget/ContentFrameLayout;->g:Landroid/util/TypedValue;

    nop

    :goto_77
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_78
    invoke-static {p2}, Landroid/support/v7/widget/ContentFrameLayout;->opIVdigsnravqLZS(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_79
    iget-object v10, p0, Landroid/support/v7/widget/ContentFrameLayout;->d:Landroid/util/TypedValue;

    nop

    nop

    :goto_7a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7b
    iget v3, v1, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {v2, p2}, Landroid/support/v7/widget/ContentFrameLayout;->sNBtOHWMKAFRJLbl(II)I

    move-result p2

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_7d
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget v3, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7f
    float-to-int v10, v10

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_80
    if-nez v1, :cond_14

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_6f

    nop

    nop

    :goto_81
    invoke-static {v10, v0}, Landroid/support/v7/widget/ContentFrameLayout;->DVAyZbuXXakfWgJz(Landroid/util/TypedValue;Landroid/util/DisplayMetrics;)F

    move-result v10

    nop

    nop

    :goto_82
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    if-gtz v0, :cond_15

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_15
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v11, p0, Landroid/support/v7/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {v2, v0}, Landroid/support/v7/widget/ContentFrameLayout;->rVXFuzYkosSPTagh(Landroid/util/TypedValue;Landroid/util/DisplayMetrics;)F

    move-result v2

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-eq v3, v8, :cond_16

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_16
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_88
    sub-int/2addr v2, v12

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-nez v11, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8a
    iget v11, v2, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    float-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez v2, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_8d
    add-int/2addr v12, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const v1, 0x1d

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v1, p0, Landroid/support/v7/widget/ContentFrameLayout;->h:Landroid/graphics/Rect;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_90
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_9b

    nop

    nop

    :goto_92
    invoke-static {p2, v9}, Landroid/support/v7/widget/ContentFrameLayout;->drMWQytRARlZMoyY(II)I

    move-result p2

    nop

    :goto_93
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_94
    goto/16 :goto_59

    nop

    :goto_95
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_44

    nop

    :goto_97
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {p1, v9}, Landroid/support/v7/widget/ContentFrameLayout;->XDCPmzXajvOJuimp(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-lez v0, :cond_19

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_19
    goto/32 :goto_20

    nop

    :goto_9a
    iget v3, v1, Landroid/util/TypedValue;->type:I

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

    :goto_9b
    goto/32 :goto_21

    nop

    :goto_9c
    invoke-static {p0}, Landroid/support/v7/widget/ContentFrameLayout;->KgsYJeEQLvUzqnpp(Landroid/support/v7/widget/ContentFrameLayout;)I

    move-result p1

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop
.end method
