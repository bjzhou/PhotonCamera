.class public final Lkqj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lkxe;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/Queue;

.field private d:I

.field private final e:Loxv;

.field private volatile f:Z


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Lkqg;Lkxc;Lsuu;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lkqg;->a()Lsui;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p3, p2}, Lkqh;-><init>(Lkqj;Lsuu;Lkxc;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lkqh;

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
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkqj;->e:Loxv;

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lkqj;->f:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lkqj;->a:Lkxe;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Lkxe;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lkqj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    new-instance p1, Lkxe;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Lkqj;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, v0}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lkqj;->c:Ljava/util/Queue;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    iget v0, p0, Lkqj;->d:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p1, Loxv;

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

    :goto_10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

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

    :goto_12
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lkqg;)Lsui;
    .locals 5

    goto/32 :goto_7

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

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    monitor-enter v2

    nop

    nop

    :try_start_0
    iget-object v3, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Loxv;->a(Ljava/lang/Object;)V

    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lkqg;->b()Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v0, 0xf

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, v2, v0}, Lkqj;->33f5b80483094659737b73d90f80a8a4m(Lkqg;Lkxc;Lsuu;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Lkqj;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Lkxd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget v3, p0, Lkqj;->d:I

    nop

    nop

    nop

    if-lez v3, :cond_2

    nop

    nop

    iget-object v3, p0, Lkqj;->c:Ljava/util/Queue;

    nop

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    nop

    invoke-static {v3}, Lrrf;->x(Z)V

    iget v3, p0, Lkqj;->d:I

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v3, -0x1

    nop

    nop

    iput v3, p0, Lkqj;->d:I

    nop

    nop

    iget-object v4, p0, Lkqj;->e:Loxv;

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Loxv;->a(Ljava/lang/Object;)V

    monitor-exit v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, v1, v3}, Lkxd;-><init>(Lkxe;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_13
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lkqj;->a:Lkxe;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    iget-object v2, v1, Lkxe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    throw p0

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

    nop

    nop

    :try_start_2
    monitor-exit v2

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    nop

    :cond_2
    :try_start_3
    iget-object p0, p0, Lkqj;->c:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    new-instance v3, Lkqi;

    nop

    nop

    invoke-direct {v3, p1, v2, v0}, Lkqi;-><init>(Lkqg;Lkxc;Lsuu;)V

    invoke-interface {p0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-object v0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p0, Lkqj;->f:Z

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
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    iget-object v0, p0, Lkqj;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lkqj;->c:Ljava/util/Queue;

    nop

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lkqi;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    iget v1, p0, Lkqj;->d:I

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    iput v1, p0, Lkqj;->d:I

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkqj;->e:Loxv;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Loxv;->a(Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

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

    nop

    nop

    :goto_4
    iget-object v0, v1, Lkqi;->a:Lkqg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1, v2}, Lkqj;->33f5b80483094659737b73d90f80a8a4m(Lkqg;Lkxc;Lsuu;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Lkqi;->b:Lkxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_7

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, v1, Lkqi;->c:Lsuu;

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

    :goto_e
    const v1, 0x20

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x8

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lkqj;->f:Z

    nop

    goto/32 :goto_2

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
.end method
