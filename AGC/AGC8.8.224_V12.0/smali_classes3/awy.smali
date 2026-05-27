.class public final Lawy;
.super Ljava/lang/Object;

# interfaces
.implements Lawt;


# instance fields
.field public final a:Landroidx/window/sidecar/SidecarInterface;

.field public final b:Lawv;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public e:Laww;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/window/sidecar/SidecarProvider;->getSidecarImpl(Landroid/content/Context;)Landroidx/window/sidecar/SidecarInterface;

    move-result-object p1

    new-instance v0, Lawv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lawv;-><init>([B)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    iput-object v0, p0, Lawy;->b:Lawv;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lawy;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lawy;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Lawl;
    .locals 1

    invoke-static {p1}, Landroidx/wear/ambient/WearableControllerProvider;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lawl;

    sget-object v0, Lojx;->a:Lojx;

    invoke-direct {p1, v0}, Lawl;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    :cond_3
    invoke-static {p1, v0}, Lawv;->a(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Lawl;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/os/IBinder;Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lawy;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V

    :cond_0
    iget-object p1, p0, Lawy;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lawy;->a:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_1
    iget-object p1, p0, Lawy;->e:Laww;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lawy;->a(Landroid/app/Activity;)Lawl;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Laww;->a(Landroid/app/Activity;Lawl;)V

    :cond_2
    iget-object p1, p0, Lawy;->d:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    instance-of p1, p2, Laca;

    if-eqz p1, :cond_3

    new-instance p1, Lfek;

    invoke-direct {p1, p0, p2, v0}, Lfek;-><init>(Lawy;Landroid/app/Activity;I)V

    iget-object v0, p0, Lawy;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Laca;

    invoke-interface {p2, p1}, Laca;->d(Laea;)V

    :cond_3
    return-void
.end method
