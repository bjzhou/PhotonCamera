.class public final synthetic Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/app/SharedElementCallback$OnSharedElementsReadyListener;


# instance fields
.field public final synthetic f$0:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$$ExternalSyntheticLambda0;->f$0:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    return-void
.end method


# virtual methods
.method public final onSharedElementsReady()V
    .locals 0

    iget-object p0, p0, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl$$ExternalSyntheticLambda0;->f$0:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-static {p0}, Landroidx/core/app/ActivityCompat$SharedElementCallback21Impl;->lambda$onSharedElementsArrived$0(Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    return-void
.end method
