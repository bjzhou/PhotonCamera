.class public final Laxd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Laxz;

.field public final d:I

.field public final e:I

.field public final f:Lbkb;


# direct methods
.method public constructor <init>(Lnaa;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    invoke-static {p2}, Laxd;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Laxd;->a:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    invoke-static {p2}, Laxd;->a(Z)Ljava/util/concurrent/Executor;

    move-result-object p2

    iput-object p2, p0, Laxd;->b:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lnaa;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    new-instance p1, Laxy;

    invoke-direct {p1}, Laxy;-><init>()V

    iput-object p1, p0, Laxd;->c:Laxz;

    goto :goto_0

    :cond_0
    check-cast p1, Laxz;

    iput-object p1, p0, Laxd;->c:Laxz;

    :goto_0
    new-instance p1, Lbkb;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lbkb;-><init>([C)V

    iput-object p1, p0, Laxd;->f:Lbkb;

    const p1, 0x7fffffff

    iput p1, p0, Laxd;->d:I

    const/16 p1, 0x14

    iput p1, p0, Laxd;->e:I

    return-void
.end method

.method private static final a(Z)Ljava/util/concurrent/Executor;
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Laxb;

    invoke-direct {v1, p0}, Laxb;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
