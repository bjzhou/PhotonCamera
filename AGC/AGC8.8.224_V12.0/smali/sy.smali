.class final Lsy;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.Camera2CameraController$start$2"
    c = "Camera2CameraController.kt"
    d = "invokeSuspend"
    e = {
        0x5a
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lsz;


# direct methods
.method public constructor <init>(Lsz;Loku;)V
    .locals 0

    iput-object p1, p0, Lsy;->b:Lsz;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Loln;-><init>(ILoku;)V

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

    check-cast p1, Lsy;

    invoke-virtual {p1, p2}, Lsy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lsy;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lsy;->b:Lsz;

    const/4 v1, 0x1

    iput v1, p0, Lsy;->a:I

    new-instance v2, Lonk;

    invoke-direct {v2}, Lonk;-><init>()V

    monitor-enter p1

    :try_start_0
    iget-object v3, p1, Lsz;->a:Luk;

    iget-object v4, p1, Lsz;->b:Lty;

    iput-object v4, v2, Lonk;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz v3, :cond_0

    iget-object p1, v2, Lonk;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast v3, Luz;

    iget-object p1, v3, Luz;->d:Lott;

    new-instance v3, Luw;

    invoke-direct {v3, v2, v1}, Luw;-><init>(Lonk;I)V

    invoke-interface {p1, v3, p0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lolc;->a:Lolc;

    if-eq p1, v1, :cond_1

    sget-object p1, Lojk;->a:Lojk;

    goto :goto_0

    :cond_0
    sget-object p1, Lojk;->a:Lojk;

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_2
    :goto_1
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 1

    new-instance p1, Lsy;

    iget-object v0, p0, Lsy;->b:Lsz;

    invoke-direct {p1, v0, p2}, Lsy;-><init>(Lsz;Loku;)V

    return-object p1
.end method
