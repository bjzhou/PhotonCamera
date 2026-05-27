.class public abstract Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mFlags:I

.field mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field mScrapContainer:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

.field mShadowedHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mItemId:J

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mItemViewType:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowedHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowingHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    const/4 v2, 0x0

    iput v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mIsRecyclableCount:I

    iput-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mScrapContainer:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iput-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mInChangeScrap:Z

    iput v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangePayload(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addFlags(I)V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    return-void
.end method

.method public clearPayload()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public clearReturnedFromScrapFlag()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public clearTmpDetachFlag()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public doesTransientStatePreventRecycling()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {p0, p2, p3}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->offsetPosition(IZ)V

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getAdapterPositionInRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public final getAdapterPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    return v0
.end method

.method public final getBindingAdapter()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter<",
            "+",
            "Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    return-object v0
.end method

.method public final getBindingAdapterPosition()I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getAdapter()Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    invoke-virtual {v2, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->getAdapterPositionInRecyclerView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mBindingAdapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {v0, v1, p0, v2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->findRelativeAdapterPositionIn(Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)I

    move-result v0

    return v0
.end method

.method public final getItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method public final getOldPosition()I
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    :cond_0
    return v0
.end method

.method public getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    :cond_2
    sget-object v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method public hasAnyOfTheFlags(I)Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAdapterPositionUnknown()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAttachedToTransitionOverlay()Z
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/agc/widget/recyclerview/AgcRecyclerView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBound()Z
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInvalid()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRecyclable()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemoved()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrap()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mScrapContainer:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTmpDetached()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdated()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needsUpdate()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offsetPosition(IZ)V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    :cond_0
    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_2
    iget p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/agc/widget/recyclerview/AgcRecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_3
    return-void
.end method

.method public onEnteredHiddenState(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setChildImportantForAccessibilityInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)Z

    return-void
.end method

.method public onLeftHiddenState(Lcom/agc/widget/recyclerview/AgcRecyclerView;)V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->setChildImportantForAccessibilityInternal(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;I)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method public resetInternal()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mItemId:J

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowedHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    iput-object v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mShadowingHolder:Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->clearPayload()V

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPendingAccessibilityState:I

    invoke-static {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public saveOldPosition()V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    :cond_0
    return-void
.end method

.method public setFlags(II)V
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mIsRecyclableCount:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "View"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    if-ne v1, v0, :cond_2

    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    :goto_1
    iput p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public setScrapContainer(Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mScrapContainer:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    iput-boolean p2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mInChangeScrap:Z

    return-void
.end method

.method public shouldBeKeptAsChild()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldIgnore()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stopIgnoring()V
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v2, :cond_1

    const-string v2, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v2, "[attachedScrap]"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unScrap()V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mScrapContainer:Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Recycler;->unscrapView(Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;)V

    return-void
.end method

.method public wasReturnedFromScrap()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcRecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
