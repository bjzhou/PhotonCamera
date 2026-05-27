.class final Lcfa;
.super Ljava/lang/Object;

# interfaces
.implements Lfyy;


# instance fields
.field private final a:Lcea;

.field private final b:Lnou;

.field private final c:Lfyy;

.field private d:Lfws;


# direct methods
.method public constructor <init>(Lcea;Lnou;Lfyy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfa;->a:Lcea;

    iput-object p2, p0, Lcfa;->b:Lnou;

    iput-object p3, p0, Lcfa;->c:Lfyy;

    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 5

    invoke-interface {p1}, Lkpb;->a()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcfa;->d:Lfws;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v0

    iget-object v2, p0, Lcfa;->d:Lfws;

    invoke-virtual {v2}, Lkoy;->d()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    :cond_0
    new-instance v0, Lkma;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lkma;-><init>(Lkpb;I)V

    iget-object p1, p0, Lcfa;->d:Lfws;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkoy;->close()V

    :cond_1
    new-instance p1, Lfws;

    new-instance v1, Lkmb;

    invoke-direct {v1, v0}, Lkmb;-><init>(Lkpb;)V

    invoke-direct {p1, v1, p2}, Lfws;-><init>(Lkpb;Lnou;)V

    iput-object p1, p0, Lcfa;->d:Lfws;

    move-object p1, v0

    :cond_2
    iget-object v0, p0, Lcfa;->c:Lfyy;

    new-instance v1, Lkmb;

    invoke-direct {v1, p1}, Lkmb;-><init>(Lkpb;)V

    invoke-interface {v0, v1, p2}, Lfyy;->a(Lkpb;Lnou;)V

    return-void
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcfa;->d:Lfws;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcfa;->b:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcfa;->a:Lcea;

    invoke-virtual {v1}, Lcea;->c()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lkab;->b(I)Lkab;

    move-result-object v1

    iget-object v2, p0, Lcfa;->d:Lfws;

    invoke-static {v2}, Lgqr;->b(Lfws;)Lgqq;

    move-result-object v2

    iput-object v1, v2, Lgqq;->c:Lkab;

    invoke-virtual {v2}, Lgqq;->a()Lgqr;

    move-result-object v1

    invoke-interface {v0, v1}, Lceh;->f(Lgqr;)V

    :cond_0
    iget-object v0, p0, Lcfa;->d:Lfws;

    invoke-virtual {v0}, Lkoy;->close()V

    :cond_1
    iget-object v0, p0, Lcfa;->c:Lfyy;

    invoke-interface {v0}, Lfyy;->close()V

    return-void
.end method
