.class public final Lfuk;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lnak;


# instance fields
.field public a:Lmwa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/cameraavailability/CameraAvailabilityUtils"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfuk;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lklj;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmyz;->a:Lmwa;

    iput-object v0, p0, Lfuk;->a:Lmwa;

    sget-object v0, Lklv;->a:Lklv;

    invoke-interface {p1, v0}, Lklj;->e(Lklv;)Lkll;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lfuk;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Front logical camera is null, skipping initialize."

    const/16 v1, 0x9bb

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v1

    invoke-interface {p1, v0}, Lklj;->a(Lkll;)Lkli;

    move-result-object v0

    :try_start_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->INFO_DEVICE_STATE_SENSOR_ORIENTATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v0, v2}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->getSensorOrientation(J)I

    move-result v3

    invoke-static {v0, p1, v3}, Lfuk;->a(Lkli;Lklj;I)Lkll;

    move-result-object v3

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v4, v5}, Landroid/hardware/camera2/params/DeviceStateSensorOrientationMap;->getSensorOrientation(J)I

    move-result v2

    invoke-static {v0, p1, v2}, Lfuk;->a(Lkli;Lklj;I)Lkll;

    move-result-object p1

    invoke-static {}, Lhxj;->values()[Lhxj;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    sget-object v6, Lhxj;->b:Lhxj;

    invoke-virtual {v5, v6}, Lhxj;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p1, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object v6, v3, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lmvw;->b()Lmwa;

    move-result-object p1

    iput-object p1, p0, Lfuk;->a:Lmwa;

    sget-object p1, Lfuk;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x9ba

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Lfuk;->a:Lmwa;

    const-string v1, "Building front camera id mapping: %s"

    invoke-interface {p1, v1, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static final a(Lkli;Lklj;I)Lkll;
    .locals 4

    check-cast p0, Lklh;

    iget-object v0, p0, Lklh;->b:Lmwn;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkll;

    invoke-interface {p1, v2}, Lklj;->a(Lkll;)Lkli;

    move-result-object v3

    invoke-interface {v3}, Lkli;->f()I

    move-result v3

    if-ne v3, p2, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Lklh;->a:Lkll;

    return-object p0

    :cond_2
    return-object v1
.end method
