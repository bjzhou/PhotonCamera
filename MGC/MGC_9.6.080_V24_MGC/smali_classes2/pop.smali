.class public final Lpop;
.super Lpru;
.source "PG"

# interfaces
.implements Lpsb;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lpsb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lpop;->d:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lpru;-><init>(Lpsb;)V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lpop;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    iput-object p1, p0, Lpop;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lpop;->d:Z

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lpop;->b:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lpop;->b:Z

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lpop;->j()V

    monitor-exit v0

    nop

    return-void

    nop

    :cond_1
    :goto_1
    monitor-exit v0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpop;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_7
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const v1, 0x1f

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

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final f()Lprw;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const v0, 0x11

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lpop;->b:Z

    nop

    if-nez v1, :cond_1

    nop

    iget-boolean v1, p0, Lpop;->d:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-super {p0}, Lpru;->f()Lprw;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    iget v2, p0, Lpop;->c:I

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    iput v2, p0, Lpop;->c:I

    nop

    new-instance v2, Lpoo;

    nop

    nop

    nop

    invoke-direct {v2, p0, v1}, Lpoo;-><init>(Lpop;Lprw;)V

    monitor-exit v0

    nop

    nop

    nop

    return-object v2

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    return-object p0

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

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object v0, p0, Lpop;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final g()Lprw;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    iget-object v0, p0, Lpop;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
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

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lpop;->b:Z

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    iget-boolean v1, p0, Lpop;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    invoke-super {p0}, Lpru;->g()Lprw;

    move-result-object v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    iget v2, p0, Lpop;->c:I

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    iput v2, p0, Lpop;->c:I

    nop

    nop

    nop

    nop

    new-instance v2, Lpoo;

    nop

    nop

    nop

    invoke-direct {v2, p0, v1}, Lpoo;-><init>(Lpop;Lprw;)V

    monitor-exit v0

    nop

    return-object v2

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    const/4 p0, 0x0

    nop

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1f

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final i(Lpsa;Landroid/os/Handler;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, v0, p2}, Lpru;->i(Lpsa;Landroid/os/Handler;)V

    goto/32 :goto_1

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

    :goto_2
    invoke-direct {v0, p0, p1}, Lpon;-><init>(Lpop;Lpsa;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lpon;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 1

    goto/32 :goto_8

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
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iget v0, p0, Lpop;->c:I

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lpop;->d:Z

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

    :goto_9
    iput-boolean v0, p0, Lpop;->d:Z

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

    :goto_a
    invoke-super {p0}, Lpru;->close()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lpru;->h()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0}, Lpru;->f()Lprw;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0}, Lprw;->close()V

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
