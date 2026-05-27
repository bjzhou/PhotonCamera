.class Lcom/agc/widget/recyclerview/FastScroller$2;
.super Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/recyclerview/FastScroller;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/FastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/FastScroller$2;->this$0:Lcom/agc/widget/recyclerview/FastScroller;

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/agc/widget/recyclerview/AgcRecyclerView;II)V
    .locals 0

    iget-object p2, p0, Lcom/agc/widget/recyclerview/FastScroller$2;->this$0:Lcom/agc/widget/recyclerview/FastScroller;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/agc/widget/recyclerview/FastScroller;->updateScrollPosition(II)V

    return-void
.end method
