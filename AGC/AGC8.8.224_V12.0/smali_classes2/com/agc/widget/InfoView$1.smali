.class Lcom/agc/widget/InfoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/InfoView;->_show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/InfoView;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/agc/widget/InfoView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/InfoView$1;->this$0:Lcom/agc/widget/InfoView;

    iput-object p2, p0, Lcom/agc/widget/InfoView$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/InfoView$1;->this$0:Lcom/agc/widget/InfoView;

    invoke-static {v0}, Lcom/agc/widget/InfoView;->access$000(Lcom/agc/widget/InfoView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/InfoView$1;->this$0:Lcom/agc/widget/InfoView;

    invoke-static {v0}, Lcom/agc/widget/InfoView;->access$000(Lcom/agc/widget/InfoView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/InfoView$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
