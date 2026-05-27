.class public abstract Laxp;
.super Ljava/lang/Object;


# instance fields
.field public c:Landroid/content/Context;

.field public d:Landroidx/work/WorkerParameters;

.field public volatile e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Laxp;->c:Landroid/content/Context;

    iput-object p2, p0, Laxp;->d:Landroidx/work/WorkerParameters;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WorkerParameters is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Application Context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a()Lnou;
.end method

.method public final bd()Laxh;
    .locals 1

    iget-object v0, p0, Laxp;->d:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->b:Laxh;

    return-object v0
.end method

.method public final be()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Laxp;->d:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Laxp;->d:Landroidx/work/WorkerParameters;

    iget v0, v0, Landroidx/work/WorkerParameters;->c:I

    return v0
.end method

.method public final g()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Laxp;->d:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laxp;->e:Z

    invoke-virtual {p0}, Laxp;->c()V

    return-void
.end method
