.class public abstract Landroidx/work/Worker;
.super Laxp;


# instance fields
.field public a:Lbej;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laxp;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 3

    invoke-static {}, Lbej;->g()Lbej;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Worker;->a:Lbej;

    invoke-virtual {p0}, Laxp;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lazo;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lazo;-><init>(Landroidx/work/Worker;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/work/Worker;->a:Lbej;

    return-object v0
.end method

.method public abstract b()Ldr;
.end method
