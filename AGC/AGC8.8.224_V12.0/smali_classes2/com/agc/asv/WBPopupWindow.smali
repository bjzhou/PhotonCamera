.class public Lcom/agc/asv/WBPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;
    }
.end annotation


# static fields
.field private static mWBPopupWindow:Lcom/agc/asv/WBPopupWindow;


# instance fields
.field private mChangeListner:Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/agc/Res$layout;->agc_wb_pop_window:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "agc_list_view"

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/agc/asv/HorizontalListView;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/agc/asv/WBModel;

    sget-object v6, Lcom/agc/asv/WB$WBType;->AUTO:Lcom/agc/asv/WB$WBType;

    invoke-direct {v5, v6, v0}, Lcom/agc/asv/WBModel;-><init>(Lcom/agc/asv/WB$WBType;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/agc/asv/WBModel;

    sget-object v5, Lcom/agc/asv/WB$WBType;->KAHUI:Lcom/agc/asv/WB$WBType;

    invoke-direct {v0, v5, v2}, Lcom/agc/asv/WBModel;-><init>(Lcom/agc/asv/WB$WBType;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/agc/asv/WBModel;

    sget-object v5, Lcom/agc/asv/WB$WBType;->SHADOW:Lcom/agc/asv/WB$WBType;

    invoke-direct {v0, v5, v2}, Lcom/agc/asv/WBModel;-><init>(Lcom/agc/asv/WB$WBType;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/agc/asv/WBAdapter;

    invoke-direct {v0, p1, v4}, Lcom/agc/asv/WBAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v0}, Lcom/agc/asv/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/agc/asv/WBPopupWindow$1;

    invoke-direct {p1, p0, v0}, Lcom/agc/asv/WBPopupWindow$1;-><init>(Lcom/agc/asv/WBPopupWindow;Lcom/agc/asv/WBAdapter;)V

    invoke-virtual {v3, p1}, Lcom/agc/asv/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/asv/WBPopupWindow;)Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/asv/WBPopupWindow;->mChangeListner:Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;

    return-object p0
.end method

.method public static showUp(Landroid/view/View;Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;)V
    .locals 4

    sget-object v0, Lcom/agc/asv/WBPopupWindow;->mWBPopupWindow:Lcom/agc/asv/WBPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/asv/WBPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/agc/asv/WBPopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/agc/asv/WBPopupWindow;->mWBPopupWindow:Lcom/agc/asv/WBPopupWindow;

    invoke-virtual {v0, p1}, Lcom/agc/asv/WBPopupWindow;->setOnPopItemClickListener(Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;)V

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    sget-object v0, Lcom/agc/asv/WBPopupWindow;->mWBPopupWindow:Lcom/agc/asv/WBPopupWindow;

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


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/WBPopupWindow;->mChangeListner:Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;->onDismiss()V

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public setOnPopItemClickListener(Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/WBPopupWindow;->mChangeListner:Lcom/agc/asv/WBPopupWindow$OnPopItemClickListener;

    return-void
.end method

.method public vibrate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
