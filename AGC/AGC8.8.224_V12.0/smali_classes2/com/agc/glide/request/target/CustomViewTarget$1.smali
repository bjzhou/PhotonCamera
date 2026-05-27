.class Lcom/agc/glide/request/target/CustomViewTarget$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/request/target/CustomViewTarget;->clearOnDetach()Lcom/agc/glide/request/target/CustomViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/request/target/CustomViewTarget;


# direct methods
.method public constructor <init>(Lcom/agc/glide/request/target/CustomViewTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/request/target/CustomViewTarget$1;->this$0:Lcom/agc/glide/request/target/CustomViewTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/glide/request/target/CustomViewTarget$1;->this$0:Lcom/agc/glide/request/target/CustomViewTarget;

    invoke-virtual {p1}, Lcom/agc/glide/request/target/CustomViewTarget;->resumeMyRequest()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/glide/request/target/CustomViewTarget$1;->this$0:Lcom/agc/glide/request/target/CustomViewTarget;

    invoke-virtual {p1}, Lcom/agc/glide/request/target/CustomViewTarget;->pauseMyRequest()V

    return-void
.end method
