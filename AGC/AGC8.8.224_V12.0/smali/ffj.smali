.class public final synthetic Lffj;
.super Ljava/lang/Object;

# interfaces
.implements Lnno;


# instance fields
.field public final synthetic a:Lffl;

.field public final synthetic b:Lhkt;

.field public final synthetic c:Lgxn;

.field public final synthetic d:Lmqp;

.field public final synthetic e:Lhjc;


# direct methods
.method public synthetic constructor <init>(Lffl;Lhkt;Lgxn;Lmqp;Lhjc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffj;->a:Lffl;

    iput-object p2, p0, Lffj;->b:Lhkt;

    iput-object p3, p0, Lffj;->c:Lgxn;

    iput-object p4, p0, Lffj;->d:Lmqp;

    iput-object p5, p0, Lffj;->e:Lhjc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lnou;
    .locals 10

    iget-object v0, p0, Lffj;->a:Lffl;

    iget-object v3, p0, Lffj;->b:Lhkt;

    iget-object v6, p0, Lffj;->c:Lgxn;

    iget-object v4, p0, Lffj;->d:Lmqp;

    iget-object v5, p0, Lffj;->e:Lhjc;

    move-object v7, p1

    check-cast v7, Lffo;

    iget-object v2, v0, Lffl;->a:Lffp;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iget-object v0, v2, Lffp;->b:Ljava/util/concurrent/Executor;

    new-instance v9, Lffb;

    move-object v1, v9

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lffb;-><init>(Lffp;Lhkt;Lmqp;Lhjc;Lgxn;Lffo;Lnph;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method
