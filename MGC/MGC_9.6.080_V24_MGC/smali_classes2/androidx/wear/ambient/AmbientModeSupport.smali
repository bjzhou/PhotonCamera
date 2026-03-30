.class public final Landroidx/wear/ambient/AmbientModeSupport;
.super Lbo;
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

.field b:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

.field private final c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

.field private final d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Landroidx/wear/ambient/AmbientModeSupport$1;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$1;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lbo;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static attach(Lbr;)Landroidx/wear/ambient/AmbientModeSupport$AmbientController;
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v1, v0}, Lcp;->m(Lbo;Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1}, Landroidx/wear/ambient/AmbientModeSupport;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Lcp;->f()V

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v2, p0}, Lai;-><init>(Lcj;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    const-string v0, "android.support.wearable.ambient.AmbientMode"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lcj;->d(Ljava/lang/String;)Lbo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, v1, Landroidx/wear/ambient/AmbientModeSupport;->d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x20

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_12
    new-instance v2, Lai;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    :goto_15
    check-cast v1, Landroidx/wear/ambient/AmbientModeSupport;

    nop

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

    :goto_16
    invoke-virtual {p0}, Lbr;->dq()Lcj;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/wear/ambient/AmbientDelegate;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;->getAmbientCallback()Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "No callback provided - enabling only smart resume"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "AmbientModeSupport"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    check-cast p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    instance-of v0, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x15

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xe

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    invoke-super {p0, p1}, Lbo;->onAttach(Landroid/content/Context;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lbo;->getActivity()Lbr;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    iget-object v2, p0, Landroidx/wear/ambient/AmbientModeSupport;->c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_5

    nop

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
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->b()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

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

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Lbo;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->g()V

    :goto_8
    goto/32 :goto_1

    nop

    nop
.end method

.method public final onDestroy()V
    .locals 1

    goto/32 :goto_2

    nop

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

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->c()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Lbo;->onDestroy()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDetach()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Lbo;->onDetach()V

    goto/32 :goto_3

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
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->d()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Lbo;->onPause()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public final onResume()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->e()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-super {p0}, Lbo;->onResume()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onStop()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lbo;->onStop()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->f()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
