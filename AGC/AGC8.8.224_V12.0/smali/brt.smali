.class public final Lbrt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lbro;
.implements Lcbb;


# instance fields
.field private A:I

.field private B:I

.field private final C:Lfkg;

.field public final a:Lbrq;

.field public final b:Lbrs;

.field public c:Lboq;

.field public d:Lbqb;

.field public e:Lbos;

.field public f:I

.field public g:I

.field public h:Lbry;

.field public i:Lbqf;

.field public j:Lbrr;

.field public k:I

.field public l:Z

.field public m:Lbqb;

.field public volatile n:Lbrp;

.field public volatile o:Z

.field public p:I

.field public final q:Lbsa;

.field public final r:Lnoc;

.field private final s:Ljava/util/List;

.field private final t:Laed;

.field private u:Ljava/lang/Thread;

.field private v:Lbqb;

.field private w:Ljava/lang/Object;

.field private x:Lbqo;

.field private volatile y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lbsa;Laed;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbrq;

    invoke-direct {v0}, Lbrq;-><init>()V

    iput-object v0, p0, Lbrt;->a:Lbrq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrt;->s:Ljava/util/List;

    invoke-static {}, Lfkg;->d()Lfkg;

    move-result-object v0

    iput-object v0, p0, Lbrt;->C:Lfkg;

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    iput-object v0, p0, Lbrt;->r:Lnoc;

    new-instance v0, Lbrs;

    invoke-direct {v0}, Lbrs;-><init>()V

    iput-object v0, p0, Lbrt;->b:Lbrs;

    iput-object p1, p0, Lbrt;->q:Lbsa;

    iput-object p2, p0, Lbrt;->t:Laed;

    return-void
.end method

.method private final g()I
    .locals 1

    iget-object v0, p0, Lbrt;->e:Lbos;

    invoke-virtual {v0}, Lbos;->ordinal()I

    move-result v0

    return v0
.end method

