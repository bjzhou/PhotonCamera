.class public final Lcij;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lkbc;

.field public c:Lkaq;

.field public d:Lkgd;

.field private final e:Lnph;

.field private f:Lnou;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkaz;

    invoke-direct {v0}, Lkaz;-><init>()V

    iput-object v0, p0, Lcij;->b:Lkbc;

    new-instance v0, Lkat;

    invoke-direct {v0}, Lkat;-><init>()V

    iput-object v0, p0, Lcij;->c:Lkaq;

    iput-object p1, p0, Lcij;->a:Ljava/util/concurrent/Executor;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lcij;->e:Lnph;

    iput-object p1, p0, Lcij;->f:Lnou;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lcij;
    .locals 1

    new-instance v0, Lcij;

    invoke-direct {v0, p0}, Lcij;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lnou;
    .locals 4

    iget-object v0, p0, Lcij;->e:Lnph;

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcij;->e:Lnph;

    invoke-virtual {v0}, Lnph;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v0, p0, Lcij;->d:Lkgd;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcij;->c:Lkaq;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcij;->f:Lnou;

    new-instance v2, Lcii;

    invoke-direct {v2, p0}, Lcii;-><init>(Lcij;)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_2
    iget-object v0, p0, Lcij;->e:Lnph;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcij;->f:Lnou;

    return-object v0
.end method

.method public final c(Loiw;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcij;->c:Lkaq;

    const-string v1, "Futures.transform: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcij;->f:Lnou;

    new-instance v1, Llpw;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Llpw;-><init>(Lcij;Ljava/lang/String;Loiw;I)V

    iget-object p1, p0, Lcij;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    iput-object p1, p0, Lcij;->f:Lnou;

    iget-object v0, p0, Lcij;->c:Lkaq;

    if-eqz v0, :cond_0

    const-string v1, " complete."

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " failed!"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, v1, p2}, Ldka;->a(Lkaq;Lnou;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d(Loiw;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcij;->f:Lnou;

    new-instance v1, Letn;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Letn;-><init>(Lcij;Ljava/lang/String;Loiw;I)V

    iget-object p1, p0, Lcij;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
