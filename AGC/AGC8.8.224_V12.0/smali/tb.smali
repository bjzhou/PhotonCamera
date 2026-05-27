.class public final Ltb;
.super Ljava/lang/Object;

# interfaces
.implements Lrd;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/hardware/camera2/CameraCharacteristics;

.field private final c:Ljava/util/Set;

.field private final d:Landroid/util/ArrayMap;

.field private final e:Loja;

.field private final f:Loja;

.field private final g:Loja;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb;->a:Ljava/lang/String;

    iput-object p2, p0, Ltb;->b:Landroid/hardware/camera2/CameraCharacteristics;

    iput-object p3, p0, Ltb;->c:Ljava/util/Set;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Ltb;->d:Landroid/util/ArrayMap;

    new-instance p1, Lta;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lta;-><init>(Ltb;I)V

    invoke-static {p1}, Lljr;->aQ(Lolz;)Loja;

    new-instance p1, Lta;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lta;-><init>(Ltb;I)V

    invoke-static {p1}, Lljr;->aQ(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Ltb;->e:Loja;

    new-instance p1, Lta;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lta;-><init>(Ltb;I)V

    invoke-static {p1}, Lljr;->aQ(Lolz;)Loja;

    new-instance p1, Lta;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lta;-><init>(Ltb;I)V

    invoke-static {p1}, Lljr;->aQ(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Ltb;->f:Loja;

    new-instance p1, Lta;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lta;-><init>(Ltb;I)V

    invoke-static {p1}, Lljr;->aQ(Lolz;)Loja;

    new-instance p1, Lta;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lta;-><init>(Ltb;I)V

    invoke-static {p1}, Lljr;->aQ(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Ltb;->g:Loja;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ltb;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltb;->b:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ltb;->d:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ltb;->d:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    if-nez v1, :cond_1

    iget-object v0, p0, Ltb;->b:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ltb;->d:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Ltb;->d:Landroid/util/ArrayMap;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_0
    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ltb;->f:Loja;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ltb;->e:Loja;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ltb;->g:Loja;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final e(Lonx;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
