.class Lcom/agc/fw/FloatManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/fw/FloatManager;->initPopupWindow(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/fw/FloatManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/fw/FloatManager$6;->this$0:Lcom/agc/fw/FloatManager;

    iput-object p2, p0, Lcom/agc/fw/FloatManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/fw/FloatManager$6;->this$0:Lcom/agc/fw/FloatManager;

    iget-object v0, p0, Lcom/agc/fw/FloatManager$6;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/agc/fw/FloatManager;->access$000(Lcom/agc/fw/FloatManager;Landroid/content/Context;)V

    return-void
.end method
