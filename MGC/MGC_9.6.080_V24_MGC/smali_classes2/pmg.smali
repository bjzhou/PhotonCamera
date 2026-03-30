.class public final Lpmg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field private static k:I


# instance fields
.field public final a:Lpsb;

.field public final b:I

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/lang/Runnable;

.field public final e:Lpcu;

.field public final f:Lpdj;

.field public final g:Ljava/util/Deque;

.field public final h:Ljava/util/Queue;

.field public i:Z

.field public final j:Lnar;

.field private final l:Lows;

.field private final m:Lpck;

.field private final n:Ljava/lang/Runnable;

.field private final o:Lpdf;

.field private final p:Lpmd;

.field private final q:J

.field private final r:Ljava/lang/String;

.field private final s:Lpnx;

.field private t:Z

.field private u:Ljava/util/List;

.field private v:Lprw;

.field private final w:Ljava/util/concurrent/atomic/AtomicLong;

.field private final x:Ljava/util/Map;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
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

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpmg;->x:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lpdj;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpmg;->o:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "%s:failure=%s"

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpmg;->r:Ljava/lang/String;

    nop

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->b(Ljava/lang/String;)Lpdj;

    move-result-object v1

    nop

    nop

    nop

    iget-object p0, p0, Lpmg;->x:Ljava/util/Map;

    nop

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1}, Lpdj;->b()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

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
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lpmg;->x:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public constructor <init>(Lpnx;Lpsb;Lows;Ljava/util/concurrent/Executor;Lpcu;Lpdf;Lnar;Lpmd;)V
    .locals 3

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    invoke-direct {p3, p0, p4, p5}, Lpke;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lpmg;->r:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3
    invoke-interface {p2}, Lpsb;->b()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    const/4 p4, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    const/16 p4, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p3, Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_8
    const-wide/16 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    invoke-direct {p4, p3}, Lsce;-><init>(Ljava/util/Queue;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    int-to-long p3, p3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    const-string p3, "PckImageCount_"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    iput-object p8, p0, Lpmg;->p:Lpmd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p6, p0, Lpmg;->o:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p5, Lpck;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_10
    invoke-static {p2}, Lpuq;->bi(Lpsb;)Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    iput v0, p0, Lpmg;->b:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lpmg;->i:Z

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_14
    new-instance p4, Lsce;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p2}, Lpsb;->d()I

    move-result p3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p4, p0, Lpmg;->h:Ljava/util/Queue;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lpmg;->w:Ljava/util/concurrent/atomic/AtomicLong;

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3f

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    :goto_19
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2}, Lpsb;->a()I

    move-result p4

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

    :goto_1b
    iput-object p4, p0, Lpmg;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p3, p0, Lpmg;->l:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lpmg;->x:Ljava/util/Map;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    iput-boolean v0, p0, Lpmg;->t:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string p3, "distribute_"

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p3, p0, p4, p5}, Lpke;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p2, p0, Lpmg;->a:Lpsb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p6, p3}, Lpdf;->b(Ljava/lang/String;)Lpdj;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p3, Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-wide p3, p0, Lpmg;->q:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_27
    iput-object p3, p0, Lpmg;->f:Lpdj;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_28
    iput-object p3, p0, Lpmg;->g:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3f

    nop

    :goto_2b
    iput-object p5, p0, Lpmg;->m:Lpck;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2c
    const v0, 0x20

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p5, p0, Lpmg;->e:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_30
    new-instance p3, Lpke;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p5, p3, p4}, Lpck;-><init>(II)V

    goto/32 :goto_2b

    nop

    nop

    :goto_33
    iput-object p1, p0, Lpmg;->s:Lpnx;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_36
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object p3, p0, Lpmg;->n:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p2}, Lpuq;->bi(Lpsb;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    :goto_3a
    goto/32 :goto_2a

    nop

    nop

    :goto_3b
    new-instance p3, Lpke;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {}, Lpmg;->d()I

    move-result p3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-object p7, p0, Lpmg;->j:Lnar;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_41
    iput-object p3, p0, Lpmg;->d:Ljava/lang/Runnable;

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

    nop
.end method

.method private static declared-synchronized d()I
    .locals 3

    goto/32 :goto_a

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
    sget v1, Lpmg;->k:I

    nop

    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    sput v2, Lpmg;->k:I

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    return v1

    nop

    :catchall_0
    move-exception v1

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const-class v0, Lpmg;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v1, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    monitor-exit v0

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

    :goto_a
    const v0, 0x13

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 16

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x1

    nop

    :try_start_0
    iput-boolean v2, v1, Lpmg;->t:Z

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    return-void

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    :goto_1
    :try_start_2
    iget-object v0, v1, Lpmg;->g:Ljava/util/Deque;

    nop

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    move-object v3, v4

    nop

    nop

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lpmo;

    nop

    invoke-interface {v5}, Lpmo;->c()Lpgi;

    move-result-object v6

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_2

    nop

    invoke-interface {v3}, Lpmo;->c()Lpgi;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v7}, Lpgi;->a(Lpgi;)I

    move-result v6

    nop

    nop

    nop

    nop

    if-gez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move-object v3, v5

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    if-eqz v3, :cond_4

    nop

    nop

    nop

    iget-object v0, v1, Lpmg;->p:Lpmd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpmo;->c()Lpgi;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v3, Lpgi;->b:J

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v7

    nop

    nop

    invoke-virtual {v0, v5, v6, v7, v8}, Lpmd;->b(JJ)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    iput-object v4, v1, Lpmg;->v:Lprw;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->close()V

    invoke-virtual/range {p0 .. p0}, Lpmg;->b()V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->aEtNaZ:Ljava/lang/String;

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :cond_4
    const-string v0, "noNextResults"

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v0}, Lpmg;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v1, Lpmg;->o:Lpdf;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    iget-object v0, v1, Lpmg;->o:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    goto/16 :goto_11

    nop

    :cond_5
    :try_start_3
    invoke-virtual {v2}, Lpol;->l()V

    iget-object v2, v1, Lpmg;->o:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    monitor-enter p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_0

    nop

    nop

    :goto_9
    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_4
    sget-object v0, Lpgi;->a:Lpgi;

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-boolean v2, v1, Lpmg;->i:Z

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Closed"

    nop

    nop

    invoke-direct {v1, v0}, Lpmg;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :cond_6
    iget-boolean v2, v1, Lpmg;->t:Z

    nop

    nop

    nop

    nop

    if-nez v2, :cond_7

    nop

    nop

    const-string v0, "Not readyToProcessNextImage"

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lpmg;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/16 :goto_4

    nop

    :cond_7
    iget-object v2, v1, Lpmg;->v:Lprw;

    nop

    nop

    nop

    if-nez v2, :cond_a

    nop

    iget-object v2, v1, Lpmg;->o:Lpdf;

    nop

    const-string v3, "acquire"

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v2, v1, Lpmg;->a:Lpsb;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpsb;->g()Lprw;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lpmg;->v:Lprw;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    nop

    nop

    iget-object v3, v1, Lpmg;->j:Lnar;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v4

    nop

    iget-object v2, v1, Lpmg;->w:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    nop

    const-wide/16 v8, -0x1

    nop

    nop

    nop

    cmp-long v2, v6, v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lpmg;->w:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    nop

    nop

    sub-long v6, v4, v6

    nop

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    long-to-double v6, v6

    nop

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    nop

    nop

    nop

    iget-object v2, v1, Lpmg;->s:Lpnx;

    nop

    nop

    iget-object v2, v2, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v8, v1, Lpmg;->m:Lpck;

    nop

    nop

    nop

    iget v9, v8, Lpck;->a:I

    nop

    iget v8, v8, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    iget v10, v1, Lpmg;->b:I

    nop

    nop

    iget-object v11, v1, Lpmg;->a:Lpsb;

    nop

    nop

    invoke-interface {v11}, Lpsb;->c()I

    move-result v11

    nop

    iget-object v3, v3, Lnar;->a:Ljava/lang/Object;

    nop

    check-cast v3, Lpka;

    nop

    nop

    iget-object v3, v3, Lpka;->k:Ltlk;

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    filled-new-array {v2, v9, v8, v10, v11}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v3, v6, v7, v2}, Ltlk;->g(D[Ljava/lang/Object;)V

    :cond_8
    iget-object v2, v1, Lpmg;->w:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_9
    iget-object v2, v1, Lpmg;->o:Lpdf;

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    :cond_a
    iget-object v2, v1, Lpmg;->v:Lprw;

    nop

    nop

    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    goto/16 :goto_4

    nop

    nop

    :cond_b
    iget-object v3, v1, Lpmg;->u:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    if-nez v3, :cond_1a

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lpmg;->g:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    move-object v5, v4

    nop

    nop

    :cond_c
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_e

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lpmo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lpmo;->c()Lpgi;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_d

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lpmo;->c()Lpgi;

    move-result-object v8

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v8}, Lpgi;->a(Lpgi;)I

    move-result v7

    nop

    nop

    nop

    nop

    if-lez v7, :cond_c

    nop

    :cond_d
    move-object v5, v6

    nop

    goto :goto_b

    nop

    nop

    :cond_e
    if-eqz v5, :cond_10

    nop

    nop

    iget-object v3, v1, Lpmg;->p:Lpmd;

    nop

    invoke-interface {v5}, Lpmo;->c()Lpgi;

    move-result-object v5

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v5, Lpgi;->b:J

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v7

    nop

    sub-long/2addr v7, v5

    nop

    iget-wide v5, v3, Lpmd;->b:J

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v7, v5

    nop

    nop

    nop

    iget-wide v5, v3, Lpmd;->a:J

    nop

    nop

    nop

    nop

    sub-long/2addr v7, v5

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    cmp-long v3, v7, v5

    nop

    nop

    nop

    nop

    if-gtz v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_f
    const-string v0, "Old results"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lpmg;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_4

    nop

    nop

    :cond_10
    :goto_c
    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lpmg;->g:Ljava/util/Deque;

    nop

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    if-eqz v7, :cond_12

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lpmo;

    nop

    nop

    nop

    invoke-interface {v7}, Lpmo;->c()Lpgi;

    move-result-object v7

    nop

    nop

    nop

    if-eqz v7, :cond_11

    nop

    nop

    nop

    nop

    iget-object v8, v1, Lpmg;->p:Lpmd;

    nop

    nop

    nop

    nop

    iget-wide v9, v7, Lpgi;->b:J

    nop

    invoke-virtual {v8, v9, v10, v5, v6}, Lpmd;->a(JJ)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_11

    nop

    goto :goto_d

    nop

    :cond_12
    move-object v7, v4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x2

    nop

    if-nez v7, :cond_15

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lpmg;->g:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v7}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    move-object v8, v4

    nop

    :cond_13
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    if-eqz v9, :cond_19

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Lpmo;

    nop

    invoke-interface {v9}, Lpmo;->c()Lpgi;

    move-result-object v10

    nop

    if-eqz v10, :cond_13

    nop

    nop

    nop

    iget-object v11, v1, Lpmg;->p:Lpmd;

    nop

    nop

    nop

    nop

    nop

    iget-wide v12, v10, Lpgi;->b:J

    nop

    invoke-virtual {v11, v12, v13, v5, v6}, Lpmd;->b(JJ)Z

    move-result v10

    nop

    if-nez v10, :cond_13

    nop

    nop

    nop

    if-nez v8, :cond_14

    nop

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_14
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    nop

    nop

    :cond_15
    iget-object v5, v1, Lpmg;->g:Ljava/util/Deque;

    nop

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    move-object v8, v4

    nop

    nop

    nop

    nop

    nop

    :cond_16
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_19

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lpmo;

    nop

    nop

    nop

    invoke-interface {v6}, Lpmo;->c()Lpgi;

    move-result-object v9

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_16

    nop

    nop

    nop

    nop

    iget-wide v10, v9, Lpgi;->d:J

    nop

    nop

    nop

    nop

    iget-wide v12, v7, Lpgi;->d:J

    nop

    nop

    cmp-long v10, v10, v12

    nop

    nop

    nop

    if-lez v10, :cond_17

    nop

    iget-wide v9, v9, Lpgi;->b:J

    nop

    nop

    iget-wide v11, v7, Lpgi;->b:J

    nop

    nop

    nop

    nop

    cmp-long v9, v9, v11

    nop

    nop

    nop

    if-nez v9, :cond_16

    nop

    nop

    nop

    nop

    nop

    :cond_17
    if-nez v8, :cond_18

    nop

    nop

    nop

    nop

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_18
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_19
    iput-object v8, v1, Lpmg;->u:Ljava/util/List;

    nop

    nop

    nop

    nop

    :cond_1a
    iget-object v3, v1, Lpmg;->u:Ljava/util/List;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1b

    nop

    nop

    goto/16 :goto_1

    nop

    :cond_1b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    :cond_1c
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1d

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lpmo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lpmo;->c()Lpgi;

    move-result-object v6

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Lpmg;->p:Lpmd;

    nop

    nop

    nop

    nop

    iget-wide v9, v6, Lpgi;->b:J

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->d()J

    move-result-wide v11

    nop

    nop

    invoke-virtual {v8, v9, v10, v11, v12}, Lpmd;->a(JJ)Z

    move-result v8

    nop

    nop

    if-ne v7, v8, :cond_1c

    nop

    move-object v0, v6

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    :cond_1d
    new-instance v5, Lpme;

    nop

    invoke-direct {v5, v1, v2, v0}, Lpme;-><init>(Lpmg;Lprw;Lpgi;)V

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, v1, Lpmg;->t:Z

    nop

    iput-object v4, v1, Lpmg;->v:Lprw;

    nop

    iput-object v4, v1, Lpmg;->u:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, v1, Lpmg;->o:Lpdf;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lpmg;->r:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v6}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v2, Lpol;

    nop

    nop

    nop

    invoke-direct {v2, v5}, Lpol;-><init>(Lprw;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lpmo;

    nop

    invoke-interface {v6}, Lpmo;->c()Lpgi;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v9, v8, Lpgi;->b:J

    nop

    nop

    iget-wide v11, v0, Lpgi;->b:J

    nop

    nop

    nop

    nop

    cmp-long v9, v9, v11

    nop

    nop

    if-nez v9, :cond_1e

    nop

    nop

    nop

    nop

    iget-wide v9, v8, Lpgi;->c:J

    nop

    nop

    iget-wide v11, v0, Lpgi;->c:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v9, v9, v11

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_1e

    nop

    nop

    nop

    iget-object v8, v1, Lpmg;->s:Lpnx;

    nop

    nop

    nop

    invoke-virtual {v2}, Lpol;->k()Lprw;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Lphk;

    nop

    invoke-direct {v10, v8, v9}, Lphk;-><init>(Lpnx;Lprw;)V

    invoke-interface {v6, v10}, Lpmo;->i(Lphk;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_21

    nop

    nop

    :goto_12
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    monitor-exit p0

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    return-void

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v2, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Lpmg;->o:Lpdf;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_20

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1c
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v6, v4}, Lpmo;->i(Lphk;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1e

    nop

    nop

    :goto_21
    goto/16 :goto_11

    nop

    :cond_1e
    :try_start_9
    iget-object v9, v1, Lpmg;->e:Lpcu;

    nop

    nop

    invoke-interface {v6}, Lpmo;->d()Lphh;

    move-result-object v10

    nop

    nop

    nop

    nop

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    iget-wide v11, v8, Lpgi;->c:J

    nop

    nop

    nop

    iget-wide v13, v8, Lpgi;->b:J

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    new-instance v15, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Distributing null to "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for frame "

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " at "

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " because it is older than "

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-interface {v9, v7}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x9

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1f

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_17

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpmg;->i:Z

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpmg;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    iget-object v1, p0, Lpmg;->n:Ljava/lang/Runnable;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit p0

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
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

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

    :goto_6
    const v1, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lphh;J)V
    .locals 8

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lkhh;

    nop

    const/4 v6, 0x3

    nop

    nop

    move-object v0, v7

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    move-object v2, p1

    nop

    nop

    move-wide v3, p2

    nop

    invoke-direct/range {v0 .. v6}, Lkhh;-><init>(Lpmg;Lphh;JLjava/util/List;I)V

    iget-object p1, p0, Lpmg;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final close()V
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v4, Lpmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v4, v2}, Lpmo;->i(Lphk;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lpmg;->l:Lows;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpmg;->i:Z

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    monitor-exit p0

    nop

    return-void

    nop

    :cond_1
    const/4 v0, 0x1

    nop

    iput-boolean v0, p0, Lpmg;->i:Z

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    const v0, 0x10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Lprw;->close()V

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v0, p0, Lpmg;->v:Lprw;

    nop

    nop

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lpmg;->u:Ljava/util/List;

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v2, p0, Lpmg;->g:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    nop

    nop

    iput-object v2, p0, Lpmg;->v:Lprw;

    nop

    nop

    nop

    iput-object v2, p0, Lpmg;->u:Ljava/util/List;

    nop

    nop

    iget-object v3, p0, Lpmg;->g:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Deque;->clear()V

    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    if-lt v3, v0, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    throw v0

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lpuq;->bi(Lpsb;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "-"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lpmg;->a:Lpsb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v2, p0, Lpmg;->q:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0xd

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method
