.class public final Ltq;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.CameraStateOpener"
    c = "RetryingCameraStateOpener.kt"
    d = "tryOpenCamera-DM9J0w8$camera_camera2_pipe_release"
    e = {
        0xa2,
        0xb2
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field final synthetic g:Lbbc;


# direct methods
.method public constructor <init>(Lbbc;Loku;[B[B[B)V
    .locals 0

    iput-object p1, p0, Ltq;->g:Lbbc;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Ltq;->e:Ljava/lang/Object;

    iget p1, p0, Ltq;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltq;->f:I

    iget-object v0, p0, Ltq;->g:Lbbc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lbbc;->d(Ljava/lang/String;IJLoku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
