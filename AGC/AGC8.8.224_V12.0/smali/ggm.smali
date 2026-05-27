.class public final Lggm;
.super Ljava/lang/Object;

# interfaces
.implements Lggd;


# instance fields
.field private final a:Lkbc;

.field private final b:Lkaq;

.field private final c:Ljvs;

.field private final d:Ljvs;

.field private final e:Lily;

.field private final f:Z

.field private final g:I

.field private final h:Z

.field private final i:Lmqp;

.field private final j:Lgfz;

.field private final k:Lnow;

.field private final l:Lbkb;


# direct methods
.method public constructor <init>(Lkbc;Lkap;Lbkb;Ljvs;Ljvs;Lily;Ldhi;Lfuz;Loiw;Lgfz;Ljuf;Lnow;[B[B[B[B)V
    .locals 7

    move-object v0, p0

    move-object v1, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lggm;->a:Lkbc;

    const-string v2, "PckConv3A"

    move-object v3, p2

    invoke-interface {p2, v2}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object v2

    iput-object v2, v0, Lggm;->b:Lkaq;

    move-object v3, p3

    iput-object v3, v0, Lggm;->l:Lbkb;

    move-object v3, p4

    iput-object v3, v0, Lggm;->c:Ljvs;

    move-object v3, p5

    iput-object v3, v0, Lggm;->d:Ljvs;

    move-object v3, p6

    iput-object v3, v0, Lggm;->e:Lily;

    sget-object v3, Ldhq;->ap:Ldhj;

    invoke-interface {p7, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    iput-boolean v3, v0, Lggm;->f:Z

    sget-object v3, Ldhq;->t:Ldhk;

    invoke-interface {p7, v3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v3

    const/16 v4, 0xbb8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lggm;->g:I

    sget-object v3, Ldhh;->i:Ldhj;

    invoke-interface {p7, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    iput-boolean v3, v0, Lggm;->h:Z

    move-object/from16 v4, p10

    iput-object v4, v0, Lggm;->j:Lgfz;

    move-object/from16 v4, p12

    iput-object v4, v0, Lggm;->k:Lnow;

    if-eqz v3, :cond_0

    new-instance v3, Lcbw;

    invoke-interface/range {p9 .. p9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leah;

    invoke-virtual {p8}, Lklw;->k()Lklv;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ldhh;->j:Ldhj;

    invoke-interface {p7, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    const/high16 v6, 0x43960000    # 300.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v6, "conv3A-"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object p1, v3

    move-object p2, p8

    move-object p3, v4

    move-object p4, v2

    move-object p5, v5

    move p6, v1

    invoke-direct/range {p1 .. p6}, Lcbw;-><init>(Lfuz;Leah;Lkaq;Ljava/lang/String;F)V

    move-object/from16 v1, p11

    invoke-virtual {v1, v3}, Ljuf;->d(Lkad;)V

    invoke-virtual {v3}, Lcbw;->b()V

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lggm;->i:Lmqp;

    return-void

    :cond_0
    sget-object v1, Lmpx;->a:Lmpx;

    goto :goto_0
.end method

.method private final c(I)Z
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lggm;->c:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyp;

    sget-object v3, Lgyp;->b:Lgyp;

    invoke-virtual {v0, v3}, Lgyp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a(Lker;Lkfh;)Lnou;
    .locals 3

    iget-object v0, p0, Lggm;->k:Lnow;

    new-instance v1, Lggl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lggl;-><init>(Lggm;Lker;Lkfh;I)V

    invoke-interface {v0, v1}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lker;Lkfh;)Lfub;
    .locals 12

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    iget-object v1, p0, Lggm;->l:Lbkb;

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p2, Lkfh;->c:I

    :goto_0
    invoke-virtual {v0, v1}, Lkff;->c(I)V

    iget v1, p2, Lkfh;->b:I

    invoke-virtual {v0, v1}, Lkff;->b(I)V

    iget v1, p2, Lkfh;->d:I

    invoke-virtual {v0, v1}, Lkff;->e(I)V

    iget-boolean p2, p2, Lkfh;->a:Z

    invoke-virtual {v0, p2}, Lkff;->d(Z)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lggm;->b:Lkaq;

    const-string v1, "Acquiring 3A lock."

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lggm;->a:Lkbc;

    const-string v1, "3A"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lggm;->e:Lily;

    iget-object v1, p0, Lggm;->d:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lily;->a(Ljava/lang/String;)Lkli;

    move-result-object v0

    invoke-interface {v0}, Lkli;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p2, Lkfh;->c:I

    if-eq v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-wide/16 v5, -0x1

    const/4 v0, 0x4

    const/4 v3, 0x3

    if-eqz v4, :cond_5

    iget v7, p2, Lkfh;->c:I

    invoke-interface {p1}, Lker;->a()Lkdz;

    move-result-object v8

    if-ne v7, v3, :cond_2

    iget-object v7, p0, Lggm;->b:Lkaq;

    const-string v9, "Switching AF Mode to AUTO for AF requirement CONVERGED"

    invoke-interface {v7, v9}, Lkaq;->b(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v9, v8

    check-cast v9, Lkhs;

    iput-object v7, v9, Lkhs;->b:Ljava/lang/Integer;

    check-cast v8, Lkhs;

    invoke-virtual {v8}, Lkhs;->d()Lkht;

    move-result-object v7

    invoke-interface {p1, v7}, Lker;->d(Lkea;)Lnou;

    move-result-object v7

    invoke-interface {v7}, Lnou;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkeg;

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-direct {p0, v7}, Lggm;->c(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lggm;->b:Lkaq;

    const-string v8, "AF was in implicit manual mode, changing AF to continuous mode and locking immediately."

    invoke-interface {v7, v8}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lker;->a()Lkdz;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v7

    check-cast v9, Lkhs;

    iput-object v8, v9, Lkhs;->b:Ljava/lang/Integer;

    check-cast v7, Lkhs;

    invoke-virtual {v7}, Lkhs;->d()Lkht;

    move-result-object v7

    invoke-interface {p1, v7}, Lker;->h(Lkea;)Lnou;

    move-result-object v7

    invoke-interface {v7}, Lnou;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkeg;

    invoke-static {v7}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    goto :goto_2

    :cond_3
    sget-object v7, Lmpx;->a:Lmpx;

    :goto_2
    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkeg;

    iget-wide v5, v5, Lkeg;->c:J

    goto :goto_3

    :cond_4
    goto :goto_3

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    iget v7, p2, Lkfh;->c:I

    invoke-direct {p0, v7}, Lggm;->c(I)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :goto_4
    iget v8, p2, Lkfh;->b:I

    if-eq v8, v3, :cond_8

    if-ne v8, v0, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    const/4 v8, 0x1

    :goto_5
    iget v9, p2, Lkfh;->d:I

    if-ne v9, v3, :cond_9

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    if-nez v7, :cond_b

    if-nez v8, :cond_b

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    move-wide v2, v5

    goto/16 :goto_e

    :cond_b
    :goto_7
    iget-object v5, p0, Lggm;->b:Lkaq;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "triggering af and locking ae/awb as needed, afTrigger="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", lockAe="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", lockAwb="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lkaq;->b(Ljava/lang/String;)V

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v5

    if-eqz v7, :cond_c

    iget v6, p2, Lkfh;->c:I

    goto :goto_8

    :cond_c
    const/4 v6, 0x1

    :goto_8
    invoke-virtual {v5, v6}, Lkff;->c(I)V

    if-eqz v8, :cond_d

    iget v6, p2, Lkfh;->b:I

    goto :goto_9

    :cond_d
    const/4 v6, 0x1

    :goto_9
    invoke-virtual {v5, v6}, Lkff;->b(I)V

    if-eqz v9, :cond_e

    iget v6, p2, Lkfh;->d:I

    goto :goto_a

    :cond_e
    const/4 v6, 0x1

    :goto_a
    invoke-virtual {v5, v6}, Lkff;->e(I)V

    iget v6, p2, Lkfh;->b:I

    if-eq v6, v3, :cond_f

    const/4 v2, 0x0

    goto :goto_b

    :cond_f
    :goto_b
    const/4 v3, 0x0

    if-eqz v6, :cond_17

    invoke-virtual {v5, v2}, Lkff;->d(Z)V

    invoke-virtual {v5}, Lkff;->a()Lkfh;

    move-result-object v2

    move-object v5, p1

    check-cast v5, Lkgo;

    iget-object v5, v5, Lkgo;->a:Lkhd;

    invoke-virtual {v5, v2, v1}, Lkhd;->c(Lkfh;Z)Lnou;

    move-result-object v2

    iget v5, p2, Lkfh;->c:I

    iget-boolean v6, p0, Lggm;->h:Z

    const/4 v10, 0x2

    if-eqz v6, :cond_14

    iget-object v6, p0, Lggm;->i:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_d

    :cond_10
    if-eq v5, v10, :cond_11

    goto :goto_d

    :cond_11
    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcbw;

    invoke-virtual {v5}, Lcbw;->c()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lggm;->b:Lkaq;

    const-string v6, "Too much motion. Not safe to skip Af lock."

    invoke-interface {v5, v6}, Lkaq;->b(Ljava/lang/String;)V

    goto :goto_d

    :cond_12
    new-instance v3, Lggc;

    invoke-direct {v3}, Lggc;-><init>()V

    iget-object v5, p0, Lggm;->b:Lkaq;

    const-string v6, "Waiting for Af to converge."

    invoke-interface {v5, v6}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lggm;->j:Lgfz;

    invoke-virtual {v5, v3}, Lgfz;->n(Lkfg;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_c
    :try_start_2
    iget-boolean v5, v3, Lggc;->a:Z

    if-eqz v5, :cond_13

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_c

    :cond_13
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, v3, Lggc;->b:Ljava/lang/Long;

    iget-object v6, p0, Lggm;->b:Lkaq;

    const-string v11, "Done waiting for Af to converge."

    invoke-interface {v6, v11}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v6, p0, Lggm;->b:Lkaq;

    const-string v11, "Remove af convergence listener."

    invoke-interface {v6, v11}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lggm;->j:Lgfz;

    invoke-virtual {v6, v3}, Lgfz;->o(Lkfg;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v5

    goto :goto_d

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_7
    iget-object p2, p0, Lggm;->b:Lkaq;

    const-string v0, "Remove af convergence listener."

    invoke-interface {p2, v0}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lggm;->j:Lgfz;

    invoke-virtual {p2, v3}, Lgfz;->o(Lkfg;)V

    throw p1

    :cond_14
    :goto_d
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lggm;->b:Lkaq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Safe to skip waiting for AF lock. converged frame number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lkaq;->b(Ljava/lang/String;)V

    move-wide v2, v0

    goto/16 :goto_e

    :cond_15
    iget-boolean v3, p0, Lggm;->f:Z

    if-eqz v3, :cond_16

    if-eqz v7, :cond_16

    iget p2, p2, Lkfh;->c:I
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne p2, v10, :cond_16

    :try_start_8
    iget p2, p0, Lggm;->g:I

    int-to-long v5, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, p2}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkeg;

    iget-wide v0, p2, Lkeg;->c:J
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-wide v2, v0

    goto :goto_e

    :catch_0
    move-exception p2

    :try_start_9
    iget-object p2, p0, Lggm;->b:Lkaq;

    iget v2, p0, Lggm;->g:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms caught when waiting for AF lock. Locking AF again immediately."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lker;->a()Lkdz;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lkhs;

    iput-object v1, v2, Lkhs;->b:Ljava/lang/Integer;

    check-cast p2, Lkhs;

    invoke-virtual {p2}, Lkhs;->d()Lkht;

    move-result-object p2

    invoke-interface {p1, p2}, Lker;->h(Lkea;)Lnou;

    invoke-interface {p1}, Lker;->a()Lkdz;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lkhs;

    iput-object v0, v1, Lkhs;->b:Ljava/lang/Integer;

    check-cast p2, Lkhs;

    invoke-virtual {p2}, Lkhs;->d()Lkht;

    move-result-object p2

    invoke-interface {p1, p2}, Lker;->h(Lkea;)Lnou;

    move-result-object p2

    invoke-interface {p2}, Lnou;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkeg;

    iget-wide v0, p2, Lkeg;->c:J

    move-wide v2, v0

    goto :goto_e

    :cond_16
    invoke-interface {v2}, Lnou;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkeg;

    iget-wide v0, p2, Lkeg;->c:J

    move-wide v2, v0

    :goto_e
    iget-object p2, p0, Lggm;->b:Lkaq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3A lock acquired at frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkaq;->b(Ljava/lang/String;)V

    new-instance p2, Lggn;

    move-object v0, p2

    move-object v1, p1

    move v5, v8

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lggn;-><init>(Lker;JZZZ)V
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    iget-object p1, p0, Lggm;->a:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-object p2

    :cond_17
    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_10

    :catch_1
    move-exception p1

    goto :goto_f

    :catch_2
    move-exception p1

    :goto_f
    :try_start_b
    new-instance p2, Ljava/lang/InterruptedException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to acquire 3A lock. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_10
    iget-object p2, p0, Lggm;->a:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    goto :goto_12

    :goto_11
    throw p1

    :goto_12
    goto :goto_11
.end method
