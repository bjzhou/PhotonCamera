.class public final Lbvz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lbwa;->a:Lbwb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    iput-object v0, p0, Lbvz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

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

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    const v1, 0xe

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lbvz;->b:Ljava/lang/Object;

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

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lbvz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    aget-object p0, p0, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    if-gez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lbwd;->a()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lbwb;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

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

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_d
    goto/32 :goto_1a

    nop

    :goto_e
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1}, Lbwb;->a(J)I

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    iget-object p0, p0, Lbvz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    sget-wide v2, Lbwc;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    :goto_14
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lbwb;->c:[Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x12

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    :goto_1b
    cmp-long v2, v0, v2

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 17

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    goto/32 :goto_1c

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
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v4, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v1, v0, Lbvz;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v5, v0, Lbvz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lbwb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v2, v3}, Lbwb;->a(J)I

    move-result v6

    nop

    nop

    nop

    if-gez v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lbvz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    iget v6, v5, Lbwb;->a:I

    nop

    iget-object v7, v5, Lbwb;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    array-length v8, v7

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    move v10, v9

    nop

    nop

    nop

    nop

    nop

    move v11, v10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ge v10, v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    aget-object v12, v7, v10

    nop

    nop

    nop

    if-eqz v12, :cond_2

    nop

    nop

    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    :cond_2
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    add-int/lit8 v7, v11, 0x1

    nop

    nop

    new-array v8, v7, [J

    nop

    new-array v10, v7, [Ljava/lang/Object;

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    if-le v7, v12, :cond_9

    nop

    nop

    nop

    move v12, v9

    nop

    nop

    nop

    nop

    :goto_b
    if-ge v9, v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    if-ge v12, v6, :cond_6

    nop

    nop

    iget-object v13, v5, Lbwb;->b:[J

    nop

    nop

    nop

    aget-wide v13, v13, v12

    nop

    nop

    iget-object v15, v5, Lbwb;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    aget-object v15, v15, v12

    nop

    nop

    nop

    cmp-long v16, v13, v2

    nop

    nop

    nop

    nop

    nop

    if-lez v16, :cond_4

    nop

    aput-wide v2, v8, v9

    nop

    aput-object v1, v10, v9

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    :cond_4
    if-eqz v15, :cond_5

    nop

    aput-wide v13, v8, v9

    nop

    nop

    aput-object v15, v10, v9

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v9, 0x1

    nop

    :cond_5
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    :cond_6
    :goto_c
    if-ne v12, v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    aput-wide v2, v8, v11

    nop

    nop

    nop

    nop

    nop

    aput-object v1, v10, v11

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_7
    :goto_d
    if-ge v9, v7, :cond_a

    nop

    iget-object v1, v5, Lbwb;->b:[J

    nop

    nop

    nop

    nop

    aget-wide v1, v1, v12

    nop

    nop

    iget-object v3, v5, Lbwb;->c:[Ljava/lang/Object;

    nop

    aget-object v3, v3, v12

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_8

    nop

    nop

    nop

    aput-wide v1, v8, v9

    nop

    nop

    nop

    nop

    nop

    aput-object v3, v10, v9

    nop

    nop

    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    :cond_8
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    :cond_9
    aput-wide v2, v8, v9

    nop

    aput-object v1, v10, v9

    nop

    :cond_a
    :goto_e
    new-instance v1, Lbwb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v7, v8, v10}, Lbwb;-><init>(I[J[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    :goto_f
    monitor-exit v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Lbwd;->a()J

    move-result-wide v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit v4

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

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :cond_b
    :try_start_1
    iget-object v0, v5, Lbwb;->c:[Ljava/lang/Object;

    nop

    aput-object v1, v0, v6

    nop

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

    nop

    :goto_14
    iget-object v4, v0, Lbvz;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    cmp-long v4, v2, v4

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    sget-wide v4, Lbwc;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
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

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    const v1, 0x1f

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

    :goto_1d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    monitor-exit v4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
