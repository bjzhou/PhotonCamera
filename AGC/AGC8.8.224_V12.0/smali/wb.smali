.class final Lwb;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.camera.camera2.pipe.graph.GraphProcessorImpl$resubmit$1"
    c = "GraphProcessor.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field final synthetic a:Lwf;


# direct methods
.method public constructor <init>(Lwf;Loku;)V
    .locals 0

    iput-object p1, p0, Lwb;->a:Lwf;

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

    check-cast p1, Lwb;

    invoke-virtual {p1, p2}, Lwb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lwb;->a:Lwf;

    invoke-virtual {p1}, Lwf;->h()V

    iget-object p1, p0, Lwb;->a:Lwf;

    invoke-virtual {p1}, Lwf;->g()V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 1

    new-instance p1, Lwb;

    iget-object v0, p0, Lwb;->a:Lwf;

    invoke-direct {p1, v0, p2}, Lwb;-><init>(Lwf;Loku;)V

    return-object p1
.end method
