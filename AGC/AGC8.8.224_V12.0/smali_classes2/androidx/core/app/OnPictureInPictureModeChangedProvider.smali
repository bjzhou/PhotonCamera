.class public interface abstract Landroidx/core/app/OnPictureInPictureModeChangedProvider;
.super Ljava/lang/Object;
.source "OnPictureInPictureModeChangedProvider.java"


# virtual methods
.method public abstract addOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/PictureInPictureModeChangedInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeOnPictureInPictureModeChangedListener(Landroidx/core/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/core/app/PictureInPictureModeChangedInfo;",
            ">;)V"
        }
    .end annotation
.end method
