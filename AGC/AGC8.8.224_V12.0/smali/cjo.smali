.class public final Lcjo;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lnph;

.field public final b:Lnph;

.field public final c:Lnou;

.field public final d:Lnou;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lnph;Lcdi;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lcjo;->a:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iput-object v1, p0, Lcjo;->b:Lnph;

    const/4 v2, 0x2

    new-array v2, v2, [Lnou;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lnsy;->v([Lnou;)Lnom;

    move-result-object v0

    sget-object v1, Llig;->b:Llig;

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-virtual {v0, v1, v2}, Lnom;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    sget-object v1, Lcfv;->e:Lcfv;

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lcjo;->c:Lnou;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa0

    invoke-static {v0, v2, v3, v1, p1}, Lnsy;->I(Lnou;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    move-result-object p1

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcfv;->f:Lcfv;

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {p1, v1, v2, v3}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    iput-object p1, p0, Lcjo;->d:Lnou;

    invoke-virtual {p2}, Lnph;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcfv;->g:Lcfv;

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {v0, p1, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    const-class v0, Ljava/lang/Throwable;

    sget-object v1, Lcfv;->h:Lcfv;

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-static {p1, v0, v1, v2}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnph;->f(Lnou;)Z

    :cond_0
    invoke-virtual {p3}, Lcdi;->i()Ljuf;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcjo;->c:Lnou;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcjo;->c:Lnou;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    :cond_0
    return-void
.end method
