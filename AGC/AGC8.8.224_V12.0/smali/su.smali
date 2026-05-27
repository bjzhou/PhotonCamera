.class public final Lsu;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor"
    c = "RetryingCameraStateOpener.kt"
    d = "awaitAvailableCamera-RzXb1QE"
    e = {
        0x5c
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field final synthetic c:Lbby;


# direct methods
.method public constructor <init>(Lbby;Loku;[B[B)V
    .locals 0

    iput-object p1, p0, Lsu;->c:Lbby;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lsu;->a:Ljava/lang/Object;

    iget p1, p0, Lsu;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lsu;->b:I

    iget-object p1, p0, Lsu;->c:Lbby;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Lbby;->i(Ljava/lang/String;JLoku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
