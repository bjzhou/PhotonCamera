.class Lcom/agc/widget/cure/CureGridViewLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/cure/CureGridView$OnCureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/cure/CureGridViewLayout;->openActionUpToSave(Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/cure/CureGridViewLayout;

.field final synthetic val$listener:Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;


# direct methods
.method public constructor <init>(Lcom/agc/widget/cure/CureGridViewLayout;Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout$1;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    iput-object p2, p0, Lcom/agc/widget/cure/CureGridViewLayout$1;->val$listener:Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout$1;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v0}, Lcom/agc/widget/cure/CureGridViewLayout;->access$000(Lcom/agc/widget/cure/CureGridViewLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/agc/widget/cure/CureGridViewLayout;->access$100(Lcom/agc/widget/cure/CureGridViewLayout;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout$1;->val$listener:Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;

    iget-object v2, p0, Lcom/agc/widget/cure/CureGridViewLayout$1;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v2}, Lcom/agc/widget/cure/CureGridViewLayout;->access$000(Lcom/agc/widget/cure/CureGridViewLayout;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;-><init>(Lcom/agc/widget/cure/CureGridViewLayout;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;->onDone(Lcom/agc/widget/cure/CureGridViewLayout$CureValue;)V

    :cond_0
    return-void
.end method
