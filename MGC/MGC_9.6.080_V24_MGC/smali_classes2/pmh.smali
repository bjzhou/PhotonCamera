.class public final Lpmh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpmo;
.implements Lpci;


# instance fields
.field private final a:Lphh;

.field private final b:Ljava/util/List;

.field private final c:Lpmq;

.field private d:Lpgi;

.field private e:Lphk;

.field private f:Z

.field private g:Z


# direct methods
.method private final declared-synchronized 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpmh;->g:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v0, 0x1

    nop

    iput-boolean v0, p0, Lpmh;->g:Z

    nop

    nop

    nop

    iget-object v0, p0, Lpmh;->b:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    iget-object v0, p0, Lpmh;->b:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpir;

    nop

    nop

    nop

    invoke-virtual {v1}, Lpir;->i()V

    goto :goto_2

    nop

    nop

    :cond_1
    iget-object v0, p0, Lpmh;->b:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_3
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

    goto/32 :goto_9

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_7

    nop

    :goto_d
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lphh;Lpmq;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lpmh;->g:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lpmh;->d:Lpgi;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpmh;->a:Lphh;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lpmh;->f:Z

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
    iput-object v0, p0, Lpmh;->e:Lphk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpmh;->b:Ljava/util/List;

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

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    iput-object p2, p0, Lpmh;->c:Lpmq;

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

    :goto_c
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Lphh;Lpmq;)Lpmo;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lpmq;->e(Lpci;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lpmh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Lpmh;-><init>(Lphh;Lpmq;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lpci;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lpmq;->a()Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpmh;->c:Lpmq;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b()Lpci;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lpmq;->b()Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpmh;->c:Lpmq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()Lpgi;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpmh;->d:Lpgi;

    nop

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

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

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

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 1

    goto/32 :goto_0

    nop

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

    nop

    :try_start_0
    invoke-direct {p0}, Lpmh;->7ecc92917e9c4556cc19f457ddc41af8m()V

    const/4 v0, 0x0

    nop

    nop

    nop

    iput-object v0, p0, Lpmh;->e:Lphk;

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

    nop

    :goto_1
    return-void

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final d()Lphh;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpmh;->a:Lphh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized h()Ljava/util/List;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    iget-object v1, p0, Lpmh;->c:Lpmq;

    nop

    nop

    iget-object v2, v0, Lphk;->b:Lprw;

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    invoke-virtual {v1}, Lpmq;->b()Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lpmr;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2, v1}, Lpmr;-><init>(Lprw;Lpci;)V

    :cond_2
    iget-object v0, v0, Lphk;->a:Lpnx;

    nop

    new-instance v1, Lphk;

    nop

    nop

    invoke-direct {v1, v0, v3}, Lphk;-><init>(Lpnx;Lprw;)V

    invoke-static {v1}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v0

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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpmh;->e:Lphk;

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    sget v0, Lryb;->d:I

    nop

    nop

    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_a
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized i(Lphk;)V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_2

    nop

    nop

    :goto_1
    :try_start_0
    iget-object v0, p1, Lphk;->b:Lprw;

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    const/4 v2, 0x1

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lpmh;->d:Lpgi;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_0

    nop

    goto :goto_3

    nop

    :cond_0
    move v3, v1

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    :cond_1
    :goto_3
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v3}, Lqrg;->B(Z)V

    iget-boolean v3, p0, Lpmh;->f:Z

    nop

    if-eqz v3, :cond_4

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

    iget-object p1, p0, Lpmh;->e:Lphk;

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lphk;->b:Lprw;

    nop

    if-nez p1, :cond_3

    nop

    :cond_2
    move v1, v2

    nop

    nop

    :cond_3
    iget-object p1, p0, Lpmh;->d:Lpgi;

    nop

    nop

    nop

    iget-object v0, p0, Lpmh;->a:Lphh;

    nop

    nop

    nop

    nop

    const-string v2, "Received a valid image but a non-null image was already set for frame %s on %s!"

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, p1, v0}, Lqrg;->E(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_5

    nop

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

    goto/32 :goto_8

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :cond_4
    :try_start_1
    iput-boolean v2, p0, Lpmh;->f:Z

    nop

    if-eqz v0, :cond_5

    nop

    nop

    iget-object v1, p0, Lpmh;->d:Lpgi;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lpmh;->c:Lpmq;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lpmq;->e(Lpci;)V

    iget-object v0, p0, Lpmh;->c:Lpmq;

    nop

    nop

    nop

    invoke-virtual {v0}, Lpmq;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_6

    nop

    nop

    nop

    iput-object p1, p0, Lpmh;->e:Lphk;

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    :cond_5
    iget-object p1, p0, Lpmh;->c:Lpmq;

    nop

    nop

    nop

    monitor-enter p1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v2, p1, Lpmq;->c:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p1, Lpmq;->d:Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lows;->close()V

    :cond_6
    :goto_9
    invoke-direct {p0}, Lpmh;->7ecc92917e9c4556cc19f457ddc41af8m()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    :goto_c
    if-lez v0, :cond_8

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

    :cond_8
    goto/32 :goto_13

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    const v1, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    const v0, 0x1e

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

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_4
    monitor-exit p1

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized j(Lpgi;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpmh;->f:Z

    nop

    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpmh;->a:Lphh;

    nop

    const-string v2, "An image was already set for frame %s on %s!"

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, p1, v1}, Lqrg;->E(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lpmh;->d:Lpgi;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
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

    :try_start_1
    monitor-exit p0

    nop

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
.end method

.method public final declared-synchronized k(Lpir;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
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

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    throw p1

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

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lpmh;->g:Z

    nop

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p1}, Lpir;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :cond_0
    :try_start_2
    iget-object v0, p0, Lpmh;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

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

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpmh;->d:Lpgi;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :cond_0
    iget-wide v0, v0, Lpgi;->c:J

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    :goto_9
    const-string v1, "ImageStreamResult-"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop
.end method
