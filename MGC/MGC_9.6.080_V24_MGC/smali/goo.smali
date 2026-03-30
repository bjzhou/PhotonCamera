.class public final Lgoo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgpm;


# instance fields
.field public final a:Lppp;

.field public final b:Ljava/util/List;

.field private final c:Ljava/lang/Object;

.field private d:I


# direct methods
.method public constructor <init>(Lppp;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lgoo;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-object v0, p0, Lgoo;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

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
    iput-object p1, p0, Lgoo;->a:Lppp;

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

    :goto_9
    new-instance v0, Ljava/lang/Object;

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
    iput-object v0, p0, Lgoo;->c:Ljava/lang/Object;

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
.end method

.method private final da190e616797844b591057d0190e7728m(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgoo;->c:Ljava/lang/Object;

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

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iput p1, p0, Lgoo;->d:I

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lgpi;)Lpci;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v1, 0x14

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

    :goto_2
    invoke-direct {v0, p0, p1, v1}, Lfyz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lfyz;

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

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

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

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lgoo;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const v0, 0xc

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    const/16 v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lgoo;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgoo;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lgpi;

    nop

    invoke-interface {v2}, Lgpi;->d()V

    goto :goto_6

    nop

    :cond_0
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lgoo;->da190e616797844b591057d0190e7728m(I)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const v0, 0x11

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgoo;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lgoo;->d:I

    nop

    if-eqz v1, :cond_2

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x3

    nop

    invoke-direct {p0, v1}, Lgoo;->da190e616797844b591057d0190e7728m(I)V

    iget-object v1, p0, Lgoo;->b:Ljava/util/List;

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lgpi;

    nop

    nop

    nop

    invoke-interface {v2}, Lgpi;->e()V

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x4

    nop

    invoke-direct {p0, v1}, Lgoo;->da190e616797844b591057d0190e7728m(I)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_2
    const/4 p0, 0x0

    nop

    nop

    throw p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v0, 0xf

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lgoo;->c:Ljava/lang/Object;

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

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
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lgoo;->d:I

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    invoke-virtual {p0}, Lgoo;->c()V

    :cond_0
    iget-object v1, p0, Lgoo;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lgpi;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lgpi;->c()V

    goto :goto_7

    nop

    nop

    nop

    :cond_1
    invoke-direct {p0, v2}, Lgoo;->da190e616797844b591057d0190e7728m(I)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_2
    const/4 p0, 0x0

    nop

    nop

    nop

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

    monitor-exit v0

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

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

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

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_4

    nop
.end method
