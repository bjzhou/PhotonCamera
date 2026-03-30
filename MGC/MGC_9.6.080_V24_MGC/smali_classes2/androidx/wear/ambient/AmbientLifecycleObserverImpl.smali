.class public final Landroidx/wear/ambient/AmbientLifecycleObserverImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroidx/wear/ambient/AmbientLifecycleObserver;


# instance fields
.field private final a:Landroidx/wear/ambient/AmbientDelegate;

.field private final b:Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;


# direct methods
.method public static synthetic $r8$lambda$diKW5WdS0-l3AgqQGEwkPy29olo(Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a(Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;)V
    .locals 1

    goto/32 :goto_2

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
    invoke-direct {v0}, Landroidx/wear/ambient/AmbientLifecycleObserverImpl$$ExternalSyntheticLambda0;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl$$ExternalSyntheticLambda0;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, v0, p2}, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;-><init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p2, p3}, Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;-><init>(Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p3, Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    iput-object p3, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iput-object p2, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->b:Landroidx/wear/ambient/AmbientLifecycleObserverImpl$callbackTranslator$1;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-direct {p3, p1, p2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop
.end method

.method public static final a(Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final isAmbient()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->h()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onCreate(Leaw;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->g()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p1, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDestroy(Leaw;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->c()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onPause(Leaw;)V
    .locals 0

    goto/32 :goto_2

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

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->d()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onResume(Leaw;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->e()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final synthetic onStart(Leaw;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onStop(Leaw;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/ambient/AmbientLifecycleObserverImpl;->a:Landroidx/wear/ambient/AmbientDelegate;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->f()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
