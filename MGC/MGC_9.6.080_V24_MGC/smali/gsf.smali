.class public Lgsf;
.super Lpuq;
.source "PG"


# static fields
.field private static final i:Lsdb;

.field private static final k:Ljava/lang/Long;


# instance fields
.field private final A:J

.field private B:Z

.field private final C:Lhoh;

.field private final D:Lqhg;

.field public a:J

.field public final b:Ljava/util/Deque;

.field public final c:Lgqg;

.field public final d:Lgqc;

.field public final e:Lgwo;

.field public final f:Lpdf;

.field public final g:Lgzm;

.field public final h:Lgvg;

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private final v:Ljava/util/Queue;

.field private final w:Lj$/util/Optional;

.field private final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    const-string v0, "gsf"

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
    const-wide/16 v0, 0xfa0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v0, 0xe

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

    :goto_8
    sput-object v0, Lgsf;->i:Lsdb;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    sput-object v0, Lgsf;->k:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lgqg;Lgvg;Lhoh;Lgzm;Lgqc;Lgwo;Lpdf;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lgsf;->C:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lhly;->a:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const/4 v3, 0x1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2b

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p1, Lgsf;->k:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_7
    invoke-virtual {p3}, Loze;->g()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_8
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide p1, p0, Lgsf;->l:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lgsf;->h:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    div-int/2addr p1, p2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_e
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

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

    :goto_11
    iput-object v2, p0, Lgsf;->b:Ljava/util/Deque;

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

    :goto_12
    div-long/2addr v0, p5

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    :goto_14
    iput-wide v0, p0, Lgsf;->z:J

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_15
    const/4 v0, 0x0

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

    nop

    nop

    :goto_16
    iput-object p1, p0, Lgsf;->c:Lgqg;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_18
    iput-object p6, p0, Lgsf;->e:Lgwo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v2, p0, Lgsf;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1a
    const p1, 0xf4240

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-wide/16 p5, 0x4

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

    nop

    :goto_1c
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p4, p0, Lgsf;->g:Lgzm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_23
    iget p2, p3, Loze;->k:I

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

    :goto_24
    iput-object p1, p0, Lgsf;->w:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Lqhg;->b()Lqhg;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_34

    nop

    :goto_27
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz p5, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/32 v0, 0xf4240

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    const-wide/16 v0, 0xfa0

    nop

    :goto_2b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_2d
    if-nez p0, :cond_3

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object p3, p0, Lgsf;->D:Lqhg;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2f
    iput-wide v0, p0, Lgsf;->A:J

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

    nop

    :goto_30
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_31
    iput-wide v0, p0, Lgsf;->p:J

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_32
    new-instance v2, Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_36
    int-to-long p1, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_37
    iget-boolean p5, p1, Lgqg;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_39
    iget-boolean p1, p1, Lgqg;->r:Z

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

    :goto_3a
    iput-object v2, p0, Lgsf;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3c
    iget p1, p3, Loze;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3d
    div-long/2addr v0, p5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3e
    if-ne p3, p5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3f
    int-to-long p5, p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_40
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v2, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-object p5, Loze;->a:Loze;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v2, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p3, p1, Lgqg;->c:Loze;

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

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_47
    invoke-virtual {p3}, Loze;->g()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput-object p5, p0, Lgsf;->d:Lgqc;

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

    nop

    :goto_49
    iput-object p7, p0, Lgsf;->f:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized d116db4599d9ddc8c35e61366a4f4967m(J)Z
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_1
    :try_start_0
    iget-object v0, p0, Lgsf;->b:Ljava/util/Deque;

    nop

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    cmp-long v0, v2, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    return v1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_15

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_2
    iget-object v0, p0, Lgsf;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    const/4 v1, 0x0

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lgsf;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lsay;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lsay;->j(Ljava/lang/Comparable;)Z

    move-result v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    :goto_11
    return p0

    nop

    :goto_12
    :try_start_3
    invoke-virtual {v0}, Lsay;->k()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Long;

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpro;)V
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_b

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

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {p1, v3}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    cmp-long v4, v2, v4

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    if-lez v4, :cond_1

    nop

    nop

    nop

    nop

    move v4, v5

    nop

    goto :goto_3

    nop

    :cond_1
    const/4 v4, 0x0

    nop

    nop

    :goto_3
    const-string v6, "Sensor frame duration should be > 0"

    nop

    nop

    invoke-static {v4, v6}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-wide v6, p0, Lgsf;->z:J

    nop

    nop

    nop

    nop

    const-wide/16 v8, -0x1

    nop

    nop

    cmp-long v4, v6, v8

    nop

    nop

    if-nez v4, :cond_2

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move-wide v2, v6

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0, v1}, Lgsf;->d116db4599d9ddc8c35e61366a4f4967m(J)Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_3

    nop

    iget-object v4, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    new-instance v6, Lgse;

    nop

    nop

    iget-wide v7, p0, Lgsf;->a:J

    nop

    nop

    nop

    sub-long/2addr v0, v7

    nop

    nop

    nop

    nop

    invoke-direct {v6, v0, v1, v2, v3}, Lgse;-><init>(JJ)V

    invoke-interface {v4, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lgsf;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_6

    nop

    nop

    invoke-interface {p1}, Lpro;->e()J

    move-result-wide v0

    nop

    iget-wide v2, p0, Lgsf;->p:J

    nop

    nop

    cmp-long p1, v2, v0

    nop

    nop

    nop

    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lgsf;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_5
    iget-object p1, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    if-le p1, v0, :cond_0

    nop

    iget-object p1, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_5

    nop

    nop

    nop

    :cond_4
    iput-wide v0, p0, Lgsf;->p:J

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_10

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

    nop

    :cond_6
    :try_start_1
    iget-object p1, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    const/16 v0, 0x64

    nop

    nop

    nop

    nop

    if-le p1, v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_7
    iget-object p1, p0, Lgsf;->c:Lgqg;

    nop

    iget-boolean p1, p1, Lgqg;->E:Z

    nop

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    :goto_b
    iget-object p1, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    nop

    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Lgsf;->q:J

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x1

    nop

    nop

    nop

    add-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lgsf;->q:J

    nop

    iget-object p1, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    nop

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lgse;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p1, Lgse;->b:J

    nop

    nop

    nop

    iget-wide v2, p1, Lgse;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v2, v3, v0, v1}, Lgsf;->j(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    :goto_10
    return-void

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

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    return v0

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

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget v0, p0, Lgsf;->r:I

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
.end method

.method public final declared-synchronized g()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    iget v0, p0, Lgsf;->s:I

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

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized h()J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lgsf;->q:J

    nop

    nop

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

    nop

    :goto_4
    const v1, 0x1f

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

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

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

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method

.method final declared-synchronized i()V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    :goto_0
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

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    if-lez v0, :cond_0

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

    :goto_3
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    :cond_1
    :goto_5
    :try_start_1
    iget-object v0, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    nop

    if-nez v0, :cond_3

    nop

    nop

    iget-object v0, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lgse;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lgsf;->A:J

    nop

    nop

    nop

    iget-wide v3, p0, Lgsf;->t:J

    nop

    nop

    iget-wide v5, v0, Lgse;->a:J

    nop

    nop

    nop

    nop

    sub-long/2addr v5, v1

    nop

    nop

    nop

    nop

    cmp-long v0, v5, v3

    nop

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_3

    nop

    nop

    nop

    iget-object v0, p0, Lgsf;->v:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lgse;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lgsf;->u:J

    nop

    nop

    nop

    iget-wide v3, v0, Lgse;->a:J

    nop

    nop

    nop

    sub-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    iget-wide v5, p0, Lgsf;->A:J

    nop

    cmp-long v1, v1, v5

    nop

    if-gtz v1, :cond_1

    nop

    iget-boolean v1, p0, Lgsf;->B:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    iput-boolean v1, p0, Lgsf;->B:Z

    nop

    nop

    :cond_2
    iget-wide v1, p0, Lgsf;->q:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x1

    nop

    nop

    add-long/2addr v1, v5

    nop

    nop

    nop

    nop

    iput-wide v1, p0, Lgsf;->q:J

    nop

    nop

    iget-wide v0, v0, Lgse;->b:J

    nop

    nop

    nop

    invoke-virtual {p0, v3, v4, v0, v1}, Lgsf;->j(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_6
    goto/16 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

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

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const v1, 0x4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized j(JJ)V
    .locals 21

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    move-wide/from16 v2, p1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    monitor-exit p0

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, v1, Lgsf;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    invoke-virtual {v0, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_5

    nop

    nop

    iget-wide v8, v1, Lgsf;->o:J

    nop

    nop

    nop

    nop

    cmp-long v0, v2, v8

    nop

    nop

    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    iget-wide v8, v1, Lgsf;->n:J

    nop

    nop

    sub-long v8, v2, v8

    nop

    nop

    iget-wide v10, v1, Lgsf;->m:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v12, v1, Lgsf;->l:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v12, v14

    nop

    nop

    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    move v0, v7

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    move v0, v6

    nop

    :goto_7
    const-string v14, "expectedDelayUs should be > 0"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v14}, Lrrf;->y(ZLjava/lang/Object;)V

    sub-long v14, v8, v10

    nop

    nop

    nop

    nop

    nop

    div-long/2addr v14, v12

    nop

    long-to-int v0, v14

    nop

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/16 v14, 0x3e8

    nop

    nop

    nop

    if-le v0, v14, :cond_2

    nop

    :cond_1
    sget-object v14, Lgsf;->i:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Lscs;->b()Lsdo;

    move-result-object v14

    nop

    const/16 v15, 0x2d5

    nop

    nop

    invoke-interface {v14, v15}, Lscz;->M(I)Lsdo;

    move-result-object v14

    nop

    nop

    move-object v15, v14

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Lscz;

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    nop

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    nop

    nop

    const-string v16, "Likely error in frame drop calculation: %d = (%d - %d) / %d"

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v15 .. v20}, Lscz;->H(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-wide v10, v1, Lgsf;->l:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v10, v4, v10

    nop

    nop

    if-lez v10, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-eq v0, v7, :cond_5

    nop

    nop

    nop

    :cond_3
    iget v10, v1, Lgsf;->s:I

    nop

    nop

    nop

    nop

    add-int/2addr v10, v0

    nop

    nop

    nop

    iput v10, v1, Lgsf;->s:I

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lgsf;->w:Lj$/util/Optional;

    nop

    nop

    nop

    new-instance v11, Lgsd;

    nop

    invoke-direct {v11, v1, v0, v7}, Lgsd;-><init>(Lgsf;II)V

    invoke-virtual {v10, v11}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v7, v1, Lgsf;->r:I

    nop

    nop

    nop

    nop

    nop

    if-le v0, v7, :cond_4

    nop

    nop

    nop

    nop

    iput v0, v1, Lgsf;->r:I

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lgsf;->C:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v10, Lhly;->j:Lhmo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    new-instance v10, Lgsd;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v1, v0, v6}, Lgsd;-><init>(Lgsf;II)V

    invoke-virtual {v7, v10}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    sget-object v6, Lgsf;->i:Lsdb;

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/16 v7, 0x2d9

    nop

    nop

    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    move-object v10, v6

    nop

    check-cast v10, Lscz;

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    nop

    nop

    nop

    const-wide/32 v6, 0xf4240

    nop

    nop

    div-long/2addr v6, v4

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    nop

    nop

    nop

    nop

    const-string v11, "Frame presentation time: %d us. Expected FPS: %d. Delay: %d us. Possible frame loss counts: %d"

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v10 .. v15}, Lscz;->H(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    long-to-float v0, v4

    nop

    nop

    nop

    nop

    nop

    const v6, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr v0, v6

    nop

    nop

    nop

    nop

    float-to-long v6, v0

    nop

    nop

    nop

    iput-wide v6, v1, Lgsf;->m:J

    nop

    iput-wide v4, v1, Lgsf;->l:J

    nop

    nop

    nop

    nop

    iput-wide v2, v1, Lgsf;->n:J

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v2, v4

    nop

    add-long/2addr v2, v6

    nop

    nop

    nop

    nop

    iput-wide v2, v1, Lgsf;->o:J

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    return-void

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    move-object/from16 v1, p0

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

    :goto_f
    move-wide/from16 v4, p3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop
.end method

.method public final declared-synchronized k(J)V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    iget-object v2, p0, Lgsf;->c:Lgqg;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgqg;->c:Loze;

    nop

    nop

    invoke-virtual {v2}, Loze;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    int-to-long v2, v2

    nop

    nop

    nop

    div-long/2addr p1, v2

    nop

    nop

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    nop

    iget-object v1, p0, Lgsf;->D:Lqhg;

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, v1, Lqhg;->a:J

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v1, p1

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    nop

    nop

    nop

    iput-wide p1, p0, Lgsf;->t:J

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Lgsf;->u:J

    nop

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    iput-wide p1, p0, Lgsf;->u:J

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {p0}, Lgsf;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
