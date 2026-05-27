.class public final synthetic Llns;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Llnt;

.field public final synthetic b:Lnou;

.field public final synthetic c:Lnou;

.field public final synthetic d:Lnou;


# direct methods
.method public synthetic constructor <init>(Llnt;Lnou;Lnou;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llns;->a:Llnt;

    iput-object p2, p0, Llns;->b:Lnou;

    iput-object p3, p0, Llns;->c:Lnou;

    iput-object p4, p0, Llns;->d:Lnou;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Llns;->a:Llnt;

    iget-object v1, p0, Llns;->b:Lnou;

    iget-object v2, p0, Llns;->c:Lnou;

    iget-object v3, p0, Llns;->d:Lnou;

    sget-object v4, Llnr;->i:Llnr;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-object v5, v0, Llnt;->b:Ljava/lang/String;

    iget-object v6, v4, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_0
    iget-object v6, v4, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Llnr;

    iget v8, v7, Llnr;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Llnr;->a:I

    iput-object v5, v7, Llnr;->b:Ljava/lang/String;

    iget-object v5, v0, Llnt;->a:Ljava/lang/String;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_1
    iget-object v6, v4, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Llnr;

    iget v8, v7, Llnr;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Llnr;->a:I

    iput-object v5, v7, Llnr;->c:Ljava/lang/String;

    iget-boolean v5, v0, Llnt;->c:Z

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_2
    iget-object v6, v4, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Llnr;

    iget v8, v7, Llnr;->a:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Llnr;->a:I

    iput-boolean v5, v7, Llnr;->d:Z

    iget-boolean v0, v0, Llnt;->d:Z

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_3
    iget-object v5, v4, Lnwn;->b:Lnws;

    check-cast v5, Llnr;

    iget v6, v5, Llnr;->a:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v5, Llnr;->a:I

    iput-boolean v0, v5, Llnr;->h:Z

    :try_start_0
    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_4
    iget-object v1, v4, Lnwn;->b:Lnws;

    check-cast v1, Llnr;

    iget v5, v1, Llnr;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Llnr;->a:I

    iput-object v0, v1, Llnr;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_5
    :goto_0
    :try_start_1
    invoke-static {v2}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, v4, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_6
    iget-object v1, v4, Lnwn;->b:Lnws;

    check-cast v1, Llnr;

    iget-object v2, v1, Llnr;->g:Lnwy;

    invoke-interface {v2}, Lnwy;->c()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v2}, Lnws;->S(Lnwy;)Lnwy;

    move-result-object v2

    iput-object v2, v1, Llnr;->g:Lnwy;

    :cond_7
    iget-object v1, v1, Llnr;->g:Lnwy;

    invoke-static {v0, v1}, Lnvd;->e(Ljava/lang/Iterable;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    invoke-static {v3}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_8
    iget-object v1, v4, Lnwn;->b:Lnws;

    check-cast v1, Llnr;

    iget v2, v1, Llnr;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Llnr;->a:I

    iput-object v0, v1, Llnr;->e:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :cond_9
    :goto_2
    sget-object v0, Llnj;->c:Llnj;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    check-cast v0, Lnwp;

    sget-object v1, Llnr;->j:Llhj;

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Llnr;

    invoke-virtual {v0, v1, v2}, Lnwp;->aJ(Llhj;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Llnj;

    return-object v0
.end method
