.class public final synthetic Lffh;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lffl;

.field public final synthetic b:Lhkt;

.field public final synthetic c:Ljava/io/InputStream;

.field public final synthetic d:Lgxn;

.field public final synthetic e:Lmqp;

.field public final synthetic f:Lhjc;


# direct methods
.method public synthetic constructor <init>(Lffl;Lhkt;Ljava/io/InputStream;Lgxn;Lmqp;Lhjc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffh;->a:Lffl;

    iput-object p2, p0, Lffh;->b:Lhkt;

    iput-object p3, p0, Lffh;->c:Ljava/io/InputStream;

    iput-object p4, p0, Lffh;->d:Lgxn;

    iput-object p5, p0, Lffh;->e:Lmqp;

    iput-object p6, p0, Lffh;->f:Lhjc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lffh;->a:Lffl;

    iget-object v3, v1, Lffh;->b:Lhkt;

    iget-object v2, v1, Lffh;->c:Ljava/io/InputStream;

    iget-object v7, v1, Lffh;->d:Lgxn;

    iget-object v4, v1, Lffh;->e:Lmqp;

    iget-object v5, v1, Lffh;->f:Lhjc;

    move-object/from16 v15, p1

    check-cast v15, Lffo;

    iget-object v0, v0, Lffl;->a:Lffp;

    sget-boolean v6, Lfgk;->a:Z

    :try_start_0
    iget-object v6, v15, Lffo;->l:Lnph;

    invoke-static {v6}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    invoke-static {v6}, Lmoz;->p(Z)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v6, v0, Lffp;->g:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfsn;

    iget-object v9, v15, Lffo;->a:Lgxy;

    invoke-interface {v6, v9}, Lfsn;->c(Lgxy;)V

    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v16, Ldqx;

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v7}, Ldqx;-><init>(Lhkt;Lmqp;Lhjc;[BLgxn;)V

    iget-object v2, v15, Lffo;->a:Lgxy;

    iget-boolean v2, v15, Lffo;->o:Z

    if-nez v2, :cond_1

    invoke-static {v8}, Lmoz;->p(Z)V

    iget-object v2, v0, Lffp;->o:Landroid/os/Handler;

    new-instance v3, Leow;

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v3

    move-object v9, v0

    move-object v10, v15

    move-object/from16 v11, v16

    invoke-direct/range {v8 .. v14}, Leow;-><init>(Lffp;Lffo;Ldqx;I[B[B)V

    iget-object v4, v15, Lffo;->a:Lgxy;

    const-wide/16 v5, 0x3a98

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object v2, v15, Lffo;->g:Lfst;

    iget-object v3, v15, Lffo;->a:Lgxy;

    iget-object v4, v0, Lffp;->o:Landroid/os/Handler;

    invoke-static {v2, v3, v4}, Lffp;->d(Lfst;Lgxy;Landroid/os/Handler;)V

    :cond_1
    iget-object v2, v15, Lffo;->h:Lnph;

    invoke-virtual {v2}, Lnph;->isDone()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v15, Lffo;->h:Lnph;

    iget-wide v3, v15, Lffo;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, v15, Lffo;->n:Lkxv;

    invoke-interface {v2}, Lkxv;->b()Lnou;

    move-result-object v2

    new-instance v3, Lffm;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    move-object v9, v0

    move-object v10, v15

    move-object/from16 v11, v16

    invoke-direct/range {v8 .. v13}, Lffm;-><init>(Lffp;Lffo;Ldqx;[B[B)V

    iget-object v0, v0, Lffp;->c:Ljava/util/concurrent/Executor;

    invoke-static {v2, v3, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v0, v15, Lffo;->m:Lnph;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-object v0, Lffp;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v3, "Error occurred fetching jpeg bytes in finishMicrovideo"

    const/16 v4, 0x888

    invoke-static {v0, v3, v4, v2}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-static {v2}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lffp;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "Location info found for a non-long shot"

    const/16 v4, 0x889

    invoke-static {v2, v3, v4, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    :goto_0
    return-object v0
.end method
