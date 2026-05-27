.class public final Lgme;
.super Ljava/lang/Object;


# instance fields
.field public a:Lkll;

.field public b:Lkmf;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/Long;

.field public g:Z


# direct methods
.method public constructor <init>(Ldhi;Lika;Lfuz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgme;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgme;->d:Z

    iput-boolean v0, p0, Lgme;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgme;->g:Z

    sget-object v0, Lika;->b:Lika;

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Lklw;->k()Lklv;

    move-result-object p2

    sget-object p3, Lklv;->b:Lklv;

    if-ne p2, p3, :cond_0

    invoke-static {p1}, Lewq;->e(Ldhi;)V

    sget-object p1, Ldho;->a:Ldhk;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lkfl;
    .locals 6

    iget-object v0, p0, Lgme;->b:Lkmf;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "format"

    invoke-static {v0, v3, v2}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v2

    iget-object v3, p0, Lgme;->a:Lkll;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "cameraId"

    invoke-static {v3, v4, v1}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lkfk;->b(Lkll;)V

    iget-object v1, v0, Lkmf;->b:Lkaf;

    invoke-virtual {v2, v1}, Lkfk;->i(Lkaf;)V

    iget v0, v0, Lkmf;->a:I

    invoke-virtual {v2, v0}, Lkfk;->h(I)V

    iget v0, p0, Lgme;->c:I

    invoke-virtual {v2, v0}, Lkfk;->c(I)V

    sget-object v0, Lkfm;->a:Lkfm;

    invoke-virtual {v2, v0}, Lkfk;->k(Lkfm;)V

    iget-boolean v0, p0, Lgme;->e:Z

    invoke-virtual {v2, v0}, Lkfk;->g(Z)V

    iget-boolean v0, p0, Lgme;->d:Z

    invoke-virtual {v2, v0}, Lkfk;->e(Z)V

    iget-boolean v0, p0, Lgme;->g:Z

    invoke-virtual {v2, v0}, Lkfk;->f(Z)V

    iget-object v0, p0, Lgme;->f:Ljava/lang/Long;

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    :goto_0
    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    invoke-virtual {v2, v0, v1}, Lkfk;->l(J)V

    :cond_1
    invoke-virtual {v2}, Lkfk;->a()Lkfl;

    move-result-object v0

    return-object v0
.end method
