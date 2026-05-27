.class final Lkyy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Llaa;

.field private final d:Lkzg;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkzg;Ljava/util/concurrent/Executor;Llaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkyy;->a:Ljava/lang/Object;

    iput-object p3, p0, Lkyy;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lkyy;->c:Llaa;

    iput-object p2, p0, Lkyy;->d:Lkzg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lkyy;->a:Ljava/lang/Object;

    iget-object v1, p0, Lkyy;->d:Lkzg;

    iget-object v2, p0, Lkyy;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lkyy;->c:Llaa;

    :try_start_0
    invoke-interface {v1, v0, v2}, Lkzg;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lkzc;

    move-result-object v0

    sget-object v1, Lnnv;->a:Lnnv;

    new-instance v2, Lkza;

    invoke-direct {v2, v3}, Lkza;-><init>(Llaa;)V

    new-instance v4, Lkyz;

    invoke-direct {v4, v3}, Lkyz;-><init>(Llaa;)V

    invoke-interface {v0, v1, v2, v4}, Lkzc;->c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;

    move-result-object v0

    sget-object v1, Lkyo;->a:Lkyo;

    invoke-interface {v0, v1}, Lkzc;->h(Lkyo;)V
    :try_end_0
    .catch Lkzd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object v0

    invoke-virtual {v3, v0}, Llaa;->m(Lkzd;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Llaa;->m(Lkzd;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkyy;->d:Lkzg;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
