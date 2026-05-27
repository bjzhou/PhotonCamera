.class public final Lenh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lhiq;


# direct methods
.method public constructor <init>(Lhiq;[B)V
    .locals 0

    iput-object p1, p0, Lenh;->a:Lhiq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPostStopped(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lenh;->a:Lhiq;

    iget-object p1, p1, Lhiq;->a:Ljava/lang/Object;

    check-cast p1, Lend;

    invoke-virtual {p1}, Lend;->b()V

    return-void
.end method

.method public final onActivityPreStarted(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lenh;->a:Lhiq;

    iget-object p1, p1, Lhiq;->a:Ljava/lang/Object;

    check-cast p1, Lend;

    invoke-virtual {p1}, Lend;->a()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
