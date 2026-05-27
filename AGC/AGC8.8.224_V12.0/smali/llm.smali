.class public final Lllm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final a:Landroid/app/Application;

.field public final synthetic b:Lllo;


# direct methods
.method public constructor <init>(Lllo;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lllm;->b:Lllo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lllm;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p2, p0, Lllm;->b:Lllo;

    iget-object p2, p2, Lllo;->m:Lllh;

    iget-object p2, p2, Lllh;->b:Ljava/lang/Long;

    if-nez p2, :cond_0

    iget-object p2, p0, Lllm;->b:Lllo;

    iget-object p2, p2, Lllo;->m:Lllh;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lllm;->b:Lllo;

    iget-object p2, p2, Lllo;->n:Lllh;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lllh;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lllh;->b:Ljava/lang/Long;

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

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lllm;->b:Lllo;

    iget-object v0, v0, Lllo;->n:Lllh;

    iget-object v0, v0, Lllh;->b:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lllm;->b:Lllo;

    iget-object v0, v0, Lllo;->m:Lllh;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lllm;->b:Lllo;

    iget-object v0, v0, Lllo;->n:Lllh;

    :goto_0
    iget-object v1, v0, Lllh;->d:Ljava/lang/Long;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lllh;->d:Ljava/lang/Long;

    :cond_1
    const v0, 0x1020002

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lllk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lllk;-><init>(Lllm;Landroid/view/View;Lllj;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    new-instance v1, Llll;

    invoke-direct {v1, p0, p1}, Llll;-><init>(Lllm;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object p1, p0, Lllm;->b:Lllo;

    iget-object p1, p1, Lllo;->n:Lllh;

    iget-object p1, p1, Lllh;->b:Ljava/lang/Long;

    if-nez p1, :cond_0

    iget-object p1, p0, Lllm;->b:Lllo;

    iget-object p1, p1, Lllo;->m:Lllh;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lllm;->b:Lllo;

    iget-object p1, p1, Lllo;->n:Lllh;

    :goto_0
    iget-object v0, p1, Lllh;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lllh;->c:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
