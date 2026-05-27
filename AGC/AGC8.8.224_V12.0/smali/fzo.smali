.class public final Lfzo;
.super Lkfg;


# instance fields
.field private final a:Lkai;


# direct methods
.method public constructor <init>(Lkai;)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p1, p0, Lfzo;->a:Lkai;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 3

    iget-object v0, p0, Lfzo;->a:Lkai;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    invoke-static {v1, p1}, Lfzp;->a(Ljava/lang/Float;Landroid/util/Pair;)Lfzp;

    move-result-object p1

    invoke-interface {v0, p1}, Lkai;->bn(Ljava/lang/Object;)V

    return-void
.end method
