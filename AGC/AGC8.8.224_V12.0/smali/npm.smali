.class final Lnpm;
.super Lnot;


# instance fields
.field final synthetic a:Lnpo;

.field private final b:Lnnn;


# direct methods
.method public constructor <init>(Lnpo;Lnnn;)V
    .locals 0

    iput-object p1, p0, Lnpm;->a:Lnpo;

    invoke-direct {p0}, Lnot;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lnpm;->b:Lnnn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnpm;->b:Lnnn;

    invoke-interface {v0}, Lnnn;->a()Lnou;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnpm;->b:Lnnn;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnpm;->a:Lnpo;

    invoke-virtual {v0, p1}, Lnnb;->a(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lnou;

    iget-object v0, p0, Lnpm;->a:Lnpo;

    invoke-virtual {v0, p1}, Lnnb;->f(Lnou;)Z

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lnpm;->a:Lnpo;

    invoke-virtual {v0}, Lnnb;->isDone()Z

    move-result v0

    return v0
.end method
