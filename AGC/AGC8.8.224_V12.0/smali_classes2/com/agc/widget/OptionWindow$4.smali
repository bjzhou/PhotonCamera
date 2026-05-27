.class Lcom/agc/widget/OptionWindow$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/OptionWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/OptionWindow;


# direct methods
.method public constructor <init>(Lcom/agc/widget/OptionWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/OptionWindow$4;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/widget/OptionWindow$4;->this$0:Lcom/agc/widget/OptionWindow;

    invoke-static {p1}, Lcom/agc/widget/OptionWindow;->access$200(Lcom/agc/widget/OptionWindow;)Lcom/agc/widget/OptionWindow$OnPopItemClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/agc/widget/OptionWindow$OnPopItemClickListener;->onClickAccessoryButton()V

    return-void
.end method
