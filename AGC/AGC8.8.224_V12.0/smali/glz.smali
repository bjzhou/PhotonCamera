.class public final Lglz;
.super Ljava/lang/Object;

# interfaces
.implements Lftg;


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ljuf;

.field public final b:Ljuf;

.field public final c:Lkaq;

.field public final d:Ljve;

.field public e:Lnou;

.field private final g:Lken;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Lcbi;

.field private final k:Ldmv;

.field private final l:Lchs;

.field private final m:Lglp;

.field private final n:Lfzb;

.field private final o:Lgxb;

.field private final p:Lmbe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lglz;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljuf;Ljuf;Lken;Lkaq;Lgab;Ljuh;Lftu;Ljvs;Ljvs;Ljvs;Ljvs;Lnou;Ljava/util/concurrent/Executor;Lfzb;Ljve;Lcbi;Lgcb;Ldmv;Ljvs;Lchs;Lglp;)V
    .locals 12

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lglz;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, p1

    iput-object v1, v0, Lglz;->a:Ljuf;

    move-object v1, p2

    iput-object v1, v0, Lglz;->b:Ljuf;

    move-object v1, p3

    iput-object v1, v0, Lglz;->g:Lken;

    sget-object v1, Lglz;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PckOneCamera-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-interface {v2, v1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v1

    iput-object v1, v0, Lglz;->c:Lkaq;

    new-instance v1, Lgxb;

    move-object/from16 v3, p5

    move-object/from16 v2, p6

    invoke-direct {v1, v3, v2}, Lgxb;-><init>(Lgab;Ljuh;)V

    iput-object v1, v0, Lglz;->o:Lgxb;

    move-object/from16 v1, p13

    iput-object v1, v0, Lglz;->h:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p14

    iput-object v1, v0, Lglz;->n:Lfzb;

    move-object/from16 v1, p15

    iput-object v1, v0, Lglz;->d:Ljve;

    move-object/from16 v1, p16

    iput-object v1, v0, Lglz;->j:Lcbi;

    move-object/from16 v1, p18

    iput-object v1, v0, Lglz;->k:Ldmv;

    move-object/from16 v1, p20

    iput-object v1, v0, Lglz;->l:Lchs;

    move-object/from16 v1, p21

    iput-object v1, v0, Lglz;->m:Lglp;

    new-instance v1, Lmbe;

    move-object/from16 v2, p7

    iget-object v4, v2, Lftu;->a:Ljvk;

    move-object v2, v1

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p17

    move-object/from16 v11, p19

    invoke-direct/range {v2 .. v11}, Lmbe;-><init>(Lgab;Ljvs;Ljvs;Ljvs;Ljvs;Ljvs;Lnou;Lgcb;Ljvs;)V

    iput-object v1, v0, Lglz;->p:Lmbe;

    return-void
.end method


# virtual methods
.method public final bp(Lbkc;)Lccx;
    .locals 1

    iget-object v0, p0, Lglz;->j:Lcbi;

    invoke-interface {v0, p1}, Lcbi;->bp(Lbkc;)Lccx;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lkdy;)Lkad;
    .locals 1

    iget-object v0, p0, Lglz;->k:Ldmv;

    invoke-virtual {v0, p1}, Ldmv;->c(Lkdy;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lglz;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglz;->g:Lken;

    invoke-interface {v0}, Lken;->close()V

    iget-object v0, p0, Lglz;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lghc;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lghc;-><init>(Lglz;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d()Lmqp;
    .locals 1

    iget-object v0, p0, Lglz;->g:Lken;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lnou;
    .locals 4

    iget-object v0, p0, Lglz;->c:Lkaq;

    const-string v1, "start"

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lglz;->g:Lken;

    invoke-interface {v0}, Lken;->g()V

    iget-object v0, p0, Lglz;->n:Lfzb;

    invoke-virtual {v0}, Lfzb;->a()Lnou;

    move-result-object v0

    invoke-static {v0}, Lnsy;->C(Lnou;)Lnou;

    move-result-object v0

    iget-object v1, p0, Lglz;->a:Ljuf;

    iget-object v2, p0, Lglz;->l:Lchs;

    iget-object v3, p0, Lglz;->m:Lglp;

    invoke-virtual {v2, v3}, Lchs;->a(Lchr;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lglz;->c:Lkaq;

    const-string v2, "OneCamera started."

    const-string v3, "OneCamera failed to start!"

    invoke-static {v1, v0, v2, v3}, Ldka;->a(Lkaq;Lnou;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lglz;->e:Lnou;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lglz;->k:Ldmv;

    new-instance v2, Lgly;

    invoke-direct {v2, p0}, Lgly;-><init>(Lglz;)V

    invoke-virtual {v1, v2}, Ldmv;->c(Lkdy;)Lkad;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lglz;->k:Ldmv;

    new-instance v2, Lgly;

    invoke-direct {v2, p0}, Lgly;-><init>(Lglz;)V

    invoke-virtual {v1, v2}, Ldmv;->c(Lkdy;)Lkad;

    throw v0
.end method

.method public final f(Lfte;Lgxl;)Lnou;
    .locals 4

    iget-object v0, p0, Lglz;->o:Lgxb;

    iget-object v1, v0, Lgxb;->b:Ljava/lang/Object;

    iget-object v0, v0, Lgxb;->a:Ljava/lang/Object;

    new-instance v2, Lfzv;

    check-cast v0, Ljuh;

    invoke-direct {v2, p1, v0, p2}, Lfzv;-><init>(Lfte;Ljuh;Lgxl;)V

    new-instance v3, Lgac;

    invoke-direct {v3, p2, v0}, Lgac;-><init>(Lgxl;Ljuh;)V

    new-instance v0, Lgkr;

    invoke-direct {v0, p1, p2, v2, v3}, Lgkr;-><init>(Lfte;Lgxl;Lfzz;Lgaa;)V

    invoke-interface {v1, v0}, Lgab;->c(Lgkr;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lglz;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final h()Ljuf;
    .locals 1

    iget-object v0, p0, Lglz;->a:Ljuf;

    return-object v0
.end method

.method public final i()Lmbe;
    .locals 1

    iget-object v0, p0, Lglz;->p:Lmbe;

    return-object v0
.end method
