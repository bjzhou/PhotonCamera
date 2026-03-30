.class public final Llqo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final l:Lpck;


# instance fields
.field protected final a:Ljava/util/concurrent/ExecutorService;

.field protected final b:Ljava/util/concurrent/ExecutorService;

.field protected final c:Ljava/util/concurrent/ExecutorService;

.field protected final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Set;

.field public h:I

.field public i:I

.field public j:I

.field public final k:Llqt;

.field private final m:Llqf;

.field private final n:Llrk;

.field private final o:Lpdf;

.field private final p:Lpck;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    new-instance v0, Lpck;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    sput-object v0, Llqo;->l:Lpck;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    const/16 v1, 0x200

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, v2}, Lpck;-><init>(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v2, 0x180

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Llrk;Llqf;Lpdf;I)V
    .locals 1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Llqt;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Llqo;->b:Ljava/util/concurrent/ExecutorService;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Llqo;->g:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Llqo;->f:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Llqo;->h:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Llqo;->a:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Llqo;->i:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Llqo;->j:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/util/HashSet;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    iput-object p5, p0, Llqo;->n:Llrk;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Llqo;->k:Llqt;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p4, p0, Llqo;->d:Ljava/util/concurrent/ExecutorService;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-direct {p1, p8, p8}, Lpck;-><init>(II)V

    goto/32 :goto_10

    nop

    nop

    :goto_10
    iput-object p1, p0, Llqo;->p:Lpck;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p7, p0, Llqo;->o:Lpdf;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p6, p0, Llqo;->m:Llqf;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    iput-object p3, p0, Llqo;->c:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p1, Lpck;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    new-instance p1, Llqt;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llrg;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Llqo;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Llqo;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b(Lprw;Ljava/util/concurrent/Executor;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xa

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Llqm;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Llpv;->b()I

    move-result v2

    nop

    if-lez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    invoke-virtual {v1, v2}, Llpv;->a(I)I

    iget v3, p0, Llqo;->h:I

    nop

    nop

    nop

    add-int/2addr v3, v2

    nop

    nop

    nop

    nop

    iput v3, p0, Llqo;->h:I

    nop

    nop

    invoke-virtual {v1}, Llpv;->b()I

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    iget-object v2, p0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Llqo;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Llqo;->e:Ljava/util/Map;

    nop

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    iget-boolean v2, v1, Llqm;->b:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    new-instance v2, Llcc;

    nop

    nop

    nop

    nop

    const/16 v3, 0xc

    nop

    nop

    invoke-direct {v2, p0, p1, v3}, Llcc;-><init>(Llqo;Ljava/lang/Object;I)V

    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    nop

    nop

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_2
    iget-boolean p0, v1, Llqm;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_3

    nop

    nop

    nop

    invoke-virtual {v1}, Llpv;->d()V

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p0, p0, Llqo;->e:Ljava/util/Map;

    nop

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    const-string p1, "ERROR: Task implementation did NOT balance its release."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    :goto_b
    goto/32 :goto_d

    nop

    :goto_c
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final c(Llxa;Ljava/util/Set;ZZLrss;)Z
    .locals 9

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2
    goto/16 :goto_51

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    :goto_4
    iget-object p3, p0, Llqo;->m:Llqf;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_53

    nop

    nop

    :goto_8
    invoke-direct {p5, v2}, Ljava/util/HashSet;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    iget-object p4, p1, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1, v5, v2, p5}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v5, v4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_12
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    :goto_15
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    new-instance p5, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_19
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1b
    iget-object v3, v3, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1d
    invoke-interface {p3, p4}, Llqf;->a(Llqe;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return v4

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-enter p1

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    nop

    nop

    :goto_20
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Llrg;

    nop

    nop

    nop

    iget-object v6, p0, Llqo;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lmhz;

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    move v3, v4

    nop

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    move v3, v1

    nop

    nop

    :goto_21
    const-string v6, "Overlap of Shadow Task association.  You\'ve possibly submitted the same task twice?"

    nop

    nop

    nop

    nop

    invoke-static {v3, v6}, Lrrf;->y(ZLjava/lang/Object;)V

    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit p1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    monitor-enter v6

    nop

    :try_start_2
    iget-object v7, p0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    if-nez v7, :cond_4

    nop

    move v7, v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    :cond_4
    move v7, v1

    nop

    nop

    nop

    :goto_23
    const-string v8, "Image is already being processed by another task."

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lrrf;->y(ZLjava/lang/Object;)V

    new-instance v7, Llqm;

    nop

    nop

    nop

    invoke-direct {v7, p3, p4}, Llqm;-><init>(ZZ)V

    invoke-virtual {v7, v5}, Llpv;->e(I)V

    iget-object v8, p0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Llqo;->h:I

    nop

    nop

    nop

    nop

    add-int/2addr v3, v5

    nop

    nop

    nop

    iput v3, p0, Llqo;->h:I

    nop

    nop

    nop

    nop

    nop

    iget v3, p0, Llqo;->i:I

    nop

    nop

    nop

    add-int/2addr v3, v4

    nop

    nop

    iput v3, p0, Llqo;->i:I

    nop

    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v3, Llpv;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_54

    nop

    nop

    :goto_26
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

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

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean p2, p1, Llqm;->a:Z

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2b
    invoke-virtual {v3, v5}, Llpv;->e(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2c
    if-nez p1, :cond_5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, v3, Llrg;->e:Llqw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_31
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p2, p1}, Llqo;->e(Ljava/util/Set;Lmhz;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v5, Llqu;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_34
    check-cast v5, Ljava/lang/Integer;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p2, :cond_6

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v3, Llrg;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v5, v3, p1, p5}, Llqu;-><init>(Llpv;Llxa;Lrss;)V

    goto/32 :goto_59

    nop

    nop

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_3a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v6, p0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v3, Lprw;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3f
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_41

    nop

    :goto_41
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_31

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v3}, Llpv;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_45
    const/4 p5, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return v1

    nop

    :goto_47
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p1, Llqm;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4a
    const/4 v4, 0x1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4b
    goto :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Llpv;->c()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_53
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_54
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_58
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_59
    iget-object p1, p0, Llqo;->f:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Llqw;Ljava/util/concurrent/Executor;Ljava/util/Set;Llxa;Lrss;)V
    .locals 13

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    sget-object v1, Llqp;->e:Llqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1
    sget-object v1, Llqp;->d:Llqp;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v6, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3
    new-instance v2, Llcc;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_4
    move-object v1, p0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Llqp;->b:Llqp;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_6
    move-object v3, v11

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v1 .. v8}, Llri;-><init>(Llqw;Ljava/util/concurrent/Executor;Llqo;Llxa;Lpck;Lrss;Lpdf;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    move-object v3, p2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_b
    sget-object v1, Llqp;->c:Llqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v7, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    iget-object v8, v0, Llqo;->o:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v9, Llri;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    move-object/from16 v7, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_12
    sget-object v6, Llqo;->l:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {v1 .. v6}, Llqo;->c(Llxa;Ljava/util/Set;ZZLrss;)Z

    move-result v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v4, v0, Llqt;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->size()I

    iget-object v4, v0, Llqt;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    iget-object v4, v0, Llqt;->a:Ljava/util/List;

    nop

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v2, :cond_1

    nop

    nop

    nop

    iget-object v2, v0, Llqt;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    nop

    nop

    nop

    :cond_1
    iget-object v4, v0, Llqt;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    iget-object v0, v0, Llqt;->a:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    monitor-exit v3

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    move-object v4, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_17
    move-object v1, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v11, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v5, 0x3

    nop

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

    :goto_1a
    throw v0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_59

    nop

    nop

    :goto_1c
    iget-object v6, v0, Llqo;->n:Llrk;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1d
    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1e
    move-object v3, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v5, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v3, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, v2, Llqw;->a:Lprw;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    :goto_26
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v3, p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_29
    if-nez v1, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v5, p4

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v7

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, v7, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object/from16 v5, p4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_31
    sget-object v1, Llqp;->a:Llqp;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_32
    invoke-direct/range {v1 .. v8}, Llri;-><init>(Llqw;Ljava/util/concurrent/Executor;Llqo;Llxa;Lpck;Lrss;Lpdf;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_33
    move-object v1, v9

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_34
    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_45

    nop

    nop

    :goto_36
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_5
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_45

    nop

    nop

    :goto_3a
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3b
    iget-object v3, v0, Llqt;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v6, Llqo;->l:Lpck;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct/range {v1 .. v6}, Llrc;-><init>(Llqw;Ljava/util/concurrent/Executor;Llqo;Llxa;Llrk;)V

    goto/32 :goto_31

    nop

    nop

    :goto_3f
    move-object/from16 v10, p3

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v8, v0, Llqo;->o:Lpdf;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object v0, p0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_45
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v1, :cond_6

    nop

    goto/32 :goto_45

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    :goto_47
    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v1, :cond_7

    nop

    goto/32 :goto_10

    nop

    :cond_7
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_49
    move-object v1, v12

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_4a
    move-object v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v9, Llri;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_5a

    nop

    :goto_4e
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct/range {v1 .. v9}, Llrd;-><init>(Llqw;Ljava/util/concurrent/Executor;Llqo;ILlxa;Lpck;ILpdf;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v12, Llrd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_51
    iget-object v1, v7, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_53
    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_54
    check-cast v7, Lrsx;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v7, v0, Llqo;->p:Lpck;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v9, v0, Llqo;->o:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move-object v2, p1

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

    :goto_59
    return-void

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5b
    new-instance v7, Llrc;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5c
    move-object/from16 v2, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5d
    sget-object v1, Llqp;->a:Llqp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v2, p0, v1, v3}, Llcc;-><init>(Llqo;Ljava/lang/Object;I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-object v2, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_60
    move-object v1, v9

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_61
    iget-object v0, v0, Llqo;->k:Llqt;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_62
    new-instance v11, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object v4, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/util/Set;Lmhz;)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Llrg;

    nop

    nop

    iget-object v2, p0, Llqo;->f:Ljava/util/Map;

    nop

    nop

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Llqn;

    nop

    nop

    iget-object v3, p0, Llqo;->o:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, p2, v1, v3}, Llqn;-><init>(Llqo;Lmhz;Llrg;Lpdf;)V

    iget v1, v1, Llrg;->g:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    iget-object v1, p0, Llqo;->d:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    nop

    nop

    :cond_0
    iget-object v1, p0, Llqo;->c:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    nop

    :cond_1
    iget-object v1, p0, Llqo;->b:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    nop

    :cond_2
    iget-object v1, p0, Llqo;->a:Ljava/util/concurrent/ExecutorService;

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    nop

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Llqo;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v0, 0x1d

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const-string p0, "\nImageBackend Status END:\n"

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "\nProxy Listener Map Size = "

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Llqo;->h:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v5, "ImageBackend Status BEGIN:\nShadow Image Map Size = "

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v5

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v5

    nop

    :try_start_1
    iget-object p0, p0, Llqt;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    monitor-exit v5

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_29

    nop

    nop

    :goto_a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "\nProxy Listener = "

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    monitor-enter v4

    nop

    nop

    nop

    :try_start_2
    iget-object v3, v3, Llqt;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v4

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v4, v3, Llqt;->a:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    :goto_15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Llqo;->f:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "\nOutstandingImageRefs = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x12

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_21
    const-string v1, "\nImage Semaphore Map Size = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_25
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_26
    iget-object p0, p0, Llqo;->k:Llqt;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v3, p0, Llqo;->k:Llqt;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v5, p0, Llqt;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
