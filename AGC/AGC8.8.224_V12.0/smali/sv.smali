.class public final Lsv;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor$awaitAvailableCamera$2"
    c = "RetryingCameraStateOpener.kt"
    d = "invokeSuspend"
    e = {
        0x5c
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbby;


# direct methods
.method public constructor <init>(Lbby;Ljava/lang/String;Loku;[B[B)V
    .locals 0

    iput-object p1, p0, Lsv;->c:Lbby;

    iput-object p2, p0, Lsv;->b:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lopu;

    check-cast p2, Loku;

    invoke-virtual {p0, p1, p2}, Lolf;->c(Ljava/lang/Object;Loku;)Loku;

    move-result-object p1

    sget-object p2, Lojk;->a:Lojk;

    check-cast p1, Lsv;

    invoke-virtual {p1, p2}, Lsv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lsv;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lsv;->c:Lbby;

    iget-object v1, p0, Lsv;->b:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lsv;->a:I

    new-instance v3, Lopa;

    invoke-static {p0}, Lolp;->g(Loku;)Loku;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lopa;-><init>(Loku;I)V

    invoke-virtual {v3}, Lopa;->x()V

    new-instance v4, Lsw;

    invoke-direct {v4, v1, v3}, Lsw;-><init>(Ljava/lang/String;Looz;)V

    iget-object v1, p1, Lbby;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lbby;->a:Ljava/lang/Object;

    check-cast p1, Ldqx;

    invoke-virtual {p1}, Ldqx;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v1, p1, v4}, Lst;->i(Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    new-instance p1, Lapk;

    invoke-direct {p1, v1, v4, v2}, Lapk;-><init>(Landroid/hardware/camera2/CameraManager;Lsw;I)V

    invoke-interface {v3, p1}, Looz;->a(Lomk;)V

    invoke-virtual {v3}, Lopa;->m()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 6

    new-instance p1, Lsv;

    iget-object v1, p0, Lsv;->c:Lbby;

    iget-object v2, p0, Lsv;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lsv;-><init>(Lbby;Ljava/lang/String;Loku;[B[B)V

    return-object p1
.end method
