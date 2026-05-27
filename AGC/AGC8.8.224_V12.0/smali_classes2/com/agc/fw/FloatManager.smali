.class public Lcom/agc/fw/FloatManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public append:Z

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field public defaultState:I

.field floatWindowHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/agc/fw/FloatWindow;",
            ">;"
        }
    .end annotation
.end field

.field public key:Ljava/lang/String;

.field lastDebugText:Ljava/lang/String;

.field logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/agc/fw/FloatManager;->key:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/agc/fw/FloatManager;->defaultState:I

    iput-boolean v1, p0, Lcom/agc/fw/FloatManager;->append:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/agc/fw/FloatManager;->logs:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/agc/fw/FloatManager;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/agc/fw/FloatManager;->lastDebugText:Ljava/lang/String;

    iput-object p1, p0, Lcom/agc/fw/FloatManager;->key:Ljava/lang/String;

    iput p2, p0, Lcom/agc/fw/FloatManager;->defaultState:I

    iput-boolean p3, p0, Lcom/agc/fw/FloatManager;->append:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/fw/FloatManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/fw/FloatManager;->onDebugBtnClick(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/agc/fw/FloatManager;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatManager;->dateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private getOverlayState()I
    .locals 1

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/agc/Res$layout;->agc_fw_list_item:I

    iget-object v2, p0, Lcom/agc/fw/FloatManager;->logs:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/agc/fw/FloatManager;->adapter:Landroid/widget/ArrayAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/agc/Res$layout;->agc_fw_dialog_layout:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "agc_root"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/agc/fw/FloatManager$4;

    invoke-direct {v2, p0}, Lcom/agc/fw/FloatManager$4;-><init>(Lcom/agc/fw/FloatManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/agc/Res$id;->agc_fw_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sget v2, Lcom/agc/Res$id;->agc_fw_btn_clear:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/agc/fw/FloatManager$5;

    invoke-direct {v3, p0}, Lcom/agc/fw/FloatManager$5;-><init>(Lcom/agc/fw/FloatManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "agc_fw_btn_debug"

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/agc/fw/FloatManager$6;

    invoke-direct {v3, p0, p1}, Lcom/agc/fw/FloatManager$6;-><init>(Lcom/agc/fw/FloatManager;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/agc/fw/FloatManager;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/agc/fw/FloatManager$7;

    invoke-direct {v2, p0, p1}, Lcom/agc/fw/FloatManager$7;-><init>(Lcom/agc/fw/FloatManager;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance p1, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/agc/fw/FloatManager;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/agc/fw/FloatManager;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/agc/fw/FloatManager;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    return-void
.end method

.method private isDebuggable(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static logFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "I "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "green"

    goto :goto_0

    :cond_0
    const-string v0, "W "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "yellow"

    goto :goto_0

    :cond_1
    const-string v0, "E "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "red"

    goto :goto_0

    :cond_2
    const-string v0, "white"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<span style=\"color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "</span>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onDebugBtnClick(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v1, "0123456789abcdefABCDEF"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/agc/fw/FloatManager;->lastDebugText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "\u8bf7\u8f93\u5165 Patch \u5730\u5740"

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/agc/fw/FloatManager$9;

    invoke-direct {v1, p0, v0}, Lcom/agc/fw/FloatManager$9;-><init>(Lcom/agc/fw/FloatManager;Landroid/widget/EditText;)V

    const-string v0, "OK"

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setOverlayState(I)V
    .locals 1

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->key:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public clearLog()V
    .locals 2

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->logs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->adapter:Landroid/widget/ArrayAdapter;

    const-string v1, "clear log."

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getScreenHeight(Landroid/content/Context;)I
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p1, v0, Landroid/graphics/Point;->y:I

    return p1
.end method

.method public hideSoftKeyboard(Landroid/content/Context;)V
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public hideView(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/fw/FloatWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/fw/FloatWindow;->hidden()V

    :cond_0
    return-void
.end method

.method public initView(Landroid/app/Activity;)V
    .locals 9

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/agc/fw/FloatManager;->initPopupWindow(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/agc/Res$layout;->agc_fw_log_overlay:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "agc_tv_log"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "agc_iv_overlay"

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/agc/fw/FloatManager;->defaultState:I

    const/4 v6, 0x1

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    const/16 v7, 0x8

    if-eqz v5, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_3

    move v7, v3

    :cond_3
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v3

    check-cast v4, Lcom/agc/fw/FloatWindow;

    invoke-virtual {v4}, Lcom/agc/fw/FloatWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance v2, Lcom/agc/fw/FloatManager$2;

    invoke-direct {v2, p0, p1}, Lcom/agc/fw/FloatManager$2;-><init>(Lcom/agc/fw/FloatManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/agc/fw/FloatManager$3;

    invoke-direct {v2, p0}, Lcom/agc/fw/FloatManager$3;-><init>(Lcom/agc/fw/FloatManager;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v2, Lcom/agc/fw/FloatWindow$With;

    invoke-direct {v2, p1, v0}, Lcom/agc/fw/FloatWindow$With;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Lcom/agc/fw/FloatWindow$With;->setAutoAlign(Z)Lcom/agc/fw/FloatWindow$With;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/agc/fw/FloatWindow$With;->setModality(Z)Lcom/agc/fw/FloatWindow$With;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/agc/fw/FloatWindow$With;->setMoveAble(Z)Lcom/agc/fw/FloatWindow$With;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/agc/fw/FloatWindow$With;->setDeskTopWindow(Z)Lcom/agc/fw/FloatWindow$With;

    move-result-object v0

    iget-boolean v2, p0, Lcom/agc/fw/FloatManager;->append:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/agc/fw/FloatManager;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-double v4, v2

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v2, v4

    goto :goto_2

    :cond_5
    const/16 v2, 0x3c

    :goto_2
    invoke-virtual {v0, v3, v2}, Lcom/agc/fw/FloatWindow$With;->setStartLocation(II)Lcom/agc/fw/FloatWindow$With;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/fw/FloatWindow$With;->create()Lcom/agc/fw/FloatWindow;

    move-result-object v0

    iget-boolean v2, p0, Lcom/agc/fw/FloatManager;->append:Z

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/agc/fw/FloatWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_6
    iget-object v1, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/agc/fw/FloatManager$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/agc/fw/FloatManager$8;-><init>(Lcom/agc/fw/FloatManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/fw/FloatWindow;

    invoke-virtual {v0}, Lcom/agc/fw/FloatWindow;->remove()V

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/fw/FloatWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/agc/fw/FloatWindow;->show()V

    :cond_0
    return-void
.end method

.method public showFloat(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lcom/agc/fw/FloatManager;->getOverlayState()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/agc/fw/FloatManager$1;

    invoke-direct {v1, p0, p1}, Lcom/agc/fw/FloatManager$1;-><init>(Lcom/agc/fw/FloatManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public showPopWindow(Landroid/app/Activity;)V
    .locals 3

    iget-boolean v0, p0, Lcom/agc/fw/FloatManager;->append:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/fw/FloatManager;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method public showSoftKeyboard(Landroid/content/Context;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
