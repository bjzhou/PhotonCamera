.class Lcom/agc/widget/cure/CureGridViewLayout$4;
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

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout$4;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout$4;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-static {p1}, Lcom/agc/widget/cure/CureGridViewLayout;->access$400(Lcom/agc/widget/cure/CureGridViewLayout;)Lcom/agc/widget/cure/CureGridView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/agc/widget/cure/CureGridView;->reset()V

    return-void
.end method
