.class public final Landroidx/wear/ambient/AmbientModeSupport;
.super Lbw;


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

    invoke-direct {p0}, Lbw;-><init>()V

    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$1;

    invoke-direct {v0}, Landroidx/wear/ambient/AmbientModeSupport$1;-><init>()V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Landroidx/wear/ambient/AmbientModeSupport;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method

.method public static attach(Lbz;)Landroidx/wear/ambient/AmbientModeSupport$AmbientController;
    .locals 2

    invoke-virtual {p0}, Lbz;->bI()Lcq;

    move-result-object p0

    const-string v0, "android.support.wearable.ambient.AmbientMode"

    invoke-virtual {p0, v0}, Lcq;->e(Ljava/lang/String;)Lbw;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientModeSupport;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport;

    invoke-direct {v1}, Landroidx/wear/ambient/AmbientModeSupport;-><init>()V

    invoke-virtual {p0}, Lcq;->i()Lcx;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcx;->o(Lbw;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcx;->h()V

    goto :goto_0

    :cond_0
    :goto_0
    iget-object p0, v1, Landroidx/wear/ambient/AmbientModeSupport;->d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/wear/ambient/AmbientDelegate;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lbw;->onAttach(Landroid/content/Context;)V

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v1

    iget-object v2, p0, Landroidx/wear/ambient/AmbientModeSupport;->c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-direct {v0, v1, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    instance-of v0, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;

    invoke-interface {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientCallbackProvider;->getAmbientCallback()Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    return-void

    :cond_0
    const-string p1, "AmbientModeSupport"

    const-string v0, "No callback provided - enabling only smart resume"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lbw;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->b()V

    iget-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->g()V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->c()V

    invoke-super {p0}, Lbw;->onDestroy()V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-super {p0}, Lbw;->onDetach()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->d()V

    invoke-super {p0}, Lbw;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lbw;->onResume()V

    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->e()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientModeSupport;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->f()V

    invoke-super {p0}, Lbw;->onStop()V

    return-void
.end method
