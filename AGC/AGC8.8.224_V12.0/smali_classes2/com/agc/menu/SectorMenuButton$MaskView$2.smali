.class Lcom/agc/menu/SectorMenuButton$MaskView$2;
.super Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/menu/SectorMenuButton$MaskView;-><init>(Landroid/content/Context;Lcom/agc/menu/SectorMenuButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/menu/SectorMenuButton$MaskView;


# direct methods
.method public constructor <init>(Lcom/agc/menu/SectorMenuButton$MaskView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView$2;->this$0:Lcom/agc/menu/SectorMenuButton$MaskView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/agc/menu/SectorMenuButton$SimpleAnimatorListener;-><init>(Lcom/agc/menu/SectorMenuButton$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView$2;->this$0:Lcom/agc/menu/SectorMenuButton$MaskView;

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton$MaskView;->access$2000(Lcom/agc/menu/SectorMenuButton$MaskView;)Lcom/agc/menu/SectorMenuButton;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/menu/SectorMenuButton;->access$2100(Lcom/agc/menu/SectorMenuButton;)Lcom/agc/menu/SectorMenuButton$RippleInfo;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/agc/menu/SectorMenuButton$RippleInfo;->rippleRadius:F

    iget-object p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView$2;->this$0:Lcom/agc/menu/SectorMenuButton$MaskView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/agc/menu/SectorMenuButton$MaskView;->access$2300(Lcom/agc/menu/SectorMenuButton$MaskView;I)V

    return-void
.end method
