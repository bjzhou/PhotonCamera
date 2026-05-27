.class Lcom/agc/asv/MultiplePopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/MultiplePopupWindow;-><init>(Landroid/content/Context;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private previousHeight:I

.field final synthetic this$0:Lcom/agc/asv/MultiplePopupWindow;

.field final synthetic val$contentView:Lcom/agc/asv/CameraSwitchView;


# direct methods
.method public constructor <init>(Lcom/agc/asv/MultiplePopupWindow;Lcom/agc/asv/CameraSwitchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/asv/MultiplePopupWindow$1;->this$0:Lcom/agc/asv/MultiplePopupWindow;

    iput-object p2, p0, Lcom/agc/asv/MultiplePopupWindow$1;->val$contentView:Lcom/agc/asv/CameraSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/agc/asv/MultiplePopupWindow$1;->previousHeight:I

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    iget p1, p0, Lcom/agc/asv/MultiplePopupWindow$1;->previousHeight:I

    if-eq p1, p5, :cond_0

    iget-object p1, p0, Lcom/agc/asv/MultiplePopupWindow$1;->this$0:Lcom/agc/asv/MultiplePopupWindow;

    invoke-virtual {p1, p5}, Landroid/widget/PopupWindow;->setHeight(I)V

    iput p5, p0, Lcom/agc/asv/MultiplePopupWindow$1;->previousHeight:I

    :cond_0
    return-void
.end method
