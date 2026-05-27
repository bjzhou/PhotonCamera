.class public final Lhiu;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private final b:Lhiw;

.field private c:Lhiw;

.field private final d:Z


# direct methods
.method public constructor <init>(Lhiw;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lhiu;->a:I

    iput-object p1, p0, Lhiu;->c:Lhiw;

    iput-object p1, p0, Lhiu;->b:Lhiw;

    iput-boolean p2, p0, Lhiu;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lhiw;
    .locals 2

    iget v0, p0, Lhiu;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lhiu;->c:Lhiw;

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lhiu;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhiu;->b:Lhiw;

    iput-object v0, p0, Lhiu;->c:Lhiw;

    return-void
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lhiu;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lhiu;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lhiu;->b:Lhiw;

    iput-object v0, p0, Lhiu;->c:Lhiw;

    :cond_0
    iget-object v0, p0, Lhiu;->c:Lhiw;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lhiw;->f()V

    const/4 v0, 0x2

    iput v0, p0, Lhiu;->a:I

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Lhiu;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhiu;->c:Lhiw;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lhiw;->g()V

    const/4 v0, 0x3

    iput v0, p0, Lhiu;->a:I

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhiu;->c:Lhiw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lhiw;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhiu;->c:Lhiw;

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lhiu;->a:I

    return-void
.end method

.method public final g(Lhiw;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lhiu;->c:Lhiw;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Setting new state without first exiting current state"

    invoke-static {v0, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget v0, p0, Lhiu;->a:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lhiu;->a:I

    :cond_1
    iput-object p1, p0, Lhiu;->c:Lhiw;

    invoke-virtual {p1}, Lhiw;->f()V

    return-void
.end method
