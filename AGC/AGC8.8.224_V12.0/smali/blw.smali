.class final Lblw;
.super Ljava/lang/Object;

# interfaces
.implements Lbnr;


# instance fields
.field private final a:Landroid/hardware/camera2/CameraManager;

.field private final b:[Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;[Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lblw;->a:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lblw;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_4

    :try_start_0
    aget-object v4, p2, v0

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    if-ne v4, v2, :cond_0

    move v2, v0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :cond_1
    :goto_1
    if-ne v3, v1, :cond_3

    if-nez v4, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    goto :goto_2

    :catch_0
    move-exception v4

    sget-object v5, Lbmh;->a:Lboc;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t get characteristics of camera \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lbod;->d(Lboc;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iput v2, p0, Lblw;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lblw;->c:I

    return v0
.end method

.method public final b(I)Lbnq;
    .locals 1

    iget-object v0, p0, Lblw;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    :try_start_0
    iget-object v0, p0, Lblw;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    new-instance v0, Lblv;

    invoke-direct {v0, p1}, Lblv;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method
