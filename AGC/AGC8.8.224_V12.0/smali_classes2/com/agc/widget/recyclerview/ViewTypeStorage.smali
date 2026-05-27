.class interface abstract Lcom/agc/widget/recyclerview/ViewTypeStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/ViewTypeStorage$IsolatedViewTypeStorage;,
        Lcom/agc/widget/recyclerview/ViewTypeStorage$SharedIdRangeViewTypeStorage;,
        Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;
    }
.end annotation


# virtual methods
.method public abstract createViewTypeWrapper(Lcom/agc/widget/recyclerview/NestedAdapterWrapper;)Lcom/agc/widget/recyclerview/ViewTypeStorage$ViewTypeLookup;
.end method

.method public abstract getWrapperForGlobalType(I)Lcom/agc/widget/recyclerview/NestedAdapterWrapper;
.end method
