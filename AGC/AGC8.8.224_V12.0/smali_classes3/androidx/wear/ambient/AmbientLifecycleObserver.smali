.class public final Landroidx/wear/ambient/AmbientLifecycleObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/wear/ambient/AmbientLifecycleObserverInterface;


# instance fields
.field private final a:Landroidx/wear/ambient/AmbientDelegate;

.field private final b:Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;


# direct methods
.method public static synthetic $r8$lambda$cAnEfxBGx7gyZc149YoJXy8ELmk(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Landroidx/wear/ambient/AmbientLifecycleObserver;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;

    invoke-direct {v0, p2}, Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;-><init>(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->b:Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;

    new-instance p2, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {p2, p1, v0}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    iput-object p2, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;

    invoke-direct {p2, p3}, Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;-><init>(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback;)V

    iput-object p2, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->b:Landroidx/wear/ambient/AmbientLifecycleObserver$callbackTranslator$1;

    new-instance p3, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {p3, p1, p2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    iput-object p3, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    return-void
.end method

.method public static final a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final isAmbient()Z
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->h()Z

    move-result v0

    return v0
.end method

.method public final onCreate(Lakv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->b()V

    iget-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->g()V

    return-void
.end method

.method public final onDestroy(Lakv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->c()V

    return-void
.end method

.method public final onPause(Lakv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->d()V

    return-void
.end method

.method public final onResume(Lakv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->e()V

    return-void
.end method

.method public final synthetic onStart(Lakv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onStop(Lakv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserver;->a:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->f()V

    return-void
.end method
