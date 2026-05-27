.class public final Lddf;
.super Ljava/lang/Object;

# interfaces
.implements Ldde;


# instance fields
.field public final a:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

.field public final b:Ldja;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ldja;Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;Ljava/util/concurrent/Executor;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddf;->b:Ldja;

    iput-object p2, p0, Lddf;->a:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    iput-object p3, p0, Lddf;->c:Ljava/util/concurrent/Executor;

    sget-object p1, Ldho;->a:Ldhk;

    invoke-interface {p4}, Ldhi;->f()V

    return-void
.end method

.method public static l(Lklv;)Lddd;
    .locals 1

    sget-object v0, Lklv;->a:Lklv;

    if-ne p0, v0, :cond_0

    sget-object p0, Lddd;->e:Lddd;

    goto :goto_0

    :cond_0
    sget-object p0, Lddd;->f:Lddd;

    :goto_0
    return-object p0
.end method

.method private static m(Lklv;)Lddd;
    .locals 1

    sget-object v0, Lklv;->a:Lklv;

    if-ne p0, v0, :cond_0

    sget-object p0, Lddd;->c:Lddd;

    goto :goto_0

    :cond_0
    sget-object p0, Lddd;->d:Lddd;

    :goto_0
    return-object p0
.end method

.method private final n(Lddd;)Lnou;
    .locals 2

    new-instance v0, Lcop;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcop;-><init>(Lddf;Lddd;I)V

    iget-object p1, p0, Lddf;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method private final o(Lddd;)V
    .locals 3

    iget-object v0, p0, Lddf;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcue;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, Lcue;-><init>(Lddf;Lddd;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final varargs p([Lddd;)V
    .locals 3

    iget-object v0, p0, Lddf;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcue;

    const/16 v2, 0x9

    invoke-direct {v1, p0, p1, v2}, Lcue;-><init>(Lddf;[Lddd;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lklv;)Lnou;
    .locals 0

    invoke-static {p1}, Lddf;->l(Lklv;)Lddd;

    move-result-object p1

    invoke-direct {p0, p1}, Lddf;->n(Lddd;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lklv;)Lnou;
    .locals 0

    invoke-static {p1}, Lddf;->m(Lklv;)Lddd;

    move-result-object p1

    invoke-direct {p0, p1}, Lddf;->n(Lddd;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lnou;
    .locals 1

    sget-object v0, Lddd;->a:Lddd;

    invoke-direct {p0, v0}, Lddf;->n(Lddd;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lnou;
    .locals 1

    sget-object v0, Lddd;->b:Lddd;

    invoke-direct {p0, v0}, Lddf;->n(Lddd;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final varargs e([Lklv;)V
    .locals 1

    invoke-static {p1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcpy;->g:Lcpy;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Ldfu;->b:Ldfu;

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lddd;

    invoke-direct {p0, p1}, Lddf;->p([Lddd;)V

    return-void
.end method

.method public final f(Lklv;)V
    .locals 0

    invoke-static {p1}, Lddf;->l(Lklv;)Lddd;

    move-result-object p1

    invoke-direct {p0, p1}, Lddf;->o(Lddd;)V

    return-void
.end method

.method public final g(Lklv;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lddd;

    const/4 v1, 0x0

    invoke-static {p1}, Lddf;->m(Lklv;)Lddd;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    sget-object v1, Lddd;->b:Lddd;

    aput-object v1, v0, p1

    invoke-direct {p0, v0}, Lddf;->p([Lddd;)V

    return-void
.end method

.method public final h(Lklv;)V
    .locals 0

    invoke-static {p1}, Lddf;->m(Lklv;)Lddd;

    move-result-object p1

    invoke-direct {p0, p1}, Lddf;->o(Lddd;)V

    return-void
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lddd;

    const/4 v1, 0x0

    sget-object v2, Lddd;->a:Lddd;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lddf;->p([Lddd;)V

    return-void
.end method

.method public final j()V
    .locals 1

    sget-object v0, Lddd;->a:Lddd;

    invoke-direct {p0, v0}, Lddf;->o(Lddd;)V

    return-void
.end method

.method public final k()V
    .locals 1

    sget-object v0, Lddd;->b:Lddd;

    invoke-direct {p0, v0}, Lddf;->o(Lddd;)V

    return-void
.end method