.method private final h()Lbrp;
    .locals 3

    iget v0, p0, Lbrt;->A:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Lbze;->x(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    return-object v2

    :pswitch_2
    new-instance v0, Lbss;

    iget-object v1, p0, Lbrt;->a:Lbrq;

    invoke-direct {v0, v1, p0}, Lbss;-><init>(Lbrq;Lbro;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lbrm;

    iget-object v1, p0, Lbrt;->a:Lbrq;

    invoke-virtual {v1}, Lbrq;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2, v1, p0}, Lbrm;-><init>(Ljava/util/List;Lbrq;Lbro;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lbso;

    iget-object v1, p0, Lbrt;->a:Lbrq;

    invoke-direct {v0, v1, p0}, Lbso;-><init>(Lbrq;Lbro;)V

    return-object v0

    :cond_0
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final i()V
    .locals 33

    move-object/from16 v1, p0

    :try_start_0
    iget-object v5, v1, Lbrt;->x:Lbqo;

    iget-object v0, v1, Lbrt;->w:Ljava/lang/Object;

    iget v6, v1, Lbrt;->B:I

    if-nez v0, :cond_0

    invoke-interface {v5}, Lbqo;->d()V
    :try_end_0
    .catch Lbsj; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    goto/16 :goto_f

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    iget-object v7, v1, Lbrt;->a:Lbrq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbrq;->b(Ljava/lang/Class;)Lbsl;

    move-result-object v7

    iget-object v8, v1, Lbrt;->i:Lbqf;

    const/4 v9, 0x4

    if-eq v6, v9, :cond_2

    iget-object v10, v1, Lbrt;->a:Lbrq;

    iget-boolean v10, v10, Lbrq;->q:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    :goto_1
    sget-object v11, Lbwp;->d:Lbqe;

    invoke-virtual {v8, v11}, Lbqf;->b(Lbqe;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :cond_4
    new-instance v8, Lbqf;

    invoke-direct {v8}, Lbqf;-><init>()V

    iget-object v11, v1, Lbrt;->i:Lbqf;

    invoke-virtual {v8, v11}, Lbqf;->c(Lbqf;)V

    sget-object v11, Lbwp;->d:Lbqe;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, Lbqf;->d(Lbqe;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object v10, v1, Lbrt;->c:Lboq;

    invoke-virtual {v10}, Lboq;->a()Lboy;

    move-result-object v10

    invoke-virtual {v10, v0}, Lboy;->a(Ljava/lang/Object;)Lbqq;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget v11, v1, Lbrt;->f:I

    iget v15, v1, Lbrt;->g:I

    iget-object v0, v7, Lbsl;->a:Laed;

    invoke-interface {v0}, Laed;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    invoke-static {v14}, Lbze;->v(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iget-object v0, v7, Lbsl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    const/4 v12, 0x0

    const/16 v18, 0x0

    :goto_3
    if-ge v12, v13, :cond_f

    iget-object v0, v7, Lbsl;->b:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lbru;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v0, v2, Lbru;->b:Laed;

    invoke-interface {v0}, Laed;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lbze;->v(Ljava/lang/Object;)V
    :try_end_4
    .catch Lbsj; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v19, v12

    move-object v12, v2

    move/from16 v20, v13

    move-object v13, v10

    move-object/from16 v21, v14

    move v14, v11

    move/from16 v22, v15

    move-object/from16 v16, v8

    move-object/from16 v17, v3

    :try_start_5
    invoke-virtual/range {v12 .. v17}, Lbru;->a(Lbqq;IILbqf;Ljava/util/List;)Lbsn;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v12, v2, Lbru;->b:Laed;

    invoke-interface {v12, v3}, Laed;->b(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lbsn;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v6, v9, :cond_6

    iget-object v12, v1, Lbrt;->a:Lbrq;

    invoke-virtual {v12, v3}, Lbrq;->a(Ljava/lang/Class;)Lbqj;

    move-result-object v12

    iget-object v13, v1, Lbrt;->c:Lboq;

    iget v14, v1, Lbrt;->f:I

    iget v15, v1, Lbrt;->g:I

    invoke-interface {v12, v13, v0, v14, v15}, Lbqj;->b(Landroid/content/Context;Lbsn;II)Lbsn;

    move-result-object v13

    move-object/from16 v29, v12

    goto :goto_4

    :cond_6
    move-object v13, v0

    const/16 v29, 0x0

    :goto_4
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-interface {v0}, Lbsn;->e()V

    :cond_7
    iget-object v0, v1, Lbrt;->a:Lbrq;

    iget-object v0, v0, Lbrq;->c:Lboq;

    invoke-virtual {v0}, Lboq;->a()Lboy;

    move-result-object v0

    iget-object v0, v0, Lboy;->c:Lbkc;

    invoke-interface {v13}, Lbsn;->b()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v0, v12}, Lbkc;->g(Ljava/lang/Class;)Lbqi;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lbrt;->a:Lbrq;

    iget-object v0, v0, Lbrq;->c:Lboq;

    invoke-virtual {v0}, Lboq;->a()Lboy;

    move-result-object v0

    iget-object v0, v0, Lboy;->c:Lbkc;

    invoke-interface {v13}, Lbsn;->b()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v0, v12}, Lbkc;->g(Ljava/lang/Class;)Lbqi;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lbqi;->b()I

    move-result v12

    goto :goto_5

    :cond_8
    new-instance v0, Lbow;

    invoke-interface {v13}, Lbsn;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2}, Lbow;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_9
    const/4 v12, 0x3

    const/4 v0, 0x0

    :goto_5
    iget-object v14, v1, Lbrt;->a:Lbrq;

    iget-object v15, v1, Lbrt;->m:Lbqb;

    invoke-virtual {v14}, Lbrq;->f()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v9

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v9, :cond_b

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v9

    move-object/from16 v9, v23

    check-cast v9, Lva;

    iget-object v9, v9, Lva;->b:Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move/from16 v9, v24

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_7
    iget-object v9, v1, Lbrt;->h:Lbry;

    const/4 v14, 0x1

    xor-int/2addr v4, v14

    invoke-virtual {v9, v4, v6, v12}, Lbry;->d(ZII)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v0, :cond_c

    add-int/lit8 v12, v12, -0x1

    packed-switch v12, :pswitch_data_0

    new-instance v4, Lbsp;

    goto :goto_8

    :pswitch_0
    new-instance v3, Lbrn;

    iget-object v4, v1, Lbrt;->m:Lbqb;

    iget-object v9, v1, Lbrt;->d:Lbqb;

    invoke-direct {v3, v4, v9}, Lbrn;-><init>(Lbqb;Lbqb;)V

    move/from16 v32, v6

    goto :goto_9

    :goto_8
    iget-object v9, v1, Lbrt;->a:Lbrq;

    invoke-virtual {v9}, Lbrq;->c()Lbsu;

    move-result-object v24

    iget-object v9, v1, Lbrt;->m:Lbqb;

    iget-object v12, v1, Lbrt;->d:Lbqb;

    iget v14, v1, Lbrt;->f:I

    iget v15, v1, Lbrt;->g:I
    :try_end_6
    .catch Lbsj; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v32, v6

    :try_start_7
    iget-object v6, v1, Lbrt;->i:Lbqf;

    move-object/from16 v23, v4

    move-object/from16 v25, v9

    move-object/from16 v26, v12

    move/from16 v27, v14

    move/from16 v28, v15

    move-object/from16 v30, v3

    move-object/from16 v31, v6

    invoke-direct/range {v23 .. v31}, Lbsp;-><init>(Lbsu;Lbqb;Lbqb;IILbqj;Ljava/lang/Class;Lbqf;)V

    move-object v3, v4

    :goto_9
    invoke-static {v13}, Lbsm;->d(Lbsn;)Lbsm;

    move-result-object v13

    iget-object v4, v1, Lbrt;->r:Lnoc;

    iput-object v3, v4, Lnoc;->a:Ljava/lang/Object;

    iput-object v0, v4, Lnoc;->c:Ljava/lang/Object;

    iput-object v13, v4, Lnoc;->b:Ljava/lang/Object;

    goto :goto_a

    :cond_c
    move/from16 v32, v6

    new-instance v0, Lbow;

    invoke-interface {v13}, Lbsn;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v2}, Lbow;-><init>(Ljava/lang/Class;)V

    throw v0

    :cond_d
    move/from16 v32, v6

    :goto_a
    iget-object v0, v2, Lbru;->a:Lbyg;

    invoke-interface {v0, v13, v8}, Lbyg;->a(Lbsn;Lbqf;)Lbsn;

    move-result-object v0

    move-object/from16 v18, v0

    move-object/from16 v2, v21

    goto :goto_c

    :catch_0
    move-exception v0

    move/from16 v32, v6

    goto :goto_b

    :catchall_0
    move-exception v0

    move/from16 v32, v6

    move-object v4, v0

    iget-object v0, v2, Lbru;->b:Laed;

    invoke-interface {v0, v3}, Laed;->b(Ljava/lang/Object;)Z

    throw v4
    :try_end_7
    .catch Lbsj; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    move/from16 v32, v6

    move/from16 v19, v12

    move/from16 v20, v13

    move-object/from16 v21, v14

    move/from16 v22, v15

    :goto_b
    move-object/from16 v2, v21

    :try_start_8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_c
    if-eqz v18, :cond_e

    goto :goto_d

    :cond_e
    add-int/lit8 v12, v19, 0x1

    move-object v14, v2

    move/from16 v13, v20

    move/from16 v15, v22

    move/from16 v6, v32

    const/4 v9, 0x4

    goto/16 :goto_3

    :cond_f
    move-object v2, v14

    :goto_d
    if-eqz v18, :cond_10

    :try_start_9
    iget-object v0, v7, Lbsl;->a:Laed;

    invoke-interface {v0, v2}, Laed;->b(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-interface {v10}, Lbqq;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v5}, Lbqo;->d()V
    :try_end_b
    .catch Lbsj; {:try_start_b .. :try_end_b} :catch_3

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_10
    :try_start_c
    new-instance v0, Lbsj;

    iget-object v3, v7, Lbsl;->c:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v3, v4}, Lbsj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v2, v14

    :goto_e
    :try_start_d
    iget-object v3, v7, Lbsl;->a:Laed;

    invoke-interface {v3, v2}, Laed;->b(Ljava/lang/Object;)Z

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_e
    invoke-interface {v10}, Lbqq;->b()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_f
    invoke-interface {v5}, Lbqo;->d()V

    throw v0
    :try_end_f
    .catch Lbsj; {:try_start_f .. :try_end_f} :catch_3

    :catch_3
    move-exception v0

    iget-object v2, v1, Lbrt;->v:Lbqb;

    iget v3, v1, Lbrt;->B:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lbsj;->b(Lbqb;ILjava/lang/Class;)V

    iget-object v2, v1, Lbrt;->s:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    :goto_f
    if-eqz v3, :cond_1b

    iget v0, v1, Lbrt;->B:I

    :try_start_10
    instance-of v2, v3, Lbsk;

    if-eqz v2, :cond_11

    move-object v2, v3

    check-cast v2, Lbsk;

    invoke-interface {v2}, Lbsk;->d()V

    :cond_11
    iget-object v2, v1, Lbrt;->r:Lnoc;

    invoke-virtual {v2}, Lnoc;->w()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v3}, Lbsm;->d(Lbsn;)Lbsm;

    move-result-object v3

    move-object v4, v3

    goto :goto_10

    :cond_12
    :goto_10
    invoke-direct/range {p0 .. p0}, Lbrt;->l()V

    iget-object v2, v1, Lbrt;->j:Lbrr;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :try_start_11
    move-object v5, v2

    check-cast v5, Lbsf;

    iput-object v3, v5, Lbsf;->e:Lbsn;

    move-object v3, v2

    check-cast v3, Lbsf;

    iput v0, v3, Lbsf;->k:I

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :try_start_12
    monitor-enter v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :try_start_13
    move-object v0, v2

    check-cast v0, Lbsf;

    iget-object v0, v0, Lbsf;->l:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    move-object v0, v2

    check-cast v0, Lbsf;

    iget-boolean v0, v0, Lbsf;->j:Z

    if-eqz v0, :cond_13

    move-object v0, v2

    check-cast v0, Lbsf;

    iget-object v0, v0, Lbsf;->e:Lbsn;

    invoke-interface {v0}, Lbsn;->e()V

    move-object v0, v2

    check-cast v0, Lbsf;

    invoke-virtual {v0}, Lbsf;->e()V

    monitor-exit v2

    goto/16 :goto_12

    :cond_13
    move-object v0, v2

    check-cast v0, Lbsf;

    iget-object v0, v0, Lbsf;->a:Lbse;

    invoke-virtual {v0}, Lbse;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v2

    check-cast v0, Lbsf;

    iget-boolean v0, v0, Lbsf;->f:Z

    if-nez v0, :cond_19

    move-object v0, v2

    check-cast v0, Lbsf;

    iget-object v6, v0, Lbsf;->e:Lbsn;

    move-object v0, v2

    check-cast v0, Lbsf;

    iget-boolean v7, v0, Lbsf;->c:Z

    move-object v0, v2

    check-cast v0, Lbsf;

    iget-object v8, v0, Lbsf;->b:Lbqb;

    move-object v0, v2

    check-cast v0, Lbsf;

    iget-object v9, v0, Lbsf;->m:Llij;

    new-instance v0, Lbsh;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lbsh;-><init>(Lbsn;ZLbqb;Llij;[B[B[B[B)V

    move-object v3, v2

    check-cast v3, Lbsf;

    iput-object v0, v3, Lbsf;->i:Lbsh;

    move-object v0, v2

    check-cast v0, Lbsf;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lbsf;->f:Z

    move-object v0, v2

    check-cast v0, Lbsf;

    iget-object v0, v0, Lbsf;->a:Lbse;

    invoke-virtual {v0}, Lbse;->c()Lbse;

    move-result-object v0

    invoke-virtual {v0}, Lbse;->a()I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    move-object v5, v2

    check-cast v5, Lbsf;

    invoke-virtual {v5, v3}, Lbsf;->d(I)V

    move-object v3, v2

    check-cast v3, Lbsf;

    iget-object v3, v3, Lbsf;->b:Lbqb;

    move-object v5, v2

    check-cast v5, Lbsf;

    iget-object v5, v5, Lbsf;->i:Lbsh;

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :try_start_14
    move-object v6, v2

    check-cast v6, Lbsf;

    iget-object v6, v6, Lbsf;->n:Llij;

    move-object v7, v2

    check-cast v7, Lbsf;

    invoke-virtual {v6, v7, v3, v5}, Llij;->j(Lbsf;Lbqb;Lbsh;)V

    invoke-virtual {v0}, Lbse;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbsd;

    iget-object v5, v3, Lbsd;->b:Ljava/util/concurrent/Executor;

    new-instance v6, Lbsc;

    iget-object v3, v3, Lbsd;->a:Lbzq;

    move-object v7, v2

    check-cast v7, Lbsf;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v3, v8}, Lbsc;-><init>(Lbsf;Lbzq;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_11

    :cond_14
    check-cast v2, Lbsf;

    invoke-virtual {v2}, Lbsf;->c()V

    :goto_12
    const/4 v0, 0x5

    iput v0, v1, Lbrt;->A:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :try_start_15
    iget-object v2, v1, Lbrt;->r:Lnoc;

    invoke-virtual {v2}, Lnoc;->w()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lbrt;->q:Lbsa;

    iget-object v3, v1, Lbrt;->i:Lbqf;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :try_start_16
    invoke-virtual {v0}, Lbsa;->a()Lbtl;

    move-result-object v0

    iget-object v5, v2, Lnoc;->a:Ljava/lang/Object;

    new-instance v6, Lva;

    iget-object v7, v2, Lnoc;->c:Ljava/lang/Object;

    iget-object v8, v2, Lnoc;->b:Ljava/lang/Object;

    invoke-direct {v6, v7, v8, v3}, Lva;-><init>(Lbpt;Ljava/lang/Object;Lbqf;)V

    invoke-interface {v0, v5, v6}, Lbtl;->b(Lbqb;Lva;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :try_start_17
    iget-object v0, v2, Lnoc;->b:Ljava/lang/Object;

    check-cast v0, Lbsm;

    invoke-virtual {v0}, Lbsm;->g()V

    goto :goto_13

    :catchall_6
    move-exception v0

    iget-object v2, v2, Lnoc;->b:Ljava/lang/Object;

    check-cast v2, Lbsm;

    invoke-virtual {v2}, Lbsm;->g()V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :cond_15
    :goto_13
    if-eqz v4, :cond_16

    :try_start_18
    invoke-virtual {v4}, Lbsm;->g()V

    :cond_16
    iget-object v0, v1, Lbrt;->b:Lbrs;

    invoke-virtual {v0}, Lbrs;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lbrt;->a()V

    :cond_17
    return-void

    :catchall_7
    move-exception v0

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lbsm;->g()V

    :cond_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Already have resource"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    :catchall_9
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    :catchall_a
    move-exception v0

    throw v0

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lbrt;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private final j()V
    .locals 6

    invoke-direct {p0}, Lbrt;->l()V

    new-instance v0, Lbsj;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lbrt;->s:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lbsj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lbrt;->j:Lbrr;

    monitor-enter v1

    :try_start_0
    move-object v2, v1

    check-cast v2, Lbsf;

    iput-object v0, v2, Lbsf;->g:Lbsj;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter v1

    :try_start_1
    move-object v0, v1

    check-cast v0, Lbsf;

    iget-object v0, v0, Lbsf;->l:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    move-object v0, v1

    check-cast v0, Lbsf;

    iget-boolean v0, v0, Lbsf;->j:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lbsf;

    invoke-virtual {v0}, Lbsf;->e()V

    monitor-exit v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    check-cast v0, Lbsf;

    iget-object v0, v0, Lbsf;->a:Lbse;

    invoke-virtual {v0}, Lbse;->e()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    check-cast v0, Lbsf;

    iget-boolean v0, v0, Lbsf;->h:Z

    if-nez v0, :cond_3

    move-object v0, v1

    check-cast v0, Lbsf;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lbsf;->h:Z

    move-object v0, v1

    check-cast v0, Lbsf;

    iget-object v0, v0, Lbsf;->b:Lbqb;

    move-object v3, v1

    check-cast v3, Lbsf;

    iget-object v3, v3, Lbsf;->a:Lbse;

    invoke-virtual {v3}, Lbse;->c()Lbse;

    move-result-object v3

    invoke-virtual {v3}, Lbse;->a()I

    move-result v4

    add-int/2addr v4, v2

    move-object v5, v1

    check-cast v5, Lbsf;

    invoke-virtual {v5, v4}, Lbsf;->d(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v1, Lbsf;

    iget-object v4, v1, Lbsf;->n:Llij;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v0, v5}, Llij;->j(Lbsf;Lbqb;Lbsh;)V

    invoke-virtual {v3}, Lbse;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbsd;

    iget-object v4, v3, Lbsd;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Lbsc;

    iget-object v3, v3, Lbsd;->a:Lbzq;

    invoke-direct {v5, v1, v3, v2}, Lbsc;-><init>(Lbsf;Lbzq;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lbsf;->c()V

    :goto_1
    iget-object v0, p0, Lbrt;->b:Lbrs;

    invoke-virtual {v0}, Lbrs;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbrt;->a()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Already failed once"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final k()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lbrt;->u:Ljava/lang/Thread;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lbrt;->o:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lbrt;->n:Lbrp;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbrt;->n:Lbrp;

    invoke-interface {v0}, Lbrp;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v1, p0, Lbrt;->A:I

    invoke-virtual {p0, v1}, Lbrt;->c(I)I

    move-result v1

    iput v1, p0, Lbrt;->A:I

    invoke-direct {p0}, Lbrt;->h()Lbrp;

    move-result-object v1

    iput-object v1, p0, Lbrt;->n:Lbrp;

    iget v1, p0, Lbrt;->A:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lbrt;->e(I)V

    return-void

    :cond_1
    iget v1, p0, Lbrt;->A:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lbrt;->o:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lbrt;->j()V

    :cond_3
    return-void
.end method

.method private final l()V
    .locals 3

    iget-object v0, p0, Lbrt;->C:Lfkg;

    invoke-virtual {v0}, Lfkg;->c()V

    iget-boolean v0, p0, Lbrt;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbrt;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbrt;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already notified"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbrt;->y:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lbrt;->b:Lbrs;

    invoke-virtual {v0}, Lbrs;->a()V

    iget-object v0, p0, Lbrt;->r:Lnoc;

    const/4 v1, 0x0

    iput-object v1, v0, Lnoc;->a:Ljava/lang/Object;

    iput-object v1, v0, Lnoc;->c:Ljava/lang/Object;

    iput-object v1, v0, Lnoc;->b:Ljava/lang/Object;

    iget-object v0, p0, Lbrt;->a:Lbrq;

    iput-object v1, v0, Lbrq;->c:Lboq;

    iput-object v1, v0, Lbrq;->d:Ljava/lang/Object;

    iput-object v1, v0, Lbrq;->m:Lbqb;

    iput-object v1, v0, Lbrq;->g:Ljava/lang/Class;

    iput-object v1, v0, Lbrq;->j:Ljava/lang/Class;

    iput-object v1, v0, Lbrq;->h:Lbqf;

    iput-object v1, v0, Lbrq;->n:Lbos;

    iput-object v1, v0, Lbrq;->i:Ljava/util/Map;

    iput-object v1, v0, Lbrq;->o:Lbry;

    iget-object v2, v0, Lbrq;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lbrq;->k:Z

    iget-object v3, v0, Lbrq;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iput-boolean v2, v0, Lbrq;->l:Z

    iput-boolean v2, p0, Lbrt;->y:Z

    iput-object v1, p0, Lbrt;->c:Lboq;

    iput-object v1, p0, Lbrt;->d:Lbqb;

    iput-object v1, p0, Lbrt;->i:Lbqf;

    iput-object v1, p0, Lbrt;->e:Lbos;

    iput-object v1, p0, Lbrt;->j:Lbrr;

    iput v2, p0, Lbrt;->A:I

    iput-object v1, p0, Lbrt;->n:Lbrp;

    iput-object v1, p0, Lbrt;->u:Ljava/lang/Thread;

    iput-object v1, p0, Lbrt;->m:Lbqb;

    iput-object v1, p0, Lbrt;->w:Ljava/lang/Object;

    iput v2, p0, Lbrt;->B:I

    iput-object v1, p0, Lbrt;->x:Lbqo;

    iput-boolean v2, p0, Lbrt;->o:Z

    iget-object v0, p0, Lbrt;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrt;->t:Laed;

    invoke-interface {v0, p0}, Laed;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lbqb;Ljava/lang/Exception;Lbqo;I)V
    .locals 2

    invoke-interface {p3}, Lbqo;->d()V

    new-instance v0, Lbsj;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lbsj;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p3}, Lbqo;->a()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lbsj;->b(Lbqb;ILjava/lang/Class;)V

    iget-object p1, p0, Lbrt;->s:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lbrt;->u:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lbrt;->e(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lbrt;->k()V

    return-void
.end method

.method public final c(I)I
    .locals 2

    if-eqz p1, :cond_3

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x6

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Lbze;->x(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return v1

    :pswitch_2
    iget-boolean p1, p0, Lbrt;->l:Z

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x4

    return p1

    :pswitch_3
    iget-object p1, p0, Lbrt;->h:Lbry;

    invoke-virtual {p1}, Lbry;->a()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lbrt;->c(I)I

    move-result p1

    return p1

    :pswitch_4
    iget-object p1, p0, Lbrt;->h:Lbry;

    invoke-virtual {p1}, Lbry;->b()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, v0}, Lbrt;->c(I)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lbrt;

    invoke-direct {p0}, Lbrt;->g()I

    move-result v0

    invoke-direct {p1}, Lbrt;->g()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lbrt;->k:I

    iget p1, p1, Lbrt;->k:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final d(Lbqb;Ljava/lang/Object;Lbqo;ILbqb;)V
    .locals 0

    iput-object p1, p0, Lbrt;->m:Lbqb;

    iput-object p2, p0, Lbrt;->w:Ljava/lang/Object;

    iput-object p3, p0, Lbrt;->x:Lbqo;

    iput p4, p0, Lbrt;->B:I

    iput-object p5, p0, Lbrt;->v:Lbqb;

    iget-object p2, p0, Lbrt;->a:Lbrq;

    invoke-virtual {p2}, Lbrq;->e()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean p3, p0, Lbrt;->z:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lbrt;->u:Ljava/lang/Thread;

    if-ne p1, p2, :cond_1

    :try_start_0
    invoke-direct {p0}, Lbrt;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lbrt;->e(I)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lbrt;->p:I

    iget-object p1, p0, Lbrt;->j:Lbrr;

    check-cast p1, Lbsf;

    invoke-virtual {p1}, Lbsf;->a()Lbtx;

    move-result-object p1

    invoke-virtual {p1, p0}, Lbtx;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()Lfkg;
    .locals 1

    iget-object v0, p0, Lbrt;->C:Lfkg;

    return-object v0
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lbrt;->x:Lbqo;

    :try_start_0
    iget-boolean v1, p0, Lbrt;->o:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lbrt;->j()V
    :try_end_0
    .catch Lbrl; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Lbqo;->d()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v1, p0, Lbrt;->p:I

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lbrt;->i()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lbrt;->k()V

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbrt;->c(I)I

    move-result v1

    iput v1, p0, Lbrt;->A:I

    invoke-direct {p0}, Lbrt;->h()Lbrp;

    move-result-object v1

    iput-object v1, p0, Lbrt;->n:Lbrp;

    invoke-direct {p0}, Lbrt;->k()V

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :goto_2
    packed-switch v1, :pswitch_data_1

    const-string v1, "DECODE_DATA"

    goto :goto_3

    :pswitch_3
    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    goto :goto_3

    :pswitch_4
    const-string v1, "INITIALIZE"

    :goto_3
    const-string v3, "Unrecognized run reason: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v1, 0x0

    throw v1
    :try_end_1
    .catch Lbrl; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_2
    iget v2, p0, Lbrt;->A:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lbrt;->s:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lbrt;->j()V

    :cond_4
    iget-boolean v2, p0, Lbrt;->o:Z

    if-nez v2, :cond_5

    throw v1

    :cond_5
    throw v1

    :catch_0
    move-exception v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lbqo;->d()V

    :cond_6
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
