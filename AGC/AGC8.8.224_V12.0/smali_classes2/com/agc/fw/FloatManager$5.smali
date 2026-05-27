.class Lcom/agc/fw/FloatManager$5;
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


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/fw/FloatManager$5;->this$0:Lcom/agc/fw/FloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/fw/FloatManager$5;->this$0:Lcom/agc/fw/FloatManager;

    invoke-virtual {p1}, Lcom/agc/fw/FloatManager;->clearLog()V

    return-void
.end method
