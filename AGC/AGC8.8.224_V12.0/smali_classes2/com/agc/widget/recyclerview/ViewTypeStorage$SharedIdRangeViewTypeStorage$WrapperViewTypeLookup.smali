.class Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrapperViewTypeLookup"
.end annotation


# instance fields
.field final mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

.field final synthetic this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;


# direct methods
.method public constructor <init>(Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-virtual {v0, v1}, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;->removeWrapper(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)V

    return-void
.end method

.method public globalToLocal(I)I
    .locals 0

    return p1
.end method

.method public localToGlobal(I)I
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v0, v0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v1, v1, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Lcom/agc/widget/recyclerview/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return p1
.end method
