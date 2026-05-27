.class public final Laxg;
.super Loln;

# interfaces
.implements Lomo;


# annotations
.annotation runtime Lolj;
    b = "androidx.work.CoroutineWorker$startWork$1"
    c = "CoroutineWorker.kt"
    d = "invokeSuspend"
    e = {
        0x44
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroidx/work/CoroutineWorker;


# direct methods
.method public constructor <init>(Landroidx/work/CoroutineWorker;Loku;)V
    .locals 0

    iput-object p1, p0, Laxg;->b:Landroidx/work/CoroutineWorker;

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

    check-cast p1, Laxg;

    invoke-virtual {p1, p2}, Laxg;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lolc;->a:Lolc;

    iget v1, p0, Laxg;->a:I

    packed-switch v1, :pswitch_data_0

    :try_start_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Laxg;->b:Landroidx/work/CoroutineWorker;

    const/4 v1, 0x1

    iput v1, p0, Laxg;->a:I

    invoke-virtual {p1, p0}, Landroidx/work/CoroutineWorker;->b(Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    check-cast p1, Ldr;

    iget-object v0, p0, Laxg;->b:Landroidx/work/CoroutineWorker;

    iget-object v0, v0, Landroidx/work/CoroutineWorker;->b:Lbej;

    invoke-virtual {v0, p1}, Lbej;->h(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Laxg;->b:Landroidx/work/CoroutineWorker;

    iget-object v0, v0, Landroidx/work/CoroutineWorker;->b:Lbej;

    invoke-virtual {v0, p1}, Lbej;->e(Ljava/lang/Throwable;)V

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

    new-instance p1, Laxg;

    iget-object v0, p0, Laxg;->b:Landroidx/work/CoroutineWorker;

    invoke-direct {p1, v0, p2}, Laxg;-><init>(Landroidx/work/CoroutineWorker;Loku;)V

    return-object p1
.end method
