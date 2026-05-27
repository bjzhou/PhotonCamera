.class Lcom/agc/widget/cure/CureGridViewLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/cure/CureGridViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/cure/CureGridViewLayout;


# direct methods
.method public constructor <init>(Lcom/agc/widget/cure/CureGridViewLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout$5;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout$5;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {p1}, Lcom/agc/widget/cure/CureGridViewLayout;->access$400(Lcom/agc/widget/cure/CureGridViewLayout;)Lcom/agc/widget/cure/CureGridView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/widget/cure/CureGridView;->getCureValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout$5;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v0}, Lcom/agc/widget/cure/CureGridViewLayout;->access$000(Lcom/agc/widget/cure/CureGridViewLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/agc/widget/cure/CureGridViewLayout;->access$100(Lcom/agc/widget/cure/CureGridViewLayout;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cureValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout$5;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v0}, Lcom/agc/widget/cure/CureGridViewLayout;->access$400(Lcom/agc/widget/cure/CureGridViewLayout;)Lcom/agc/widget/cure/CureGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/widget/cure/CureGridView;->getCurePerModel()Lcom/agc/widget/cure/CurePerModel;

    move-result-object v0

    iget-object v0, v0, Lcom/agc/widget/cure/CurePerModel;->array:Ljava/util/List;

    const-string v1, "selected:"

    invoke-static {v1, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout$5;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v0}, Lcom/agc/widget/cure/CureGridViewLayout;->access$500(Lcom/agc/widget/cure/CureGridViewLayout;)Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout$5;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v0}, Lcom/agc/widget/cure/CureGridViewLayout;->access$500(Lcom/agc/widget/cure/CureGridViewLayout;)Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;

    move-result-object v0

    new-instance v1, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;

    iget-object v2, p0, Lcom/agc/widget/cure/CureGridViewLayout$5;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v2}, Lcom/agc/widget/cure/CureGridViewLayout;->access$000(Lcom/agc/widget/cure/CureGridViewLayout;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;-><init>(Lcom/agc/widget/cure/CureGridViewLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;->onDone(Lcom/agc/widget/cure/CureGridViewLayout$CureValue;)V

    :cond_0
    return-void
.end method
