.class public final Lflp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfub;


# instance fields
.field final a:Lflo;

.field public b:Lfjl;

.field public c:Z

.field public d:Z

.field public e:Lflx;

.field public f:Z

.field g:Lflt;

.field public h:Z

.field i:Lflr;

.field public volatile j:Z

.field k:I

.field public final l:Lkaa;

.field public final m:Lrbh;

.field public final n:Lrbh;

.field private final o:Lduz;

.field private final p:Lfnf;

.field private final q:Lfnf;

.field private final r:Lfnf;

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;

.field private t:Z

.field private u:Lfld;


# direct methods
.method private final 51550bab6b6440a4fd45f825c221b363m()Z
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lflp;->f:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

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

    :goto_6
    iget-boolean p0, p0, Lflp;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Lflp;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lfnf;Lfnf;Lfnf;Lrbh;Lrbh;Lduz;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lflp;->r:Lfnf;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lflp;->q:Lfnf;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lflp;->l:Lkaa;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    iput-object p4, p0, Lflp;->n:Lrbh;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lflo;-><init>(Ljava/util/List;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lkaa;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    iput-object p6, p0, Lflp;->o:Lduz;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p5, p0, Lflp;->m:Lrbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    new-instance v0, Lflo;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    iput-object v0, p0, Lflp;->s:Ljava/util/concurrent/atomic/AtomicInteger;

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

    nop

    :goto_18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lflp;->p:Lfnf;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lflp;->a:Lflo;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v1}, Lkaa;-><init>([B)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lfnf;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lflp;->t:Z

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

    :goto_4
    iget-object p0, p0, Lflp;->r:Lfnf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object p0, p0, Lflp;->q:Lfnf;

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method final b()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lflr;->f()V

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lflp;->l:Lkaa;

    nop

    nop

    invoke-virtual {v0}, Lkaa;->c()V

    invoke-direct {p0}, Lflp;->51550bab6b6440a4fd45f825c221b363m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Not yet complete!"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lfsh;->n(ZLjava/lang/String;)V

    iget-object v0, p0, Lflp;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    nop

    nop

    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_a
    const-string v2, "Can\'t decrement below 0"

    nop

    nop

    invoke-static {v1, v2}, Lfsh;->n(ZLjava/lang/String;)V

    if-nez v0, :cond_2

    nop

    iget-object v0, p0, Lflp;->i:Lflr;

    nop

    nop

    invoke-virtual {p0}, Lflp;->d()V

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const/4 v0, 0x0

    nop

    nop

    :goto_b
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_e
    const v0, 0x5

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

    nop

    :goto_f
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x6

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

    nop
.end method

.method final declared-synchronized c(I)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    return-void

    nop

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

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    invoke-direct {p0}, Lflp;->51550bab6b6440a4fd45f825c221b363m()Z

    move-result v0

    nop

    const-string v1, "Not yet complete!"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lfsh;->n(ZLjava/lang/String;)V

    iget-object v0, p0, Lflp;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    nop

    nop

    if-nez p1, :cond_1

    nop

    iget-object p1, p0, Lflp;->i:Lflr;

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    invoke-virtual {p1}, Lflr;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x6

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

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    goto/32 :goto_5

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
    iget-object v0, p0, Lflp;->b:Lfjl;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    iget-object v0, p0, Lflp;->a:Lflo;

    nop

    nop

    nop

    iget-object v0, v0, Lflo;->a:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    nop

    iput-object v0, p0, Lflp;->b:Lfjl;

    nop

    nop

    iput-object v0, p0, Lflp;->i:Lflr;

    nop

    iput-object v0, p0, Lflp;->e:Lflx;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lflp;->h:Z

    nop

    nop

    iput-boolean v1, p0, Lflp;->j:Z

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lflp;->f:Z

    nop

    iget-object v2, p0, Lflp;->u:Lfld;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lfld;->b:Lflc;

    nop

    invoke-virtual {v3}, Lflc;->d()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_0

    nop

    nop

    invoke-virtual {v2}, Lfld;->a()V

    :cond_0
    iput-object v0, p0, Lflp;->u:Lfld;

    nop

    iput-object v0, p0, Lflp;->g:Lflt;

    nop

    nop

    nop

    nop

    iput v1, p0, Lflp;->k:I

    nop

    nop

    iget-object v0, p0, Lflp;->o:Lduz;

    nop

    nop

    nop

    invoke-interface {v0, p0}, Lduz;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

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

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(Lfld;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iput-object p1, p0, Lflp;->u:Lfld;

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    invoke-virtual {p1, v0}, Lfld;->c(I)I

    move-result v0

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {p0}, Lflp;->a()Lfnf;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Lflp;->p:Lfnf;

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lfnf;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_e
    const v0, 0x10

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final f()Lkaa;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lflp;->l:Lkaa;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized g(Lfss;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

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

    :catchall_0
    move-exception p1

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lflp;->j:Z

    nop

    nop

    nop

    nop

    nop

    xor-int/2addr p1, v1

    nop

    nop

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    nop

    nop

    invoke-static {p1, p2}, Lfsh;->n(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v1, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lflp;->l:Lkaa;

    nop

    nop

    invoke-virtual {v0}, Lkaa;->c()V

    new-instance v0, Lfln;

    nop

    invoke-direct {v0, p1, p2}, Lfln;-><init>(Lfss;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lflp;->a:Lflo;

    nop

    nop

    iget-object v1, v1, Lflo;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lflp;->f:Z

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lflp;->c(I)V

    new-instance v0, Lflm;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-direct {v0, p0, p1, v1}, Lflm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    iget-boolean v0, p0, Lflp;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lflp;->c(I)V

    new-instance v0, Lflm;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p1, v1}, Lflm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_10
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h(Lfss;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_f

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

    :catchall_0
    move-exception p1

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lflp;->l:Lkaa;

    nop

    nop

    invoke-virtual {v0}, Lkaa;->c()V

    new-instance v0, Lfln;

    nop

    nop

    nop

    sget-object v1, Lfto;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1, v1}, Lfln;-><init>(Lfss;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lflp;->a:Lflo;

    nop

    nop

    nop

    iget-object p1, p1, Lflo;->a:Ljava/util/List;

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lflp;->a:Lflo;

    nop

    nop

    invoke-virtual {p1}, Lflo;->c()Z

    move-result p1

    nop

    if-eqz p1, :cond_4

    nop

    nop

    invoke-direct {p0}, Lflp;->51550bab6b6440a4fd45f825c221b363m()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lflp;->j:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lflp;->u:Lfld;

    nop

    nop

    nop

    nop

    iput-boolean p1, v0, Lfld;->n:Z

    nop

    nop

    nop

    nop

    nop

    iget-object p1, v0, Lfld;->m:Lfla;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    invoke-interface {p1}, Lfla;->a()V

    :cond_2
    iget-object p1, p0, Lflp;->n:Lrbh;

    nop

    nop

    nop

    iget-object v0, p0, Lflp;->b:Lfjl;

    nop

    invoke-virtual {p1, p0, v0}, Lrbh;->t(Lflp;Lfjl;)V

    :goto_8
    iget-boolean p1, p0, Lflp;->f:Z

    nop

    if-nez p1, :cond_3

    nop

    nop

    nop

    iget-boolean p1, p0, Lflp;->h:Z

    nop

    nop

    nop

    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    :cond_3
    iget-object p1, p0, Lflp;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    nop

    nop

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    invoke-virtual {p0}, Lflp;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    const v1, 0xc

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized i(Lfjl;ZZZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iput-object p1, p0, Lflp;->b:Lfjl;

    nop

    nop

    nop

    iput-boolean p2, p0, Lflp;->c:Z

    nop

    nop

    iput-boolean p3, p0, Lflp;->t:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean p4, p0, Lflp;->d:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop
.end method
