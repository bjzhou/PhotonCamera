.class public final Lkjg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field private c:Lryb;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput v0, p0, Lkjg;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lkjg;->b:Z

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lkjg;->a:Z

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


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Lkjg;->d:I

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1}, Lrrf;->x(Z)V

    const/4 v0, 0x4

    nop

    nop

    nop

    iput v0, p0, Lkjg;->d:I

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    return-void

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

    nop

    nop

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
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_d

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
    iget v0, p0, Lkjg;->d:I

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    goto :goto_4

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    :goto_4
    invoke-static {v1}, Lrrf;->x(Z)V

    const/4 v0, 0x3

    nop

    iput v0, p0, Lkjg;->d:I

    nop

    nop

    nop

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

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const v0, 0xa

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
    throw v0

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

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

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
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

    nop
.end method

.method public final declared-synchronized c(Lryb;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
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

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iput-object p1, p0, Lkjg;->c:Lryb;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
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
.end method

.method public final declared-synchronized d()V
    .locals 2

    goto/32 :goto_a

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

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget v0, p0, Lkjg;->d:I

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto :goto_5

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    :goto_5
    invoke-static {v1}, Lrrf;->x(Z)V

    const/4 v0, 0x2

    nop

    nop

    nop

    iput v0, p0, Lkjg;->d:I

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_6
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop
.end method

.method public final declared-synchronized e(Ltkb;)V
    .locals 8

    goto/32 :goto_e

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
    iget-object v0, p0, Lkjg;->c:Lryb;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    nop

    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_0

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_0
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Lsnu;

    nop

    nop

    nop

    sget-object v2, Lsnu;->a:Lsnu;

    nop

    sget-object v2, Ltma;->a:Ltma;

    nop

    iput-object v2, v1, Lsnu;->j:Ltkv;

    nop

    nop

    const/4 v1, 0x0

    nop

    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    if-ge v2, v3, :cond_7

    nop

    nop

    nop

    sget-object v3, Lsnx;->a:Lsnx;

    nop

    nop

    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    long-to-int v4, v4

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_1

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_1
    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v6, v5

    nop

    nop

    check-cast v6, Lsnx;

    nop

    nop

    nop

    nop

    nop

    iget v7, v6, Lsnx;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v7, v7, 0x1

    nop

    nop

    iput v7, v6, Lsnx;->b:I

    nop

    nop

    nop

    nop

    iput v4, v6, Lsnx;->c:I

    nop

    nop

    nop

    nop

    iget-boolean v4, p0, Lkjg;->a:Z

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    if-nez v5, :cond_2

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_2
    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v6, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Lsnx;

    nop

    nop

    nop

    iget v7, v6, Lsnx;->b:I

    nop

    or-int/lit8 v7, v7, 0x2

    nop

    nop

    nop

    iput v7, v6, Lsnx;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-boolean v4, v6, Lsnx;->d:Z

    nop

    nop

    iget-boolean v4, p0, Lkjg;->b:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_3
    iget-object v5, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v6, v5

    nop

    check-cast v6, Lsnx;

    nop

    nop

    nop

    iget v7, v6, Lsnx;->b:I

    nop

    nop

    nop

    or-int/lit8 v7, v7, 0x8

    nop

    nop

    nop

    nop

    nop

    iput v7, v6, Lsnx;->b:I

    nop

    iput-boolean v4, v6, Lsnx;->f:Z

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_4
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v4, Lsnx;

    nop

    nop

    iget v5, v4, Lsnx;->b:I

    nop

    nop

    nop

    or-int/lit8 v5, v5, 0x4

    nop

    nop

    iput v5, v4, Lsnx;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, v4, Lsnx;->e:Z

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    check-cast v3, Lsnx;

    nop

    iget-object v4, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_5

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_5
    iget-object v4, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast v4, Lsnu;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lsnu;->j:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ltkv;->c()Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_6

    nop

    nop

    nop

    invoke-static {v5}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v5

    nop

    iput-object v5, v4, Lsnu;->j:Ltkv;

    nop

    nop

    :cond_6
    iget-object v4, v4, Lsnu;->j:Ltkv;

    nop

    invoke-interface {v4, v3}, Ltkv;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    :cond_7
    iget v0, p0, Lkjg;->d:I

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_8
    iget-object p1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lsnu;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lsnu;->a:Lsnu;

    nop

    nop

    nop

    add-int/lit8 v1, v0, -0x1

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    iput v1, p1, Lsnu;->l:I

    nop

    nop

    nop

    iget v0, p1, Lsnu;->b:I

    nop

    nop

    nop

    or-int/lit16 v0, v0, 0x100

    nop

    nop

    nop

    iput v0, p1, Lsnu;->b:I

    nop

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

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x16

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

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_0

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

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_a

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4

    nop

    :goto_9
    goto/32 :goto_5

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

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :try_start_1
    throw p1

    nop

    :catchall_0
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
