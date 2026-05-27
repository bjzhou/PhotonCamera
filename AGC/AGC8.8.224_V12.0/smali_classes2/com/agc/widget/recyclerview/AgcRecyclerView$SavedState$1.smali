.class Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;
    .locals 2

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;
    .locals 0

    new-array p1, p1, [Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState$1;->newArray(I)[Lcom/agc/widget/recyclerview/AgcRecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method
