.class final Luoc;
.super Lumz;
.source "PG"


# static fields
.field public static final a:Luoc;

.field private static final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final c:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Luoc;->c:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Luoc;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Luoc;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    new-instance v0, Luoc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    sput-object v0, Luoc;->a:Luoc;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lumz;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lubk;
    .locals 5

    goto/32 :goto_38

    nop

    nop

    :goto_0
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

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

    goto/32 :goto_16

    nop

    nop

    :goto_7
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_33

    nop

    :goto_9
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1d

    nop

    nop

    :goto_e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/32 :goto_28

    nop

    nop

    :goto_10
    return-object v4

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

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    :goto_12
    if-lt v3, v1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v2, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    :goto_14
    if-lt v2, v1, :cond_3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v2, v2, 0x1

    nop

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

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_1

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_11

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1c
    if-nez v4, :cond_4

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    :goto_1d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1f
    return-object v1

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw p1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2b
    return-object v4

    nop

    nop

    nop

    :goto_2c
    :try_start_0
    invoke-static {p1}, Lune;->b(Ljava/lang/Class;)Lubk;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_1
    sget-object v1, Luoc;->c:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lubk;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_34

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    :goto_32
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/32 :goto_23

    nop

    nop

    :goto_37
    sget-object p0, Luoc;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_38
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_39
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_2
    sget-object v3, Luoc;->c:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lubk;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
