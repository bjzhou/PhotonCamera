.class final Landroidx/wear/ambient/WearableControllerProvider$1;
.super Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;


# instance fields
.field final synthetic a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-direct {p0}, Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-interface {v0, p1}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onEnterAmbient(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onExitAmbient()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onExitAmbient()V

    return-void
.end method

.method public final onInvalidateAmbientOffload()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onAmbientOffloadInvalidated()V

    return-void
.end method

.method public final onUpdateAmbient()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onUpdateAmbient()V

    return-void
.end method
