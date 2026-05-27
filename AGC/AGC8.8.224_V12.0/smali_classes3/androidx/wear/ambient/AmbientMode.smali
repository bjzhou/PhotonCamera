.class public final Landroidx/wear/ambient/AmbientMode;
.super Landroid/app/Fragment;


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

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroidx/wear/ambient/AmbientMode$1;

    invoke-direct {v0}, Landroidx/wear/ambient/AmbientMode$1;-><init>()V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Landroidx/wear/ambient/AmbientMode;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method

.method public static attachAmbientSupport(Landroid/app/Activity;)Landroidx/wear/ambient/AmbientMode$AmbientController;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "android.support.wearable.ambient.AmbientMode"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/wear/ambient/AmbientMode;

    invoke-direct {v1}, Landroidx/wear/ambient/AmbientMode;-><init>()V

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    :goto_0
    iget-object p0, v1, Landroidx/wear/ambient/AmbientMode;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/wear/ambient/AmbientDelegate;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Landroidx/wear/ambient/AmbientMode;->c:Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;

    invoke-direct {v0, v1, v2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    instance-of v0, p1, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;

    invoke-interface {p1}, Landroidx/wear/ambient/AmbientMode$AmbientCallbackProvider;->getAmbientCallback()Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/wear/ambient/AmbientMode;->b:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    return-void

    :cond_0
    const-string p1, "AmbientMode"

    const-string v0, "No callback provided - enabling only smart resume"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->b()V

    iget-object p1, p0, Landroidx/wear/ambient/AmbientMode;->b:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->g()V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->c()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->d()V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->e()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientMode;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->f()V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
