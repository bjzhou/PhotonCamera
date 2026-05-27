.class final Lcom/agc/glide/manager/SingletonConnectivityReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;,
        Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;,
        Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityMonitor"

.field private static volatile instance:Lcom/agc/glide/manager/SingletonConnectivityReceiver;


# instance fields
.field private final frameworkConnectivityMonitor:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

.field private isRegistered:Z

.field final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    new-instance v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/agc/glide/manager/SingletonConnectivityReceiver$1;-><init>(Lcom/agc/glide/manager/SingletonConnectivityReceiver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/agc/glide/util/GlideSuppliers;->memorize(Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;)Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    move-result-object v0

    new-instance v1, Lcom/agc/glide/manager/SingletonConnectivityReceiver$2;

    invoke-direct {v1, p0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver$2;-><init>(Lcom/agc/glide/manager/SingletonConnectivityReceiver;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    new-instance p1, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;

    invoke-direct {p1, v0, v1}, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;-><init>(Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;

    invoke-direct {v2, p1, v0, v1}, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;-><init>(Landroid/content/Context;Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/agc/glide/manager/SingletonConnectivityReceiver;
    .locals 2

    sget-object v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    if-nez v0, :cond_1

    const-class v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    return-object p0
.end method

.method private maybeRegisterReceiver()V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    invoke-interface {v0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;->register()Z

    move-result v0

    iput-boolean v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeUnregisterReceiver()V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->frameworkConnectivityMonitor:Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;

    invoke-interface {v0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver$FrameworkConnectivityMonitor;->unregister()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->isRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->instance:Lcom/agc/glide/manager/SingletonConnectivityReceiver;

    return-void
.end method


# virtual methods
.method public declared-synchronized register(Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->maybeRegisterReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Lcom/agc/glide/manager/ConnectivityMonitor$ConnectivityListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/agc/glide/manager/SingletonConnectivityReceiver;->maybeUnregisterReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
