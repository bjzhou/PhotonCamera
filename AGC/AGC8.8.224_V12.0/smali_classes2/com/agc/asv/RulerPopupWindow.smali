.class public Lcom/agc/asv/RulerPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field private static mWindow:Lcom/agc/asv/RulerPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/agc/asv/RulerView$OnValueChangeListener;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/agc/Res$layout;->agc_ruler_window:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "agc_ruler"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/agc/asv/RulerView;

    invoke-virtual {v0, p2}, Lcom/agc/asv/RulerView;->setOnValueChangeListener(Lcom/agc/asv/RulerView$OnValueChangeListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static showUp(Landroid/view/View;Lcom/agc/asv/RulerView$OnValueChangeListener;)V
    .locals 4

    sget-object v0, Lcom/agc/asv/RulerPopupWindow;->mWindow:Lcom/agc/asv/RulerPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/asv/RulerPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/agc/asv/RulerPopupWindow;-><init>(Landroid/content/Context;Lcom/agc/asv/RulerView$OnValueChangeListener;)V

    sput-object v0, Lcom/agc/asv/RulerPopupWindow;->mWindow:Lcom/agc/asv/RulerPopupWindow;

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v0, Lcom/agc/asv/RulerPopupWindow;->mWindow:Lcom/agc/asv/RulerPopupWindow;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x14

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
