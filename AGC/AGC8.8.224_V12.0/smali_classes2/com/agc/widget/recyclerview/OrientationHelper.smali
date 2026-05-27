.class public abstract Lcom/agc/widget/recyclerview/OrientationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;Lcom/agc/widget/recyclerview/OrientationHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/widget/recyclerview/OrientationHelper;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/OrientationHelper;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/OrientationHelper$1;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/OrientationHelper$1;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;I)Lcom/agc/widget/recyclerview/OrientationHelper;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/agc/widget/recyclerview/OrientationHelper;->createVerticalHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/OrientationHelper;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/agc/widget/recyclerview/OrientationHelper;->createHorizontalHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/OrientationHelper;

    move-result-object p0

    return-object p0
.end method

.method public static createVerticalHelper(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)Lcom/agc/widget/recyclerview/OrientationHelper;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/OrientationHelper$2;

    invoke-direct {v0, p0}, Lcom/agc/widget/recyclerview/OrientationHelper$2;-><init>(Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public getLayoutManager()Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutManager;

    return-object v0
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    return-void
.end method
