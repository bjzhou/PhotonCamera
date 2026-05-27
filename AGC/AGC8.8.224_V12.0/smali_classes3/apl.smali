.class public final Lapl;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.room.CoroutinesRoom$Companion$execute$4$job$1"
    c = "CoroutinesRoom.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Looz;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Looz;Loku;)V
    .locals 0

    iput-object p1, p0, Lapl;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lapl;->b:Looz;

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

    check-cast p1, Lapl;

    invoke-virtual {p1, p2}, Lapl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lapl;->a:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lapl;->b:Looz;

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lapl;->b:Looz;

    invoke-static {p1}, Lljr;->aN(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Loku;->e(Ljava/lang/Object;)V

    :goto_0
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Loku;)Loku;
    .locals 2

    new-instance p1, Lapl;

    iget-object v0, p0, Lapl;->a:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Lapl;->b:Looz;

    invoke-direct {p1, v0, v1, p2}, Lapl;-><init>(Ljava/util/concurrent/Callable;Looz;Loku;)V

    return-object p1
.end method
