.class public final Lffr;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Logd;

.field private final c:Limq;

.field private final d:Ldhi;

.field private final e:Ljvs;

.field private final f:Lfuz;

.field private final g:Lgkr;

.field private final h:Lcvr;

.field private final i:Lcvr;

.field private final j:Lcvr;


# direct methods
.method public constructor <init>(Lmqp;Logd;Logd;Logd;Logd;Lfuz;Limq;Ldhi;Lgkr;Ljvs;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p11, 0x0

    invoke-static {p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p11

    invoke-virtual {p1, p11}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lffr;->a:Z

    invoke-static {p2}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Lffr;->h:Lcvr;

    invoke-static {p3}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Lffr;->i:Lcvr;

    invoke-static {p4}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Lffr;->j:Lcvr;

    iput-object p5, p0, Lffr;->b:Logd;

    iput-object p9, p0, Lffr;->g:Lgkr;

    iput-object p6, p0, Lffr;->f:Lfuz;

    iput-object p7, p0, Lffr;->c:Limq;

    iput-object p8, p0, Lffr;->d:Ldhi;

    iput-object p10, p0, Lffr;->e:Ljvs;

    return-void
.end method

.method private static d(Lgnk;)Lfsk;
    .locals 2

    new-instance v0, Lgjf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lgjf;-><init>(Lgnk;I)V

    return-object v0
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 6

    iget-object v0, p0, Lffr;->h:Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_0
    iget-object v0, p0, Lffr;->g:Lgkr;

    iget-object v1, v0, Lgkr;->c:Ljava/lang/Object;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    check-cast v0, Lfte;

    iget v0, v0, Lfte;->a:I

    iget-object v2, p0, Lffr;->c:Limq;

    iget-object v3, p0, Lffr;->f:Lfuz;

    iget-object v4, p0, Lffr;->e:Ljvs;

    iget-object v5, p0, Lffr;->d:Ldhi;

    invoke-static {v0, v2, v3, v4, v5}, Lcea;->b(ILimq;Lkli;Ljvs;Ldhi;)I

    move-result v0

    iget-object v2, p0, Lffr;->h:Lcvr;

    invoke-virtual {v2}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfge;

    sget-object v3, Lmpx;->a:Lmpx;

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v1, v0, v4, v3}, Lfge;->a(Lgxl;IZLnou;)Lfgd;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Lffr;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lffr;->i:Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsg;

    iget-object v1, p0, Lffr;->b:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnk;

    invoke-static {v1}, Lffr;->d(Lgnk;)Lfsk;

    move-result-object v1

    iget-object v2, p0, Lffr;->g:Lgkr;

    invoke-interface {v0, v1, v2}, Lfsg;->q(Lfsk;Lgkr;)V

    iget-object v0, p0, Lffr;->j:Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsn;

    iget-object v1, p0, Lffr;->g:Lgkr;

    iget-object v1, v1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Lgxl;->h()Lgxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lfsn;->f(Lgxy;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Lffr;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lffr;->i:Lcvr;

    invoke-virtual {v0}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsg;

    iget-object v1, p0, Lffr;->b:Logd;

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnk;

    invoke-static {v1}, Lffr;->d(Lgnk;)Lfsk;

    move-result-object v1

    iget-object v2, p0, Lffr;->g:Lgkr;

    invoke-interface {v0, v1, v2}, Lfsg;->o(Lfsk;Lgkr;)V

    :cond_0
    return-void
.end method
