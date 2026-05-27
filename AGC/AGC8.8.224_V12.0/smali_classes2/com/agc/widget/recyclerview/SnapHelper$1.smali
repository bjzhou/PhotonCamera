.class Lcom/agc/widget/recyclerview/SnapHelper$1;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/agc/widget/recyclerview/SnapHelper;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/SnapHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/SnapHelper$1;->this$0:Lcom/agc/widget/recyclerview/SnapHelper;

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/SnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/agc/widget/recyclerview/AgcRecyclerView;I)V

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/agc/widget/recyclerview/SnapHelper$1;->mScrolled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/SnapHelper$1;->mScrolled:Z

    iget-object p1, p0, Lcom/agc/widget/recyclerview/SnapHelper$1;->this$0:Lcom/agc/widget/recyclerview/SnapHelper;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/SnapHelper;->snapToTargetExistingView()V

    :cond_0
    return-void
.end method

.method public onScrolled(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/SnapHelper$1;->mScrolled:Z

    :cond_1
    return-void
.end method
