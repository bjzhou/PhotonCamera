.class public final Lkzo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Llaa;

.field public final b:[Ljava/lang/Object;

.field public final c:[Lkzd;

.field public volatile d:Z

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v0

    iput-object v0, p0, Lkzo;->a:Llaa;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkzo;->d:Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lkzo;->b:[Ljava/lang/Object;

    new-array v2, v1, [Lkzd;

    iput-object v2, p0, Lkzo;->c:[Lkzd;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lkzo;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkzc;

    sget-object v2, Lnnv;->a:Lnnv;

    new-instance v3, Lkzm;

    invoke-direct {v3, p0, v0}, Lkzm;-><init>(Lkzo;I)V

    new-instance v4, Lkzn;

    invoke-direct {v4, p0, v0}, Lkzn;-><init>(Lkzo;I)V

    invoke-interface {v1, v2, v3, v4}, Lkzc;->c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;

    move-result-object v1

    sget-object v2, Lkyo;->a:Lkyo;

    invoke-interface {v1, v2}, Lkzc;->h(Lkyo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    iget-object v0, p0, Lkzo;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lkzo;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkzo;->c:[Lkzd;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    if-nez v3, :cond_0

    move-object v3, v5

    goto :goto_1

    :cond_0
    :try_start_0
    const-class v6, Ljava/lang/Throwable;

    const-string v7, "addSuppressed"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Throwable;

    aput-object v10, v9, v2

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v5, v7, v2

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lkzo;->a:Llaa;

    invoke-virtual {v0, v3}, Llaa;->m(Lkzd;)V

    return-void

    :cond_3
    iget-object v0, p0, Lkzo;->a:Llaa;

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Result list was marked as having an exception,but no exception was found"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v1

    invoke-virtual {v0, v1}, Llaa;->m(Lkzd;)V

    return-void

    :cond_4
    iget-object v0, p0, Lkzo;->a:Llaa;

    iget-object v1, p0, Lkzo;->b:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Llaa;->l(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
