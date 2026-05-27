.class final Lnnu;
.super Lnni;


# instance fields
.field private c:Lnnt;


# direct methods
.method public constructor <init>(Lmvm;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnni;-><init>(Lmvm;ZZ)V

    new-instance p1, Lnns;

    invoke-direct {p1, p0, p4, p3}, Lnns;-><init>(Lnnu;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lnnu;->c:Lnnt;

    invoke-virtual {p0}, Lnni;->r()V

    return-void
.end method

.method public constructor <init>(Lmvm;ZLjava/util/concurrent/Executor;Lnnn;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnni;-><init>(Lmvm;ZZ)V

    new-instance p1, Lnnr;

    invoke-direct {p1, p0, p4, p3}, Lnnr;-><init>(Lnnu;Lnnn;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lnnu;->c:Lnnt;

    invoke-virtual {p0}, Lnni;->r()V

    return-void
.end method

.method static bridge synthetic t(Lnnu;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnnu;->c:Lnnt;

    return-void
.end method


# virtual methods
.method public final h(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final n()V
    .locals 1

    iget-object v0, p0, Lnnu;->c:Lnnt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnot;->h()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lnnu;->c:Lnnt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnnt;->f()V

    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 1

    invoke-super {p0, p1}, Lnni;->s(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnnu;->c:Lnnt;

    :cond_0
    return-void
.end method
