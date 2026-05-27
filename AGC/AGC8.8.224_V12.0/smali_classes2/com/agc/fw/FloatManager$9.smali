.class Lcom/agc/fw/FloatManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/fw/FloatManager;->onDebugBtnClick(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/fw/FloatManager;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatManager;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/fw/FloatManager$9;->this$0:Lcom/agc/fw/FloatManager;

    iput-object p2, p0, Lcom/agc/fw/FloatManager$9;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/agc/fw/FloatManager$9;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/agc/fw/FloatManager$9;->this$0:Lcom/agc/fw/FloatManager;

    iput-object p1, p2, Lcom/agc/fw/FloatManager;->lastDebugText:Ljava/lang/String;

    invoke-static {p1}, Lcom/Globals;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/agc/fw/FloatManager$9;->this$0:Lcom/agc/fw/FloatManager;

    iget-object p1, p1, Lcom/agc/fw/FloatManager;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
