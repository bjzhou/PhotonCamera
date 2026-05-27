.class final Lmoh;
.super Loln;

# interfaces
.implements Lomp;


# annotations
.annotation runtime Lolj;
    b = "com.google.async.coroutines.MapConcurrentlyKt$mapConcurrently$2$2"
    c = "MapConcurrently.kt"
    d = "invokeSuspend"
    e = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Loln;-><init>(ILoku;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lmoh;

    invoke-direct {p1, p3}, Lmoh;-><init>(Loku;)V

    iput-object p2, p1, Lmoh;->a:Ljava/lang/Object;

    sget-object p2, Lojk;->a:Lojk;

    invoke-virtual {p1, p2}, Lmoh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lolc;->a:Lolc;

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lmoh;->a:Ljava/lang/Object;

    instance-of v0, p1, Lmod;

    if-nez v0, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :cond_0
    check-cast p1, Lmod;

    iget-object p1, p1, Lmod;->a:Ljava/util/concurrent/CancellationException;

    throw p1
.end method
