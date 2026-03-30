.class public final Lggv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lggv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lggu;)Lpci;
    .locals 3

    goto/32 :goto_4

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
    iget-object v0, p0, Lggv;->a:Ljava/util/List;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lfyz;

    nop

    nop

    const/16 v1, 0x8

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p1, v1, v2}, Lfyz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    return-object v0

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

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    throw p1

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized iterator()Ljava/util/Iterator;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    nop

    nop

    :goto_1
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

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

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lggv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

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

    :goto_7
    goto/32 :goto_3

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    throw v0

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
