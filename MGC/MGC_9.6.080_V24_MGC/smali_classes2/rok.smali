.class public final Lrok;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/util/WeakHashMap;

.field private static final c:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lrok;->b:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    sput-object v0, Lrok;->c:Ljava/util/WeakHashMap;

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
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return-void

    nop
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 5

    goto/32 :goto_7

    nop

    nop

    :goto_0
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v3}, Lrpe;->b()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v3, Lrpe;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lror;->a()Lrpd;

    move-result-object v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

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

    :goto_b
    invoke-virtual {v2, v4}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_1
    sget-object v2, Lrok;->c:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1d

    nop

    :cond_1
    :goto_d
    sget-object v2, Lrok;->c:Ljava/util/WeakHashMap;

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    goto :goto_e

    nop

    nop

    nop

    :cond_2
    const/4 v3, 0x0

    nop

    :goto_e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Lrxw;->g()Lryb;

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    :goto_16
    throw p0

    nop

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, v1, Lrpd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Lrgw;->L(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    move-object v1, p0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v2}, Lrpg;-><init>(Lryb;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v1, :cond_7

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v1, Lrok;->b:Ljava/util/WeakHashMap;

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

    :goto_21
    invoke-virtual {v1, v3}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p0}, Lrok;->b(Ljava/lang/Throwable;)Lrpz;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1}, Lrpe;->a()Lrpe;

    move-result-object v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    monitor-enter v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_33

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Lrxw;->g()Lryb;

    move-result-object v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    goto/16 :goto_19

    nop

    :goto_29
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Lryb;->e(I)Lrxw;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_2
    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_5

    nop

    nop

    :goto_2c
    new-instance v0, Lrpg;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_17

    nop

    nop

    :goto_2f
    goto/32 :goto_22

    nop

    nop

    :goto_30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_31
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    sget-object v0, Lrok;->c:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v1}, Lryb;->e(I)Lrxw;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v3}, Lrpe;->f()Lroy;

    move-result-object v3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_37
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2c

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/lang/Throwable;)Lrpz;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

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

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_5
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    :try_start_1
    sget-object v2, Lrok;->b:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-nez v2, :cond_2

    nop

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    nop

    goto :goto_e

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    :goto_a
    if-nez v1, :cond_3

    nop

    nop

    monitor-exit v0

    nop

    const/4 p0, 0x0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    :cond_3
    sget-object v2, Lrok;->b:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lrpg;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    move-object v1, p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

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

    :goto_10
    new-instance p0, Lrpz;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v1}, Lrpz;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "Trace uncaught exception is disabled."

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

    :goto_15
    sget-object v0, Lrok;->b:Ljava/util/WeakHashMap;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    monitor-enter v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method
