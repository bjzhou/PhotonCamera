.class public final Lpiy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpcu;

.field private final b:Lpdf;

.field private final c:Ljava/util/Deque;

.field private final d:Ljava/util/Deque;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private final h:Lpic;

.field private final i:Lhon;

.field private final j:Lrnb;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Lpgo;)Lpir;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lryw;->g()Lryy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v1, 0x11

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v2, Lphh;

    nop

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

    :goto_4
    goto/32 :goto_17

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_a
    iget-object p0, p0, Lpiy;->h:Lpic;

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

    nop

    :goto_b
    invoke-interface {p1}, Lpgo;->d()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    invoke-virtual {v0, v2}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lpir;->g()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1, v0}, Lpir;->o(Lpic;Lpgo;Ljava/util/Set;)Lpir;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lryw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v2}, Lpmc;->f(Lphh;)Lpmo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Lryw;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhon;Lrnb;Lpic;Lows;Lpcu;Lpdf;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpiy;->i:Lhon;

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

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    const/16 p2, 0x14

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

    :goto_5
    new-instance p1, Lndt;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lpiy;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lpiy;->j:Lrnb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Lpiy;->e:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/util/ArrayDeque;

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

    :goto_b
    iput-object p3, p0, Lpiy;->h:Lpic;

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

    :goto_c
    iput-object p6, p0, Lpiy;->b:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lpiy;->a:Lpcu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p5, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p4, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, p0, p2, p3}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_12

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    iput-object v0, p0, Lpiy;->c:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->NpsKwkHSIobXvg:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public static bridge synthetic g(Lpiy;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    return-void

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lpiy;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpgo;)Lpge;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpiy;->b:Lpdf;

    nop

    nop

    nop

    nop

    const-string v1, "submit#FrameStream"

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lpiy;->j:Lrnb;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Lrnb;->f(Lpgo;)Z

    move-result v0

    nop

    nop

    nop

    invoke-static {v0}, La;->au(Z)V

    new-instance v0, Lpix;

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Lpix;-><init>(Lpgo;)V

    iget-boolean v1, p0, Lpiy;->f:Z

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    iget-object p1, p0, Lpiy;->c:Ljava/util/Deque;

    nop

    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lpiy;->f()V

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    invoke-direct {p0, p1}, Lpiy;->19e596a3e324281407eb5c11093c0152m(Lpgo;)Lpir;

    move-result-object p1

    nop

    invoke-virtual {v0, p1}, Lpix;->k(Lpir;)V

    :goto_7
    iget-object p1, p0, Lpiy;->b:Lpdf;

    nop

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

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

    :goto_9
    const v0, 0x3

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
    throw p1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop
.end method

.method final declared-synchronized b()Ljava/util/Set;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Lpiy;->f:Z

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/util/Set;

    nop

    invoke-virtual {p0}, Lpiy;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

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

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x4

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

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xf

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

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

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
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_a
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

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpiy;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lpir;

    nop

    invoke-virtual {v1}, Lpir;->g()V

    invoke-virtual {v1}, Lpir;->h()V

    goto :goto_d

    nop

    nop

    nop

    :cond_1
    check-cast p1, Lsbt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lsbt;->em()Lscp;

    move-result-object p1

    nop

    nop

    nop

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpix;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_2

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lpir;

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lpir;->a:Lpgo;

    nop

    nop

    iget-object v4, v0, Lpix;->a:Lpgo;

    nop

    nop

    nop

    if-ne v3, v4, :cond_3

    nop

    nop

    invoke-virtual {v0, v2}, Lpix;->k(Lpir;)V

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v0, p0, Lpiy;->b:Lpdf;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    sget-object v1, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->cZyr:Ljava/lang/String;

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    check-cast p1, Lsbt;

    nop

    nop

    invoke-virtual {p1}, Lsbt;->em()Lscp;

    move-result-object p1

    nop

    nop

    nop

    nop

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lpix;

    nop

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :cond_6
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lpir;

    nop

    iget-object v3, v2, Lpir;->a:Lpgo;

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lpix;->a:Lpgo;

    nop

    nop

    nop

    nop

    nop

    if-ne v3, v4, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lpix;->k(Lpir;)V

    goto :goto_f

    nop

    nop

    nop

    :cond_7
    iget-object p1, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    invoke-interface {p1, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lpiy;->b:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V

    iget-object p1, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    nop

    nop

    if-nez p1, :cond_0

    nop

    iget-boolean p1, p0, Lpiy;->f:Z

    nop

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lpiy;->g:Ljava/lang/Runnable;

    nop

    if-eqz p1, :cond_0

    nop

    nop

    iget-object p1, p0, Lpiy;->b:Lpdf;

    nop

    const-string p2, "invokeSubmitListener"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lpdf;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lpiy;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lpiy;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public final declared-synchronized d(Ljava/lang/Runnable;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpiy;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    move v0, v1

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    :cond_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    iget-boolean v0, p0, Lpiy;->f:Z

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    iput-object p1, p0, Lpiy;->g:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    :goto_6
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1a

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

    nop

    :goto_b
    goto/32 :goto_4

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Lpiy;->f:Z

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    :try_start_2
    iput-boolean v0, p0, Lpiy;->f:Z

    nop

    iget-object v0, p0, Lpiy;->c:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lpiy;->a:Lpcu;

    nop

    const-string v1, "Aborting pending frames on shutdown."

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lpiy;->c:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lpix;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lpix;->a:Lpgo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lpiy;->19e596a3e324281407eb5c11093c0152m(Lpgo;)Lpir;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lpix;->k(Lpir;)V

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v0, p0, Lpiy;->c:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/util/Set;

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Lpir;

    nop

    invoke-virtual {v2}, Lpir;->g()V

    invoke-virtual {v2}, Lpir;->h()V

    goto :goto_13

    nop

    nop

    nop

    :cond_6
    iget-object v0, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    const v1, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpiy;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Lpiy;->c:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Lpiy;->d:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    iget-boolean v0, p0, Lpiy;->f:Z

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto :goto_d

    nop

    :cond_1
    iget-object v0, p0, Lpiy;->b:Lpdf;

    nop

    nop

    nop

    const-string v1, "allocate#FrameStream(s)"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lpiy;->c:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lpix;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lsbt;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lsbt;-><init>(Ljava/lang/Object;)V

    iget-object v0, v0, Lpix;->a:Lpgo;

    nop

    check-cast v0, Lpip;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lsbt;

    nop

    nop

    invoke-direct {v2, v0}, Lsbt;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x1

    nop

    iput-boolean v0, p0, Lpiy;->e:Z

    nop

    nop

    nop

    iget-object v0, p0, Lpiy;->i:Lhon;

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lhon;->e(Ljava/util/Set;)Lsui;

    move-result-object v0

    nop

    new-instance v3, Llww;

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

    invoke-direct {v3, p0, v1, v2, v4}, Llww;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    invoke-static {v0, v3, v1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lpiy;->b:Lpdf;

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :cond_2
    :goto_d
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

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
