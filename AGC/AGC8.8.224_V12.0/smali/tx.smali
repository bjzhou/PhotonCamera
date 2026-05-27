.class final Ltx;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.compat.CaptureSessionState$configureSurfaceMap$1$2"
    c = "CaptureSessionState.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field final synthetic a:Lty;


# direct methods
.method public constructor <init>(Lty;Loku;)V
    .locals 0

    iput-object p1, p0, Ltx;->a:Lty;

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

    check-cast p1, Ltx;

    invoke-virtual {p1, p2}, Ltx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Ltx;->a:Lty;

    invoke-virtual {p1}, Lty;->f()V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 1

    new-instance p1, Ltx;

    iget-object v0, p0, Ltx;->a:Lty;

    invoke-direct {p1, v0, p2}, Ltx;-><init>(Lty;Loku;)V

    return-object p1
.end method
