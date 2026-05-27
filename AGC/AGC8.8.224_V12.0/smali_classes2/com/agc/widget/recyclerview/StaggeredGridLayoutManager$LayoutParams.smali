.class public Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mFullSpan:Z

.field mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->mIndex:I

    return v0
.end method

.method public isFullSpan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return v0
.end method

.method public setFullSpan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return-void
.end method
