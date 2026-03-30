.class final Landroidx/wear/ambient/WearableControllerProvider$1;
.super Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;
.source "PG"


# instance fields
.field final synthetic a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onEnterAmbient(Landroid/os/Bundle;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final onExitAmbient()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onExitAmbient()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final onInvalidateAmbientOffload()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onAmbientOffloadInvalidated()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onUpdateAmbient()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/WearableControllerProvider$1;->a:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;->onUpdateAmbient()V

    goto/32 :goto_0

    nop

    nop
.end method
