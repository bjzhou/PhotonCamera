.class public final Lmoh;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lpge;

.field final synthetic b:Lmoi;


# direct methods
.method public constructor <init>(Lmoi;Lpge;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmoh;->b:Lmoi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lmoh;->a:Lpge;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cV()V
    .locals 18

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lpge;->close()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Lmoh;->b:Lmoi;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    goto/16 :goto_11

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v7

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop

    :cond_0
    invoke-virtual {v3}, Lpol;->l()V

    iget-object v2, v2, Lkkb;->l:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lhqr;

    nop

    nop

    nop

    invoke-direct {v3, v14, v15, v4}, Lhqr;-><init>(JI)V

    invoke-static {v2, v3}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    goto/16 :goto_9

    nop

    nop

    :cond_1
    iget-object v2, v2, Lmob;->k:Lmnx;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lmnx;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget v4, v2, Lmnx;->m:I

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    if-eq v4, v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lmnx;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    const/16 v4, 0x11bf

    nop

    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    const-string v4, "State check failed. Call startRecording() first."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface {v6}, Lprw;->close()V

    monitor-exit v3

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    :cond_2
    iget-object v4, v2, Lmnx;->n:Loza;

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_3

    nop

    nop

    sget-object v2, Lmnx;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0x11be

    nop

    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "onImageAvailable() No Camcorder available"

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface {v6}, Lprw;->close()V

    monitor-exit v3

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    :cond_3
    iget-object v4, v4, Loza;->a:Lpak;

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    sget-object v2, Lmnx;->a:Lsdb;

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    const/16 v4, 0x11bd

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "onImageAvailable() No VideoRecorder available"

    nop

    invoke-interface {v2, v4}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface {v6}, Lprw;->close()V

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    :cond_4
    iget v8, v2, Lmnx;->j:I

    nop

    nop

    nop

    nop

    iget-object v8, v2, Lmnx;->h:Loyn;

    nop

    invoke-interface {v8}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    check-cast v8, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    nop

    nop

    nop

    iget-object v10, v2, Lmnx;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v10

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget v11, v2, Lmnx;->j:I

    nop

    nop

    nop

    int-to-double v11, v11

    nop

    nop

    nop

    div-double/2addr v11, v8

    nop

    nop

    double-to-int v8, v11

    nop

    nop

    int-to-long v8, v8

    nop

    nop

    nop

    rem-long/2addr v14, v8

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v8, 0x0

    nop

    cmp-long v11, v14, v8

    nop

    nop

    nop

    if-eqz v11, :cond_6

    nop

    iget-object v8, v2, Lmnx;->k:Lsuu;

    nop

    nop

    nop

    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    :cond_5
    move v7, v5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_3
    monitor-exit v10

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v7, :cond_7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_4
    iget-object v7, v2, Lmnx;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    iget v9, v2, Lmnx;->j:I

    nop

    nop

    nop

    nop

    iget-object v10, v2, Lmnx;->b:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    nop

    const-wide/16 v12, 0x0

    nop

    nop

    cmp-long v10, v10, v12

    nop

    nop

    if-nez v10, :cond_8

    nop

    nop

    nop

    iget-object v7, v2, Lmnx;->b:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    nop

    nop

    nop

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v2, Lmnx;->b:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    :cond_8
    iget-object v10, v2, Lmnx;->b:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    nop

    nop

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-virtual {v12, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    int-to-long v12, v9

    nop

    nop

    div-long/2addr v7, v12

    nop

    nop

    add-long/2addr v7, v10

    nop

    nop

    nop

    :goto_6
    iget-object v9, v2, Lmnx;->o:Lhoh;

    nop

    nop

    iget-object v9, v2, Lmnx;->p:Lpnk;

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_9

    nop

    nop

    nop

    invoke-virtual {v9, v6, v7, v8}, Lpnk;->a(Lprw;J)V

    goto :goto_7

    nop

    nop

    nop

    :cond_9
    invoke-interface {v4, v6, v7, v8, v5}, Lpak;->o(Lprw;JZ)V

    :goto_7
    iget-object v4, v2, Lmnx;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v4, v2, Lmnx;->l:Lmqa;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_a

    nop

    nop

    nop

    iget-object v5, v2, Lmnx;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    nop

    iget-object v2, v2, Lmnx;->i:Lmqd;

    nop

    nop

    nop

    nop

    iget v2, v2, Lmqd;->e:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v9, v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v7, v8, v9, v10}, Lmqa;->b(JJ)V

    :cond_a
    :goto_8
    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v6}, Lprw;->close()V

    :goto_9
    invoke-interface {v0}, Lpge;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Lpge;->d()Lpro;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_b
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    const v0, 0x13

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v1

    nop

    :try_start_6
    iget-object v2, v0, Lmoh;->b:Lmoi;

    nop

    iget-object v2, v2, Lmoi;->d:Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_b

    nop

    nop

    nop

    sget-object v2, Lmoi;->a:Lsdb;

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    const/16 v3, 0x11d4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    const-string v3, "Frame server is not ready for recording"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    iget-object v0, v0, Lmoh;->a:Lpge;

    nop

    nop

    invoke-interface {v0}, Lpge;->close()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_b
    iget-object v2, v0, Lmoh;->a:Lpge;

    nop

    nop

    nop

    invoke-interface {v2}, Lpge;->c()Lpgo;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v2}, Lpgo;->d()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    if-le v2, v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lmoi;->a:Lsdb;

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    const/16 v4, 0x11d3

    nop

    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    const-string v4, "Doesn\'t expect more than 1 streams."

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_f

    nop

    nop

    nop

    :cond_c
    iget-object v2, v0, Lmoh;->a:Lpge;

    nop

    nop

    invoke-interface {v2}, Lpge;->c()Lpgo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpgo;->d()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-gtz v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lmoi;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v2, 0x11d2

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "This FrameStream doesn\'t have any streams."

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    :cond_d
    :goto_f
    iget-object v2, v0, Lmoh;->b:Lmoi;

    nop

    nop

    nop

    iget-object v2, v2, Lmoi;->z:Lmns;

    nop

    iget-object v4, v0, Lmoh;->a:Lpge;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpge;->d()Lpro;

    move-result-object v4

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lmns;->s:Lhoh;

    nop

    nop

    nop

    sget-object v2, Lhnu;->a:Lhmo;

    nop

    nop

    iget-object v2, v0, Lmoh;->b:Lmoi;

    nop

    nop

    iget-object v2, v2, Lmoi;->A:Lmob;

    nop

    iget-object v0, v0, Lmoh;->a:Lpge;

    nop

    invoke-interface {v0}, Lpge;->c()Lpgo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpgo;->d()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lphh;

    nop

    iget-object v6, v2, Lmob;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_1d

    nop

    nop

    nop

    iget-object v6, v2, Lmob;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    nop

    if-nez v6, :cond_e

    nop

    iget-object v6, v2, Lmob;->p:Lsui;

    nop

    nop

    invoke-interface {v6}, Lsui;->isDone()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_e

    nop

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    :cond_e
    iget-object v6, v2, Lmob;->h:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    iget v8, v2, Lmob;->r:I

    nop

    iget v9, v2, Lmob;->s:I

    nop

    nop

    mul-int/2addr v8, v9

    nop

    nop

    div-int/lit16 v8, v8, 0x3e8

    nop

    nop

    nop

    nop

    nop

    int-to-long v8, v8

    nop

    nop

    cmp-long v6, v6, v8

    nop

    nop

    nop

    if-gez v6, :cond_f

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lmob;->h:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    invoke-interface {v0}, Lpge;->close()V

    goto/16 :goto_14

    nop

    nop

    :cond_f
    invoke-interface {v0, v4}, Lpge;->e(Lphh;)Lprw;

    move-result-object v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_10

    nop

    nop

    nop

    sget-object v2, Lmob;->a:Lsdb;

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    const/16 v3, 0x11cb

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    const-string v3, "onImageAvailable() ImageProxy is null"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface {v0}, Lpge;->close()V

    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :cond_10
    iget-object v7, v2, Lmob;->u:Lhoh;

    nop

    iget-object v7, v2, Lmob;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v14

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lphh;->d()Lpnx;

    move-result-object v4

    nop

    iget-object v7, v2, Lmob;->j:Ljava/lang/Object;

    nop

    monitor-enter v7

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iget-object v8, v2, Lmob;->m:Lmqh;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v2, Lmob;->n:Lmqc;

    nop

    iget-object v10, v8, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v10

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iget-object v11, v8, Lmqh;->k:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    nop

    if-eqz v11, :cond_1c

    nop

    nop

    nop

    iget-object v11, v8, Lmqh;->k:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    check-cast v11, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    nop

    nop

    const-wide/16 v16, 0x1

    nop

    nop

    nop

    nop

    add-long v11, v11, v16

    nop

    nop

    iget-object v8, v8, Lmqh;->k:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    nop

    nop

    nop

    invoke-virtual {v8, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v7

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-boolean v7, v2, Lmob;->q:Z

    nop

    nop

    if-eqz v7, :cond_1

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lmob;->t:Lkkb;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lpge;->d()Lpro;

    move-result-object v16

    nop

    nop

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v2, Lkkb;->x:I

    nop

    if-eq v7, v3, :cond_11

    nop

    nop

    nop

    sget-object v2, Lkkb;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xbb8

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "State check failed. Call startRecording() first."

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    nop

    nop

    :cond_11
    iget v7, v2, Lkkb;->n:I

    nop

    nop

    nop

    nop

    nop

    int-to-long v10, v7

    nop

    nop

    iget v12, v2, Lkkb;->u:I

    nop

    nop

    int-to-long v8, v12

    nop

    nop

    nop

    rem-long v8, v14, v8

    nop

    nop

    nop

    nop

    nop

    div-int/lit8 v13, v7, 0x2

    nop

    nop

    nop

    nop

    sub-int/2addr v7, v13

    nop

    nop

    nop

    add-int/lit8 v7, v7, -0x1

    nop

    nop

    move-object/from16 p0, v4

    nop

    nop

    nop

    nop

    nop

    int-to-long v3, v7

    nop

    cmp-long v3, v8, v3

    nop

    if-lez v3, :cond_12

    nop

    nop

    nop

    nop

    sub-int/2addr v12, v13

    nop

    nop

    int-to-long v3, v12

    nop

    nop

    nop

    cmp-long v3, v8, v3

    nop

    nop

    nop

    nop

    nop

    if-ltz v3, :cond_13

    nop

    nop

    nop

    nop

    nop

    :cond_12
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    :cond_13
    cmp-long v3, v14, v10

    nop

    if-ltz v3, :cond_15

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_14

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_14
    invoke-interface {v6}, Lprw;->close()V

    goto/16 :goto_9

    nop

    :cond_15
    :goto_10
    new-instance v3, Lpol;

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    invoke-direct {v3, v6, v4}, Lpol;-><init>(Lprw;I)V

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v6, v14, v4

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_16

    nop

    iget v5, v2, Lkkb;->n:I

    nop

    nop

    nop

    nop

    div-int/2addr v5, v4

    nop

    nop

    nop

    int-to-long v5, v5

    nop

    nop

    nop

    add-long/2addr v5, v14

    nop

    nop

    nop

    nop

    nop

    iget v7, v2, Lkkb;->u:I

    nop

    nop

    int-to-long v7, v7

    nop

    nop

    nop

    nop

    rem-long/2addr v5, v7

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    cmp-long v5, v5, v7

    nop

    nop

    if-nez v5, :cond_17

    nop

    nop

    nop

    nop

    :cond_16
    move-object v8, v2

    nop

    nop

    move-wide v9, v14

    nop

    nop

    nop

    nop

    nop

    move-object v11, v3

    nop

    nop

    move-object/from16 v12, v16

    nop

    nop

    nop

    move-object/from16 v13, p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v8 .. v13}, Lkkb;->a(JLpol;Lpro;Lpnx;)V

    :cond_17
    iget-object v5, v2, Lkkb;->l:Ljava/util/Set;

    nop

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :cond_18
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lkkc;

    nop

    nop

    nop

    iget-wide v7, v6, Lkkc;->b:J

    nop

    nop

    nop

    nop

    cmp-long v7, v14, v7

    nop

    nop

    nop

    nop

    if-ltz v7, :cond_18

    nop

    nop

    nop

    nop

    nop

    iget-wide v7, v6, Lkkc;->c:J

    nop

    nop

    cmp-long v7, v14, v7

    nop

    nop

    nop

    nop

    if-gtz v7, :cond_18

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lpol;->k()Lprw;

    move-result-object v13

    nop

    iget-object v7, v2, Lkkb;->e:Likv;

    nop

    nop

    nop

    iget-object v8, v6, Lkkc;->a:Linb;

    nop

    iget-wide v9, v6, Lkkc;->b:J

    nop

    sub-long v9, v14, v9

    nop

    nop

    nop

    sget-object v12, Lsxd;->c:Lsxd;

    nop

    nop

    nop

    nop

    nop

    long-to-int v10, v9

    nop

    nop

    move-object/from16 v9, p0

    nop

    move-object/from16 v11, v16

    nop

    nop

    nop

    invoke-interface/range {v7 .. v13}, Likv;->C(Linb;Lpnx;ILpro;Lsxd;Lprw;)V

    iget-wide v7, v6, Lkkc;->c:J

    nop

    nop

    cmp-long v7, v14, v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_18

    nop

    nop

    nop

    iget-object v7, v2, Lkkb;->e:Likv;

    nop

    nop

    nop

    nop

    iget-object v8, v6, Lkkc;->a:Linb;

    nop

    nop

    new-instance v9, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    invoke-interface {v7, v8, v9}, Likv;->x(Linb;Lcom/google/googlex/gcam/BurstSpec;)Z

    move-result v7

    nop

    nop

    nop

    nop

    if-nez v7, :cond_19

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Lkkb;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lscs;->b()Lsdo;

    move-result-object v7

    nop

    nop

    nop

    const/16 v8, 0xbb7

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    check-cast v7, Lscz;

    nop

    nop

    const-string v8, "Couldn\'t end burst payload, aborting shot."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lscz;->s(Ljava/lang/String;)V

    iget-object v7, v2, Lkkb;->e:Likv;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lkkc;->a:Linb;

    nop

    invoke-interface {v7, v6}, Likv;->m(Linb;)V

    goto/16 :goto_11

    nop

    nop

    :cond_19
    iget-object v7, v2, Lkkb;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v7

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    iget-object v8, v2, Lkkb;->l:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_1a

    nop

    sget-object v6, Lkkb;->a:Lsdb;

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0xbb6

    nop

    invoke-interface {v6, v8}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    nop

    check-cast v6, Lscz;

    nop

    nop

    nop

    const-string v8, "Shot has been removed."

    nop

    invoke-interface {v6, v8}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v7

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    :cond_1a
    iget-object v8, v2, Lkkb;->e:Likv;

    nop

    nop

    iget-object v9, v6, Lkkc;->a:Linb;

    nop

    nop

    nop

    nop

    invoke-interface {v8, v9}, Likv;->y(Linb;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-nez v8, :cond_1b

    nop

    sget-object v8, Lkkb;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->b()Lsdo;

    move-result-object v8

    nop

    const/16 v9, 0xbb5

    nop

    nop

    invoke-interface {v8, v9}, Lscz;->M(I)Lsdo;

    move-result-object v8

    nop

    nop

    check-cast v8, Lscz;

    nop

    const-string v9, "Couldn\'t end shot capture, aborting shot."

    nop

    nop

    invoke-interface {v8, v9}, Lscz;->s(Ljava/lang/String;)V

    iget-object v8, v2, Lkkb;->e:Likv;

    nop

    nop

    iget-object v6, v6, Lkkc;->a:Linb;

    nop

    invoke-interface {v8, v6}, Likv;->m(Linb;)V

    monitor-exit v7

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :cond_1b
    monitor-exit v7

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object v7, v2, Lkkb;->d:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    iget-wide v8, v6, Lkkc;->b:J

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8, v9}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lkkb;->k:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lkkb;->r:Lmqa;

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_18

    nop

    nop

    nop

    nop

    iget-object v7, v2, Lkkb;->b:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    nop

    nop

    nop

    iget-object v9, v2, Lkkb;->m:Lmqd;

    nop

    nop

    nop

    nop

    nop

    iget v9, v9, Lmqd;->e:I

    nop

    nop

    nop

    nop

    int-to-long v9, v9

    nop

    nop

    nop

    invoke-interface {v6, v7, v8, v9, v10}, Lmqa;->b(JJ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_14

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_d
    monitor-exit v10

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_1c
    :try_start_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    const-string v2, "unsupported speed up ratio"

    nop

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    monitor-exit v10

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0

    nop

    nop

    nop

    nop

    :cond_1d
    :goto_13
    invoke-interface {v0}, Lpge;->close()V

    :goto_14
    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    monitor-exit v1

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v1, Lmoi;->m:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, v0, Lmoh;->a:Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1f
    iget-object v0, v0, Lmoh;->a:Lpge;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_1c

    nop

    :goto_21
    if-eqz v1, :cond_1f

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public final cW(Lpro;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfyu;->a(Lpro;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmoi;->w:Lfyu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lmoh;->b:Lmoi;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
