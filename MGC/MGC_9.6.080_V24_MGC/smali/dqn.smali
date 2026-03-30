.class public abstract Ldqn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsui;


# static fields
.field static final a:Z

.field static final b:Ldqe;

.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Ljava/lang/Object;


# instance fields
.field volatile listeners:Ldqi;

.field volatile value:Ljava/lang/Object;

.field volatile waiters:Ldqm;


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(Ljava/lang/StringBuilder;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catch_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    const-string p0, "CANCELLED"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const-string v0, "]"

    nop

    nop

    :try_start_0
    invoke-static {p0}, La;->at(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v2, "SUCCESS, result=["

    nop

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ldqn;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const-string p0, " thrown from get()]"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "UNKNOWN, cause=["

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

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    const-string v1, "FAILURE, cause=["

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :catch_2
    move-exception p0

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Ldqm;)V
    .locals 4

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Ldqn;->waiters:Ldqm;

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

    nop

    nop

    :goto_1
    goto :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    iget-object v2, p1, Ldqm;->next:Ldqm;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_20

    nop

    nop

    :goto_a
    iput-object v0, p1, Ldqm;->thread:Ljava/lang/Thread;

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, v1, Ldqm;->thread:Ljava/lang/Thread;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, p0, p1, v2}, Ldqe;->e(Ldqn;Ldqm;Ldqm;)Z

    move-result p1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    if-ne p1, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v3, Ldqn;->b:Ldqe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    :goto_15
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    if-nez p1, :cond_5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v1, Ldqm;->a:Ldqm;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v2, v1, Ldqm;->next:Ldqm;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    move-object p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_21
    move-object v1, p1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    move-object v1, v0

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    :goto_24
    iget-object v3, p1, Ldqm;->thread:Ljava/lang/Thread;

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

    :goto_25
    const v0, 0xe

    nop

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

    :goto_26
    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1}, Ldql;-><init>()V

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/Object;

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

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    sget-object v1, Ldqn;->c:Ljava/util/logging/Logger;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    const-class v0, Ldqn;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_16
    sput-boolean v0, Ldqn;->a:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v3, "SafeAtomicHelper is broken!"

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v1, Ldqn;->b:Ldqe;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_2

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "false"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    const v1, 0x9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1e
    sput-object v1, Ldqn;->c:Ljava/util/logging/Logger;

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ldqj;

    nop

    nop

    const-class v2, Ldqm;

    nop

    nop

    nop

    nop

    const-class v3, Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "thread"

    nop

    nop

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    nop

    const-class v2, Ldqm;

    nop

    nop

    const-class v4, Ldqm;

    nop

    const-string v5, "next"

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    nop

    nop

    nop

    nop

    const-class v2, Ldqm;

    nop

    const-string v5, "waiters"

    nop

    invoke-static {v0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    const-class v2, Ldqi;

    nop

    const-string v6, "listeners"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    nop

    nop

    nop

    const-class v2, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const-string v7, "value"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v7}, Ldqj;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

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

    :goto_20
    new-instance v1, Ldql;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    sput-object v0, Ldqn;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method static a(Lsui;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v2, v0, Ldqf;->c:Z

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

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

    :goto_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p0, Ldqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Ldqf;->b:Ldqf;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Lsui;->isCancelled()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_b
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, v0, Ldqf;->d:Ljava/lang/Throwable;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    sget-boolean v2, Ldqn;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Ldqh;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3b

    nop

    nop

    :goto_11
    sget-object p0, Ldqf;->b:Ldqf;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0}, Ldqh;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ldqh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    :goto_19
    move-object p0, v2

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Ldqh;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    xor-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ldqf;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    :try_start_0
    invoke-static {p0}, La;->at(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    sget-object p0, Ldqn;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_29

    nop

    nop

    :goto_23
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, p0}, Ldqh;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_25
    instance-of v0, p0, Ldqn;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    check-cast v0, Ldqf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, v1, v2}, Ldqf;-><init>(ZLjava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v2, :cond_4

    nop

    goto/32 :goto_1a

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_1a

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Ldqh;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2f
    and-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, v1, p0}, Ldqf;-><init>(ZLjava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p0, Ldqf;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_33
    check-cast p0, Ldqn;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_34
    const v1, 0x16

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_1a

    nop

    :goto_38
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_39
    const v0, 0x13

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-object v0

    nop

    nop

    nop

    :catch_1
    move-exception v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_5

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method static d(Ldqn;)V
    .locals 5

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v3, Ldqn;->b:Ldqe;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    if-eq v3, v1, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v3, v2, Ldqm;->thread:Ljava/lang/Thread;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v4, p0, v1, v3}, Ldqe;->d(Ldqn;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_8
    invoke-virtual {v3, p0, v2, v4}, Ldqe;->e(Ldqn;Ldqm;Ldqm;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    goto/32 :goto_2a

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

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Ldqi;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-object v2, p0, Ldqi;->next:Ldqi;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_23

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v4, Ldqm;->a:Ldqm;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_2
    :goto_13
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, p0}, Ldqn;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_15
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Ldqi;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_3
    :goto_19
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    instance-of v3, v1, Ldqk;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Ldqn;->listeners:Ldqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3, p0, v2, v4}, Ldqe;->c(Ldqn;Ldqi;Ldqi;)Z

    move-result v3

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

    :goto_21
    const v0, 0x1a

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_13

    nop

    :goto_23
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_24
    move-object v1, v0

    nop

    nop

    :goto_25
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, v1, Ldqk;->a:Ldqn;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    :goto_28
    iget-object v2, v2, Ldqm;->next:Ldqm;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v4, Ldqn;->b:Ldqe;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2c
    iget-object v2, p0, Ldqn;->waiters:Ldqm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2d
    move-object v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2e
    iget-object v2, v1, Ldqi;->next:Ldqi;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object p0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v1, Ldqk;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_31
    if-nez v3, :cond_6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    :goto_32
    sget-object v4, Ldqi;->a:Ldqi;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p0, :cond_7

    nop

    goto/32 :goto_10

    nop

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

    :goto_34
    iget-object v3, v1, Ldqk;->b:Lsui;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object p0, v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :goto_38
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_39
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_3a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object p0, v1, Ldqi;->next:Ldqi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3c
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v3, Ldqn;->b:Ldqe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v0, v2, Ldqm;->thread:Ljava/lang/Thread;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_40
    invoke-static {v3}, Ldqn;->a(Lsui;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const-string p0, "this future"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    return-object p0

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
    if-eq p1, p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method static f(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
.end method

.method private static i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    :goto_1
    invoke-static {p1, p0, v3, v4}, La;->bp(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_2
    const v0, 0x11

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    sget-object v1, Ldqn;->c:Ljava/util/logging/Logger;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v4, " with executor "

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v3, "RuntimeException while executing runnable "

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

    :goto_b
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ldqf;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Ldqh;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    sget-object v0, Ldqn;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    instance-of v0, p0, Ldqh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    instance-of v0, p0, Ldqf;

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

    :goto_f
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Ldqh;->b:Ljava/lang/Throwable;

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
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "Task was cancelled."

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    if-eq p0, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xd

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Ldqf;->d:Ljava/lang/Throwable;

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

    :goto_1e
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    const v1, 0x1f

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    iget-object v0, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_4
    const-string v1, "remaining delay=["

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, " ms]"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    instance-of v1, v0, Ldqk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Ldqk;->b:Lsui;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

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

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string p0, "]"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, v0}, Ldqn;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Ldqk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    const-string v2, "setFuture=["

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    invoke-static {p2}, Ldqn;->f(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Ldqi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_9
    invoke-virtual {v2, p0, v0, v1}, Ldqe;->c(Ldqn;Ldqi;Ldqi;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, v1, Ldqi;->next:Ldqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p2}, Ldqn;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    sget-object v2, Ldqi;->a:Ldqi;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p1, p2}, Ldqi;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Ldqn;->listeners:Ldqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    :goto_17
    iget-object v0, p0, Ldqn;->listeners:Ldqi;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    sget-object v1, Ldqi;->a:Ldqi;

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

    :goto_19
    sget-object v2, Ldqn;->b:Ldqe;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq v0, v2, :cond_3

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

    :cond_3
    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final cancel(Z)Z
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    or-int/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v4, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_39

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v4, v3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v5, p0, v0, v1}, Ldqe;->d(Ldqn;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    :goto_11
    sget-object v5, Ldqn;->b:Ldqe;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    invoke-direct {v1, p1, v4}, Ldqf;-><init>(ZLjava/lang/Throwable;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_16
    const-string v5, "Future.cancel() was called."

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_17
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_7

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    :goto_19
    invoke-static {p0}, Ldqn;->d(Ldqn;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v1, Ldqf;->a:Ldqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Ldqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    sget-object v1, Ldqf;->b:Ldqf;

    nop

    nop

    :goto_20
    goto/32 :goto_34

    nop

    nop

    :goto_21
    instance-of v0, p0, Ldqn;

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

    :goto_22
    or-int/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_23
    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v4, v3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    instance-of v5, v0, Ldqk;

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

    :goto_2a
    sget-boolean v1, Ldqn;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2c
    move v2, v4

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v4, :cond_a

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Ldqn;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_31
    check-cast v0, Ldqk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_34
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_37
    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_38
    move v4, v2

    nop

    :goto_39
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3a
    move v4, v3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, v0, Ldqk;->b:Lsui;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3c
    move v4, v2

    nop

    nop

    :goto_3d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    instance-of v5, v0, Ldqk;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_41
    instance-of p0, v0, Ldqk;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_26

    nop

    nop

    :goto_43
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_44
    instance-of v1, v0, Ldqk;

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

    :goto_45
    invoke-interface {p0, p1}, Lsui;->cancel(Z)Z

    :goto_46
    goto/32 :goto_30

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method protected e(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

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

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
    invoke-virtual {v0, p0, v1, p1}, Ldqe;->d(Ldqn;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    sget-object v0, Ldqn;->b:Ldqe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Ldqn;->d(Ldqn;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p1, Ldqn;->d:Ljava/lang/Object;

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    :goto_12
    if-eqz p1, :cond_2

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

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x5

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
.end method

.method public final get()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ldqn;->waiters:Ldqm;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v0, v4, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_0
    :goto_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ldqn;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v3, Ldqm;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_31

    nop

    nop

    :goto_e
    invoke-virtual {v3, v0}, Ldqm;->a(Ldqm;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    :goto_10
    sget-object v3, Ldqm;->a:Ldqm;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_11
    instance-of v4, v0, Ldqk;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Ldqn;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4, p0, v0, v3}, Ldqe;->e(Ldqn;Ldqm;Ldqm;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ldqn;->waiters:Ldqm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    and-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_30

    nop

    :goto_1a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    and-int/2addr v4, v5

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1f
    sget-object v4, Ldqn;->b:Ldqe;

    nop

    nop

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

    :goto_20
    xor-int/2addr v4, v2

    nop

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

    :goto_21
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    :goto_22
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v3}, Ldqn;->51550bab6b6440a4fd45f825c221b363m(Ldqm;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p0, Ljava/lang/InterruptedException;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    :goto_2a
    invoke-static {v0}, Ldqn;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2b
    sget-object v4, Ldqm;->a:Ldqm;

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

    nop

    :goto_2c
    xor-int/2addr v5, v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2d
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2f
    move v3, v1

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p0, Ljava/lang/InterruptedException;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_32
    iget-object p0, p0, Ldqn;->value:Ljava/lang/Object;

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

    nop

    :goto_33
    instance-of v5, v0, Ldqk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v3}, Ldqm;-><init>()V

    :goto_35
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v3, :cond_7

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

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v1, 0x1d

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

    nop

    :goto_39
    if-ne v0, v3, :cond_9

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3c
    move v3, v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    throw p0

    nop

    :goto_3e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v4, v1

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_43
    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    :goto_45
    return-object p0

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_24

    nop

    nop

    nop
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 18

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    cmp-long v6, v4, v9

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v13, 0x3e8

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v8, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_b8

    nop

    nop

    :goto_8
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_9
    const-string v2, " for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :goto_b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/lang/InterruptedException;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_f
    xor-int/2addr v6, v8

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_31

    nop

    nop

    :goto_12
    const-string v11, " (plus "

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v9, :cond_1

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_1
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide/16 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1b
    if-nez v5, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_97

    nop

    nop

    nop

    :goto_1c
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    xor-int/2addr v10, v8

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_1e
    cmp-long v6, v4, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_20
    new-instance v11, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v9, 0x0

    nop

    nop

    :goto_26
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_76

    nop

    nop

    :goto_28
    const-string v3, ","

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_29
    if-nez v4, :cond_3

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_b6

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_33

    nop

    nop

    :goto_2e
    throw v1

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v15, Ldqm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_33
    new-instance v0, Ljava/lang/InterruptedException;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_34
    move-wide v11, v9

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_37
    if-gtz v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v7, Ldqn;->b:Ldqe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    instance-of v6, v4, Ldqk;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3b
    const-string v1, "delay)"

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_3e
    cmp-long v6, v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3f
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_41
    throw v0

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-long v11, v4, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    and-int/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_45
    cmp-long v9, v4, v13

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    add-long/2addr v11, v4

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c4

    nop

    nop

    :goto_4b
    invoke-direct {v0, v15}, Ldqn;->51550bab6b6440a4fd45f825c221b363m(Ldqm;)V

    goto/32 :goto_89

    nop

    nop

    :goto_4c
    if-nez v6, :cond_6

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_6
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v4, v0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_4e
    xor-int/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_53
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_54
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move-wide/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_1a

    nop

    nop

    :goto_5a
    const-string v1, "ERROR_Ldqn"

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_5b
    sub-long v4, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_5c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_5d
    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5e
    if-eq v6, v7, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_5f
    goto/32 :goto_4

    nop

    nop

    :goto_60
    const-string v0, "ERROR_Ldqn"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b0

    nop

    nop

    :goto_62
    move v9, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_66
    cmp-long v6, v4, v13

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_68
    invoke-direct {v15}, Ldqm;-><init>()V

    :goto_69
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v12, "Waited "

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_6d
    invoke-virtual/range {p0 .. p0}, Ldqn;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_6e
    throw v0

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-gtz v3, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_9
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const-string v1, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_72
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_73
    throw v0

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v15, v6}, Ldqm;->a(Ldqm;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v4}, Ldqn;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_79
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    instance-of v10, v6, Ldqk;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_7c
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_7d
    iget-object v6, v0, Ldqn;->waiters:Ldqm;

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_7e
    goto/16 :goto_35

    nop

    :goto_7f
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_80
    if-eqz v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    :cond_b
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_81
    if-ltz v11, :cond_c

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v7, v0, v6, v15}, Ldqe;->e(Ldqn;Ldqm;Ldqm;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v6}, Ldqn;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const/4 v5, 0x0

    nop

    :goto_86
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_87
    iget-object v4, v0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    new-instance v0, Ljava/lang/InterruptedException;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_8a
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_8b
    if-gez v6, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7d

    nop

    nop

    :goto_8c
    invoke-direct {v1, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_8d
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_8e
    cmp-long v11, v11, v9

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    move v5, v8

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_90
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto/32 :goto_73

    nop

    nop

    :goto_91
    move v5, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_92
    if-gtz v9, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_94
    goto/16 :goto_b6

    nop

    :goto_95
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_96
    if-eqz v6, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_f
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {v4}, Ldqn;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_98
    if-nez v4, :cond_10

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_99
    add-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_9a
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_50

    nop

    nop

    :goto_9b
    if-nez v6, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_11
    :goto_9c
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const-string v0, " but future completed as timeout expired"

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

    nop

    :goto_9f
    if-nez v8, :cond_12

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_28

    nop

    nop

    :goto_a0
    if-nez v5, :cond_13

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_a1
    iget-object v6, v0, Ldqn;->waiters:Ldqm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sget-object v15, Ldqm;->a:Ldqm;

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_a3
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_a4
    instance-of v6, v4, Ldqk;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a5
    and-int/2addr v9, v10

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_a7
    and-int/2addr v5, v6

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

    nop

    nop

    :goto_a8
    if-ltz v6, :cond_14

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-direct {v0, v15}, Ldqn;->51550bab6b6440a4fd45f825c221b363m(Ldqm;)V

    goto/32 :goto_94

    nop

    nop

    :goto_ab
    invoke-static {v0}, Ldqn;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_ac
    sget-object v7, Ldqm;->a:Ldqm;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v6, v0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_ae
    move-object/from16 v3, p3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_af
    cmp-long v3, v11, v9

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_b0
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_b2
    if-ne v6, v15, :cond_15

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_15
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_b4
    sub-long v4, v11, v4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b5
    return-object v0

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b7
    const-string v2, " nanoseconds "

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_b8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b9
    if-gtz v6, :cond_16

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    neg-long v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_74

    nop

    :goto_be
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_bf
    sub-long v4, v4, v16

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c1
    goto/16 :goto_86

    nop

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual/range {p0 .. p0}, Ldqn;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_c5
    goto/32 :goto_be

    nop

    nop

    :goto_c6
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    if-lez v0, :cond_17

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_bd

    nop
.end method

.method public final isCancelled()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of p0, p0, Ldqf;

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
    return p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldqn;->value:Ljava/lang/Object;

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
.end method

.method public final isDone()Z
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    iget-object p0, p0, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    instance-of v0, p0, Ldqk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    move p0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    and-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_e

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_14
    xor-int/2addr v0, v1

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_f

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ldqn;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/StringBuilder;)V

    goto/32 :goto_13

    nop

    nop

    :goto_2
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    invoke-virtual {p0}, Ldqn;->b()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v3, "Exception thrown from implementation: "

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2b

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const-string v1, "[status="

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x14

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

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

    :goto_12
    const-string p0, "CANCELLED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_27

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ldqn;->isDone()Z

    move-result v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ldqn;->isCancelled()Z

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    if-eqz v3, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_1c
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v2, "]"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_21
    const-string p0, "PENDING, info=["

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v0}, Ldqn;->19e596a3e324281407eb5c11093c0152m(Ljava/lang/StringBuilder;)V

    goto/32 :goto_2

    nop

    nop

    :goto_24
    const-string p0, "PENDING"

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    :goto_2b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2e
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ldqn;->isDone()Z

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_32
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_33
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop
.end method
