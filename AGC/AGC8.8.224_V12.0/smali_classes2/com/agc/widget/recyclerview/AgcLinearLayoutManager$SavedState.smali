.class public Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    return-void
.end method

.method public constructor <init>(Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    iget v0, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorOffset:I

    iget-boolean p1, p1, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasValidAnchor()Z
    .locals 1

    iget v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateAnchor()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/agc/widget/recyclerview/AgcLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
