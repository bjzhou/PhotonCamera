.class public final Llnw;
.super Ljava/lang/Object;

# interfaces
.implements Llnl;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

.field private final c:Lmrl;

.field private final d:Z

.field private final e:Llnt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmqp;Llnt;Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnw;->a:Landroid/content/Context;

    new-instance v0, Ldet;

    const/16 v1, 0x13

    invoke-direct {v0, p1, v1}, Ldet;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Llnw;->c:Lmrl;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Llnw;->d:Z

    iput-object p3, p0, Llnw;->e:Llnt;

    iput-object p4, p0, Llnw;->b:Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    return-void
.end method


# virtual methods
.method public final a(Lozv;)Lnou;
    .locals 9

    iget-boolean v0, p0, Llnw;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lozv;->g:Lozh;

    if-nez v0, :cond_0

    sget-object v0, Lozh;->l:Lozh;

    :cond_0
    iget v0, v0, Lozh;->a:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llnw;->e:Llnt;

    invoke-virtual {v0}, Llnt;->a()Lnou;

    move-result-object v0

    new-instance v1, Ldvo;

    const/16 v2, 0xb

    invoke-direct {v1, p0, p1, v2}, Ldvo;-><init>(Llnw;Lozv;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, p1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    iget v0, p1, Lozv;->a:I

    and-int/lit16 v0, v0, 0x400

    const/4 v1, 0x4

    if-eqz v0, :cond_b

    iget-object v0, p0, Llnw;->c:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnwn;

    invoke-virtual {v2, p1}, Lnwn;->s(Lnws;)V

    iget-object p1, p1, Lozv;->j:Lozn;

    if-nez p1, :cond_3

    sget-object p1, Lozn;->n:Lozn;

    :cond_3
    iget-object v3, p1, Lozn;->j:Lnxa;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lozr;->c:Lozr;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lozm;

    if-eqz v5, :cond_4

    iget v5, v5, Lozm;->d:I

    add-int/lit8 v5, v5, 0x1

    iget v8, v6, Lozm;->c:I

    if-eq v5, v8, :cond_4

    invoke-virtual {v4, v7}, Lnwn;->ay(I)V

    invoke-virtual {v4, v5}, Lnwn;->ax(I)V

    :cond_4
    iget v5, v6, Lozm;->b:I

    invoke-virtual {v4, v5}, Lnwn;->ay(I)V

    iget v5, v6, Lozm;->c:I

    invoke-virtual {v4, v5}, Lnwn;->ax(I)V

    move-object v5, v6

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    iget v3, v5, Lozm;->a:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_6

    iget v3, v5, Lozm;->d:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v7}, Lnwn;->ay(I)V

    invoke-virtual {v4, v3}, Lnwn;->ax(I)V

    :cond_6
    invoke-virtual {p1, v0}, Lnws;->ad(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnwn;

    invoke-virtual {v0, p1}, Lnwn;->s(Lnws;)V

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_7
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lozn;

    sget-object v3, Lnyi;->b:Lnyi;

    iput-object v3, p1, Lozn;->j:Lnxa;

    iget-object p1, v0, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_8
    iget-object p1, v0, Lnwn;->b:Lnws;

    check-cast p1, Lozn;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v3

    check-cast v3, Lozr;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p1, Lozn;->i:Lozr;

    iget v3, p1, Lozn;->a:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p1, Lozn;->a:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lozn;

    :cond_9
    iget-object v0, v2, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_a
    iget-object v0, v2, Lnwn;->b:Lnws;

    check-cast v0, Lozv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lozv;->j:Lozn;

    iget p1, v0, Lozv;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Lozv;->a:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lozv;

    :cond_b
    iget-object v0, p0, Llnw;->e:Llnt;

    invoke-virtual {v0}, Llnt;->a()Lnou;

    move-result-object v0

    new-instance v2, Lcpq;

    invoke-direct {v2, p0, p1, v1}, Lcpq;-><init>(Llnw;Lozv;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, p1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final b()Loxq;
    .locals 2

    new-instance v0, Loxq;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Loxq;-><init>(I)V

    return-object v0
.end method
