.class Lcom/agc/widget/cure/CureGridViewLayout$2;
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

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout$2;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout$2;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v0}, Lcom/agc/widget/cure/CureGridViewLayout;->access$200(Lcom/agc/widget/cure/CureGridViewLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/cure/CureGridViewLayout$2;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {v0}, Lcom/agc/widget/cure/CureGridViewLayout;->access$200(Lcom/agc/widget/cure/CureGridViewLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
