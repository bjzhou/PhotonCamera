.class Lcom/agc/menu/SectorMenuButton$2;
.super Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/menu/SectorMenuButton;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/menu/SectorMenuButton;


# direct methods
.method public constructor <init>(Lcom/agc/menu/SectorMenuButton;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$2;->this$0:Lcom/agc/menu/SectorMenuButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;-><init>(Lcom/agc/menu/SectorMenuButton$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$2;->this$0:Lcom/agc/menu/SectorMenuButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/agc/menu/SectorMenuButton;->access$402(Lcom/agc/menu/SectorMenuButton;Z)Z

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$2;->this$0:Lcom/agc/menu/SectorMenuButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/agc/menu/SectorMenuButton;->access$602(Lcom/agc/menu/SectorMenuButton;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$2;->this$0:Lcom/agc/menu/SectorMenuButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/agc/menu/SectorMenuButton;->access$402(Lcom/agc/menu/SectorMenuButton;Z)Z

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$2;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton;->access$500(Lcom/agc/menu/SectorMenuButton;)V

    return-void
.end method
