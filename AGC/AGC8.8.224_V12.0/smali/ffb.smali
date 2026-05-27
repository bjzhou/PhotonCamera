.class public final synthetic Lffb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lffp;

.field public final synthetic b:Lhkt;

.field public final synthetic c:Lmqp;

.field public final synthetic d:Lhjc;

.field public final synthetic e:Lgxn;

.field public final synthetic f:Lffo;

.field public final synthetic g:Lnph;


# direct methods
.method public synthetic constructor <init>(Lffp;Lhkt;Lmqp;Lhjc;Lgxn;Lffo;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffb;->a:Lffp;

    iput-object p2, p0, Lffb;->b:Lhkt;

    iput-object p3, p0, Lffb;->c:Lmqp;

    iput-object p4, p0, Lffb;->d:Lhjc;

    iput-object p5, p0, Lffb;->e:Lgxn;

    iput-object p6, p0, Lffb;->f:Lffo;

    iput-object p7, p0, Lffb;->g:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v7, p0, Lffb;->a:Lffp;

    iget-object v6, p0, Lffb;->b:Lhkt;

    iget-object v2, p0, Lffb;->c:Lmqp;

    iget-object v3, p0, Lffb;->d:Lhjc;

    iget-object v5, p0, Lffb;->e:Lgxn;

    iget-object v8, p0, Lffb;->f:Lffo;

    iget-object v9, p0, Lffb;->g:Lnph;

    new-instance v10, Ldqx;

    const/4 v4, 0x0

    move-object v0, v10

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Ldqx;-><init>(Lhkt;Lmqp;Lhjc;[BLgxn;)V

    iget-object v0, v8, Lffo;->h:Lnph;

    iget-wide v1, v8, Lffo;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, v8, Lffo;->l:Lnph;

    iget-object v1, v6, Lhkt;->d:Lmqp;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object v0, v8, Lffo;->n:Lkxv;

    invoke-interface {v0}, Lkxv;->b()Lnou;

    move-result-object v11

    new-instance v12, Lffn;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, v7

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v0 .. v6}, Lffn;-><init>(Lffp;Lffo;Ldqx;I[B[B)V

    iget-object v0, v7, Lffp;->c:Ljava/util/concurrent/Executor;

    invoke-static {v11, v12, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object v0, v8, Lffo;->m:Lnph;

    invoke-virtual {v9, v0}, Lnph;->f(Lnou;)Z

    return-void
.end method
