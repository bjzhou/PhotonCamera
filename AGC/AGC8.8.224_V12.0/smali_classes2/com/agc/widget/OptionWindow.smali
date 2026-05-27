.class public Lcom/agc/widget/OptionWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/OptionWindow$OnPopItemClickListener;,
        Lcom/agc/widget/OptionWindow$OptionAdapter;
    }
.end annotation


# static fields
.field private static sharedWindow:Lcom/agc/widget/OptionWindow;


# instance fields
.field adapter:Lcom/agc/widget/OptionWindow$OptionAdapter;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/widget/OptionButton$OptionButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeListner:Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/OptionWindow;->items:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/OptionWindow;->selectedIndex:I

    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/agc/Res$layout;->agc_wb_pop_window:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "agc_list_view"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    new-instance v2, Lcom/agc/widget/OptionWindow$OptionAdapter;

    iget-object v3, p0, Lcom/agc/widget/OptionWindow;->items:Ljava/util/List;

    invoke-direct {v2, p0, p1, v3}, Lcom/agc/widget/OptionWindow$OptionAdapter;-><init>(Lcom/agc/widget/OptionWindow;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/agc/widget/OptionWindow;->adapter:Lcom/agc/widget/OptionWindow$OptionAdapter;

    iget v3, p0, Lcom/agc/widget/OptionWindow;->selectedIndex:I

    iput v3, v2, Lcom/agc/widget/OptionWindow$OptionAdapter;->selectedIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/agc/widget/OptionWindow$1;

    invoke-direct {v2, p0}, Lcom/agc/widget/OptionWindow$1;-><init>(Lcom/agc/widget/OptionWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v2, Lcom/agc/widget/OptionWindow$2;

    invoke-direct {v2, p0}, Lcom/agc/widget/OptionWindow$2;-><init>(Lcom/agc/widget/OptionWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const-string v1, "agc_toolkit_config_tips_btn"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/agc/widget/OptionWindow$3;

    invoke-direct {v2, p0}, Lcom/agc/widget/OptionWindow$3;-><init>(Lcom/agc/widget/OptionWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "agc_quick_settings_btn"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/agc/widget/OptionWindow$4;

    invoke-direct {v2, p0}, Lcom/agc/widget/OptionWindow$4;-><init>(Lcom/agc/widget/OptionWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "agc_config_load_btn"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/agc/pref/ConfigLoader;

    invoke-direct {v1, p1}, Lcom/agc/pref/ConfigLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/OptionWindow;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/OptionWindow;->items:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/agc/widget/OptionWindow;)I
    .locals 0

    iget p0, p0, Lcom/agc/widget/OptionWindow;->selectedIndex:I

    return p0
.end method

.method public static synthetic access$102(Lcom/agc/widget/OptionWindow;I)I
    .locals 0

    iput p1, p0, Lcom/agc/widget/OptionWindow;->selectedIndex:I

    return p1
.end method

.method public static synthetic access$200(Lcom/agc/widget/OptionWindow;)Lcom/agc/widget/OptionWindow$OnPopItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/OptionWindow;->mChangeListner:Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

    return-object p0
.end method

.method public static hide()V
    .locals 1

    sget-object v0, Lcom/agc/widget/OptionWindow;->sharedWindow:Lcom/agc/widget/OptionWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/widget/OptionWindow;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/agc/widget/OptionWindow;->sharedWindow:Lcom/agc/widget/OptionWindow;

    :cond_0
    return-void
.end method

.method public static showUp(Landroid/view/View;Ljava/util/List;ZILcom/agc/widget/OptionWindow$OnPopItemClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/agc/widget/OptionButton$OptionButtonItem;",
            ">;ZI",
            "Lcom/agc/widget/OptionWindow$OnPopItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/agc/widget/OptionWindow;->hide()V

    new-instance v0, Lcom/agc/widget/OptionWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/agc/widget/OptionWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/agc/widget/OptionWindow;->sharedWindow:Lcom/agc/widget/OptionWindow;

    invoke-virtual {v0, p4}, Lcom/agc/widget/OptionWindow;->setOnPopItemClickListener(Lcom/agc/widget/OptionWindow$OnPopItemClickListener;)V

    sget-object p4, Lcom/agc/widget/OptionWindow;->sharedWindow:Lcom/agc/widget/OptionWindow;

    invoke-virtual {p4, p2}, Lcom/agc/widget/OptionWindow;->showButtons(Z)V

    sget-object p2, Lcom/agc/widget/OptionWindow;->sharedWindow:Lcom/agc/widget/OptionWindow;

    iput p3, p2, Lcom/agc/widget/OptionWindow;->selectedIndex:I

    invoke-virtual {p2, p1, p3}, Lcom/agc/widget/OptionWindow;->setItems(Ljava/util/List;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p3, 0x1

    aget p4, p2, p3

    const-string v0, "loc 1"

    invoke-static {v0, p4}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr p4, p1

    const-string v0, "loc 2"

    invoke-static {v0, p4}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    aget p4, p2, p3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, p1

    const/4 p1, 0x0

    if-le p4, v0, :cond_0

    sget-object p4, Lcom/agc/widget/OptionWindow;->sharedWindow:Lcom/agc/widget/OptionWindow;

    aget v0, p2, p1

    aget p2, p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {p3, v1}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/agc/widget/OptionWindow;->sharedWindow:Lcom/agc/widget/OptionWindow;

    aget v0, p2, p1

    aget p2, p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {p3, v1}, Lcom/agc/util/AgcUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    add-int/2addr p2, p3

    :goto_0
    invoke-virtual {p4, p0, p1, v0, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/OptionWindow;->mChangeListner:Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/agc/widget/OptionWindow$OnPopItemClickListener;->onDismiss()V

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public setItems(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/widget/OptionButton$OptionButtonItem;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/OptionWindow;->items:Ljava/util/List;

    iput p2, p0, Lcom/agc/widget/OptionWindow;->selectedIndex:I

    iget-object v0, p0, Lcom/agc/widget/OptionWindow;->adapter:Lcom/agc/widget/OptionWindow$OptionAdapter;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/agc/asv/CommonAdapter;->mList:Ljava/util/List;

    iput p2, v0, Lcom/agc/widget/OptionWindow$OptionAdapter;->selectedIndex:I

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnPopItemClickListener(Lcom/agc/widget/OptionWindow$OnPopItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/OptionWindow;->mChangeListner:Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

    return-void
.end method

.method public showButtons(Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v1, "agc_quick_settings_btn"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v3, "agc_config_load_btn"

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
