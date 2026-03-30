.class public final Lpot;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpse;


# instance fields
.field public final a:Lpse;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public d:I

.field public e:Z

.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lpse;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpot;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpot;->f:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lpot;->a:Lpse;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    monitor-exit v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    monitor-exit v0

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

    :goto_5
    monitor-exit v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    monitor-exit v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_11
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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lpot;->f:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpoq;

    nop

    invoke-virtual {v1}, Lpru;->f()Lprw;

    move-result-object v2

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lpru;->h()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    monitor-enter v0

    nop

    nop

    nop

    :try_start_2
    iget-boolean v1, p0, Lpot;->c:Z

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lpot;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    :try_start_3
    iget v1, p0, Lpot;->d:I

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    iput-boolean v1, p0, Lpot;->c:Z

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpot;->a:Lpse;

    nop

    nop

    nop

    invoke-interface {p0}, Lpse;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lpot;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final c(Ludp;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    sget v0, Luct;->a:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    const v1, 0x20

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpnn;->a:Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-class v1, Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lucb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, v0}, Ludp;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lpnn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lpot;->a:Lpse;

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpot;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lpot;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lpot;->c:Z

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lpot;->e:Z

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const/4 v1, 0x1

    nop

    nop

    nop

    iput-boolean v1, p0, Lpot;->e:Z

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

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

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x5

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method
