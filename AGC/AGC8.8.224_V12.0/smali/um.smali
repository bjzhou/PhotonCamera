.class public final Lum;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.VirtualCameraManager$1"
    c = "VirtualCameraManager.kt"
    d = "invokeSuspend"
    e = {
        0x45
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ldqx;


# direct methods
.method public constructor <init>(Ldqx;Loku;[B[B[B)V
    .locals 0

    iput-object p1, p0, Lum;->b:Ldqx;

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

    check-cast p1, Lum;

    invoke-virtual {p1, p2}, Lum;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Lum;->a:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v3, p0, Lum;->b:Ldqx;

    const/4 p1, 0x1

    iput p1, p0, Lum;->a:I

    new-instance p1, Luv;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Luv;-><init>(Ldqx;Loku;[B[B[B)V

    invoke-static {p1, p0}, Lopx;->d(Lomo;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lolc;->a:Lolc;

    if-eq p1, v1, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    :cond_0
    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
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
    .locals 6

    new-instance p1, Lum;

    iget-object v1, p0, Lum;->b:Ldqx;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lum;-><init>(Ldqx;Loku;[B[B[B)V

    return-object p1
.end method
