.class public final Leda;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public volatile a:Lkou;

.field private final b:Lfvh;


# direct methods
.method public constructor <init>(Lfvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leda;->b:Lfvh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lkou;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leda;->b:Lfvh;

    invoke-interface {v0, p1}, Lfvh;->a(Lkou;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Leda;->a:Lkou;

    return-void

    :cond_1
    :goto_0
    return-void
.end method
