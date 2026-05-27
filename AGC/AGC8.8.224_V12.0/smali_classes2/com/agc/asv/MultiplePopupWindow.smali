.class public Lcom/agc/asv/MultiplePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mWindow:Lcom/agc/asv/MultiplePopupWindow;


# instance fields
.field height:I

.field listener:Landroid/widget/AdapterView$OnItemClickListener;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/agc/asv/MultiplePopupWindow;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/agc/asv/CameraSwitchView;

    invoke-direct {v0, p1, p2}, Lcom/agc/asv/CameraSwitchView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iput-object p0, v0, Lcom/agc/asv/CameraSwitchView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/agc/asv/MultiplePopupWindow$1;

    invoke-direct {p1, p0, v0}, Lcom/agc/asv/MultiplePopupWindow$1;-><init>(Lcom/agc/asv/MultiplePopupWindow;Lcom/agc/asv/CameraSwitchView;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static showUp(Landroid/view/View;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    sget-object v0, Lcom/agc/asv/MultiplePopupWindow;->mWindow:Lcom/agc/asv/MultiplePopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/asv/MultiplePopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/agc/asv/MultiplePopupWindow;-><init>(Landroid/content/Context;Landroid/widget/AdapterView$OnItemClickListener;)V

    sput-object v0, Lcom/agc/asv/MultiplePopupWindow;->mWindow:Lcom/agc/asv/MultiplePopupWindow;

    :cond_0
    sget-object p1, Lcom/agc/asv/MultiplePopupWindow;->mWindow:Lcom/agc/asv/MultiplePopupWindow;

    invoke-virtual {p1, p0}, Lcom/agc/asv/MultiplePopupWindow;->show(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/asv/MultiplePopupWindow;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    sub-int/2addr v3, v4

    const/4 v0, 0x1

    aget v0, v1, v0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v1, v4}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
