.class Lcom/agc/widget/ColorButton$Adapter;
.super Lcom/agc/asv/CommonAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/ColorButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/ColorButton$Adapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/asv/CommonAdapter<",
        "Lcom/agc/widget/ColorButton$Adapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/AlertDialog;

.field imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/agc/widget/ColorButton$Adapter$Item;",
            ">;",
            "Landroid/app/AlertDialog;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/agc/asv/CommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object p1, p0, Lcom/agc/asv/CommonAdapter;->mContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/agc/widget/ColorButton$Adapter;->imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/agc/widget/ColorButton$Adapter;->dialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/agc/asv/CommonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/ColorButton$Adapter$Item;

    iget-object p2, p0, Lcom/agc/asv/CommonAdapter;->mContext:Landroid/content/Context;

    sget p3, Lcom/agc/Res$layout;->agc_input_dialog_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string p3, "input_label"

    invoke-static {p3}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    iget-object v0, p1, Lcom/agc/widget/ColorButton$Adapter$Item;->title:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p3, "input_text"

    invoke-static {p3}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    if-eqz p3, :cond_1

    iget-object v0, p1, Lcom/agc/widget/ColorButton$Adapter$Item;->defaultValue:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/agc/widget/ColorButton$Adapter$Item;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/agc/widget/ColorButton$Adapter$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/agc/widget/ColorButton$Adapter$1;-><init>(Lcom/agc/widget/ColorButton$Adapter;Landroid/widget/EditText;Lcom/agc/widget/ColorButton$Adapter$Item;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda1;-><init>(Lcom/agc/widget/ColorButton$Adapter;Landroid/widget/EditText;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    return-object p2
.end method

.method synthetic lambda$getView$0$com-agc-widget-ColorButton$Adapter(ZLandroid/widget/EditText;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "xxxx-->onFocusChange"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/ColorButton$Adapter;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getView$1$com-agc-widget-ColorButton$Adapter(Landroid/widget/EditText;Landroid/view/View;Z)V
    .locals 0

    new-instance p2, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p1}, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;-><init>(Lcom/agc/widget/ColorButton$Adapter;ZLandroid/widget/EditText;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
