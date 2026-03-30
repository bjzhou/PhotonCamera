.class public final Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;


# instance fields
.field final synthetic a:Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

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
    iput-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;->a:Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAmbientOffloadInvalidated()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-interface {p0, p1}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;->onEnterAmbient(Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientDetails;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientDetails;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const-string v0, "com.google.android.wearable.compat.extra.LOWBIT_AMBIENT"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const-string v1, "com.google.android.wearable.compat.extra.BURN_IN_PROTECTION"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-direct {p1, v1, v0}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientDetails;-><init>(ZZ)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    :goto_15
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;->a:Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final onExitAmbient()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;->onExitAmbient()V

    goto/32 :goto_1

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
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;->a:Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onUpdateAmbient()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;->a:Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;->onUpdateAmbient()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method
