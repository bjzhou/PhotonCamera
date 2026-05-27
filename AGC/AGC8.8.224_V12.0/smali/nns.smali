.class final Lnns;
.super Lnnt;


# instance fields
.field final synthetic a:Lnnu;

.field private final c:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Lnnu;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lnns;->a:Lnnu;

    invoke-direct {p0, p1, p3}, Lnnt;-><init>(Lnnu;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lnns;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnns;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnns;->c:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnns;->a:Lnnu;

    invoke-virtual {v0, p1}, Lnnb;->e(Ljava/lang/Object;)Z

    return-void
.end method
