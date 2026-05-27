.class Lcom/agc/glide/manager/ApplicationLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/manager/Lifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/agc/glide/manager/LifecycleListener;)V
    .locals 0

    invoke-interface {p1}, Lcom/agc/glide/manager/LifecycleListener;->onStart()V

    return-void
.end method

.method public removeListener(Lcom/agc/glide/manager/LifecycleListener;)V
    .locals 0

    return-void
.end method
