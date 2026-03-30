.class public final Llgn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llhq;


# instance fields
.field private final a:Lows;

.field private final b:Ljava/util/Set;

.field private final c:Loyd;

.field private final d:Ljava/util/Map;

.field private final e:Lpgo;


# direct methods
.method public constructor <init>(Ljava/util/Map;Loyd;Lgvg;Z)V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    :goto_5
    iput-object p2, p0, Llgn;->c:Loyd;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    const v0, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    :goto_a
    goto/16 :goto_46

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    :goto_c
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Llgn;->a:Lows;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Llgn;->e:Lpgo;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Llgn;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    const/16 v4, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p2, p0, Llgn;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1c
    invoke-static {v2, v3}, Ljmo;->C(Llhv;Lpgo;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v2}, Lpgo;->b()Loyd;

    move-result-object v2

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

    nop

    :goto_1e
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    sget-object p2, Llhv;->d:Llhv;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    new-instance p2, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v2, Lpgo;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v3, Lpgo;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p1, Lpgo;

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_44

    nop

    nop

    :goto_29
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    :goto_2a
    iget-object v1, p0, Llgn;->a:Lows;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v3, p3, v0, v4, v5}, Ljyl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v3, Ljyl;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x1e

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object p2, Llhv;->d:Llhv;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, Lpgo;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    :goto_36
    add-int v0, v0, v1

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

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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

    :goto_38
    invoke-virtual {v1, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v2, v3, v0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_40
    check-cast v2, Llhv;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_41
    goto/16 :goto_27

    nop

    nop

    :goto_42
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_43
    invoke-interface {p1}, Lpgo;->d()Ljava/util/Set;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v3}, Lpgo;->b()Loyd;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v5, 0x0

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

    nop

    nop

    :goto_48
    sget-object p2, Llhv;->f:Llhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Llgn;->c()Lpgo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final b()Loyd;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {p0}, Loyi;->e(Ljava/util/Collection;)Loyd;

    move-result-object p0

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
    iget-object p0, p0, Llgn;->b:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()Lpgo;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llgn;->d:Ljava/util/Map;

    nop

    nop

    iget-object v1, p0, Llgn;->c:Loyd;

    nop

    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpgo;

    nop

    nop

    if-nez v0, :cond_1

    nop

    iget-object v0, p0, Llgn;->e:Lpgo;

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Llgn;->c:Loyd;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    :goto_8
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    const v0, 0x14

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

    :goto_c
    const v1, 0x7

    nop

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
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lows;->close()V

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

    nop

    :goto_2
    iget-object p0, p0, Llgn;->a:Lows;

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
