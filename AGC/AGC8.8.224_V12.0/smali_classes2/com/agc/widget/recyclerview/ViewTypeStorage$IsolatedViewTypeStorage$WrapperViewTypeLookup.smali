.class Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapperViewTypeLookup"
.end annotation


# instance fields
.field private mGlobalToLocalMapping:Landroid/util/SparseIntArray;

.field private mLocalToGlobalMapping:Landroid/util/SparseIntArray;

.field final mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

.field final synthetic this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V
    .locals 1

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->removeWrapper(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V

    return-void
.end method

.method public globalToLocal(I)I
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested global type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " does not belong to the adapter:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;->adapter:Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public localToGlobal(I)I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->obtainViewType(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I

    move-result v0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return v0
.end method
