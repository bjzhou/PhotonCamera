.class Lcom/agc/glide/manager/FirstFrameWaiter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/manager/FirstFrameWaiter;->registerSelf(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/manager/FirstFrameWaiter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/agc/glide/manager/FirstFrameWaiter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/manager/FirstFrameWaiter$1;->this$0:Lcom/agc/glide/manager/FirstFrameWaiter;

    iput-object p2, p0, Lcom/agc/glide/manager/FirstFrameWaiter$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 1

    new-instance v0, Lcom/agc/glide/manager/FirstFrameWaiter$1$1;

    invoke-direct {v0, p0, p0}, Lcom/agc/glide/manager/FirstFrameWaiter$1$1;-><init>(Lcom/agc/glide/manager/FirstFrameWaiter$1;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-static {v0}, Lcom/agc/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
