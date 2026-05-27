.class public Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ViewTypeStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsolatedViewTypeStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;
    }
.end annotation


# instance fields
.field mGlobalTypeToWrapper:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/agc/widget/recyclerview/NestedAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mNextViewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    return-void
.end method


# virtual methods
.method public createViewTypeWrapper(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;
    .locals 1

    new-instance v0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;

    invoke-direct {v0, p0, p1}, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;-><init>(Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V

    return-object v0
.end method

.method public getWrapperForGlobalType(I)Lcom/agc/widget/recyclerview/NestedAdapterWrapper;
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find the wrapper for global view type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obtainViewType(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)I
    .locals 2

    iget v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mNextViewType:I

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method public removeWrapper(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
