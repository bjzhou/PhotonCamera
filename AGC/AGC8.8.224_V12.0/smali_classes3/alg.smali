.class final Lalg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

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

.method public final onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Lakq;->ON_CREATE:Lakq;

    invoke-static {p1, p2}, Lalh;->a(Landroid/app/Activity;Lakq;)V

    return-void
.end method

.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lakq;->ON_RESUME:Lakq;

    invoke-static {p1, v0}, Lalh;->a(Landroid/app/Activity;Lakq;)V

    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lakq;->ON_START:Lakq;

    invoke-static {p1, v0}, Lalh;->a(Landroid/app/Activity;Lakq;)V

    return-void
.end method

.method public final onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lakq;->ON_DESTROY:Lakq;

    invoke-static {p1, v0}, Lalh;->a(Landroid/app/Activity;Lakq;)V

    return-void
.end method

.method public final onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lakq;->ON_PAUSE:Lakq;

    invoke-static {p1, v0}, Lalh;->a(Landroid/app/Activity;Lakq;)V

    return-void
.end method

.method public final onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lakq;->ON_STOP:Lakq;

    invoke-static {p1, v0}, Lalh;->a(Landroid/app/Activity;Lakq;)V

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
