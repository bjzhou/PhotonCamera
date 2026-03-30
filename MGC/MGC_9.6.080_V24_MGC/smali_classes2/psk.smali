.class public final Lpsk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpsu;

.field public final b:Lrxw;

.field public c:Z

.field private final d:Lptk;

.field private final e:Lpty;

.field private final f:Lpdf;

.field private final g:Ljava/lang/String;

.field private final h:Lptf;

.field private final i:Ljava/util/Set;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/util/Set;

.field private final l:Lpsm;

.field private final m:Lpsj;

.field private final n:J

.field private final o:J

.field private p:Lpsf;

.field private final q:Lpsr;

.field private final r:Lqar;


# direct methods
.method public constructor <init>(Lptk;Lpsu;Lqar;Lpty;Lpdf;Lhwy;Lptf;Lpsr;Ljava/lang/String;JJ)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpsk;->m:Lpsj;

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

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p6, Lhwy;->d:Ljava/lang/Object;

    nop

    const/4 p3, 0x0

    nop

    nop

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    nop

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lpsj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    iput-object v0, p0, Lpsk;->k:Ljava/util/Set;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    iput-byte p0, v0, Lpsm;->k:B

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v1, v0, Lpsm;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p8, p0, Lpsk;->q:Lpsr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b
    iput-object p9, v0, Lpsm;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    iput-wide p12, p0, Lpsk;->o:J

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lpsk;->a:Lpsu;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iput-object p3, p0, Lpsk;->r:Lqar;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p7, v0, Lpsm;->j:Lptf;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    iput-wide p10, v0, Lpsm;->b:J

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    invoke-direct {v0}, Lpsm;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    iput-wide p12, v0, Lpsm;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_18
    invoke-direct {p1, p2}, Lpsj;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p6, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    iput-object p5, p0, Lpsk;->f:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Lrxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p4, p0, Lpsk;->e:Lpty;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lpsk;->j:Ljava/util/Set;

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

    nop

    :goto_20
    iput-object p7, p0, Lpsk;->h:Lptf;

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

    :goto_21
    throw p1

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object p1, v0, Lpsm;->a:Lpsj;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v1, ""

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-wide p10, p0, Lpsk;->n:J

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_29
    iput-object p9, p0, Lpsk;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object p1, p0, Lpsk;->d:Lptk;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Lpsm;->b(I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    iput-object v0, p0, Lpsk;->l:Lpsm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    sget-object v1, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Lpsm;->a(Lryb;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p1, Lpsj;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_33
    invoke-direct {v0}, Lrxw;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v0, p0, Lpsk;->b:Lrxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_36
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Lpsm;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v0, p0, Lpsk;->i:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    const v1, 0x2

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpsk;->c:Z

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Cannot modify the group after publish() or abandon(): %s"

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpsk;->m:Lpsj;

    nop

    invoke-static {v0, v2, v3}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lpsk;->c:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    const-string v1, "#abandon"

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpsk;->f:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v0, Lqzn;

    nop

    nop

    invoke-direct {v0}, Lqzn;-><init>()V

    iget-object v1, p0, Lpsk;->l:Lpsm;

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lqzn;->f:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v1, p0, Lpsk;->i:Ljava/util/Set;

    nop

    nop

    iput-object v1, v0, Lqzn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpsk;->j:Ljava/util/Set;

    nop

    iput-object v1, v0, Lqzn;->d:Ljava/lang/Object;

    nop

    nop

    iget-object v1, p0, Lpsk;->k:Ljava/util/Set;

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lqzn;->b:Ljava/lang/Object;

    nop

    iget-object v1, p0, Lpsk;->b:Lrxw;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrxw;->g()Lryb;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lqzn;->b(Lryb;)V

    invoke-virtual {v0}, Lqzn;->a()Lpsp;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Lpsk;->q:Lpsr;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lpsr;->b(Lpsp;)V

    iget-object v0, p0, Lpsk;->f:Lpdf;

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpsk;->c:Z

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    const-string v2, "Cannot modify the group after publish() or abandon(): %s"

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpsk;->m:Lpsj;

    nop

    nop

    invoke-static {v0, v2, v3}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lpsk;->c:Z

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "#close"

    nop

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Lpsk;->f:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v0, Lqzn;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lqzn;-><init>()V

    iget-object v1, p0, Lpsk;->l:Lpsm;

    nop

    nop

    iput-object v1, v0, Lqzn;->f:Ljava/lang/Object;

    nop

    iget-object v1, p0, Lpsk;->i:Ljava/util/Set;

    nop

    nop

    nop

    iput-object v1, v0, Lqzn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpsk;->j:Ljava/util/Set;

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lqzn;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpsk;->k:Ljava/util/Set;

    nop

    nop

    iput-object v1, v0, Lqzn;->b:Ljava/lang/Object;

    nop

    nop

    iget-object v1, p0, Lpsk;->b:Lrxw;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrxw;->g()Lryb;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lqzn;->b(Lryb;)V

    iget-object v1, p0, Lpsk;->p:Lpsf;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lqzn;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lpsk;->q:Lpsr;

    nop

    invoke-virtual {v0}, Lqzn;->a()Lpsp;

    move-result-object v0

    nop

    nop

    invoke-virtual {v1, v0}, Lpsr;->f(Lpsp;)V

    iget-object v0, p0, Lpsk;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
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

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lpsf;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
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

    :goto_4
    const v1, 0x15

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Lpsk;->c:Z

    nop

    nop

    nop

    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Cannot modify the group after publish() or abandon(): %s"

    nop

    nop

    nop

    iget-object v2, p0, Lpsk;->m:Lpsj;

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v2}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lpsk;->p:Lpsf;

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

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    return-void

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

    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final d(ILpti;Ljava/lang/String;Ljava/lang/String;)Lpsf;
    .locals 19

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    move-object/from16 p3, v9

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    move-object/from16 v0, p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    goto :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_9
    if-ne v1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    xor-int/2addr v1, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lpsk;->k:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    move/from16 v13, p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v12, v0, Lpsk;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Lpsk;->j:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object/from16 v15, p3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v1, p1, -0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Lpsk;->f:Lpdf;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_13
    return-object v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, v0, Lpsk;->r:Lqar;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_17
    new-instance v9, Lpsy;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v18, p3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_34

    nop

    nop

    :goto_1c
    move-object/from16 v17, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v2, v18

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    :goto_1f
    iget-object v2, v0, Lpsk;->d:Lptk;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v16, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    iget-object v1, v0, Lpsk;->i:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_25
    move-object/from16 v14, p2

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

    :goto_26
    iget-object v1, v0, Lpsk;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_28
    invoke-static {v1, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_29
    move-object v1, v9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v0, p0

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

    :goto_2b
    invoke-direct/range {v1 .. v17}, Lpsy;-><init>(Lptk;Lqar;Lptf;Lpsr;JJJLjava/lang/String;ILpti;Ljava/lang/String;Ljava/lang/String;Lpdf;)V

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    const v0, 0x12

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

    nop

    nop

    :goto_2d
    move-object/from16 v0, p0

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

    :goto_2e
    iget-boolean v1, v0, Lpsk;->c:Z

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

    :goto_2f
    iget-object v5, v0, Lpsk;->q:Lpsr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    iget-wide v8, v0, Lpsk;->o:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    if-ne v1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v6, v0, Lpsk;->n:J

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

    :goto_33
    move-object/from16 v2, v18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_34
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lpsk;->f:Lpdf;

    nop

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

    :goto_36
    const-string v2, "Cannot create files after publish() or abandon()"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_37
    move-object/from16 v2, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    :goto_39
    const-string v2, "MediaGroup#create"

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

    :goto_3a
    goto/32 :goto_14

    nop

    nop

    :goto_3b
    goto/32 :goto_2d

    nop

    nop

    :goto_3c
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v4, v0, Lpsk;->h:Lptf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lpsj;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpsk;->m:Lpsj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
