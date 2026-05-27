.class Lcom/agc/widget/ColorButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/ColorButton;->showDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/ColorButton;


# direct methods
.method public constructor <init>(Lcom/agc/widget/ColorButton;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/ColorButton$2;->this$0:Lcom/agc/widget/ColorButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/ColorButton$2;->this$0:Lcom/agc/widget/ColorButton;

    invoke-static {p1}, Lcom/agc/widget/ColorButton;->access$200(Lcom/agc/widget/ColorButton;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/agc/widget/ColorButton$Adapter$Item;

    iget-object v0, p2, Lcom/agc/widget/ColorButton$Adapter$Item;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/agc/widget/ColorButton$Adapter$Item;->key:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/Utils/Pref;->setAuxProfilePrefValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "config_successfully"

    invoke-static {p1}, Lcom/agc/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "I"

    invoke-static {p2, p1}, Lcom/agc/Toast;->show(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
