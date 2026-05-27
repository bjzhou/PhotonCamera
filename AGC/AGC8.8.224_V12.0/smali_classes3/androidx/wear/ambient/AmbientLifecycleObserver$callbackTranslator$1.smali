.class public final Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;


# instance fields
.field final synthetic a:Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;->a:Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAmbientOffloadInvalidated()V
    .locals 0

    return-void
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.wearable.compat.extra.BURN_IN_PROTECTION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "com.google.android.wearable.compat.extra.LOWBIT_AMBIENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;->a:Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;

    new-instance v2, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;

    invoke-direct {v2, v1, v0}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;-><init>(ZZ)V

    invoke-interface {p1, v2}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;->onEnterAmbient(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientDetails;)V

    return-void
.end method

.method public final onExitAmbient()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;->a:Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;->onExitAmbient()V

    return-void
.end method

.method public final onUpdateAmbient()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;->a:Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;

    invoke-interface {v0}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;->onUpdateAmbient()V

    return-void
.end method
