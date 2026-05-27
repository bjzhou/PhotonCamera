.class public interface abstract Landroidx/window/area/reflectionguard/WindowAreaComponentApi3Requirements;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/window/area/reflectionguard/WindowAreaComponentApi2Requirements;


# virtual methods
.method public abstract addRearDisplayPresentationStatusListener(Landroidx/window/extensions/core/util/function/Consumer;)V
.end method

.method public abstract endRearDisplayPresentationSession()V
.end method

.method public abstract getRearDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method public abstract getRearDisplayPresentation()Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;
.end method

.method public abstract removeRearDisplayPresentationStatusListener(Landroidx/window/extensions/core/util/function/Consumer;)V
.end method

.method public abstract startRearDisplayPresentationSession(Landroid/app/Activity;Landroidx/window/extensions/core/util/function/Consumer;)V
.end method
