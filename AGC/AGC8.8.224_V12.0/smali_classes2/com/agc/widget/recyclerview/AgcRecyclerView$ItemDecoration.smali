.class public abstract Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    invoke-virtual {p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;ILcom/agc/widget/recyclerview/AgcRecyclerView;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;Lcom/agc/widget/recyclerview/AgcRecyclerView$State;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/agc/widget/recyclerview/AgcRecyclerView;)V

    return-void
.end method
