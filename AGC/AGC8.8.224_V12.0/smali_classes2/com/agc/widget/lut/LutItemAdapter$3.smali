.class Lcom/agc/widget/lut/LutItemAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutItemAdapter;->onBindViewHolder(Lcom/agc/widget/lut/LutItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutItemAdapter;

.field final synthetic val$holder:Lcom/agc/widget/lut/LutItemViewHolder;

.field final synthetic val$lutModel:Lcom/agc/model/LutListModel$LutModel;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutItemAdapter;Lcom/agc/widget/lut/LutItemViewHolder;Lcom/agc/model/LutListModel$LutModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$3;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    iput-object p2, p0, Lcom/agc/widget/lut/LutItemAdapter$3;->val$holder:Lcom/agc/widget/lut/LutItemViewHolder;

    iput-object p3, p0, Lcom/agc/widget/lut/LutItemAdapter$3;->val$lutModel:Lcom/agc/model/LutListModel$LutModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$3;->val$holder:Lcom/agc/widget/lut/LutItemViewHolder;

    iget-object v0, v0, Lcom/agc/widget/lut/LutItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Lcom/agc/widget/lut/LutLayoutGuideDialog;

    iget-object v1, p0, Lcom/agc/widget/lut/LutItemAdapter$3;->val$holder:Lcom/agc/widget/lut/LutItemViewHolder;

    iget-object v1, v1, Lcom/agc/widget/lut/LutItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/agc/widget/lut/LutItemAdapter$3;->val$holder:Lcom/agc/widget/lut/LutItemViewHolder;

    iget-object v2, v2, Lcom/agc/widget/lut/LutItemViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/agc/widget/lut/LutItemAdapter$3;->val$lutModel:Lcom/agc/model/LutListModel$LutModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/agc/widget/lut/LutLayoutGuideDialog;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/agc/model/LutListModel$LutModel;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
