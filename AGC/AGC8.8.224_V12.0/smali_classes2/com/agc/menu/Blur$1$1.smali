.class Lcom/agc/menu/Blur$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/menu/Blur$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/agc/menu/Blur$1;

.field final synthetic val$blurred:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/agc/menu/Blur$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/menu/Blur$1$1;->this$1:Lcom/agc/menu/Blur$1;

    iput-object p2, p0, Lcom/agc/menu/Blur$1$1;->val$blurred:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/menu/Blur$1$1;->this$1:Lcom/agc/menu/Blur$1;

    iget-object v0, v0, Lcom/agc/menu/Blur$1;->this$0:Lcom/agc/menu/Blur;

    invoke-static {v0}, Lcom/agc/menu/Blur;->access$400(Lcom/agc/menu/Blur;)Lcom/agc/menu/Blur$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/menu/Blur$1$1;->this$1:Lcom/agc/menu/Blur$1;

    iget-object v0, v0, Lcom/agc/menu/Blur$1;->this$0:Lcom/agc/menu/Blur;

    invoke-static {v0}, Lcom/agc/menu/Blur;->access$400(Lcom/agc/menu/Blur;)Lcom/agc/menu/Blur$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/menu/Blur$1$1;->val$blurred:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/agc/menu/Blur$Callback;->onBlurred(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
