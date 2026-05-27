.class Lcom/agc/widget/ColorButton$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/ColorButton$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/ColorButton$Adapter;

.field final synthetic val$item:Lcom/agc/widget/ColorButton$Adapter$Item;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/agc/widget/ColorButton$Adapter;Landroid/widget/EditText;Lcom/agc/widget/ColorButton$Adapter$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/ColorButton$Adapter$1;->this$0:Lcom/agc/widget/ColorButton$Adapter;

    iput-object p2, p0, Lcom/agc/widget/ColorButton$Adapter$1;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/agc/widget/ColorButton$Adapter$1;->val$item:Lcom/agc/widget/ColorButton$Adapter$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "enable:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/agc/widget/ColorButton$Adapter$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "xxxx-->onTextChanged"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/agc/widget/ColorButton$Adapter$1;->val$item:Lcom/agc/widget/ColorButton$Adapter$Item;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/agc/widget/ColorButton$Adapter$Item;->value:Ljava/lang/String;

    return-void
.end method
