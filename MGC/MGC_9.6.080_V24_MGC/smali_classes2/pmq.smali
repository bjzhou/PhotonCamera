.class public final Lpmq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public final d:Lows;

.field private final e:Lppu;

.field private final f:Lppu;

.field private final g:Z


# direct methods
.method public constructor <init>(Lppu;Lppu;Lows;Z)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput v0, p0, Lpmq;->b:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lpmq;->d:Lows;

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

    :goto_2
    iput-boolean v0, p0, Lpmq;->c:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3}, Lows;->b()Z

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    iput-boolean p4, p0, Lpmq;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lpmq;->f:Lppu;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lpmq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpmq;->e:Lppu;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean p1, p0, Lpmq;->c:Z

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
.end method

.method public static f(Lppu;Lppu;Z)Lpmq;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lows;->close()V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lpmq;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_8
    return-object v1

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Lows;->d(Lpci;)V

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lows;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_10
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, p0, p1, v0, p2}, Lpmq;-><init>(Lppu;Lppu;Lows;Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_15
    if-nez p0, :cond_4

    nop

    goto/32 :goto_5

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public static g()Lpmq;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    return-object v0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v0, v1}, Lpmq;->f(Lppu;Lppu;Z)Lpmq;

    move-result-object v0

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

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a()Lpci;
    .locals 3

    goto/32 :goto_a

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

    :try_start_0
    iget-boolean v0, p0, Lpmq;->c:Z

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    iget v2, p0, Lpmq;->a:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v2, v1

    nop

    nop

    iput v2, p0, Lpmq;->a:I

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lpmp;

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

    :goto_3
    invoke-direct {v0, p0, v1}, Lpmp;-><init>(Lpmq;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1e

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

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    :goto_7
    goto/32 :goto_d

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

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lpmq;->c()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const v0, 0xe

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

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

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    throw v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_12
    const/4 p0, 0x0

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
.end method

.method public final b()Lpci;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lpmp;-><init>(Lpmq;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    const v1, 0xf

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

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lpmq;->c()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lpmp;

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

    :goto_11
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

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

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpmq;->c:Z

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    iget v1, p0, Lpmq;->b:I

    nop

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lpmq;->b:I

    nop

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :cond_0
    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

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
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpmq;->c:Z

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    iget v0, p0, Lpmq;->b:I

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    iget v0, p0, Lpmq;->a:I

    nop

    nop

    if-lez v0, :cond_2

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lpmq;->f:Lppu;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    invoke-virtual {v0, v1}, Lppu;->a(Z)V

    :cond_3
    iget-boolean v0, p0, Lpmq;->g:Z

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v0, p0, Lpmq;->e:Lppu;

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

    invoke-virtual {v0, v1}, Lppu;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_d

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
    move-exception v0

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop
.end method

.method public final declared-synchronized d()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    monitor-exit p0

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

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpmq;->c:Z

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
.end method

.method public final e(Lpci;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpmq;->d:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method
