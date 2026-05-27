.class Lcom/agc/fw/FloatManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/fw/FloatManager;->initView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/fw/FloatManager;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatManager;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/fw/FloatManager$2;->this$0:Lcom/agc/fw/FloatManager;

    iput-object p2, p0, Lcom/agc/fw/FloatManager$2;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/fw/FloatManager$2;->this$0:Lcom/agc/fw/FloatManager;

    iget-object v0, p0, Lcom/agc/fw/FloatManager$2;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/agc/fw/FloatManager;->showPopWindow(Landroid/app/Activity;)V

    return-void
.end method
