.class public final Llpz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Loxv;

.field public final b:J

.field public final c:Loyd;

.field public final d:Ljava/lang/Object;

.field public e:Z

.field private final f:Llqf;

.field private final g:Lpbz;

.field private final h:Ljava/util/LinkedList;

.field private i:Ljava/util/List;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Llqe;)V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Llpz;->d:Ljava/lang/Object;

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

    :goto_3
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    :try_start_0
    iput-boolean v1, p0, Llpz;->e:Z

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llpz;->a:Loxv;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, p0, Llpz;->b:J

    nop

    nop

    nop

    add-long/2addr v2, v4

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Loxv;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Llpz;->g:Lpbz;

    nop

    nop

    nop

    invoke-interface {p1, v1}, Llqe;->c(Lpbz;)V

    iget-object p0, p0, Llpz;->f:Llqf;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Llqf;->a(Llqe;)V

    monitor-exit v0

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

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

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

    :goto_8
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljto;Lqhg;Llqf;)V
    .locals 7

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    iput-wide v0, p0, Llpz;->b:J

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1
    new-instance p3, Ljava/util/LinkedList;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Loxv;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    iget-wide v2, p2, Lqhg;->a:J

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
    iput-object p3, p0, Llpz;->d:Ljava/lang/Object;

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

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_6
    const-wide/32 v0, 0x11e1a300

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Llpz;->a:Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p3, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-interface {p1, p2, p3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Llpz;->i:Ljava/util/List;

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

    :goto_c
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2f

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    :goto_11
    monitor-enter p3

    nop

    nop

    :try_start_1
    iget-object v0, p1, Ljto;->c:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object p1, p1, Ljto;->c:Ljava/util/EnumMap;

    nop

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Ljtn;

    nop

    iget-object p1, p1, Ljtn;->a:Ljava/lang/Object;

    nop

    nop

    monitor-exit p3

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_19

    nop

    nop

    :goto_12
    invoke-direct {p1, p0}, Llpx;-><init>(Llpz;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_13
    new-instance p2, Lkeg;

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

    :goto_14
    iput-object p3, p0, Llpz;->f:Llqf;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_17
    new-instance p1, Llpx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Llpz;->c:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    invoke-direct {p2, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1e
    iput-object p3, p0, Llpz;->h:Ljava/util/LinkedList;

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

    :goto_1f
    const/4 p3, 0x2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_20
    new-instance p3, Lste;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    iput-boolean p3, p0, Llpz;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    invoke-direct {p3}, Lste;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    iget-object p3, p1, Ljto;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p1, Ljto;->a:Ljava/lang/Object;

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

    :goto_2b
    sget-object p2, Ljtk;->b:Ljtk;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    monitor-enter v0

    nop

    :try_start_2
    iget-object v1, p1, Ljto;->c:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    sget-object v2, Ljtk;->b:Ljtk;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    sget-object p2, Ljtk;->b:Ljtk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljtk;->name()Ljava/lang/String;

    monitor-exit v0

    nop

    nop

    goto :goto_2d

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v1, Ljtk;->b:Ljtk;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljtk;->name()Ljava/lang/String;

    new-instance v1, Loxv;

    nop

    nop

    nop

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    invoke-direct {v1, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k()Loyd;

    move-result-object v2

    nop

    nop

    new-instance v3, Lhkh;

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p1, v4}, Lhkh;-><init>(Ljava/lang/Object;I)V

    iget-object v4, p1, Ljto;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {p2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->j()Loyd;

    move-result-object v3

    nop

    nop

    new-instance v4, Lhkh;

    nop

    const/4 v5, 0x4

    nop

    nop

    invoke-direct {v4, p1, v5}, Lhkh;-><init>(Ljava/lang/Object;I)V

    iget-object v5, p1, Ljto;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4, v5}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v3

    nop

    nop

    nop

    nop

    iget-object v4, p1, Ljto;->c:Ljava/util/EnumMap;

    nop

    nop

    nop

    sget-object v5, Ljtk;->b:Ljtk;

    nop

    nop

    nop

    new-instance v6, Ljtn;

    nop

    nop

    invoke-static {v2, v3}, Lryb;->m(Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v2

    nop

    nop

    nop

    invoke-direct {v6, p2, v1, v2, p3}, Ljtn;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Loxv;Ljava/util/Collection;I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljto;->a()V

    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_2f
    throw p0

    nop

    nop

    :goto_30
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string p1, "Feature not registered: "

    nop

    nop

    nop

    nop

    invoke-static {p2, p1}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit p3

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_32
    invoke-direct {p2, p0, p3}, Lkeg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object p1, p0, Llpz;->g:Lpbz;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Llpz;->h:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    iget-object p0, p0, Llpz;->i:Ljava/util/List;

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Llpy;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Llpy;->a()V

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_0
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

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    iget-object v0, p0, Llpz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xa

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llqe;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Llpz;->c:Loyd;

    nop

    check-cast v1, Loxv;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    invoke-direct {p0, p1}, Llpz;->33f5b80483094659737b73d90f80a8a4m(Llqe;)V

    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Llpz;->h:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Llpz;->da190e616797844b591057d0190e7728m()V

    :goto_5
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_7
    const v1, 0x1c

    nop

    goto/32 :goto_0

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

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Llpz;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Llpz;->d:Ljava/lang/Object;

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

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Llpz;->h:Ljava/util/LinkedList;

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llpz;->h:Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Llqe;

    nop

    nop

    invoke-direct {p0, v1}, Llpz;->33f5b80483094659737b73d90f80a8a4m(Llqe;)V

    invoke-direct {p0}, Llpz;->da190e616797844b591057d0190e7728m()V

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x15

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
.end method
