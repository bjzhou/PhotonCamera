.class public final Lpiv;
.super Lpuq;
.source "PG"


# instance fields
.field final a:Ljava/util/List;

.field private final b:Lpcu;

.field private final c:Ljava/util/Set;

.field private final d:Landroid/util/LongSparseArray;

.field private e:Z


# direct methods
.method public constructor <init>(Lows;Lpcu;)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_1
    const/16 v1, 0x13

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    nop

    nop

    :goto_4
    invoke-direct {p2, p0, v1, v0}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2}, Lows;->d(Lpci;)V

    goto/32 :goto_c

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, p0, Lpiv;->d:Landroid/util/LongSparseArray;

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

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_14

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

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p2, v1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    new-instance p2, Lndt;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    new-instance v1, Landroid/util/LongSparseArray;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    nop

    :goto_14
    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v1, p0, Lpiv;->a:Ljava/util/List;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_19
    const-string v1, "MetadataDst"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    iput-object p2, p0, Lpiv;->b:Lpcu;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v1, p0, Lpiv;->c:Ljava/util/Set;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean v1, p0, Lpiv;->e:Z

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop
.end method

.method private static final bP(Ljava/util/Collection;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lpir;->k(Lpro;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xf

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

    :goto_4
    check-cast v0, Lpir;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpro;)V
    .locals 13

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpiv;->e:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    :cond_0
    invoke-interface {p1}, Lpro;->e()J

    move-result-wide v0

    nop

    iget-object v2, p0, Lpiv;->d:Landroid/util/LongSparseArray;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v0, v1, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v2, p0, Lpiv;->d:Landroid/util/LongSparseArray;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    const/16 v3, 0x8

    nop

    if-lt v2, v3, :cond_1

    nop

    nop

    nop

    iget-object v2, p0, Lpiv;->d:Landroid/util/LongSparseArray;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_3

    nop

    nop

    :cond_1
    const-wide/16 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lpiv;->c:Ljava/util/Set;

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :cond_2
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    nop

    nop

    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lpir;

    nop

    nop

    nop

    nop

    iget-object v8, v5, Lpir;->c:Lpgi;

    nop

    if-eqz v8, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpro;->e()J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    iget-wide v11, v8, Lpgi;->c:J

    nop

    nop

    nop

    nop

    cmp-long v8, v11, v9

    nop

    nop

    nop

    nop

    if-nez v8, :cond_3

    nop

    nop

    invoke-virtual {v5, p1}, Lpir;->k(Lpro;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    cmp-long v6, v3, v6

    nop

    if-ltz v6, :cond_2

    nop

    nop

    nop

    cmp-long v6, v11, v3

    nop

    nop

    if-gez v6, :cond_2

    nop

    nop

    nop

    iget-object v6, p0, Lpiv;->a:Ljava/util/List;

    nop

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    nop

    nop

    :cond_4
    iget-object v2, p0, Lpiv;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    if-nez v2, :cond_8

    nop

    iget-object v2, p0, Lpiv;->d:Landroid/util/LongSparseArray;

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    nop

    nop

    nop

    add-int/lit8 v5, v5, -0x1

    nop

    invoke-virtual {v2, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lpro;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v5}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    invoke-virtual {v2, v5}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    iget-object v2, p0, Lpiv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lpir;

    nop

    nop

    nop

    nop

    iget-object v8, v7, Lpir;->c:Lpgi;

    nop

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v9, v8, Lpgi;->c:J

    nop

    cmp-long v11, v9, v0

    nop

    nop

    nop

    nop

    if-nez v11, :cond_6

    nop

    nop

    nop

    invoke-virtual {v7, p1}, Lpir;->k(Lpro;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    nop

    nop

    :cond_6
    sub-long v9, v3, v9

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v11, 0x64

    nop

    nop

    cmp-long v9, v9, v11

    nop

    if-gtz v9, :cond_7

    nop

    nop

    nop

    nop

    iget-wide v8, v8, Lpgi;->b:J

    nop

    nop

    nop

    sub-long v8, v5, v8

    nop

    const-wide v10, 0xee6b2800L

    nop

    nop

    nop

    nop

    nop

    cmp-long v8, v8, v10

    nop

    nop

    nop

    if-gtz v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lpiv;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    nop

    const/16 v9, 0xa

    nop

    nop

    if-le v8, v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    :cond_7
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Lpir;->k(Lpro;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_5

    nop

    nop

    :cond_8
    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_9
    goto/32 :goto_9

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    return-void

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

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final declared-synchronized cI(Lpna;)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

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

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto :goto_f

    nop

    nop

    nop

    :cond_1
    :goto_a
    goto/32 :goto_14

    nop

    nop

    :goto_b
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_1
    iget-boolean v1, p0, Lpiv;->e:Z

    nop

    if-eqz v1, :cond_2

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_2
    iget-object v1, p0, Lpiv;->b:Lpcu;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lpna;->b()J

    move-result-wide v2

    nop

    invoke-virtual {p1}, Lpna;->c()Z

    move-result v4

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v5, v4, :cond_3

    nop

    const/4 v4, 0x0

    nop

    sget-object v4, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->keEakL:Ljava/lang/String;

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    const-string v4, " (images were captured)"

    nop

    nop

    nop

    :goto_d
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpcu;->h(Ljava/lang/String;)V

    :goto_e
    iget-object v0, p0, Lpiv;->c:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :cond_4
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lpir;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lpir;->c:Lpgi;

    nop

    if-eqz v2, :cond_4

    nop

    nop

    invoke-virtual {p1}, Lpna;->b()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    iget-wide v5, v2, Lpgi;->c:J

    nop

    nop

    cmp-long v2, v5, v3

    nop

    nop

    nop

    if-nez v2, :cond_4

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-virtual {v1, v2}, Lpir;->k(Lpro;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x11

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

    :goto_11
    monitor-enter p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v0, "onCaptureFailed for Frame "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized q()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    return-void

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

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

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

    :goto_5
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Lpiv;->e:Z

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    iput-boolean v0, p0, Lpiv;->e:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpiv;->a:Ljava/util/List;

    nop

    invoke-static {v0}, Lpiv;->bP(Ljava/util/Collection;)V

    iget-object v0, p0, Lpiv;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lpiv;->bP(Ljava/util/Collection;)V

    iget-object v0, p0, Lpiv;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lpiv;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop
.end method

.method public final declared-synchronized r(Ljava/util/Collection;)V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto :goto_8

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

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
    goto/32 :goto_f

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

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lpir;

    nop

    iget-object v1, v0, Lpir;->c:Lpgi;

    nop

    if-eqz v1, :cond_3

    nop

    iget-object v2, p0, Lpiv;->d:Landroid/util/LongSparseArray;

    nop

    nop

    iget-wide v3, v1, Lpgi;->c:J

    nop

    nop

    nop

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpro;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    invoke-virtual {v0, v1}, Lpir;->k(Lpro;)V

    goto :goto_8

    nop

    nop

    nop

    :cond_2
    iget-object v1, p0, Lpiv;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    nop

    nop

    nop

    :cond_3
    iget-object v1, p0, Lpiv;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    :try_start_2
    iget-boolean v0, p0, Lpiv;->e:Z

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    invoke-static {p1}, Lpiv;->bP(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop
.end method
