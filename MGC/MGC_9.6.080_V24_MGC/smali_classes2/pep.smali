.class public Lpep;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpdz;
.implements Lpci;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public final c:Ljava/util/Set;

.field private d:Lpeo;

.field private e:Lpri;

.field private f:Z

.field private final g:Ljava/util/Queue;

.field private h:Z

.field private i:I


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Z)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x10

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

    :goto_1
    iget-object p1, p0, Lpep;->a:Ljava/lang/Object;

    nop

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
    iget-object v0, p0, Lpep;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, v3}, Lpeo;->a(Lpdz;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    :cond_0
    :goto_8
    :try_start_0
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

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lpep;->h:Z

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Lpep;->c:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_3
    iput-boolean v1, p0, Lpep;->f:Z

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    check-cast v3, Lpdz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xa

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

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    :goto_12
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-boolean v1, p0, Lpep;->h:Z

    nop

    or-int/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lpep;->h:Z

    nop

    nop

    nop

    nop

    nop

    iget-boolean p1, p0, Lpep;->f:Z

    nop

    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lpep;->g:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    const/4 p1, 0x1

    nop

    iput-boolean p1, p0, Lpep;->f:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    if-lt v1, p1, :cond_5

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v0, p0, Lpep;->g:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpep;->g:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpeo;

    nop

    nop

    iput-object v0, p0, Lpep;->d:Lpeo;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpep;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v2

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

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

    :goto_19
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_19

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

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

    :goto_2
    new-instance v0, Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xf

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3

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

    :goto_8
    iput-object v0, p0, Lpep;->b:Ljava/util/concurrent/CountDownLatch;

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_a
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lpep;->f:Z

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, p0, Lpep;->i:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lpep;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    iput-object v0, p0, Lpep;->c:Ljava/util/Set;

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

    :goto_14
    goto/32 :goto_19

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lpep;->g:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    :goto_1a
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_7
    iget-object p0, p0, Lpep;->b:Ljava/util/concurrent/CountDownLatch;

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

    :goto_8
    invoke-interface {v3}, Lpci;->close()V

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v2}, Lpep;->7ecc92917e9c4556cc19f457ddc41af8m(Z)V

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    const v0, 0x1f

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

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    const v1, 0x1f

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget v1, p0, Lpep;->i:I

    nop

    const/4 v2, 0x1

    nop

    if-eq v1, v2, :cond_4

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    if-ne v1, v3, :cond_3

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_14
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    iput v1, p0, Lpep;->i:I

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpep;->g:Ljava/util/Queue;

    nop

    new-instance v3, Lpem;

    nop

    nop

    invoke-direct {v3, v2}, Lpem;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v1, v2

    nop

    nop

    nop

    :goto_15
    iget-object v3, p0, Lpep;->e:Lpri;

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    iput-object v4, p0, Lpep;->e:Lpri;

    nop

    goto :goto_16

    nop

    nop

    nop

    :cond_5
    move-object v3, v4

    nop

    nop

    nop

    nop

    :goto_16
    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lpep;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lcom/a;->aa()Z

    move-result v1

    nop

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
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v3}, Lpep;->7ecc92917e9c4556cc19f457ddc41af8m(Z)V

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p0, Lpep;->i:I

    nop

    const/4 v2, 0x0

    nop

    const/4 v3, 0x1

    nop

    if-eq v1, v3, :cond_0

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

    nop

    if-ne v1, v4, :cond_1

    nop

    nop

    :cond_0
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lpep;->i:I

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpep;->g:Ljava/util/Queue;

    nop

    new-instance v4, Lpem;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2}, Lpem;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v2, v3

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpep;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lpep;->a()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    const v1, 0x15

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

    :goto_d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_e
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1b

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop
.end method

.method public final c(Lpdr;)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lpep;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lpep;->a()V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x18

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

    :goto_9
    invoke-direct {p0, v2}, Lpep;->7ecc92917e9c4556cc19f457ddc41af8m(Z)V

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_10
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget v1, p0, Lpep;->i:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    if-eq v1, v2, :cond_3

    nop

    const/4 v3, 0x2

    nop

    nop

    if-ne v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_11

    nop

    nop

    :cond_2
    const/4 p1, 0x0

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    :cond_3
    :goto_11
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    iput v1, p0, Lpep;->i:I

    nop

    iget-object v1, p0, Lpep;->g:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    new-instance v3, Lpen;

    nop

    nop

    nop

    invoke-direct {v3, p1, v2}, Lpen;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move p1, v2

    nop

    nop

    nop

    :goto_12
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0}, Lpep;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public d(Lpri;)V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpep;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lpep;->a()V

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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
    invoke-direct {p0, v3}, Lpep;->7ecc92917e9c4556cc19f457ddc41af8m(Z)V

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lpri;->close()V

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpep;->i:I

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    iput v1, p0, Lpep;->i:I

    nop

    nop

    nop

    new-instance v1, Lpel;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1, p0}, Lpel;-><init>(Lpri;Lpep;)V

    iput-object v1, p0, Lpep;->e:Lpri;

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lpep;->g:Ljava/util/Queue;

    nop

    nop

    new-instance v5, Lpen;

    nop

    invoke-direct {v5, v1, v3}, Lpen;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v1, v3

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_0
    move v1, v2

    nop

    nop

    nop

    nop

    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1e

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpdz;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p0, Lpep;->i:I

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    const/4 v2, 0x5

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpep;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lpep;->d:Lpeo;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

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

    :goto_3
    iget-object v0, p0, Lpep;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_e
    invoke-interface {p0, p1}, Lpeo;->a(Lpdz;)V

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method
