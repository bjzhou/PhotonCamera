.class public interface abstract Landroidx/core/app/OnMultiWindowModeChangedProvider;
.super Ljava/lang/Object;
.source "OnMultiWindowModeChangedProvider.java"


# virtual methods
.method public abstract addOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/MultiWindowModeChangedInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeOnMultiWindowModeChangedListener(Landroidx/core/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/MultiWindowModeChangedInfo;",
            ">;)V"
        }
    .end annotation
.end method
