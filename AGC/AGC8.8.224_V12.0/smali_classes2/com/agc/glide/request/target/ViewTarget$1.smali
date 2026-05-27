.class Lcom/agc/glide/request/target/ViewTarget$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/request/target/ViewTarget;->clearOnDetach()Lcom/agc/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/request/target/ViewTarget;


# direct methods
.method public constructor <init>(Lcom/agc/glide/request/target/ViewTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/request/target/ViewTarget$1;->this$0:Lcom/agc/glide/request/target/ViewTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/glide/request/target/ViewTarget$1;->this$0:Lcom/agc/glide/request/target/ViewTarget;

    invoke-virtual {p1}, Lcom/agc/glide/request/target/ViewTarget;->resumeMyRequest()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/glide/request/target/ViewTarget$1;->this$0:Lcom/agc/glide/request/target/ViewTarget;

    invoke-virtual {p1}, Lcom/agc/glide/request/target/ViewTarget;->pauseMyRequest()V

    return-void
.end method
