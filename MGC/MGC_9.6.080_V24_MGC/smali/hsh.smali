.class public final Lhsh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpoa;

.field public final b:Ljava/lang/Object;

.field public c:Lsuu;

.field private final d:Lhsn;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lhsn;Lpoa;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhsh;->d:Lhsn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lhsh;->a:Lpoa;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iput-object p3, p0, Lhsh;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lhsh;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-array v1, v2, [Lsui;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhsh;->d:Lhsn;

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

    :goto_3
    invoke-virtual {v1, v2, p0}, Lkjj;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lhsn;->b()Lsui;

    move-result-object v0

    nop

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

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lhsh;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_e
    const v0, 0xe

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iget-object v0, p0, Lhsh;->b:Ljava/lang/Object;

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

    nop

    :goto_10
    new-instance v2, Lhfx;

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

    :goto_11
    aput-object v0, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    invoke-direct {v2, p0, v0, v3}, Lhfx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Lsgj;->ac([Lsui;)Lkjj;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lhsh;->c:Lsuu;

    nop

    nop

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

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    new-instance v1, Lsuu;

    nop

    nop

    invoke-direct {v1}, Lsuu;-><init>()V

    iput-object v1, p0, Lhsh;->c:Lsuu;

    nop

    nop

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    :cond_2
    move v1, v3

    nop

    :goto_16
    iget-object v4, p0, Lhsh;->c:Lsuu;

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    return-object v4

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_19
    const/16 v3, 0x10

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method
