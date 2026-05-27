.class final Luh;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener"
    c = "RetryingCameraStateOpener.kt"
    d = "openCameraWithRetry-RzXb1QE$camera_camera2_pipe_release"
    e = {
        0xdf,
        0x10b
    }
.end annotation


# instance fields
.field a:J

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lui;

.field d:I

.field e:Lui;

.field f:Ljava/lang/String;

.field g:Lonj;

.field h:Lwf;


# direct methods
.method public constructor <init>(Lui;Loku;)V
    .locals 0

    iput-object p1, p0, Luh;->c:Lui;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Luh;->b:Ljava/lang/Object;

    iget p1, p0, Luh;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Luh;->d:I

    iget-object p1, p0, Luh;->c:Lui;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lui;->a(Ljava/lang/String;Lvy;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
