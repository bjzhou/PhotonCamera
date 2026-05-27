.class final Lnnr;
.super Lnnt;


# instance fields
.field final synthetic a:Lnnu;

.field private final c:Lnnn;


# direct methods
.method public constructor <init>(Lnnu;Lnnn;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lnnr;->a:Lnnu;

    invoke-direct {p0, p1, p3}, Lnnt;-><init>(Lnnu;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lnnr;->c:Lnnn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnnr;->c:Lnnn;

    invoke-interface {v0}, Lnnn;->a()Lnou;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnnr;->c:Lnnn;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lnou;

    iget-object v0, p0, Lnnr;->a:Lnnu;

    invoke-virtual {v0, p1}, Lnnb;->f(Lnou;)Z

    return-void
.end method
