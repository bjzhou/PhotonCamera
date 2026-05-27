.class Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field mSpanReferenceLines:[I

.field mValid:Z

.field final synthetic this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void
.end method


# virtual methods
.method public assignCoordinateFromPadding()V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return-void
.end method

.method public assignCoordinateFromPadding(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mPrimaryOrientation:Lcom/agc/widget/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    iput-boolean v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method public saveSpanReferenceLines([Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->this$0:Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager;->mSpans:[Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget-object v3, p1, v1

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Lcom/agc/widget/recyclerview/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
