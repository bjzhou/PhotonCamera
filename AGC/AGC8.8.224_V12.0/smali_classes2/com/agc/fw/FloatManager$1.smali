.class Lcom/agc/fw/FloatManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/fw/FloatManager;->showFloat(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/fw/FloatManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatManager;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/fw/FloatManager$1;->this$0:Lcom/agc/fw/FloatManager;

    iput-object p2, p0, Lcom/agc/fw/FloatManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/fw/FloatManager$1;->this$0:Lcom/agc/fw/FloatManager;

    iget-object v1, p0, Lcom/agc/fw/FloatManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/agc/fw/FloatManager;->initView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/agc/fw/FloatManager$1;->this$0:Lcom/agc/fw/FloatManager;

    iget-object v1, p0, Lcom/agc/fw/FloatManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/agc/fw/FloatManager;->show(Landroid/content/Context;)V

    return-void
.end method
