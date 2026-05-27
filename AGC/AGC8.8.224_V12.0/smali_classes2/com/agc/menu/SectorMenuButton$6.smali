.class Lcom/agc/menu/SectorMenuButton$6;
.super Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/menu/SectorMenuButton;->hideBlur()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/menu/SectorMenuButton;

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/agc/menu/SectorMenuButton;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$6;->this$0:Lcom/agc/menu/SectorMenuButton;

    iput-object p2, p0, Lcom/agc/menu/SectorMenuButton$6;->val$root:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;-><init>(Lcom/agc/menu/SectorMenuButton$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$6;->val$root:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$6;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$1400(Lcom/agc/menu/SectorMenuButton;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
