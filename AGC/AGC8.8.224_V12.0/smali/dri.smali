.class public final Ldri;
.super Ljava/lang/Object;

# interfaces
.implements Lioq;


# instance fields
.field public a:Lmqp;

.field private final b:Ldsg;

.field private final c:Ldhi;

.field private final d:Ljuh;

.field private final e:Lhna;

.field private final f:Lhnb;

.field private g:Lios;


# direct methods
.method public constructor <init>(Ljuh;Lhna;Lhnb;Ldhi;Ldsg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldri;->a:Lmqp;

    iput-object p5, p0, Ldri;->b:Ldsg;

    iput-object p4, p0, Ldri;->c:Ldhi;

    iput-object p1, p0, Ldri;->d:Ljuh;

    iput-object p2, p0, Ldri;->e:Lhna;

    iput-object p3, p0, Ldri;->f:Lhnb;

    return-void
.end method


# virtual methods
.method public final a(Lios;)Lioo;
    .locals 3

    iget-object v0, p0, Ldri;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldri;->g:Lios;

    if-eq v0, p1, :cond_2

    :cond_0
    iget-object v0, p0, Ldri;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldri;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsf;

    invoke-interface {v0}, Ldsf;->close()V

    :cond_1
    iput-object p1, p0, Ldri;->g:Lios;

    iget-object v0, p0, Ldri;->c:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    new-instance v0, Ldrj;

    check-cast p1, Liok;

    iget-object p1, p1, Liok;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ldri;->b:Ldsg;

    invoke-direct {v0, p1, v1}, Ldrj;-><init>(Ljava/util/concurrent/Executor;Ldsg;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Ldri;->a:Lmqp;

    :cond_2
    iget-object p1, p0, Ldri;->f:Lhnb;

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v0

    const-string v1, "FaceObfuscation"

    invoke-virtual {v0, v1}, Lhnd;->d(Ljava/lang/String;)V

    iget-object v1, p0, Ldri;->d:Ljuh;

    invoke-virtual {v0, v1}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Ldri;->e:Lhna;

    invoke-virtual {v0, v1}, Lhnd;->g(Lhna;)V

    new-instance v1, Ldrh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldrh;-><init>(Ldri;I)V

    invoke-virtual {v0, v1}, Lhnd;->f(Ljava/lang/Runnable;)V

    new-instance v1, Ldrh;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ldrh;-><init>(Ldri;I)V

    invoke-virtual {v0, v1}, Lhnd;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lhnd;->a()Lhne;

    move-result-object v0

    invoke-interface {p1, v0}, Lhnb;->f(Lhmz;)Lkad;

    iget-object p1, p0, Ldri;->a:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lioo;

    return-object p1
.end method
