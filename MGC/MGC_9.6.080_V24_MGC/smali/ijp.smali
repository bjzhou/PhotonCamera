.class public final Lijp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final a:I

.field private final b:Landroid/os/Handler;

.field private c:Lpge;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lhoh;)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p1, p0, Lijp;->b:Landroid/os/Handler;

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

    :goto_5
    iput p1, p0, Lijp;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    sget-object p1, Lhmu;->g:Lhmo;

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    const/16 p2, 0x267

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    check-cast p1, Lpge;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lijp;->c(Lpge;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final declared-synchronized b(J)Lpge;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lijp;->c:Lpge;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    invoke-interface {v0}, Lpge;->f()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    invoke-interface {v0}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    iget-object v0, p0, Lijp;->c:Lpge;

    nop

    nop

    invoke-interface {v0}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v0, Lpgi;->b:J

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr p1, v0

    nop

    iget v0, p0, Lijp;->a:I

    nop

    nop

    nop

    int-to-long v0, v0

    nop

    nop

    nop

    nop

    cmp-long p1, p1, v0

    nop

    nop

    if-gez p1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lijp;->c:Lpge;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lpge;->a()Lpge;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    :cond_0
    :try_start_1
    iget-object p1, p0, Lijp;->c:Lpge;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lpge;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

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

    goto/32 :goto_6

    nop

    nop

    :goto_e
    monitor-exit p0

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lpge;)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lpge;->f()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    :cond_1
    iget-object v0, p0, Lijp;->c:Lpge;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpge;->f()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    invoke-interface {v0}, Lpge;->close()V

    :cond_2
    iput-object p1, p0, Lijp;->c:Lpge;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lijp;->b:Landroid/os/Handler;

    nop

    new-instance v1, Libm;

    nop

    const/16 v2, 0xd

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-direct {v1, p0, p1, v2, v3}, Libm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iget p1, p0, Lijp;->a:I

    nop

    int-to-long v2, p1

    nop

    nop

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    return-void

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

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    goto/32 :goto_f

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    const v1, 0x10

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
.end method
