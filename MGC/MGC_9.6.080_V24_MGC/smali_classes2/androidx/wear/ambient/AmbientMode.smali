.class public final Landroidx/wear/ambient/AmbientMode;
.super Landroid/app/Fragment;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_BURN_IN_PROTECTION:Ljava/lang/String; = "com.google.android.wearable.compat.extra.BURN_IN_PROTECTION"

.field public static final EXTRA_LOWBIT_AMBIENT:Ljava/lang/String; = "com.google.android.wearable.compat.extra.LOWBIT_AMBIENT"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "android.support.wearable.ambient.AmbientMode"


# instance fields
.field a:Landroidx/wear/ambient/AmbientDelegate;

.field b:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

.field private final c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

.field private final d:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroidx/wear/ambient/AmbientMode$1;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    invoke-direct {v0}, Landroidx/wear/ambient/AmbientMode$1;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public static attachAmbientSupport(Landroid/app/Activity;)Landroidx/wear/ambient/AmbientMode$AmbientController;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    new-instance v1, Landroidx/wear/ambient/AmbientMode;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_7
    check-cast v1, Landroidx/wear/ambient/AmbientMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    iget-object p0, v1, Landroidx/wear/ambient/AmbientMode;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    const-string v0, "android.support.wearable.ambient.AmbientMode"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1}, Landroidx/wear/ambient/AmbientMode;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/wear/ambient/AmbientDelegate;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const-string p1, "No callback provided - enabling only smart resume"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-interface {p1}, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;->getAmbientCallback()Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

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
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p0, "AmbientMode"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    goto/32 :goto_13

    nop

    nop

    :goto_a
    instance-of v0, p1, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_e
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    :goto_11
    iget-object v2, p0, Landroidx/wear/ambient/AmbientMode;->c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    :goto_15
    iput-object p1, p0, Landroidx/wear/ambient/AmbientMode;->b:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_18
    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->b()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Landroidx/wear/ambient/AmbientMode;->b:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->g()V

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDestroy()V
    .locals 1

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

    :goto_1
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->c()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDetach()V
    .locals 1

    goto/32 :goto_3

    nop

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
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final onPause()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->d()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onResume()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->e()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onStop()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->f()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method
