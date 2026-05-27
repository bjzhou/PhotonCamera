.class final Lbml;
.super Lbnq;


# instance fields
.field private final a:Landroid/hardware/Camera$CameraInfo;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0

    invoke-direct {p0}, Lbnq;-><init>()V

    iput-object p1, p0, Lbml;->a:Landroid/hardware/Camera$CameraInfo;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lbml;->a:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lbml;->a:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lbml;->a:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
