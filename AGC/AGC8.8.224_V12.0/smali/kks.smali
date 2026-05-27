.class final Lkks;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public final b:Landroid/hardware/camera2/CaptureResult;

.field public final c:Landroid/hardware/camera2/CaptureResult$Key;

.field public volatile d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkks;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkks;->a:Ljava/lang/Object;

    iput-object v0, p0, Lkks;->d:Ljava/lang/Object;

    iput-object p1, p0, Lkks;->b:Landroid/hardware/camera2/CaptureResult;

    iput-object p2, p0, Lkks;->c:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method
