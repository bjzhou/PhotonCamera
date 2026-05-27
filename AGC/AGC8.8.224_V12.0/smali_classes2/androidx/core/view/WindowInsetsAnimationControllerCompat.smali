.class public final Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;,
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;


# direct methods
.method constructor <init>(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl30;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 0

    .line 189
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->finish(Z)V

    return-void
.end method

.method public getCurrentAlpha()F
    .locals 0

    .line 124
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getCurrentAlpha()F

    move-result p0

    return p0
.end method

.method public getCurrentFraction()F
    .locals 0

    .line 115
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getCurrentFraction()F

    move-result p0

    return p0
.end method

.method public getCurrentInsets()Landroidx/core/graphics/Insets;
    .locals 0

    .line 100
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getCurrentInsets()Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public getHiddenStateInsets()Landroidx/core/graphics/Insets;
    .locals 0

    .line 66
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getHiddenStateInsets()Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public getShownStateInsets()Landroidx/core/graphics/Insets;
    .locals 0

    .line 85
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getShownStateInsets()Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public getTypes()I
    .locals 0

    .line 132
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->getTypes()I

    move-result p0

    return p0
.end method

.method public isCancelled()Z
    .locals 0

    .line 225
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public isFinished()Z
    .locals 0

    .line 213
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->isFinished()Z

    move-result p0

    return p0
.end method

.method public isReady()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V
    .locals 0

    .line 174
    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;->setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V

    return-void
.end method
