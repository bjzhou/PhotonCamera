.class public final Lfrc;
.super Ljava/lang/Object;

# interfaces
.implements Lfsg;
.implements Lfst;
.implements Lfsu;


# instance fields
.field private A:F

.field private final B:Z

.field private final C:Z

.field private D:Z

.field private E:Z

.field private final F:Lgkf;

.field public final a:Lfkg;

.field public final b:Lkaq;

.field public c:Z

.field public final d:Ljava/util/Deque;

.field public final e:Ljava/util/Deque;

.field public final f:Ljava/util/Set;

.field public g:I

.field public final h:Landroid/os/Handler;

.field private final i:Lfsi;

.field private final j:Lfpd;

.field private final k:Lfri;

.field private final l:Lfri;

.field private final m:Logd;

.field private final n:Loiw;

.field private final o:Lfsn;

.field private final p:Lfsr;

.field private final q:Ldhi;

.field private final r:Lgse;

.field private final s:Lfpn;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lfsk;

.field private x:Lfte;

.field private y:Lgya;

.field private final z:Ljava/util/Deque;


# direct methods
.method public constructor <init>(Lfsi;Lfpd;Lfri;Lfri;Logd;Loiw;Lfkg;Lfsn;Lfsr;Ldhi;Lgkf;Lkaq;Landroid/os/Handler;Lgse;Lfpn;[B[B)V
    .locals 5

    move-object v0, p0

    move-object v1, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lfrc;->c:Z

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v3, v0, Lfrc;->d:Ljava/util/Deque;

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v3, v0, Lfrc;->e:Ljava/util/Deque;

    iput-boolean v2, v0, Lfrc;->u:Z

    iput-boolean v2, v0, Lfrc;->v:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lfrc;->f:Ljava/util/Set;

    sget-object v3, Lgya;->a:Lgya;

    iput-object v3, v0, Lfrc;->y:Lgya;

    iput v2, v0, Lfrc;->g:I

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v3, v0, Lfrc;->z:Ljava/util/Deque;

    const/4 v3, 0x0

    iput v3, v0, Lfrc;->A:F

    move-object v3, p1

    iput-object v3, v0, Lfrc;->i:Lfsi;

    move-object v3, p2

    iput-object v3, v0, Lfrc;->j:Lfpd;

    move-object v3, p3

    iput-object v3, v0, Lfrc;->k:Lfri;

    move-object v3, p4

    iput-object v3, v0, Lfrc;->l:Lfri;

    move-object v3, p5

    iput-object v3, v0, Lfrc;->m:Logd;

    move-object v3, p6

    iput-object v3, v0, Lfrc;->n:Loiw;

    move-object v3, p7

    iput-object v3, v0, Lfrc;->a:Lfkg;

    move-object v3, p8

    iput-object v3, v0, Lfrc;->o:Lfsn;

    move-object v3, p9

    iput-object v3, v0, Lfrc;->p:Lfsr;

    iput-object v1, v0, Lfrc;->q:Ldhi;

    move-object/from16 v3, p11

    iput-object v3, v0, Lfrc;->F:Lgkf;

    const-string v3, "MomentsMainLoop"

    move-object/from16 v4, p12

    invoke-interface {v4, v3}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object v3

    iput-object v3, v0, Lfrc;->b:Lkaq;

    move-object/from16 v3, p13

    iput-object v3, v0, Lfrc;->h:Landroid/os/Handler;

    move-object/from16 v3, p14

    iput-object v3, v0, Lfrc;->r:Lgse;

    sget-object v3, Ldhw;->B:Ldhj;

    invoke-interface {p10, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-object v3, Ldhw;->C:Ldhj;

    invoke-interface {p10, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v3, Ldhw;->D:Ldhj;

    invoke-interface {p10, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ldhw;->E:Ldhj;

    invoke-interface {p10, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lfrc;->B:Z

    sget-object v3, Ldhw;->F:Ldhj;

    invoke-interface {p10, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ldhw;->G:Ldhj;

    invoke-interface {p10, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v0, Lfrc;->C:Z

    invoke-interface {p10}, Ldhi;->c()V

    iput-boolean v2, v0, Lfrc;->t:Z

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {p10}, Ldhi;->f()V

    move-object/from16 v1, p15

    iput-object v1, v0, Lfrc;->s:Lfpn;

    return-void
.end method

.method private final s(JZ)I
    .locals 2

    if-eqz p3, :cond_0

    iget-object p3, p0, Lfrc;->i:Lfsi;

    iget-wide v0, p3, Lfsi;->c:J

    div-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p3, Lfsi;->b:I

    iget p3, p3, Lfsi;->a:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lfrc;->i:Lfsi;

    iget p1, p1, Lfsi;->b:I

    return p1
.end method

.method private final t(Lfqy;)J
    .locals 5

    iget-object v0, p0, Lfrc;->a:Lfkg;

    invoke-virtual {v0}, Lfkg;->a()J

    move-result-wide v0

    iget-object v2, p1, Lfqy;->c:Lmym;

    invoke-virtual {v2}, Lmym;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lfqy;->c:Lmym;

    invoke-virtual {v2}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iget-object v4, p1, Lfqy;->c:Lmym;

    invoke-virtual {v4}, Lmym;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p1, Lfqy;->c:Lmym;

    invoke-virtual {p1}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_1
    sub-long/2addr v0, v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final u(Lfqy;Ljava/util/List;)Lfrb;
    .locals 5

    new-instance v0, Lfrb;

    invoke-direct {v0}, Lfrb;-><init>()V

    iget-object v1, p0, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfqx;

    iget-object v3, p1, Lfqy;->c:Lmym;

    invoke-virtual {v2}, Lfqx;->c()Lmym;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmym;->n(Lmym;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lfqx;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v0, Lfrb;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lfrb;->g:I

    goto :goto_0

    :cond_1
    iget-boolean v3, v2, Lfqx;->a:Z

    if-eqz v3, :cond_2

    iget v2, v0, Lfrb;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lfrb;->a:I

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lfqx;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lfrb;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lfrb;->f:I

    goto :goto_0

    :cond_3
    iget v2, v0, Lfrb;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lfrb;->h:I

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfpc;

    iget-object v2, p1, Lfqy;->c:Lmym;

    invoke-interface {v1}, Lfpc;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmym;->k(Ljava/lang/Comparable;)Z

    move-result v2

    if-nez v2, :cond_5

    iget v1, v0, Lfrb;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfrb;->d:I

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lfrc;->x(Lfpc;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v1, v0, Lfrb;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfrb;->e:I

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lfrc;->B:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lfrc;->t:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lfrc;->E:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lfrc;->D:Z

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Lfrc;->A:F

    iget-object v3, p0, Lfrc;->r:Lgse;

    iget-object v4, p0, Lfrc;->z:Ljava/util/Deque;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/camera/moments/MomentsUtils;->c(Lfpc;FLgse;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_8

    iget v1, v0, Lfrb;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfrb;->c:I

    goto :goto_1

    :cond_8
    iget-boolean v2, p0, Lfrc;->C:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lfrc;->t:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lfrc;->r:Lgse;

    iget-object v3, p0, Lfrc;->z:Ljava/util/Deque;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/camera/moments/MomentsUtils;->b(Lfpc;Lgse;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, v0, Lfrb;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfrb;->c:I

    goto :goto_1

    :cond_9
    iget v1, v0, Lfrb;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lfrb;->b:I

    goto :goto_1

    :cond_a
    return-object v0
.end method

.method private static v(Lmqp;J)Lmqp;
    .locals 3

    invoke-virtual {p0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized w()V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfqy;

    iget-object v5, v1, Lfrc;->f:Ljava/util/Set;

    iget-object v6, v4, Lfqy;->a:Lgxy;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfqy;

    iget-object v7, v1, Lfrc;->b:Lkaq;

    iget-object v8, v6, Lfqy;->a:Lgxy;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "track "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not HDR+; cancelling"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lfrc;->b(Lfqy;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v2, v1, Lfrc;->u:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lfrc;->v:Z

    if-eqz v2, :cond_28

    :cond_3
    iget-object v2, v1, Lfrc;->w:Lfsk;

    iget-object v6, v1, Lfrc;->x:Lfte;

    if-eqz v2, :cond_27

    if-nez v6, :cond_4

    goto/16 :goto_13

    :cond_4
    iget-object v7, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfqx;

    iget-boolean v11, v10, Lfqx;->a:Z

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lfqx;->d()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget-boolean v7, v1, Lfrc;->v:Z

    if-nez v7, :cond_8

    if-nez v9, :cond_28

    iget-object v7, v1, Lfrc;->m:Logd;

    invoke-interface {v7}, Logd;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfsm;

    invoke-interface {v7}, Lfsm;->a()I

    move-result v7

    if-ge v8, v7, :cond_28

    :cond_8
    iget-object v7, v1, Lfrc;->b:Lkaq;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trying to add shots; currently in flight: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lkaq;->b(Ljava/lang/String;)V

    iget-boolean v7, v1, Lfrc;->v:Z

    if-eqz v7, :cond_9

    iget-object v7, v1, Lfrc;->b:Lkaq;

    const-string v10, "... but ignoring counts since this is our last chance before shutdown"

    invoke-interface {v7, v10}, Lkaq;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v7, v1, Lfrc;->j:Lfpd;

    invoke-interface {v7}, Lfpd;->c()Ljava/util/List;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lfpc;

    invoke-interface {v11}, Lfpc;->c()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v12, v12}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v12

    iget-object v13, v1, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lfqy;

    iget-object v15, v14, Lfqy;->c:Lmym;

    invoke-virtual {v15, v12}, Lmym;->n(Lmym;)Z

    move-result v15

    if-eqz v15, :cond_f

    iget-boolean v15, v14, Lfqy;->e:Z

    if-eqz v15, :cond_a

    move-object/from16 v17, v7

    goto/16 :goto_7

    :cond_a
    iget-object v15, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v15}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v3, 0x0

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lfqx;

    iget-object v4, v14, Lfqy;->c:Lmym;

    move-object/from16 v17, v7

    invoke-virtual {v5}, Lfqx;->c()Lmym;

    move-result-object v7

    invoke-virtual {v4, v7}, Lmym;->n(Lmym;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lfqx;->e()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-boolean v4, v5, Lfqx;->a:Z

    if-nez v4, :cond_b

    iget-object v4, v5, Lfqx;->b:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v17

    goto :goto_6

    :cond_c
    move-object/from16 v7, v17

    goto :goto_6

    :cond_d
    move-object/from16 v17, v7

    invoke-direct {v1, v14}, Lfrc;->t(Lfqy;)J

    move-result-wide v4

    iget-boolean v7, v14, Lfqy;->e:Z

    invoke-direct {v1, v4, v5, v7}, Lfrc;->s(JZ)I

    move-result v4

    if-lt v3, v4, :cond_e

    iget-object v5, v1, Lfrc;->b:Lkaq;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot launch alternative as we have already exceeded the max ("

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lkaq;->b(Ljava/lang/String;)V

    move-object/from16 v7, v17

    goto/16 :goto_5

    :cond_e
    :goto_7
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lfrc;->b:Lkaq;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "found relevant burst! "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lkaq;->b(Ljava/lang/String;)V

    move-object/from16 v7, v17

    goto/16 :goto_4

    :cond_f
    move-object/from16 v17, v7

    goto/16 :goto_5

    :cond_10
    move-object/from16 v17, v7

    goto/16 :goto_4

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_13

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfpc;

    invoke-direct {v1, v7}, Lfrc;->x(Lfpc;)Z

    move-result v11

    if-nez v11, :cond_12

    iget-object v11, v1, Lfrc;->b:Lkaq;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "not yet created: "

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    iget-object v11, v1, Lfrc;->b:Lkaq;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "burst already processing (or failed): "

    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Lkaq;->b(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_13
    sget-object v4, Lamx;->j:Lamx;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v2, v1, Lfrc;->b:Lkaq;

    const-string v3, "Ran out of alternatives to launch."

    invoke-interface {v2, v3}, Lkaq;->h(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_14
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfpc;

    iget-boolean v4, v1, Lfrc;->t:Z

    if-nez v4, :cond_18

    iget-boolean v4, v1, Lfrc;->E:Z

    if-nez v4, :cond_15

    iget-boolean v4, v1, Lfrc;->D:Z

    if-eqz v4, :cond_1c

    :cond_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_16
    if-ge v5, v4, :cond_17

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfpc;

    iget v10, v1, Lfrc;->A:F

    iget-object v11, v1, Lfrc;->r:Lgse;

    iget-object v12, v1, Lfrc;->z:Ljava/util/Deque;

    invoke-static {v7, v10, v11, v12}, Lcom/google/android/apps/camera/moments/MomentsUtils;->c(Lfpc;FLgse;Ljava/util/Collection;)Z

    move-result v10

    add-int/lit8 v5, v5, 0x1

    if-eqz v10, :cond_16

    move-object v5, v7

    goto :goto_a

    :cond_17
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_1c

    iget-object v2, v1, Lfrc;->b:Lkaq;

    const-string v3, "We do not have any burst that has good quality and large diversity."

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_18
    iget-boolean v4, v1, Lfrc;->C:Z

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v4, :cond_1b

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfpc;

    invoke-interface {v7}, Lfpc;->e()Lmqp;

    move-result-object v10

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v10

    if-nez v10, :cond_19

    invoke-interface {v7}, Lfpc;->f()Lmqp;

    move-result-object v10

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v10

    if-eqz v10, :cond_1a

    :cond_19
    iget-object v10, v1, Lfrc;->r:Lgse;

    iget-object v11, v1, Lfrc;->z:Ljava/util/Deque;

    invoke-static {v7, v10, v11}, Lcom/google/android/apps/camera/moments/MomentsUtils;->b(Lfpc;Lgse;Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move-object v5, v7

    goto :goto_c

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1b
    const/4 v5, 0x0

    :goto_c
    if-nez v5, :cond_1c

    goto/16 :goto_14

    :cond_1c
    invoke-interface {v5}, Lfpc;->c()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lfsk;->a(J)Lkeb;

    move-result-object v3

    if-nez v3, :cond_1e

    iget-boolean v3, v1, Lfrc;->v:Z

    if-eqz v3, :cond_1d

    iget-object v3, v1, Lfrc;->b:Lkaq;

    invoke-interface {v5}, Lfpc;->c()J

    move-result-wide v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inserting failed shots for timestamp <"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lkaq;->b(Ljava/lang/String;)V

    new-instance v3, Lfra;

    invoke-interface {v5}, Lfpc;->c()J

    move-result-wide v10

    invoke-interface {v5}, Lfpc;->b()F

    move-result v4

    invoke-interface {v5}, Lfpc;->a()F

    move-result v5

    invoke-direct {v3, v10, v11, v4, v5}, Lfra;-><init>(JFF)V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lfra;->a:Z

    iget-object v4, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v4, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1d
    iget-object v2, v1, Lfrc;->b:Lkaq;

    const-string v3, "almost launched empty burst; aborting"

    invoke-interface {v2, v3}, Lkaq;->i(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_1e
    invoke-interface {v3}, Lkeb;->b()Lkeg;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v10, v4, Lkeg;->b:J

    iget-object v4, v1, Lfrc;->b:Lkaq;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adding launch frame "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lkaq;->b(Ljava/lang/String;)V

    iget-boolean v4, v1, Lfrc;->t:Z

    if-nez v4, :cond_1f

    iget-boolean v4, v1, Lfrc;->B:Z

    if-eqz v4, :cond_20

    goto :goto_d

    :cond_1f
    iget-boolean v4, v1, Lfrc;->C:Z

    if-eqz v4, :cond_20

    :goto_d
    iget-object v4, v1, Lfrc;->z:Ljava/util/Deque;

    invoke-interface {v5}, Lfpc;->d()Lgsl;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v4, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide v10, 0x7fffffffffffffffL

    const/4 v7, 0x0

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lfqx;

    invoke-virtual {v12}, Lfqx;->d()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v12}, Lfqx;->a()Lfqz;

    move-result-object v13

    iget-wide v13, v13, Lfqz;->d:J

    invoke-interface {v3}, Lkeb;->b()Lkeg;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v8

    move/from16 v17, v9

    iget-wide v8, v15, Lkeg;->b:J

    sub-long/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v13, v8, v10

    if-gez v13, :cond_22

    move-wide v10, v8

    move-object v7, v12

    goto :goto_f

    :cond_21
    move/from16 v18, v8

    move/from16 v17, v9

    :cond_22
    :goto_f
    move/from16 v9, v17

    move/from16 v8, v18

    goto :goto_e

    :cond_23
    move/from16 v18, v8

    move/from16 v17, v9

    if-eqz v7, :cond_24

    invoke-virtual {v7}, Lfqx;->a()Lfqz;

    move-result-object v4

    goto :goto_10

    :cond_24
    const/4 v4, 0x0

    :goto_10
    iget-object v7, v1, Lfrc;->x:Lfte;

    if-eqz v7, :cond_25

    iget-object v7, v7, Lfte;->d:Lklv;

    iget-object v8, v1, Lfrc;->y:Lgya;

    invoke-static {v7, v8}, Ldyk;->f(Lklv;Lgya;)Z

    move-result v7

    if-eqz v7, :cond_25

    iget-object v7, v1, Lfrc;->F:Lgkf;

    invoke-virtual {v7}, Lgkf;->a()Lebb;

    move-result-object v7

    invoke-virtual {v7}, Lebb;->a()Lgyq;

    move-result-object v7

    goto :goto_11

    :cond_25
    sget-object v7, Lgyq;->a:Lgyq;

    :goto_11
    if-nez v4, :cond_26

    iget-object v4, v1, Lfrc;->b:Lkaq;

    const-string v8, "Cannot associate main session with this burst, use the default setting."

    invoke-interface {v4, v8}, Lkaq;->b(Ljava/lang/String;)V

    new-instance v4, Lnom;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lnom;-><init>(Lgyq;Z)V

    goto :goto_12

    :cond_26
    new-instance v8, Lnom;

    iget-object v4, v4, Lfqz;->e:Lnom;

    iget-boolean v4, v4, Lnom;->a:Z

    invoke-direct {v8, v7, v4}, Lnom;-><init>(Lgyq;Z)V

    move-object v4, v8

    :goto_12
    new-instance v7, Lfra;

    invoke-interface {v5}, Lfpc;->c()J

    move-result-wide v8

    invoke-interface {v5}, Lfpc;->b()F

    move-result v10

    invoke-interface {v5}, Lfpc;->a()F

    move-result v5

    invoke-direct {v7, v8, v9, v10, v5}, Lfra;-><init>(JFF)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    iput-object v5, v7, Lfra;->d:Lmqp;

    iget-object v5, v1, Lfrc;->m:Logd;

    invoke-interface {v5}, Logd;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfsm;

    new-instance v8, Lfqw;

    invoke-direct {v8, v1, v7}, Lfqw;-><init>(Lfrc;Lfra;)V

    invoke-interface {v5, v3, v6, v4, v8}, Lfsm;->c(Lkeb;Lfte;Lnom;Lfsl;)V

    iget-object v3, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v3, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lfrc;->b:Lkaq;

    const-string v4, "starting HDR+ session."

    invoke-interface {v3, v4}, Lkaq;->b(Ljava/lang/String;)V

    add-int/lit8 v8, v18, 0x1

    move/from16 v9, v17

    goto/16 :goto_3

    :cond_27
    :goto_13
    iget-object v2, v1, Lfrc;->b:Lkaq;

    const-string v3, "not launching new shots as most recent shot buffers are not available"

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    :cond_28
    :goto_14
    iget-object v2, v1, Lfrc;->a:Lfkg;

    invoke-virtual {v2}, Lfkg;->a()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfqy;

    iget-object v7, v1, Lfrc;->b:Lkaq;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, v6, Lfqy;->c:Lmym;

    invoke-virtual {v11}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget-object v11, v6, Lfqy;->c:Lmym;

    invoke-virtual {v11}, Lmym;->m()Z

    move-result v11

    if-eqz v11, :cond_29

    iget-object v11, v6, Lfqy;->c:Lmym;

    invoke-virtual {v11}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_16

    :cond_29
    const-string v11, "UNSPEC"

    :goto_16
    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string v11, "Considering track for finishing, %d to: %s"

    invoke-static {v8, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lkaq;->h(Ljava/lang/String;)V

    iget-object v7, v6, Lfqy;->c:Lmym;

    invoke-virtual {v7}, Lmym;->m()Z

    move-result v7

    if-nez v7, :cond_2a

    iget-object v6, v1, Lfrc;->b:Lkaq;

    const-string v7, "... but it doesn\'t have an upper bound yet"

    invoke-interface {v6, v7}, Lkaq;->h(Ljava/lang/String;)V

    goto :goto_15

    :cond_2a
    iget-boolean v7, v6, Lfqy;->d:Z

    if-eqz v7, :cond_2b

    iget-object v7, v1, Lfrc;->b:Lkaq;

    iget-object v8, v6, Lfqy;->a:Lgxy;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ending high-res track "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " due to imminent timeout"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lkaq;->i(Ljava/lang/String;)V

    iget-object v7, v1, Lfrc;->j:Lfpd;

    invoke-interface {v7}, Lfpd;->c()Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lfrc;->u(Lfqy;Ljava/util/List;)Lfrb;

    move-result-object v7

    iget-object v8, v1, Lfrc;->b:Lkaq;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Track timing out: "

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lkaq;->i(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_17

    :cond_2b
    iget-object v7, v6, Lfqy;->c:Lmym;

    invoke-virtual {v7}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v10, v7, v2

    if-lez v10, :cond_2c

    iget-boolean v7, v1, Lfrc;->v:Z

    if-nez v7, :cond_2c

    iget-object v6, v1, Lfrc;->b:Lkaq;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "... but we might still have incoming frames (... latest timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lkaq;->b(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_2c
    iget-object v7, v1, Lfrc;->j:Lfpd;

    invoke-interface {v7}, Lfpd;->c()Ljava/util/List;

    move-result-object v7

    iget-object v8, v1, Lfrc;->b:Lkaq;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    iget-object v11, v6, Lfqy;->a:Lgxy;

    const/4 v13, 0x1

    aput-object v11, v9, v13

    const-string v11, "%d bursts are available for launching track %s."

    invoke-static {v10, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lkaq;->b(Ljava/lang/String;)V

    invoke-direct {v1, v6, v7}, Lfrc;->u(Lfqy;Ljava/util/List;)Lfrb;

    move-result-object v7

    iget-object v8, v1, Lfrc;->b:Lkaq;

    invoke-virtual {v7}, Lfrb;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lkaq;->b(Ljava/lang/String;)V

    iget v8, v7, Lfrb;->a:I

    iget v9, v7, Lfrb;->b:I

    add-int/2addr v8, v9

    if-lez v8, :cond_2d

    iget v7, v7, Lfrb;->f:I

    invoke-direct {v1, v6}, Lfrc;->t(Lfqy;)J

    move-result-wide v8

    iget-boolean v10, v6, Lfqy;->e:Z

    invoke-direct {v1, v8, v9, v10}, Lfrc;->s(JZ)I

    move-result v8

    if-ge v7, v8, :cond_2d

    iget-object v6, v1, Lfrc;->b:Lkaq;

    const-string v7, "... but we\'re still waiting for frames"

    invoke-interface {v6, v7}, Lkaq;->b(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_2d
    iget-object v7, v1, Lfrc;->b:Lkaq;

    const-string v8, "... and we found no reason why not to finish"

    invoke-interface {v7, v8}, Lkaq;->b(Ljava/lang/String;)V

    :goto_17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lmpx;->a:Lmpx;

    iget-object v9, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v9}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v8

    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lfqx;

    iget-object v13, v6, Lfqy;->c:Lmym;

    invoke-virtual {v11}, Lfqx;->c()Lmym;

    move-result-object v14

    invoke-virtual {v13, v14}, Lmym;->n(Lmym;)Z

    move-result v13

    if-eqz v13, :cond_30

    iget-object v13, v1, Lfrc;->b:Lkaq;

    invoke-virtual {v11}, Lfqx;->c()Lmym;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v6, Lfqy;->c:Lmym;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v2

    const-string v2, "adding frame from burst: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to track with range "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {v11}, Lfqx;->d()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v1, Lfrc;->b:Lkaq;

    const-string v3, "... actually, skipping it since it\'s from a main shot"

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    goto :goto_19

    :cond_2e
    iget-object v2, v11, Lfqx;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v11}, Lfqx;->b()Lfra;

    move-result-object v2

    iget-wide v2, v2, Lfra;->c:J

    invoke-static {v10, v2, v3}, Lfrc;->v(Lmqp;J)Lmqp;

    move-result-object v10

    iget-object v2, v1, Lfrc;->b:Lkaq;

    const-string v3, "... actually, skipping it since it\'s still in flight"

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    move-wide/from16 v2, v17

    const/4 v12, 0x0

    goto :goto_18

    :cond_2f
    invoke-virtual {v11}, Lfqx;->b()Lfra;

    move-result-object v2

    iget-wide v2, v2, Lfra;->c:J

    invoke-static {v8, v2, v3}, Lfrc;->v(Lmqp;J)Lmqp;

    move-result-object v8

    invoke-virtual {v11}, Lfqx;->b()Lfra;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v2, v17

    const/4 v12, 0x0

    goto/16 :goto_18

    :cond_30
    move-wide/from16 v17, v2

    :goto_19
    move-wide/from16 v2, v17

    const/4 v12, 0x0

    goto/16 :goto_18

    :cond_31
    move-wide/from16 v17, v2

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v2, v11

    if-gez v9, :cond_32

    iget-object v2, v1, Lfrc;->b:Lkaq;

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "earlier moments frame might drop: frame <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> is still in flight, while frame <"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> is finished."

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    :cond_32
    sget-object v2, Lamx;->i:Lamx;

    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v1, Lfrc;->b:Lkaq;

    iget-object v9, v6, Lfqy;->a:Lgxy;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Sending frames for encoding for "

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfra;

    iget-object v9, v8, Lfra;->b:Lmqp;

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkma;

    invoke-virtual {v9}, Lkma;->k()Lkpb;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Lfra;->d:Lmqp;

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v10

    const-string v11, "Start time not available for Moments shot"

    invoke-static {v10, v11}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v10, v8, Lfra;->e:Lmqp;

    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v10

    const-string v11, "End time not available for finished Moments shot"

    invoke-static {v10, v11}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v10, v8, Lfra;->e:Lmqp;

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, v8, Lfra;->d:Lmqp;

    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v1, Lfrc;->b:Lkaq;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Moments HDR+ processing time in ms: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v10}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v10, v1, Lfrc;->b:Lkaq;

    invoke-interface {v9}, Lkpb;->d()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sending out for encoding: <"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ">"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v10, v6, Lfqy;->b:Lfpz;

    invoke-interface {v10, v9}, Lfpz;->a(Lkpb;)Z

    move-result v10

    if-eqz v10, :cond_33

    iget-object v10, v1, Lfrc;->b:Lkaq;

    const-string v11, " >> success"

    invoke-interface {v10, v11}, Lkaq;->b(Ljava/lang/String;)V

    new-instance v10, Ljzx;

    invoke-interface {v9}, Lkpb;->d()J

    move-result-wide v11

    iget v8, v8, Lfra;->g:F

    invoke-direct {v10, v11, v12, v8}, Ljzx;-><init>(JF)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_33
    iget-object v8, v1, Lfrc;->b:Lkaq;

    const-string v9, " >> failed to encode"

    invoke-interface {v8, v9}, Lkaq;->b(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_34
    iget-object v7, v1, Lfrc;->b:Lkaq;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting stream with a set of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " frames."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v7, v6, Lfqy;->b:Lfpz;

    invoke-interface {v7}, Lfpz;->close()V

    iget-object v7, v6, Lfqy;->f:Llhm;

    invoke-static {v3}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v3

    invoke-virtual {v7, v3}, Llhm;->f(Lmvv;)V

    iget-object v3, v1, Lfrc;->o:Lfsn;

    iget-object v7, v6, Lfqy;->a:Lgxy;

    invoke-interface {v3, v7, v2}, Lfsn;->d(Lgxy;Ljava/util/List;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v2, v17

    goto/16 :goto_15

    :cond_35
    iget-object v2, v1, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v2, v4}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Lfrc;->a:Lfkg;

    invoke-virtual {v2}, Lfkg;->a()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_36
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfqx;

    iget-boolean v7, v6, Lfqx;->a:Z

    if-nez v7, :cond_36

    iget-object v7, v1, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfqy;

    iget-object v8, v8, Lfqy;->c:Lmym;

    invoke-virtual {v6}, Lfqx;->c()Lmym;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmym;->n(Lmym;)Z

    move-result v8

    if-eqz v8, :cond_37

    goto :goto_1b

    :cond_38
    const-wide/32 v7, -0x77359400

    add-long/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lmym;->c(Ljava/lang/Comparable;)Lmym;

    move-result-object v7

    invoke-virtual {v6}, Lfqx;->c()Lmym;

    move-result-object v8

    invoke-virtual {v8, v7}, Lmym;->n(Lmym;)Z

    move-result v7

    if-nez v7, :cond_36

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_3b

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfqx;

    iget-object v6, v5, Lfqx;->b:Lmqp;

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {v5}, Lfqx;->e()Z

    move-result v6

    const-string v7, "We shouldn\'t get results for main shots"

    invoke-static {v6, v7}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v6, v1, Lfrc;->b:Lkaq;

    invoke-virtual {v5}, Lfqx;->b()Lfra;

    move-result-object v7

    iget-wide v7, v7, Lfra;->c:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disposing of YUV frame from burst: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v5, v5, Lfqx;->b:Lmqp;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkma;

    invoke-virtual {v5}, Lkma;->l()V

    goto :goto_1d

    :cond_3a
    iget-object v5, v1, Lfrc;->b:Lkaq;

    const-string v6, "... nothing to close as it never completed."

    invoke-interface {v5, v6}, Lkaq;->b(Ljava/lang/String;)V

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_3b
    iget-object v2, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v2, v4}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_3c
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfqx;

    iget-boolean v7, v6, Lfqx;->a:Z

    if-nez v7, :cond_3c

    invoke-virtual {v6}, Lfqx;->d()Z

    move-result v7

    if-nez v7, :cond_3c

    invoke-virtual {v6}, Lfqx;->b()Lfra;

    move-result-object v7

    iget v7, v7, Lfra;->f:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_3d

    invoke-virtual {v6}, Lfqx;->b()Lfra;

    move-result-object v3

    iget v3, v3, Lfra;->f:F

    invoke-virtual {v6}, Lfqx;->b()Lfra;

    move-result-object v5

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_3e
    iget-object v2, v1, Lfrc;->a:Lfkg;

    invoke-virtual {v2}, Lfkg;->a()J

    move-result-wide v2

    iget-object v6, v1, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v7, v2

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfqy;

    iget-object v10, v9, Lfqy;->c:Lmym;

    invoke-virtual {v10}, Lmym;->l()Z

    move-result v10

    if-eqz v10, :cond_3f

    iget-object v10, v9, Lfqy;->c:Lmym;

    invoke-virtual {v10}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_20

    :cond_3f
    move-wide v10, v7

    :goto_20
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iget-object v10, v9, Lfqy;->c:Lmym;

    invoke-virtual {v10}, Lmym;->m()Z

    move-result v10

    if-eqz v10, :cond_40

    iget-object v9, v9, Lfqy;->c:Lmym;

    invoke-virtual {v9}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_21

    :cond_40
    move-wide v9, v2

    :goto_21
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1f

    :cond_41
    sub-long/2addr v2, v7

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v6}, Lfrc;->s(JZ)I

    move-result v2

    if-lt v4, v2, :cond_44

    if-nez v5, :cond_42

    goto :goto_23

    :cond_42
    iget-object v2, v1, Lfrc;->b:Lkaq;

    iget-wide v3, v5, Lfra;->c:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "YUV cap reached. Disposing of YUV frame from burst: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v2, v5, Lfra;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v5, Lfra;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkma;

    invoke-virtual {v2}, Lkma;->l()V

    goto :goto_22

    :cond_43
    iget-object v2, v1, Lfrc;->b:Lkaq;

    const-string v3, "... nothing to close as it never completed."

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    :goto_22
    iget-object v2, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v2, v5}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-wide v2, v5, Lfra;->c:J

    invoke-virtual {v1, v2, v3}, Lfrc;->c(J)V

    :cond_44
    :goto_23
    iget-object v2, v1, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, v1, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    iget v2, v1, Lfrc;->g:I

    if-nez v2, :cond_47

    iget-object v2, v1, Lfrc;->x:Lfte;

    if-nez v2, :cond_45

    iget-object v2, v1, Lfrc;->w:Lfsk;

    if-eqz v2, :cond_46

    :cond_45
    iget-object v2, v1, Lfrc;->b:Lkaq;

    const-string v3, "nothing is in flight; cleaning up last parameters & buffers"

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    :cond_46
    const/4 v2, 0x0

    iput-object v2, v1, Lfrc;->x:Lfte;

    iput-object v2, v1, Lfrc;->w:Lfsk;

    :cond_47
    iget-object v2, v1, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfqy;

    iget-object v3, v3, Lfqy;->c:Lmym;

    invoke-virtual {v3}, Lmym;->m()Z

    move-result v3

    if-nez v3, :cond_48

    iget-boolean v3, v1, Lfrc;->c:Z

    if-nez v3, :cond_48

    const/4 v3, 0x1

    iput-boolean v3, v1, Lfrc;->c:Z

    iget-object v4, v1, Lfrc;->h:Landroid/os/Handler;

    new-instance v5, Lfof;

    const/16 v6, 0xb

    invoke-direct {v5, v1, v6}, Lfof;-><init>(Lfrc;I)V

    iget-object v6, v1, Lfrc;->i:Lfsi;

    iget-wide v7, v6, Lfsi;->c:J

    iget v6, v6, Lfsi;->d:I

    int-to-long v9, v6

    mul-long v7, v7, v9

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_24

    :cond_48
    const/4 v3, 0x1

    goto :goto_24

    :cond_49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    goto :goto_26

    :goto_25
    throw v2

    :goto_26
    goto :goto_25
.end method

.method private final x(Lfpc;)Z
    .locals 6

    iget-object v0, p0, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfqx;

    invoke-virtual {v1}, Lfqx;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lfqx;->b()Lfra;

    move-result-object v1

    iget-wide v1, v1, Lfra;->c:J

    invoke-interface {p1}, Lfpc;->c()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final a()Lkad;
    .locals 3

    iget-object v0, p0, Lfrc;->h:Landroid/os/Handler;

    new-instance v1, Lfof;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lfof;-><init>(Lfrc;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Leym;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Leym;-><init>(Lfrc;I)V

    return-object v0
.end method

.method public final b(Lfqy;)V
    .locals 3

    iget-object v0, p1, Lfqy;->b:Lfpz;

    invoke-interface {v0}, Lfpz;->close()V

    iget-object v0, p0, Lfrc;->o:Lfsn;

    iget-object v1, p1, Lfqy;->a:Lgxy;

    sget v2, Lmvv;->d:I

    sget-object v2, Lmyu;->a:Lmvv;

    invoke-interface {v0, v1, v2}, Lfsn;->d(Lgxy;Ljava/util/List;)V

    iget-object v0, p0, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(J)V
    .locals 5

    iget-object v0, p0, Lfrc;->z:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgsl;

    iget-wide v2, v1, Lgsl;->a:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    iget-object p1, p0, Lfrc;->z:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 12

    iget-object v0, p0, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfqx;

    invoke-virtual {v1}, Lfqx;->e()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lfqx;->b()Lfra;

    move-result-object v6

    iget-wide v6, v6, Lfra;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lfqx;->a()Lfqz;

    move-result-object v6

    iget-wide v6, v6, Lfqz;->d:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " est."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    iget-object v7, p0, Lfrc;->b:Lkaq;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lfqx;->e()Z

    move-result v10

    if-eq v5, v10, :cond_1

    const-string v10, "MAIN  "

    goto :goto_2

    :cond_1
    const-string v10, "MTS   "

    :goto_2
    aput-object v10, v9, v4

    iget-object v4, v1, Lfqx;->b:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    const-string v10, "NO "

    const-string v11, "YES"

    if-eq v5, v4, :cond_2

    move-object v4, v10

    goto :goto_3

    :cond_2
    move-object v4, v11

    :goto_3
    aput-object v4, v9, v5

    invoke-virtual {v1}, Lfqx;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lfqx;->b()Lfra;

    :cond_3
    aput-object v10, v9, v2

    iget-boolean v1, v1, Lfqx;->a:Z

    if-eq v5, v1, :cond_4

    const-string v11, "NO"

    goto :goto_4

    :cond_4
    :goto_4
    aput-object v11, v9, v3

    const/4 v1, 0x4

    aput-object v6, v9, v1

    const-string v1, "   session; type: %s has_image: %s cancel: %s pending: %s timestamps: %s"

    invoke-static {v8, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lkaq;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfqy;

    iget-object v6, p0, Lfrc;->b:Lkaq;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, v1, Lfqy;->c:Lmym;

    invoke-virtual {v9}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, v1, Lfqy;->c:Lmym;

    invoke-virtual {v9}, Lmym;->m()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v1, Lfqy;->c:Lmym;

    invoke-virtual {v9}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_6
    const-string v9, "UNSPEC"

    :goto_6
    aput-object v9, v8, v5

    iget-object v1, v1, Lfqy;->a:Lgxy;

    aput-object v1, v8, v2

    const-string v1, "   track from: %d to: %s uri: %s"

    invoke-static {v7, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lkaq;->h(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lfrc;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgxy;

    iget-object v2, p0, Lfrc;->b:Lkaq;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v4

    const-string v1, "not a HDR+ shot: %s"

    invoke-static {v3, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lkaq;->h(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    return-void
.end method

.method public final e(Lgxy;)V
    .locals 3

    iget-object v0, p0, Lfrc;->h:Landroid/os/Handler;

    new-instance v1, Lfqt;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lfqt;-><init>(Lfrc;Lgxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized f(Lgxy;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrc;->b:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Track "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " just about to time out; trying to finish up"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfqy;

    iget-object v2, v1, Lfqy;->a:Lgxy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v1, Lfqy;->d:Z

    iget-object p1, p0, Lfrc;->b:Lkaq;

    const-string v0, "... found it"

    invoke-interface {p1, v0}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfrc;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object p1, p0, Lfrc;->b:Lkaq;

    const-string v0, "... probably done already"

    invoke-interface {p1, v0}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lfrc;->v:Z

    invoke-virtual {p0}, Lfrc;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Lgxy;J)V
    .locals 8

    iget-object v0, p0, Lfrc;->h:Landroid/os/Handler;

    new-instance v7, Ldcf;

    const/16 v6, 0xa

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Ldcf;-><init>(Lfrc;Lgxy;JI)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized i(Lgxy;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfqx;

    invoke-virtual {v1}, Lfqx;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lfqx;->a()Lfqz;

    move-result-object v2

    iget-object v2, v2, Lfqz;->c:Lgxy;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v0, v1, Lfqx;->a:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, v1, Lfqx;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-boolean v0, p0, Lfrc;->B:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lfrc;->t:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lfrc;->j:Lfpd;

    invoke-interface {v0, p2, p3}, Lfpd;->b(J)Lfpc;

    move-result-object p2

    invoke-interface {p2}, Lfpc;->f()Lmqp;

    move-result-object p3

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Lfpc;->f()Lmqp;

    move-result-object p3

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgsx;

    iget-object p3, p3, Lgsx;->a:[Lgsw;

    array-length p3, p3

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_3

    iget-object v0, p0, Lfrc;->q:Ldhi;

    sget-object v4, Ldhw;->D:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfrc;->q:Ldhi;

    sget-object v4, Ldhw;->E:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lfrc;->D:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lfrc;->q:Ldhi;

    sget-object v0, Ldhw;->B:Ldhj;

    invoke-interface {p3, v0}, Ldhi;->l(Ldhj;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lfrc;->q:Ldhi;

    sget-object v0, Ldhw;->C:Ldhj;

    invoke-interface {p3, v0}, Ldhi;->l(Ldhj;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lfrc;->E:Z

    iget-object p3, p0, Lfrc;->z:Ljava/util/Deque;

    invoke-interface {p2}, Lfpc;->d()Lgsl;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lfpc;->a()F

    move-result p2

    iput p2, p0, Lfrc;->A:F

    :cond_5
    iput-boolean v3, v1, Lfqx;->a:Z

    iget-object p2, p0, Lfrc;->b:Lkaq;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming YUV frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " CROSS : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfrc;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lfrc;->d()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Too many incoming YUV shots; we didn\'t start this many"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lfrc;->q:Ldhi;

    sget-object v1, Ldhw;->s:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Moments Prewarm"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lfrc;->n:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfse;

    invoke-interface {v0}, Lfse;->a()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized k()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lfrc;->d()V

    iget-object v0, p0, Lfrc;->b:Lkaq;

    const-string v1, "running update"

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lfrc;->w()V

    invoke-virtual {p0}, Lfrc;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l(Lgxy;JLkab;ZLlhm;Lkxy;)Lfss;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrc;->b:Lkaq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Microvideo started at <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iput-boolean p5, p0, Lfrc;->t:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    iget-object v2, p0, Lfrc;->q:Ldhi;

    sget-object v3, Ldhv;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->c()V

    iget-object v2, p0, Lfrc;->q:Ldhi;

    sget-object v3, Ldhv;->e:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lfrc;->p:Lfsr;

    invoke-interface {v2}, Lfsr;->a()I

    move-result v2

    if-eq v2, v1, :cond_7

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Lfrc;->j()V

    iget-object v0, p0, Lfrc;->s:Lfpn;

    iget-boolean v1, p0, Lfrc;->t:Z

    if-eqz v1, :cond_2

    sget-object v1, Lfpm;->b:Lfpm;

    goto :goto_1

    :cond_2
    sget-object v1, Lfpm;->a:Lfpm;

    :goto_1
    invoke-interface {v0, v1}, Lfpn;->c(Lfpm;)V

    invoke-virtual {p6}, Llhm;->d()V

    new-instance v0, Lfqy;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p6

    move v5, p5

    invoke-direct/range {v2 .. v7}, Lfqy;-><init>(Lgxy;Llhm;Z[B[B)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object p6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, p6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmym;->c(Ljava/lang/Comparable;)Lmym;

    move-result-object p1

    iput-object p1, v0, Lfqy;->c:Lmym;

    iget-object p1, p0, Lfrc;->d:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    new-instance p1, Lfpi;

    iget-boolean p2, p0, Lfrc;->t:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lfrc;->l:Lfri;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lfrc;->k:Lfri;

    :goto_2
    invoke-direct {p1, p2, p7, p4}, Lfpi;-><init>(Lfri;Lkxy;Lkab;)V

    if-eqz p5, :cond_4

    iget-object p2, p0, Lfrc;->q:Ldhi;

    sget-object p3, Ldhw;->o:Ldhj;

    invoke-interface {p2, p3}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    if-nez p5, :cond_6

    iget-object p2, p0, Lfrc;->q:Ldhi;

    sget-object p3, Ldhw;->p:Ldhj;

    invoke-interface {p2, p3}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    new-instance p2, Lfph;

    invoke-direct {p2, p1}, Lfph;-><init>(Lfpz;)V

    move-object p1, p2

    goto :goto_3

    :cond_6
    :goto_3
    iput-object p1, v0, Lfqy;->b:Lfpz;

    invoke-virtual {p0}, Lfrc;->k()V

    new-instance p1, Lfqu;

    invoke-direct {p1, p0, v0}, Lfqu;-><init>(Lfrc;Lfqy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_7
    :goto_4
    :try_start_1
    iget-object p2, p0, Lfrc;->b:Lkaq;

    const-string p3, "... but Moments is disabled by the switcher; ignoring."

    invoke-interface {p2, p3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lfrc;->o:Lfsn;

    sget p3, Lmvv;->d:I

    sget-object p3, Lmyu;->a:Lmvv;

    invoke-interface {p2, p1, p3}, Lfsn;->d(Lgxy;Ljava/util/List;)V

    invoke-virtual {p6}, Llhm;->e()V

    invoke-interface {p7}, Lkxy;->close()V

    new-instance p1, Lfsv;

    invoke-direct {p1, v1}, Lfsv;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final m(Lgxy;Lnom;)V
    .locals 11

    iget-object v0, p0, Lfrc;->a:Lfkg;

    invoke-virtual {v0}, Lfkg;->a()J

    move-result-wide v5

    iget-object v0, p0, Lfrc;->h:Landroid/os/Handler;

    new-instance v10, Lfqs;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lfqs;-><init>(Lfrc;Lgxy;Lnom;JI[B[B)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized n(Lgxy;Lnom;J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v7, Lfqz;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p3

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lfqz;-><init>(JLnom;Lgxy;[B[B)V

    iget-object p1, p0, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {p1, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lfrc;->b:Lkaq;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "adding main shot "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkaq;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfrc;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final o(Lfsk;Lgkr;)V
    .locals 9

    iget-object v0, p0, Lfrc;->h:Landroid/os/Handler;

    new-instance v8, Leow;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Leow;-><init>(Lfrc;Lfsk;Lgkr;I[B[B)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized p(Lfsk;Lgkr;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfrc;->b:Lkaq;

    const-string v1, "HDR+ command finished; possibly launching Moments processing"

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfrc;->u:Z

    iput-object p1, p0, Lfrc;->w:Lfsk;

    iget-object p1, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast p1, Lfte;

    iput-object p1, p0, Lfrc;->x:Lfte;

    iget-object p1, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->i()Lgya;

    move-result-object p1

    iput-object p1, p0, Lfrc;->y:Lgya;

    iget-object p1, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->i()Lgya;

    move-result-object p1

    sget-object v0, Lgya;->o:Lgya;

    if-eq p1, v0, :cond_2

    iget-object p1, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    iget-object v0, p0, Lfrc;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfqx;

    invoke-virtual {v1}, Lfqx;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lfqx;->a()Lfqz;

    move-result-object v1

    iget-object v1, v1, Lfqz;->c:Lgxy;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfrc;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast p2, Lfte;

    iget-object p2, p2, Lfte;->f:Ljuf;

    new-instance v0, Leid;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, v1}, Leid;-><init>(Lfrc;Lgxy;I)V

    invoke-virtual {p2, v0}, Ljuf;->d(Lkad;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lfrc;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final q(Lfsk;Lgkr;)V
    .locals 9

    iget-object v0, p0, Lfrc;->h:Landroid/os/Handler;

    new-instance v8, Leow;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Leow;-><init>(Lfrc;Lfsk;Lgkr;I[B[B)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized r(Lfsk;Lgkr;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lfrc;->w:Lfsk;

    iget-object p1, p2, Lgkr;->d:Ljava/lang/Object;

    check-cast p1, Lfte;

    iput-object p1, p0, Lfrc;->x:Lfte;

    iget-object p1, p2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->i()Lgya;

    move-result-object p1

    iput-object p1, p0, Lfrc;->y:Lgya;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lfrc;->u:Z

    iget-object p1, p0, Lfrc;->z:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->clear()V

    invoke-virtual {p0}, Lfrc;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
