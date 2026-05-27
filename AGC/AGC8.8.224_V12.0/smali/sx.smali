.class final Lsx;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.Camera2CameraController$close$2"
    c = "Camera2CameraController.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field final synthetic a:Lonk;

.field final synthetic b:Lonk;


# direct methods
.method public constructor <init>(Lonk;Lonk;Loku;)V
    .locals 0

    iput-object p1, p0, Lsx;->a:Lonk;

    iput-object p2, p0, Lsx;->b:Lonk;

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

    check-cast p1, Lsx;

    invoke-virtual {p1, p2}, Lsx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lsx;->a:Lonk;

    iget-object p1, p1, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Lty;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lty;->d()V

    :cond_0
    iget-object p1, p0, Lsx;->b:Lonk;

    iget-object p1, p1, Lonk;->a:Ljava/lang/Object;

    check-cast p1, Luk;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lld;->c(Luk;)V

    :cond_1
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 2

    new-instance p1, Lsx;

    iget-object v0, p0, Lsx;->a:Lonk;

    iget-object v1, p0, Lsx;->b:Lonk;

    invoke-direct {p1, v0, v1, p2}, Lsx;-><init>(Lonk;Lonk;Loku;)V

    return-object p1
.end method
