.class public final Luq;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.VirtualCameraManager"
    c = "VirtualCameraManager.kt"
    d = "openCameraWithRetry-aeCOTgg"
    e = {
        0xd1
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Lopu;

.field final synthetic d:Ldqx;

.field public e:Ldqx;


# direct methods
.method public constructor <init>(Ldqx;Loku;[B[B[B)V
    .locals 0

    iput-object p1, p0, Luq;->d:Ldqx;

    invoke-direct {p0, p2}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Luq;->a:Ljava/lang/Object;

    iget p1, p0, Luq;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Luq;->b:I

    iget-object p1, p0, Luq;->d:Ldqx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Ldqx;->d(Ljava/lang/String;Lvy;Lopu;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
