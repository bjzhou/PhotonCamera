.class public final synthetic Lglv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Lglx;

.field public final synthetic b:Lgmy;

.field public final synthetic c:Lsui;

.field public final synthetic d:Lsuu;

.field public final synthetic e:Lsuu;

.field public final synthetic f:Lpdh;


# direct methods
.method public synthetic constructor <init>(Lglx;Lgmy;Lsui;Lsuu;Lsuu;Lpdh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Lglv;->e:Lsuu;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lglv;->b:Lgmy;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lglv;->a:Lglx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lglv;->d:Lsuu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lglv;->f:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lglv;->c:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 23

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-object v12, v3, Lgmy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v5, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v18, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4
    move-object v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    :try_start_0
    iget-object v2, v3, Lgmy;->s:Lrss;

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lgmy;->y:Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lmml;

    nop

    invoke-virtual {v4}, Lgqi;->a()Lnne;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v2, v6}, Lmml;->a(Lnne;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2}, Lows;->d(Lpci;)V

    :cond_1
    :goto_6
    iget-object v2, v3, Lgmy;->j:Lgsw;

    nop

    nop

    nop

    invoke-virtual {v4}, Lgqi;->a()Lnne;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lgmy;->p:Lgqg;

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v3, Lgmy;->g:Lgqc;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Lgsw;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v6

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iput-object v3, v2, Lgsw;->n:Lgmy;

    nop

    nop

    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v6, v2, Lgsw;->p:Lhif;

    nop

    nop

    invoke-virtual {v6, v4}, Lhif;->f(Lnne;)Lgyw;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, v2, Lgsw;->j:Lgyw;

    nop

    nop

    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v2, Lgsw;->f:Lgsy;

    nop

    nop

    nop

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lgsw;->o:Lhoh;

    nop

    nop

    sget-object v7, Lhly;->an:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Lhoh;->p(Lhmn;)Z

    move-result v6

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v5, Lgqg;->d:Lozg;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lozg;->d()Z

    move-result v6

    nop

    if-eqz v6, :cond_3

    nop

    iget-object v6, v5, Lgqg;->c:Loze;

    nop

    nop

    nop

    nop

    sget-object v8, Loze;->d:Loze;

    nop

    nop

    if-ne v6, v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Lrbf;

    nop

    nop

    nop

    invoke-direct {v6, v7}, Lrbf;-><init>([C)V

    iget-object v8, v2, Lgsw;->b:Lowu;

    nop

    invoke-virtual {v6, v8}, Lrbf;->i(Ljava/util/concurrent/Executor;)V

    const-string v8, "VideoRecordingEarlyStoppedWarning"

    nop

    nop

    nop

    nop

    iput-object v8, v6, Lrbf;->d:Ljava/lang/Object;

    nop

    invoke-virtual {v6, v14}, Lrbf;->h(Z)V

    iget-object v8, v2, Lgsw;->o:Lhoh;

    nop

    sget-object v9, Lhly;->ao:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lhoh;->p(Lhmn;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_2

    nop

    sget-object v8, Lmmw;->f:Lmmw;

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_2
    sget-object v8, Lmmw;->e:Lmmw;

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v6, v8}, Lrbf;->j(Lmmw;)V

    new-instance v8, Lgpt;

    nop

    nop

    const/16 v9, 0xe

    nop

    nop

    nop

    invoke-direct {v8, v2, v9}, Lgpt;-><init>(Ljava/lang/Object;I)V

    iput-object v8, v6, Lrbf;->b:Ljava/lang/Object;

    nop

    nop

    new-instance v8, Lgpt;

    nop

    nop

    nop

    nop

    nop

    const/16 v9, 0x11

    nop

    nop

    nop

    invoke-direct {v8, v2, v9}, Lgpt;-><init>(Ljava/lang/Object;I)V

    iput-object v8, v6, Lrbf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v6}, Lrbf;->g()Lgsy;

    move-result-object v6

    nop

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v6, v2, Lgsw;->o:Lhoh;

    nop

    nop

    sget-object v8, Lhly;->al:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v8}, Lhoh;->p(Lhmn;)Z

    move-result v6

    nop

    if-eqz v6, :cond_4

    nop

    nop

    nop

    iget-object v6, v2, Lgsw;->g:Lgsy;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v6, v5, Lgqg;->s:Z

    nop

    if-eqz v6, :cond_6

    nop

    nop

    new-instance v15, Lrbf;

    nop

    nop

    invoke-direct {v15, v7}, Lrbf;-><init>([C)V

    iget-object v6, v2, Lgsw;->b:Lowu;

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v6}, Lrbf;->i(Ljava/util/concurrent/Executor;)V

    const-string v6, "60To30FpsThrottle"

    nop

    iput-object v6, v15, Lrbf;->d:Ljava/lang/Object;

    nop

    invoke-virtual {v15, v14}, Lrbf;->h(Z)V

    iget-object v6, v2, Lgsw;->c:Lprb;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v6, v6, Lprb;->t:Z

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_5

    nop

    nop

    iget-object v6, v5, Lgqg;->c:Loze;

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Loze;->d:Loze;

    nop

    if-ne v6, v7, :cond_5

    nop

    nop

    nop

    iget-object v6, v5, Lgqg;->d:Lozg;

    nop

    nop

    nop

    invoke-virtual {v6}, Lozg;->d()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_5

    nop

    sget-object v6, Lmmw;->d:Lmmw;

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_5
    sget-object v6, Lmmw;->e:Lmmw;

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v15, v6}, Lrbf;->j(Lmmw;)V

    new-instance v11, Las;

    nop

    nop

    const/16 v10, 0x12

    nop

    nop

    nop

    nop

    nop

    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    move-object v6, v11

    nop

    nop

    nop

    move-object v7, v2

    nop

    nop

    nop

    nop

    nop

    move-object v8, v5

    nop

    nop

    nop

    nop

    nop

    move-object v9, v13

    nop

    nop

    move-object v0, v11

    nop

    nop

    nop

    move-object/from16 v11, v16

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v6 .. v11}, Las;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iput-object v0, v15, Lrbf;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Las;

    nop

    nop

    const/16 v10, 0x13

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    move-object v7, v2

    nop

    nop

    nop

    nop

    nop

    move-object v8, v5

    nop

    nop

    nop

    move-object v9, v13

    nop

    nop

    invoke-direct/range {v6 .. v11}, Las;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iput-object v0, v15, Lrbf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Lrbf;->g()Lgsy;

    move-result-object v0

    nop

    nop

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    nop

    nop

    :cond_6
    invoke-virtual {v2, v5}, Lgsw;->g(Lgqg;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_7

    nop

    iget-object v0, v2, Lgsw;->e:Lgsy;

    nop

    nop

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_9
    iget-object v0, v2, Lgsw;->d:Lgsy;

    nop

    nop

    nop

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v0

    nop

    iput-object v0, v2, Lgsw;->k:Lryb;

    nop

    nop

    nop

    nop

    iget-object v0, v2, Lgsw;->k:Lryb;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ge v6, v4, :cond_9

    nop

    nop

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lgsy;

    nop

    new-instance v8, Lqas;

    nop

    nop

    nop

    invoke-direct {v8}, Lqas;-><init>()V

    iget-object v9, v7, Lgsy;->c:Lmmw;

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lqas;->g(Lmmw;)V

    iget-object v9, v7, Lgsy;->d:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lqas;->f(Ljava/lang/Runnable;)V

    iget-object v9, v7, Lgsy;->e:Ljava/lang/Runnable;

    nop

    invoke-virtual {v8, v9}, Lqas;->e(Ljava/lang/Runnable;)V

    iget-object v9, v7, Lgsy;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-virtual {v8, v9}, Lqas;->c(Ljava/util/concurrent/Executor;)V

    iget-object v9, v7, Lgsy;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lqas;->d(Ljava/lang/String;)V

    invoke-virtual {v8}, Lqas;->a()Lmmz;

    move-result-object v8

    nop

    iput-object v8, v7, Lgsy;->a:Lmmz;

    nop

    nop

    nop

    iget-object v8, v7, Lgsy;->i:Lgsx;

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    sget-object v9, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->OeijoCITnICIed:Ljava/lang/String;

    nop

    iget-object v10, v7, Lgsy;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    nop

    invoke-interface {v8, v5}, Lgsx;->a(Lgqg;)Lmmw;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iput-object v8, v7, Lgsy;->b:Lmmw;

    nop

    nop

    nop

    nop

    iget-object v8, v7, Lgsy;->a:Lmmz;

    nop

    nop

    nop

    nop

    new-instance v10, Lqas;

    nop

    nop

    nop

    invoke-direct {v10, v8}, Lqas;-><init>(Lmmz;)V

    iget-object v8, v7, Lgsy;->b:Lmmw;

    nop

    nop

    nop

    invoke-virtual {v10, v8}, Lqas;->g(Lmmw;)V

    invoke-virtual {v10, v9}, Lqas;->d(Ljava/lang/String;)V

    invoke-virtual {v10}, Lqas;->a()Lmmz;

    move-result-object v8

    nop

    nop

    iput-object v8, v7, Lgsy;->a:Lmmz;

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lgsy;->b:Lmmw;

    nop

    :cond_8
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    :cond_9
    iget-object v0, v2, Lgsw;->k:Lryb;

    nop

    nop

    nop

    nop

    new-instance v2, Lgfl;

    nop

    nop

    nop

    nop

    const/16 v4, 0x9

    nop

    nop

    invoke-direct {v2, v4}, Lgfl;-><init>(I)V

    invoke-static {v0, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object v0, v3, Lgmy;->B:Lgoi;

    nop

    nop

    nop

    iget-object v2, v3, Lgmy;->p:Lgqg;

    nop

    invoke-virtual {v0, v2}, Lgoi;->b(Lgqg;)V

    iget-object v0, v3, Lgmy;->r:Lgqr;

    nop

    iget-object v2, v3, Lgmy;->p:Lgqg;

    nop

    nop

    invoke-interface {v0, v2}, Lgqr;->b(Lgqg;)V

    iget-object v0, v3, Lgmy;->p:Lgqg;

    nop

    nop

    nop

    iget-object v0, v0, Lgqg;->R:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_a

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    iget-object v2, v3, Lgmy;->C:Lmly;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    const-wide/32 v4, 0x70800000

    nop

    nop

    nop

    nop

    nop

    iput-wide v4, v2, Lmly;->c:J

    nop

    nop

    iget-object v0, v3, Lgmy;->y:Lows;

    nop

    nop

    nop

    nop

    new-instance v2, Lgnw;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v14}, Lgnw;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Lows;->d(Lpci;)V

    :cond_a
    iget-object v0, v3, Lgmy;->h:Lmlw;

    nop

    new-instance v2, Lgmv;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lgmv;-><init>(Lgmy;)V

    invoke-virtual {v0, v2}, Lmlw;->b(Lmlv;)V

    iget-object v0, v3, Lgmy;->o:Lpdf;

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    sget-object v0, Lgmx;->a:Lgmx;

    nop

    nop

    invoke-virtual {v3, v0}, Lgmy;->m(Lgmx;)V

    monitor-exit v12

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v4, v13, Lglx;->e:Lgqi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    move-object/from16 v20, v8

    nop

    nop

    :goto_d
    :try_start_3
    monitor-exit v20

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto :goto_d

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_2
    move-exception v0

    nop

    :try_start_6
    monitor-exit v1

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    monitor-exit v6

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    nop

    nop

    nop

    nop

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v1, "Trying to init with state: "

    nop

    nop

    nop

    invoke-static {v4, v1}, Lmf;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v12

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/32 :goto_1d

    nop

    nop

    :goto_e
    iget-object v1, v0, Lglv;->c:Lsui;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xb

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    :goto_11
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_9
    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    throw v0

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_6
    move-exception v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v0, Lglv;->d:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v22, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    const/16 v17, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Lglv;->f:Lpdh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-enter v12

    nop

    nop

    nop

    :try_start_b
    iget-object v4, v3, Lgmy;->x:Lgmx;

    nop

    nop

    if-nez v4, :cond_b

    nop

    iget-object v4, v3, Lgmy;->o:Lpdf;

    nop

    nop

    nop

    const-string v5, "VideoCaptureSession#init"

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v4, v3, Lgmy;->A:Lgvo;

    nop

    nop

    iget-object v5, v3, Lgmy;->p:Lgqg;

    nop

    nop

    nop

    nop

    iget-object v6, v4, Lgvo;->a:Ltxm;

    nop

    check-cast v6, Lgrs;

    nop

    nop

    invoke-virtual {v6}, Lgrs;->b()Lgrr;

    move-result-object v6

    nop

    nop

    nop

    nop

    iput-object v6, v4, Lgvo;->b:Lgrr;

    nop

    nop

    iget-object v4, v4, Lgvo;->b:Lgrr;

    nop

    iget-object v6, v4, Lgrr;->c:Ljava/lang/Object;

    nop

    nop

    monitor-enter v6

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iget-object v7, v4, Lgrr;->P:Lgvg;

    nop

    sget-object v8, Lgst;->b:Lgst;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Lgvg;->k(Lgst;)Lows;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v4}, Lows;->d(Lpci;)V

    iput-object v5, v4, Lgrr;->i:Lgqg;

    nop

    nop

    nop

    nop

    iget-object v7, v4, Lgrr;->f:Ltxm;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lgpv;

    nop

    nop

    nop

    invoke-virtual {v7}, Lgpv;->b()Lgpu;

    move-result-object v7

    nop

    new-instance v8, Lqek;

    nop

    nop

    iget-object v9, v5, Lgqg;->W:Liof;

    nop

    nop

    iget-object v9, v9, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lpoh;

    nop

    invoke-virtual {v9}, Lpoh;->g()I

    move-result v9

    nop

    nop

    invoke-direct {v8, v9}, Lqek;-><init>(I)V

    new-instance v9, Lgvg;

    nop

    nop

    nop

    nop

    invoke-direct {v9, v8}, Lgvg;-><init>(Ljava/lang/Object;)V

    new-instance v8, Lfup;

    nop

    nop

    nop

    nop

    iget-object v15, v7, Lgpu;->g:Lknb;

    nop

    nop

    nop

    iget-object v10, v7, Lgpu;->b:Lfwj;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v11, v7, Lgpu;->c:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v5, Lgqg;->W:Liof;

    nop

    nop

    nop

    iget-object v14, v14, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    move-object/from16 v19, v14

    nop

    nop

    move-object v14, v8

    nop

    nop

    move-object/from16 v16, v9

    nop

    nop

    nop

    nop

    move-object/from16 v17, v10

    nop

    nop

    nop

    nop

    nop

    move/from16 v18, v11

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v14 .. v19}, Lfup;-><init>(Lknb;Lgvg;Lfwj;ZLpnu;)V

    iput-object v8, v7, Lgpu;->f:Lfup;

    nop

    iget-object v8, v7, Lgpu;->d:Lhsc;

    nop

    nop

    invoke-virtual {v8}, Lhsc;->b()V

    new-instance v8, Lgpt;

    nop

    const/4 v14, 0x0

    nop

    invoke-direct {v8, v7, v14}, Lgpt;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lowu;->d()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_c

    nop

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_c
    iget-object v9, v7, Lgpu;->e:Landroid/os/Handler;

    nop

    nop

    invoke-virtual {v9, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    iput-object v7, v4, Lgrr;->w:Lgpu;

    nop

    nop

    nop

    nop

    new-instance v7, Lhsi;

    nop

    invoke-direct {v7}, Lhsi;-><init>()V

    iput-object v7, v4, Lgrr;->y:Lhsi;

    nop

    nop

    nop

    iget-object v7, v4, Lgrr;->R:Lhdu;

    nop

    nop

    nop

    nop

    new-instance v8, Lfvw;

    nop

    nop

    nop

    iget-object v9, v7, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v10, v7, Lhdu;->b:Ljava/lang/Object;

    nop

    invoke-interface {v10}, Lgoe;->m()Z

    move-result v10

    nop

    nop

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v5, Lgqg;->W:Liof;

    nop

    iget-object v10, v10, Liof;->a:Ljava/lang/Object;

    nop

    nop

    iget-object v11, v7, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v15, v5, Lgqg;->a:Lpnx;

    nop

    nop

    nop

    iget-object v7, v7, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lgoe;->a()Lnne;

    move-result-object v21

    nop

    move-object/from16 v16, v9

    nop

    nop

    nop

    check-cast v16, Lmjv;

    nop

    nop

    nop

    nop

    nop

    move-object v7, v15

    nop

    nop

    nop

    move-object v15, v8

    nop

    nop

    nop

    move-object/from16 v18, v10

    nop

    move-object/from16 v19, v11

    nop

    move-object/from16 v20, v7

    nop

    invoke-direct/range {v15 .. v21}, Lfvw;-><init>(Lmjv;Ljava/lang/Boolean;Lpnu;Loyd;Lpnx;Lnne;)V

    iput-object v8, v4, Lgrr;->z:Lfvw;

    nop

    nop

    new-instance v7, Loxv;

    nop

    nop

    nop

    const/16 v8, 0x5a

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    invoke-direct {v7, v8}, Loxv;-><init>(Ljava/lang/Object;)V

    iget-object v8, v4, Lgrr;->P:Lgvg;

    nop

    nop

    nop

    nop

    sget-object v9, Lgst;->b:Lgst;

    nop

    nop

    invoke-virtual {v8, v9}, Lgvg;->k(Lgst;)Lows;

    move-result-object v8

    nop

    nop

    iget-object v9, v4, Lgrr;->D:Loyn;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Lstd;->a:Lstd;

    nop

    nop

    invoke-interface {v7, v9, v10}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Lows;->d(Lpci;)V

    new-instance v8, Lkta;

    nop

    nop

    nop

    iget-object v9, v4, Lgrr;->J:Lpiz;

    nop

    nop

    iget-object v9, v9, Lpiz;->a:Lpnv;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lgqg;->W:Liof;

    nop

    iget-object v5, v5, Liof;->a:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v10, v4, Lgrr;->E:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-direct {v8, v7, v9, v5, v10}, Lkta;-><init>(Loyn;Lpnv;Lpnu;Ljava/util/concurrent/Executor;)V

    iput-object v8, v4, Lgrr;->A:Lkta;

    nop

    nop

    nop

    nop

    iput-object v7, v4, Lgrr;->x:Loyn;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v4, Lgrr;->M:Lnjd;

    nop

    iget-object v1, v4, Lgrr;->c:Ljava/lang/Object;

    nop

    monitor-enter v1

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    iput-object v2, v4, Lgrr;->q:Landroid/view/Surface;

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v4}, Lgrr;->a()V

    monitor-exit v6

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    iget-object v1, v3, Lgmy;->A:Lgvo;

    nop

    nop

    iget-object v1, v1, Lgvo;->b:Lgrr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lgrr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    iget-object v10, v1, Lgrr;->j:Lphh;

    nop

    nop

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v1, Lgrr;->k:Lphh;

    nop

    nop

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v1, Lgrr;->i:Lgqg;

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v1, Lgrr;->L:Lpik;

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Lgrr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v8

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    iget-object v7, v1, Lgrr;->w:Lgpu;

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lgrr;->P:Lgvg;

    nop

    sget-object v5, Lgst;->b:Lgst;

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lgvg;->k(Lgst;)Lows;

    move-result-object v4

    nop

    nop

    nop

    nop

    new-instance v5, Lgrp;

    nop

    nop

    nop

    invoke-direct {v5, v1}, Lgrp;-><init>(Lgrr;)V

    invoke-virtual {v7, v5}, Lgpu;->d(Lpuq;)Lpci;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lows;->d(Lpci;)V

    iget-object v4, v1, Lgrr;->P:Lgvg;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lgst;->b:Lgst;

    nop

    nop

    invoke-virtual {v4, v5}, Lgvg;->k(Lgst;)Lows;

    move-result-object v4

    nop

    nop

    nop

    iget-object v5, v1, Lgrr;->z:Lfvw;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v5}, Lgpu;->d(Lpuq;)Lpci;

    move-result-object v5

    nop

    nop

    invoke-virtual {v4, v5}, Lows;->d(Lpci;)V

    iget-object v4, v1, Lgrr;->P:Lgvg;

    nop

    nop

    nop

    sget-object v5, Lgst;->b:Lgst;

    nop

    invoke-virtual {v4, v5}, Lgvg;->k(Lgst;)Lows;

    move-result-object v4

    nop

    iget-object v5, v1, Lgrr;->A:Lkta;

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v5}, Lgpu;->d(Lpuq;)Lpci;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lows;->d(Lpci;)V

    iget-object v4, v1, Lgrr;->F:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_d

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lpuq;

    nop

    iget-object v6, v1, Lgrr;->P:Lgvg;

    nop

    nop

    nop

    nop

    sget-object v14, Lgst;->b:Lgst;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v14}, Lgvg;->k(Lgst;)Lows;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v5}, Lgpu;->d(Lpuq;)Lpci;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v6, v5}, Lows;->d(Lpci;)V

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    :cond_d
    iget-object v4, v1, Lgrr;->i:Lgqg;

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v4, Lgqg;->K:Z

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    nop

    nop

    nop

    iget-object v4, v1, Lgrr;->C:Lrss;

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v4, v1, Lgrr;->P:Lgvg;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lgst;->b:Lgst;

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lgvg;->k(Lgst;)Lows;

    move-result-object v14

    nop

    nop

    iget-object v4, v1, Lgrr;->d:Lgqf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lgqf;->a()Lgqc;

    move-result-object v4

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lgqc;->j:Loyn;

    nop

    nop

    new-instance v4, Lfvh;

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, v0, Lglv;->e:Lsuu;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lfxd;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    :goto_1e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_10

    nop

    :goto_21
    invoke-virtual {v3}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v1}, Lsui;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object/from16 v19, v4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_24
    check-cast v1, Lnjd;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0, v3, v2}, Lfxd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_27
    move-object/from16 v9, v18

    nop

    nop

    nop

    nop

    nop

    :try_start_12
    invoke-direct/range {v4 .. v9}, Lfvh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    sget-object v4, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    move-object/from16 v6, v19

    nop

    nop

    nop

    nop

    move-object/from16 v5, v22

    nop

    nop

    invoke-interface {v5, v6, v4}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v4}, Lows;->d(Lpci;)V

    goto :goto_28

    nop

    nop

    nop

    nop

    :cond_f
    move-object/from16 v20, v8

    nop

    nop

    nop

    move-object v0, v9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    monitor-exit v20

    nop

    nop

    nop

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-virtual {v0, v10}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v4

    nop

    nop

    const/4 v14, 0x1

    nop

    invoke-virtual {v0, v4, v14}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, v1, Lgrr;->u:Lpgh;

    nop

    nop

    iget-boolean v5, v15, Lgqg;->H:Z

    nop

    if-eqz v5, :cond_10

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lgrr;->Q:Loiq;

    nop

    nop

    nop

    iget-object v6, v0, Lpik;->a:Lpia;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lpia;->c()Lpnu;

    move-result-object v6

    nop

    nop

    iget-object v7, v1, Lgrr;->x:Loyn;

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lqrg;->G(Ljava/lang/Object;)V

    iget-object v8, v1, Lgrr;->N:Lhoh;

    nop

    nop

    nop

    invoke-static {v6, v4, v10, v7, v8}, Lnrs;->b(Lpnu;Lpgh;Lphh;Loyd;Lhoh;)Lnrs;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Loiq;->b(Lnrs;)Lnrr;

    move-result-object v5

    nop

    nop

    iget-object v6, v1, Lgrr;->M:Lnjd;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v6}, Lnrr;->l(Lnjd;)Lpci;

    iput-object v5, v1, Lgrr;->p:Lnrr;

    nop

    nop

    nop

    :cond_10
    new-instance v9, Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9}, Lsuu;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v6, Lgrn;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v1, v5, v9, v4}, Lgrn;-><init>(Lgrr;Ljava/util/concurrent/atomic/AtomicInteger;Lsuu;Lpgh;)V

    invoke-interface {v4, v6}, Lpgh;->l(Lpgg;)V

    iget-object v5, v1, Lgrr;->P:Lgvg;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lgst;->b:Lgst;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Lgvg;->k(Lgst;)Lows;

    move-result-object v5

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lgrr;->y:Lhsi;

    nop

    nop

    nop

    new-instance v7, Lgro;

    nop

    invoke-direct {v7, v1, v9}, Lgro;-><init>(Lgrr;Lsuu;)V

    invoke-virtual {v6, v7}, Lhsi;->c(Lpgb;)Lpci;

    move-result-object v6

    nop

    nop

    invoke-virtual {v5, v6}, Lows;->d(Lpci;)V

    iget-boolean v5, v15, Lgqg;->L:Z

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_11

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lgrr;->B:Lgqy;

    nop

    nop

    nop

    nop

    nop

    iput-object v4, v5, Lgqy;->d:Lpgh;

    nop

    iput-object v10, v5, Lgqy;->e:Lphh;

    nop

    nop

    nop

    nop

    iget-boolean v5, v15, Lgqg;->O:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_11

    nop

    invoke-virtual {v1, v4, v10}, Lgrr;->b(Lpgh;Lphh;)V

    :cond_11
    iget-boolean v4, v15, Lgqg;->s:Z

    nop

    nop

    nop

    nop

    if-nez v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v15, Lgqg;->r:Z

    nop

    if-eqz v4, :cond_12

    nop

    goto :goto_29

    nop

    nop

    :cond_12
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    iget-object v5, v15, Lgqg;->p:Landroid/util/Range;

    nop

    new-instance v6, Lpha;

    nop

    nop

    invoke-direct {v6, v4, v5}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v4, Lsbt;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v6}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_13
    :goto_29
    sget-object v4, Lsbn;->a:Lsbn;

    nop

    :goto_2a
    invoke-virtual {v0, v11, v4}, Lpik;->f(Lphh;Ljava/util/Set;)Lpgo;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, v1, Lgrr;->r:Lpgo;

    nop

    nop

    nop

    iget-object v4, v1, Lgrr;->q:Landroid/view/Surface;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11, v4}, Lphh;->e(Landroid/view/Surface;)V

    iget-object v4, v1, Lgrr;->l:Lphh;

    nop

    if-eqz v4, :cond_14

    nop

    nop

    invoke-virtual {v0, v4}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iput-object v4, v1, Lgrr;->s:Lpgo;

    nop

    nop

    nop

    :cond_14
    iget-object v4, v1, Lgrr;->m:Lphh;

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_17

    nop

    invoke-virtual {v0, v4}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5, v6}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v5

    nop

    nop

    nop

    iput-object v5, v1, Lgrr;->v:Lpgh;

    nop

    nop

    nop

    iget-boolean v5, v15, Lgqg;->O:Z

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_15

    nop

    nop

    iget-object v5, v1, Lgrr;->v:Lpgh;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, v4}, Lgrr;->b(Lpgh;Lphh;)V

    :cond_15
    iget-boolean v5, v15, Lgqg;->G:Z

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_17

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lgrr;->K:Lgoi;

    nop

    nop

    nop

    nop

    iget-object v7, v15, Lgqg;->B:Lpog;

    nop

    nop

    nop

    invoke-static {v7}, Lgoi;->f(Lpog;)Z

    move-result v7

    nop

    nop

    if-nez v7, :cond_16

    nop

    goto :goto_2b

    nop

    :cond_16
    iget-object v5, v5, Lgoi;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_17

    nop

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lfdo;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lfdo;->E()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_17

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v5, v1, Lgrr;->v:Lpgh;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lgff;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v1, v4, v6}, Lgff;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v5, v7}, Lpgh;->l(Lpgg;)V

    :cond_17
    iget-object v4, v1, Lgrr;->n:Lphh;

    nop

    nop

    nop

    if-eqz v4, :cond_18

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v4

    nop

    invoke-virtual {v0, v4}, Lpik;->a(Lpgo;)Lpci;

    move-result-object v4

    nop

    iput-object v4, v1, Lgrr;->G:Lpci;

    nop

    nop

    nop

    :cond_18
    iget-object v4, v1, Lgrr;->o:Lphh;

    nop

    nop

    if-eqz v4, :cond_19

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v4

    nop

    invoke-virtual {v0, v4}, Lpik;->a(Lpgo;)Lpci;

    move-result-object v0

    nop

    iput-object v0, v1, Lgrr;->H:Lpci;

    nop

    nop

    nop

    :cond_19
    const/4 v0, 0x0

    nop

    nop

    nop

    iput-boolean v0, v1, Lgrr;->I:Z

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    iget-object v4, v3, Lgmy;->E:Lgnj;

    nop

    nop

    nop

    iget-object v0, v3, Lgmy;->p:Lgqg;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lgqg;->W:Liof;

    nop

    nop

    nop

    iget-object v6, v0, Liof;->a:Ljava/lang/Object;

    nop

    iget-object v0, v3, Lgmy;->z:Lknb;

    nop

    nop

    nop

    iget-object v7, v0, Lknb;->a:Loxv;

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Loyg;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v1}, Loyg;-><init>(Ljava/lang/Object;)V

    iget-object v1, v3, Lgmy;->p:Lgqg;

    nop

    nop

    iget-boolean v2, v1, Lgqg;->O:Z

    nop

    nop

    nop

    nop

    iget-boolean v10, v1, Lgqg;->H:Z

    nop

    nop

    const/4 v11, 0x3

    nop

    nop

    nop

    move-object v5, v3

    nop

    nop

    nop

    nop

    move-object v1, v9

    nop

    nop

    nop

    nop

    move v9, v2

    nop

    nop

    invoke-virtual/range {v4 .. v11}, Lgnj;->a(Lfuq;Lpnu;Loyd;Loyd;ZZI)Lfuu;

    move-result-object v2

    nop

    iget-object v4, v3, Lgmy;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lgmy;->f:Ljava/util/List;

    nop

    iget-object v5, v3, Lgmy;->i:Lgup;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lgmy;->F:Lgvg;

    nop

    nop

    nop

    sget-object v5, Lgst;->b:Lgst;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Lgvg;->k(Lgst;)Lows;

    move-result-object v4

    nop

    nop

    nop

    iput-object v4, v3, Lgmy;->y:Lows;

    nop

    nop

    iget-object v4, v3, Lgmy;->y:Lows;

    nop

    invoke-virtual {v4, v3}, Lows;->d(Lpci;)V

    iget-object v4, v3, Lgmy;->y:Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lows;->d(Lpci;)V

    iget-object v2, v3, Lgmy;->p:Lgqg;

    nop

    nop

    iget-boolean v2, v2, Lgqg;->K:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v0, v2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Lpdh;->a()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move/from16 v8, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v2, Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_30
    iget-object v13, v0, Lglv;->a:Lglx;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_11

    nop

    :goto_32
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_33
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_34
    move-object/from16 v20, v8

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_35
    iget-object v3, v0, Lglv;->b:Lgmy;

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

    :goto_36
    check-cast v3, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method
