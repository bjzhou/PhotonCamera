.class interface abstract Landroidx/recyclerview/widget/ViewTypeStorage;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;,
        Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;,
        Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    }
.end annotation


# virtual methods
.method public abstract createViewTypeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
.end method

.method public abstract getWrapperForGlobalType(I)Landroidx/recyclerview/widget/NestedAdapterWrapper;
.end method
