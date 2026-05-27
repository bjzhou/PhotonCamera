.class public abstract Landroidx/work/CoroutineWorker;
.super Laxp;


# instance fields
.field public final a:Lord;

.field public final b:Lbej;

.field private final g:Lopq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Laxp;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    invoke-static {}, Lopx;->j()Lord;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->a:Lord;

    invoke-static {}, Lbej;->g()Lbej;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->b:Lbej;

    new-instance p2, Lnk;

    const/16 v0, 0x14

    invoke-direct {p2, p0, v0}, Lnk;-><init>(Landroidx/work/CoroutineWorker;I)V

    iget-object v0, p0, Laxp;->d:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->f:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lbej;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object p1, Loqf;->a:Lopq;

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->g:Lopq;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 4

    iget-object v0, p0, Landroidx/work/CoroutineWorker;->g:Lopq;

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->a:Lord;

    invoke-virtual {v0, v1}, Lokp;->plus(Lola;)Lola;

    move-result-object v0

    invoke-static {v0}, Lopx;->e(Lola;)Lopu;

    move-result-object v0

    new-instance v1, Laxg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Laxg;-><init>(Landroidx/work/CoroutineWorker;Loku;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    iget-object v0, p0, Landroidx/work/CoroutineWorker;->b:Lbej;

    return-object v0
.end method

.method public abstract b(Loku;)Ljava/lang/Object;
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/work/CoroutineWorker;->b:Lbej;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbej;->cancel(Z)Z

    return-void
.end method
