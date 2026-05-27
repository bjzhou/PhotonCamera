.class public final Llhm;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Llhm;->a:I

    return-void
.end method


# virtual methods
.method public final a()Llhn;
    .locals 3

    iget v0, p0, Llhm;->a:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Llhm;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Llhn;

    check-cast v1, Llhl;

    invoke-direct {v2, v0, v1}, Llhn;-><init>(ILlhl;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Llhm;->a:I

    if-nez v1, :cond_2

    const-string v1, " enablement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Llhm;->b:Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v1, " metricExtensionProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Llhm;->a:I

    return-void
.end method

.method public final c(I)V
    .locals 3

    iput p1, p0, Llhm;->a:I

    iget-object v0, p0, Llhm;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Lhbj;

    iget-object p1, v0, Lhbj;->b:Ljuh;

    new-instance v1, Lhbi;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lhbi;-><init>(Lhbj;I)V

    invoke-virtual {p1, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lhbj;->d:Llhm;

    const/4 v1, 0x0

    iput-object v1, p1, Llhm;->b:Ljava/lang/Object;

    iget-object p1, v0, Lhbj;->c:Lnph;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    check-cast v0, Lhbj;

    invoke-virtual {v0}, Lhbj;->a()V

    return-void

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llhm;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    const/4 v0, 0x4

    iput v0, p0, Llhm;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llhm;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    const/4 v0, 0x3

    iput v0, p0, Llhm;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Lmvv;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Llhm;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llhm;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    const/4 v0, 0x2

    iput v0, p0, Llhm;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h(Lnwn;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llhm;->b:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_0
    iget-object v1, p1, Lnwn;->b:Lnws;

    check-cast v1, Lnjo;

    sget-object v2, Lnjo;->n:Lnjo;

    sget-object v2, Lnyi;->b:Lnyi;

    iput-object v2, v1, Lnjo;->i:Lnxa;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    sget-object v2, Lnjr;->c:Lnjr;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnjr;

    iget v5, v3, Lnjr;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lnjr;->a:I

    iput v4, v3, Lnjr;->b:I

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnjr;

    iget-object v3, p1, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_2
    iget-object v3, p1, Lnwn;->b:Lnws;

    check-cast v3, Lnjo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lnjo;->i:Lnxa;

    invoke-interface {v4}, Lnxa;->c()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lnws;->U(Lnxa;)Lnxa;

    move-result-object v4

    iput-object v4, v3, Lnjo;->i:Lnxa;

    :cond_3
    iget-object v3, v3, Lnjo;->i:Lnxa;

    invoke-interface {v3, v2}, Lnxa;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Llhm;->a:I

    iget-object v1, p1, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lnwn;->p()V

    :cond_5
    iget-object p1, p1, Lnwn;->b:Lnws;

    check-cast p1, Lnjo;

    sget-object v1, Lnjo;->n:Lnjo;

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_6

    iput v1, p1, Lnjo;->k:I

    iget v0, p1, Lnjo;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p1, Lnjo;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    const/4 p1, 0x0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
