.class public final Losg;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lnor;->a:Lnou;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Losg;->b:Ljava/lang/Object;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v0, p0, Losg;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Losm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Losg;->b:Ljava/lang/Object;

    sget-object p1, Losn;->d:Loxb;

    iput-object p1, p0, Losg;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Losy;

    if-eqz v0, :cond_1

    check-cast p0, Losy;

    iget-object v0, p0, Losy;->a:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Losy;->e()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Loxa;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static c()Losg;
    .locals 1

    new-instance v0, Losg;

    invoke-direct {v0}, Losg;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lnob;

    const/4 v0, 0x0

    invoke-direct {v5, p2, p0, v0}, Lnob;-><init>(Ljava/util/concurrent/Executor;Losg;[B)V

    new-instance p2, Lnnz;

    const/4 v0, 0x0

    invoke-direct {p2, v5, p1, v0}, Lnnz;-><init>(Lnob;Lnnn;I)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v2

    iget-object p1, p0, Losg;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lnou;

    invoke-static {p2}, Lnpo;->g(Lnnn;)Lnpo;

    move-result-object p1

    invoke-interface {v3, p1, v5}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Lnsy;->C(Lnou;)Lnou;

    move-result-object p2

    new-instance v6, Lnny;

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lnny;-><init>(Lnpo;Lnph;Lnou;Lnou;Lnob;)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {p2, v6, v0}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-virtual {p1, v6, v0}, Lnnb;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method
