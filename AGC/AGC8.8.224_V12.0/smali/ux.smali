.class final Lux;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.VirtualCameraState$connect$2$1$1"
    c = "VirtualCamera.kt"
    d = "invokeSuspend"
    e = {
        0x99
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lott;

.field final synthetic c:Luz;


# direct methods
.method public constructor <init>(Lott;Luz;Loku;)V
    .locals 0

    iput-object p1, p0, Lux;->b:Lott;

    iput-object p2, p0, Lux;->c:Luz;

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

    check-cast p1, Lux;

    invoke-virtual {p1, p2}, Lux;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lux;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lux;->b:Lott;

    new-instance v1, Luw;

    iget-object v2, p0, Lux;->c:Luz;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Luw;-><init>(Luz;I)V

    const/4 v2, 0x1

    iput v2, p0, Lux;->a:I

    invoke-interface {p1, v1, p0}, Lott;->di(Lotu;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 2

    new-instance p1, Lux;

    iget-object v0, p0, Lux;->b:Lott;

    iget-object v1, p0, Lux;->c:Luz;

    invoke-direct {p1, v0, v1, p2}, Lux;-><init>(Lott;Luz;Loku;)V

    return-object p1
.end method
