.class Lcom/agc/asv/ShadowPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/ShadowPopup;->animateDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/ShadowPopup;


# direct methods
.method public constructor <init>(Lcom/agc/asv/ShadowPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/ShadowPopup$3;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$3;->this$0:Lcom/agc/asv/ShadowPopup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/agc/asv/ShadowPopup;->access$202(Lcom/agc/asv/ShadowPopup;Z)Z

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$3;->this$0:Lcom/agc/asv/ShadowPopup;

    invoke-static {p1}, Lcom/agc/asv/ShadowPopup;->access$400(Lcom/agc/asv/ShadowPopup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/agc/asv/ShadowPopup$3$1;

    invoke-direct {v0, p0}, Lcom/agc/asv/ShadowPopup$3$1;-><init>(Lcom/agc/asv/ShadowPopup$3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/asv/ShadowPopup$3;->this$0:Lcom/agc/asv/ShadowPopup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/agc/asv/ShadowPopup;->access$202(Lcom/agc/asv/ShadowPopup;Z)Z

    return-void
.end method
