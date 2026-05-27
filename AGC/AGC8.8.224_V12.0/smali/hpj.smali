.class public final synthetic Lhpj;
.super Ljava/lang/Object;

# interfaces
.implements Lczy;


# instance fields
.field public final synthetic a:Lhpq;

.field public final synthetic b:Ljwb;

.field public final synthetic c:Lhxb;


# direct methods
.method public synthetic constructor <init>(Lhpq;Ljwb;Lhxb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhpj;->a:Lhpq;

    iput-object p2, p0, Lhpj;->b:Ljwb;

    iput-object p3, p0, Lhpj;->c:Lhxb;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    iget-object v0, p0, Lhpj;->a:Lhpq;

    iget-object v1, p0, Lhpj;->b:Ljwb;

    iget-object v2, p0, Lhpj;->c:Lhxb;

    iget-object v3, v0, Lhpq;->V:Ljes;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lhpq;->N:Lhpu;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lhpu;->e:Lmvv;

    invoke-virtual {v3, p1}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhpt;

    iput-object p1, v0, Lhpq;->U:Lhpt;

    iget-object v0, v0, Lhpq;->V:Ljes;

    iget-object v3, v0, Ljes;->b:Ljava/lang/Object;

    check-cast v3, Lhos;

    iget-object v4, v3, Lhos;->u:Ljwb;

    invoke-interface {v4, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v4, v3, Lhos;->t:Ljwb;

    iget-object v5, v3, Lhos;->R:Lhpu;

    iget-object v5, v5, Lhpu;->d:Lmwa;

    invoke-virtual {v5, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lhos;->a()Lhpu;

    move-result-object v4

    iget-object v4, v4, Lhpu;->d:Lmwa;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v4, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v4, Lhos;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    const-string v5, "Cannot find corresponding capture rate"

    const/16 v6, 0xf00

    invoke-static {v4, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {v3}, Lhos;->a()Lhpu;

    move-result-object v4

    invoke-virtual {v4}, Lhpu;->b()D

    move-result-wide v4

    :goto_0
    iget-object v6, v3, Lhos;->n:Ldhi;

    sget-object v7, Ldil;->d:Ldhj;

    invoke-interface {v6, v7}, Ldhi;->l(Ldhj;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lhos;->o:Lhof;

    iget-object v7, v6, Lhof;->t:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v8, v6, Lhof;->z:Lhpu;

    invoke-virtual {v8, v4, v5}, Lhpu;->c(D)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v6, v6, Lhof;->e:Lnnp;

    invoke-virtual {v6, v4, v5}, Lnnp;->b(D)V

    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, v3, Lhos;->o:Lhof;

    iget-object v4, v3, Lhof;->t:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iput-object p1, v3, Lhof;->A:Lhpt;

    iget-object v5, v3, Lhof;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, v3, Lhof;->w:Lhps;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p1}, Lhps;->d(Lhpt;)V

    :cond_1
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    iget-object p1, v3, Lhos;->m:Lhno;

    iget-object v3, p1, Lhno;->H:Lhpu;

    invoke-virtual {v3, v4, v5}, Lhpu;->c(D)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p1, Lhno;->f:Lnnp;

    invoke-virtual {p1, v4, v5}, Lnnp;->b(D)V

    :cond_3
    :goto_1
    iget-object p1, v0, Ljes;->a:Ljava/lang/Object;

    check-cast p1, Lhpq;

    invoke-virtual {p1}, Lhpq;->f()V

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Lhxb;->e()V

    return-void

    :cond_4
    return-void
.end method
