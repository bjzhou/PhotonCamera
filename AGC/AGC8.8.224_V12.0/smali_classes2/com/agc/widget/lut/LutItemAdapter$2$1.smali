.class Lcom/agc/widget/lut/LutItemAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutItemAdapter$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/agc/widget/lut/LutItemAdapter$2;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutItemAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$2$1;->this$1:Lcom/agc/widget/lut/LutItemAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$2$1;->this$1:Lcom/agc/widget/lut/LutItemAdapter$2;

    iget-object p1, p1, Lcom/agc/widget/lut/LutItemAdapter$2;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/agc/widget/lut/LutItemAdapter;->access$102(Lcom/agc/widget/lut/LutItemAdapter;Z)Z

    iget-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$2$1;->this$1:Lcom/agc/widget/lut/LutItemAdapter$2;

    iget-object p1, p1, Lcom/agc/widget/lut/LutItemAdapter$2;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
