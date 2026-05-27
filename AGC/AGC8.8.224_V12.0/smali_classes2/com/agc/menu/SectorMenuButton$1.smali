.class Lcom/agc/menu/SectorMenuButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/menu/SectorMenuButton;->initViewTreeObserver()V
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

    iput-object p1, p0, Lcom/agc/menu/SectorMenuButton$1;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$1;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$100(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/agc/menu/SectorMenuButton$1;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v0}, Lcom/agc/menu/SectorMenuButton;->access$200(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/menu/SectorMenuButton$1;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v1}, Lcom/agc/menu/SectorMenuButton;->access$100(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/agc/menu/SectorMenuButton$1;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v2}, Lcom/agc/menu/SectorMenuButton;->access$100(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/agc/menu/SectorMenuButton$1;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v3}, Lcom/agc/menu/SectorMenuButton;->access$100(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/agc/menu/SectorMenuButton$1;->this$0:Lcom/agc/menu/SectorMenuButton;

    invoke-static {v4}, Lcom/agc/menu/SectorMenuButton;->access$100(Lcom/agc/menu/SectorMenuButton;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
