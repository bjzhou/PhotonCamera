.class public final synthetic Llpw;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;Lnno;Ljava/util/concurrent/Executor;I[B[B[B)V
    .locals 0

    iput p4, p0, Llpw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpw;->c:Ljava/lang/Object;

    iput-object p2, p0, Llpw;->a:Ljava/lang/Object;

    iput-object p3, p0, Llpw;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcij;Ljava/lang/String;Loiw;I)V
    .locals 0

    iput p4, p0, Llpw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpw;->c:Ljava/lang/Object;

    iput-object p2, p0, Llpw;->a:Ljava/lang/Object;

    iput-object p3, p0, Llpw;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llpq;Ljava/lang/String;Llon;I)V
    .locals 0

    iput p4, p0, Llpw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpw;->a:Ljava/lang/Object;

    iput-object p2, p0, Llpw;->b:Ljava/lang/Object;

    iput-object p3, p0, Llpw;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llsr;Lnou;Lnou;I)V
    .locals 0

    iput p4, p0, Llpw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpw;->c:Ljava/lang/Object;

    iput-object p2, p0, Llpw;->a:Ljava/lang/Object;

    iput-object p3, p0, Llpw;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llst;Lnno;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p4, p0, Llpw;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpw;->c:Ljava/lang/Object;

    iput-object p2, p0, Llpw;->a:Ljava/lang/Object;

    iput-object p3, p0, Llpw;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 13

    iget v0, p0, Llpw;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llpw;->c:Ljava/lang/Object;

    iget-object v1, p0, Llpw;->a:Ljava/lang/Object;

    iget-object v2, p0, Llpw;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    check-cast v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object p1, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Llst;

    iget-object p1, p1, Llst;->b:Llsu;

    invoke-interface {p1, v1, v2}, Llsu;->d(Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Llpw;->c:Ljava/lang/Object;

    iget-object v0, p0, Llpw;->a:Ljava/lang/Object;

    iget-object v1, p0, Llpw;->b:Ljava/lang/Object;

    check-cast p1, Llst;

    iget-object p1, p1, Llst;->b:Llsu;

    invoke-interface {p1, v0, v1}, Llsu;->d(Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Llpw;->c:Ljava/lang/Object;

    iget-object v0, p0, Llpw;->a:Ljava/lang/Object;

    iget-object v1, p0, Llpw;->b:Ljava/lang/Object;

    invoke-static {v0}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lnor;->a:Lnou;

    goto :goto_0

    :cond_0
    new-instance v0, Lcpq;

    check-cast p1, Llsr;

    const/4 v2, 0x6

    invoke-direct {v0, p1, v1, v2}, Lcpq;-><init>(Llsr;Lnou;I)V

    invoke-static {v0}, Lmny;->b(Lnno;)Lnno;

    move-result-object v0

    iget-object v2, p1, Llsr;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0, v2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iget-object v1, p1, Llsr;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    move-object p1, v0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_2
    iget-object v0, p0, Llpw;->c:Ljava/lang/Object;

    iget-object v1, p0, Llpw;->a:Ljava/lang/Object;

    iget-object v2, p0, Llpw;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    goto :goto_1

    :cond_1
    check-cast v0, Lcij;

    iget-object p1, v0, Lcij;->b:Lkbc;

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, v0, Lcij;->b:Lkbc;

    const-string v1, "get"

    invoke-interface {p1, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcik;

    iget-object v1, v0, Lcij;->b:Lkbc;

    const-string v2, "start"

    invoke-interface {v1, v2}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {p1}, Lcik;->bl()Lnou;

    move-result-object p1

    iget-object v1, v0, Lcij;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    iget-object v0, v0, Lcij;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    :goto_1
    return-object p1

    :pswitch_3
    iget-object v0, p0, Llpw;->a:Ljava/lang/Object;

    iget-object v1, p0, Llpw;->b:Ljava/lang/Object;

    iget-object v2, p0, Llpw;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast v0, Llpq;

    iget-boolean v3, v0, Llpq;->d:Z

    if-nez v3, :cond_2

    const-string p1, ""

    invoke-static {p1}, Lmvv;->l(Ljava/lang/Object;)Lmvv;

    move-result-object p1

    :cond_2
    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    sget-object v3, Llpy;->c:Llpa;

    invoke-static {v1, v7}, Lmqq;->a(Ljava/lang/Object;Ljava/lang/Object;)Lmqq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmuq;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Llqh;

    iget-boolean v4, v0, Llpq;->b:Z

    move-object v10, v2

    check-cast v10, Llon;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v10, v5, v7, v4}, Llqh;-><init>(Llon;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v4, v0, Llpq;->c:Z

    if-eqz v4, :cond_4

    iget-object v4, v10, Llon;->c:Landroid/content/Context;

    iget-object v5, v0, Llpq;->a:Ljava/lang/String;

    invoke-static {v4}, Llpv;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v7

    :goto_3
    invoke-virtual {v3, v4}, Llqh;->b(Ljava/lang/String;)Lnou;

    move-result-object v5

    invoke-static {v5}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v4

    new-instance v6, Lcmq;

    const/16 v8, 0xd

    invoke-direct {v6, v3, v8}, Lcmq;-><init>(Llqh;I)V

    invoke-virtual {v10}, Llon;->b()Lnox;

    move-result-object v3

    invoke-static {v4, v6, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v11

    new-instance v12, Llpx;

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, v10

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Llpx;-><init>(Llon;Lnou;Llpq;Ljava/lang/String;I)V

    invoke-virtual {v10}, Llon;->b()Lnox;

    move-result-object v3

    invoke-static {v11, v12, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v3

    invoke-virtual {v9, v3}, Lmvq;->g(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Lmvq;->f()Lmvv;

    move-result-object p1

    invoke-static {p1}, Lnsy;->u(Ljava/lang/Iterable;)Lnom;

    move-result-object p1

    sget-object v0, Llig;->c:Llig;

    check-cast v2, Llon;

    invoke-virtual {v2}, Llon;->b()Lnox;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnom;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
