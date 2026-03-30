.class public final Lkfx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkgn;


# instance fields
.field private final a:Lkgn;

.field private b:Lprw;

.field private c:Z


# direct methods
.method public constructor <init>(Lkgn;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lkfx;->b:Lprw;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkfx;->a:Lkgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lkfx;->c:Z

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

    :goto_6
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
.end method


# virtual methods
.method public final declared-synchronized a(Lprw;)Z
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    goto/32 :goto_6

    nop

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
    iget-boolean v0, p0, Lkfx;->c:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkfx;->a:Lkgn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lkgn;->a(Lprw;)Z

    move-result p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_d

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

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

    goto/32 :goto_5

    nop

    nop

    :goto_7
    return p1

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    return p1

    nop

    nop

    nop

    :cond_1
    :try_start_2
    new-instance v0, Lpol;

    nop

    nop

    nop

    invoke-direct {v0, p1}, Lpol;-><init>(Lprw;)V

    iget-object p1, p0, Lkfx;->b:Lprw;

    nop

    nop

    if-eqz p1, :cond_2

    nop

    invoke-interface {p1}, Lprw;->close()V

    :cond_2
    invoke-virtual {v0}, Lpol;->k()Lprw;

    move-result-object p1

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lprt;->d()J

    move-result-wide v1

    nop

    const-wide/32 v3, 0x186a0

    nop

    nop

    nop

    nop

    add-long/2addr v1, v3

    nop

    nop

    new-instance v3, Lkii;

    nop

    invoke-direct {v3, p1, v1, v2}, Lkii;-><init>(Lprw;J)V

    iput-object v3, p0, Lkfx;->b:Lprw;

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lkfx;->a:Lkgn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lkgn;->a(Lprw;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x13

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

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    monitor-exit p0

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

    :goto_c
    throw p1

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Lkfx;->c:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lkfx;->b:Lprw;

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    iget-object v1, p0, Lkfx;->a:Lkgn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lkgn;->a(Lprw;)Z

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lkfx;->b:Lprw;

    nop

    :cond_0
    monitor-exit p0

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

    nop

    :goto_6
    iget-object p0, p0, Lkfx;->a:Lkgn;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_8
    add-int v0, v0, v1

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

    nop

    nop

    :goto_9
    invoke-interface {p0}, Lkgn;->close()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method
