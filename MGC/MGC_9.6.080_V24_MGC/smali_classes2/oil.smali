.class public final Loil;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lohf;
.implements Lohg;


# instance fields
.field public final a:Ljava/util/Queue;

.field public final b:Logz;

.field public final c:Lohw;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/Map;

.field public final f:I

.field public g:Z

.field public final h:Ljava/util/List;

.field public i:Lofz;

.field public j:I

.field public final synthetic k:Loio;

.field public final l:Lnar;

.field private final m:Lojg;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m(Lofz;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loil;->c:Lohw;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Loio;->a(Lohw;Lofz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m(Lofz;)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loil;->d:Ljava/util/Set;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_2
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    check-cast v1, Lohx;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v3, p1, v2}, Lohx;->a(Lohw;Lofz;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const v0, 0x12

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Loil;->b:Logz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v2, Lofz;->a:Lofz;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

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

    :goto_18
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_1a
    iget-object v0, p0, Loil;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    invoke-interface {v2}, Logz;->f()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_12

    nop

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    :goto_1f
    iget-object v3, p0, Loil;->c:Lohw;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 86d5c0c77e4f72baec1b0d5a6810921fm(Lofz;)Z
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
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

    :goto_3
    const v1, 0x13

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Loil;->k:Loio;

    nop

    iget-object v2, v1, Loio;->l:Loii;

    nop

    if-eqz v2, :cond_2

    nop

    nop

    iget-object v1, v1, Loio;->m:Ljava/util/Set;

    nop

    nop

    nop

    iget-object v2, p0, Loil;->c:Lohw;

    nop

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    iget-object v1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    iget-object v1, v1, Loio;->l:Loii;

    nop

    nop

    nop

    iget p0, p0, Loil;->f:I

    nop

    nop

    new-instance v2, Lqei;

    nop

    nop

    nop

    invoke-direct {v2, p1, p0}, Lqei;-><init>(Lofz;I)V

    iget-object p0, v1, Loib;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    invoke-static {p0, v2}, La;->aU(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, v1, Loib;->c:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    new-instance p1, Lkok;

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    invoke-direct {p1, v1, v2, v3}, Lkok;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    return p0

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    nop

    return p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Loio;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Loio;Lohe;)V
    .locals 9

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iget-object v2, p2, Lohe;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Loka;->a()Lokb;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_9
    iget-object v2, p2, Lohe;->j:Lpic;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p2, Lohe;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    new-instance v2, Lnar;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v2, v3, Lojy;->j:Ljava/lang/String;

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

    :goto_f
    check-cast v3, Lojy;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    iput v2, p0, Loil;->f:I

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

    :goto_11
    iput-object v0, p0, Loil;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    invoke-direct {v2, v0}, Lnar;-><init>([S)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v1, p0, Loil;->b:Logz;

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

    :goto_15
    invoke-interface {v1}, Logz;->n()Z

    move-result v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v2, p0, Loil;->c:Lohw;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    iget-object v1, p1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v6, p2, Lohe;->d:Logy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x18

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

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v2, v3, Lojy;->p:Lpic;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v3, Lojy;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Loil;->m:Lojg;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Lohe;->c()Loka;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Loil;->h:Ljava/util/List;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Lohe;->c()Loka;

    move-result-object p2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2a
    invoke-virtual {p2}, Loka;->a()Lokb;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p2, Lohe;->e:Lohw;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_2

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
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    const v1, 0x7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v2, p0, Loil;->l:Lnar;

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

    :goto_2f
    return-void

    nop

    nop

    :goto_30
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, v1, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v1, Lojg;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_33
    iput-object v0, p0, Loil;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v3, p2, Lohe;->b:Landroid/content/Context;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v2, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v0, p0, Loil;->i:Lofz;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_37
    new-instance v0, Ljava/util/LinkedList;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v2, Lolx;

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

    :goto_39
    iput-object v1, p0, Loil;->m:Lojg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v7, p0

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

    nop

    :goto_3d
    move-object v8, p0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p2, Lohe;->k:Lnar;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v1, v0, p1, p2}, Lojg;-><init>(Landroid/content/Context;Landroid/os/Handler;Lokb;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_41
    iput-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_42
    move-object v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, p1, Loio;->g:Landroid/content/Context;

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

    :goto_44
    if-lez v0, :cond_3

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_23

    nop

    :goto_45
    new-instance v0, Ljava/util/HashMap;

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

    :goto_46
    iput v1, p0, Loil;->j:I

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

    :goto_47
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    nop

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

    :goto_48
    invoke-virtual/range {v2 .. v8}, Lolx;->a(Landroid/content/Context;Landroid/os/Looper;Lokb;Ljava/lang/Object;Lohf;Lohg;)Logz;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v0, p0, Loil;->d:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_45

    nop

    nop
.end method

.method private final a2d5024664df85075db576b91d9663e9m(Lohv;)Z
    .locals 6

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loil;->c43d12f4f4da28dd6c943a4effe477b7m(Lohv;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v3, "GoogleApiManager"

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, v2, Logb;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lofz;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Loil;->h:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Loil;->86d5c0c77e4f72baec1b0d5a6810921fm(Lofz;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_6
    goto/16 :goto_16

    nop

    nop

    :goto_7
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_9
    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    if-gez p1, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Loim;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v2}, Loil;->d116db4599d9ddc8c35e61366a4f4967m([Logb;)Logb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_10
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p1, v2}, Loim;-><init>(Lohw;Logb;)V

    goto/32 :goto_4

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_13
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Lohp;->b(Loil;)[Logb;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1, p0}, Loio;->h(Lofz;I)Z

    :goto_16
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v1, 0x10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Loho;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_57

    nop

    nop

    :goto_1e
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, v2}, Loho;-><init>(Logb;)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Logb;->a()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_2f

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    const-wide/32 v1, 0x1d4c0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v3, 0xf

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string p1, " could not execute call because it requires feature ("

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean p1, p1, Loio;->o:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Loil;->c:Lohw;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p1, v0, v1}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_31
    const/4 p0, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_32
    return v1

    nop

    nop

    :goto_33
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_34
    instance-of v0, p1, Lohp;

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

    :goto_35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    :goto_36
    invoke-static {p0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v0, Loim;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_39
    check-cast v0, Lohp;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0, p1}, Loil;->c43d12f4f4da28dd6c943a4effe477b7m(Lohv;)V

    goto/32 :goto_51

    nop

    nop

    :goto_3c
    const-wide/16 v1, 0x1388

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p1, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->mjIzuRwbksvgv:Ljava/lang/String;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 p1, 0x0

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

    :goto_3f
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_40
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_42
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

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

    :goto_43
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_6

    nop

    nop

    :goto_44
    iget p0, p0, Loil;->f:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p1, p0, Loil;->h:Ljava/util/List;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_48
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v2, :cond_4

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v1, 0x0

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

    :goto_4c
    invoke-virtual {v0, p0}, Lohp;->a(Loil;)Z

    move-result p1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_50
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_51
    return v1

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p1, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_54
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0, p0}, Lohp;->e(Ljava/lang/Exception;)V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_57
    const-string p1, ")."

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Loil;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5a
    move-object v0, p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_30

    nop

    nop

    :goto_5c
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

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

    nop

    :goto_5d
    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_48

    nop

    nop

    :goto_5e
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_5
    goto/32 :goto_4f

    nop

    nop

    :goto_5f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_60
    if-nez p1, :cond_6

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

    :cond_6
    goto/32 :goto_2b

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Lohv;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Logz;->j(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catch_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0, v1}, Lohv;->g(Lnar;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lohv;->f(Loil;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    iget-object p0, p0, Loil;->b:Logz;

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Loil;->a(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    const-string p1, "DeadObjectException thrown while running ApiCallRunner."

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

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_f
    invoke-virtual {p0}, Loil;->p()Z

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Loil;->l:Lnar;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    const v1, 0xb

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

.method private final d116db4599d9ddc8c35e61366a4f4967m([Logb;)Logb;
    .locals 8

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v3, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_f

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

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_5
    invoke-virtual {v4}, Logb;->a()J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    if-ltz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    aget-object v4, p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_b
    iget-object v3, p0, Logb;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Logb;->a()J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_d
    new-array p0, v1, [Logb;

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    aget-object p0, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_15
    if-lt v3, v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2a

    nop

    :goto_18
    goto :goto_11

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    move v3, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Logz;->o()[Logb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    :goto_20
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    new-instance v2, Lwu;

    nop

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

    :goto_25
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    if-eqz p0, :cond_6

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_27
    cmp-long v3, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

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

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x1a

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

    :goto_2d
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2e
    array-length v3, p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v2, v3}, Lwu;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    :goto_30
    iget-object v5, v4, Logb;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_31
    array-length v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 3

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    move v2, v0

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

    :goto_3
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_10

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_7
    iget-object p0, p0, Loil;->a:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Lohv;->d(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_21

    nop

    nop

    :goto_e
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    move v0, v1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_23

    nop

    nop

    :goto_11
    invoke-virtual {v0, p2}, Lohv;->e(Ljava/lang/Exception;)V

    :goto_12
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_14
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    goto :goto_12

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, v0, Lohv;->c:I

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

    :goto_1b
    const-string p1, "Status XOR exception should be null"

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1c
    move v2, v1

    nop

    nop

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v2, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_27

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_a

    nop

    nop

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v0, Lohv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_34
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, p1, v2, v3}, Lkwi;-><init>(Ljava/lang/Object;II[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Loil;->k(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    iget-object p0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v2, 0x9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    iget-object v1, v1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lkwi;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x16

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Loil;->h()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Lodu;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, p0, v2}, Lodu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Loil;->k:Loio;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x6

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    :goto_12
    iget-object v1, p0, Loil;->k:Loio;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x3

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

    :goto_14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    nop

    :goto_16
    rem-int v0, v0, v1

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

    :goto_17
    iget-object p0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Loil;->i:Lofz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Loil;->k:Loio;

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

    :goto_4
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 12

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v1, Lojg;->c:Ljava/util/Set;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    :goto_5
    move-object v10, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, v1, Lojg;->e:Loqi;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0xa

    nop

    nop

    :try_start_0
    iget-object v1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Loio;->p:Lpqm;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Loio;->g:Landroid/content/Context;

    nop

    nop

    nop

    iget-object v3, p0, Loil;->b:Logz;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lolx;->ag(Ljava/lang/Object;)V

    invoke-static {v3}, Lolx;->ag(Ljava/lang/Object;)V

    invoke-interface {v3}, Logz;->m()Z

    move-result v4

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    if-nez v4, :cond_0

    nop

    goto/16 :goto_41

    nop

    :cond_0
    invoke-interface {v3}, Logz;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lpqm;->i(I)I

    move-result v4

    nop

    nop

    const/4 v6, -0x1

    nop

    nop

    nop

    if-ne v4, v6, :cond_a

    nop

    nop

    iget-object v4, v2, Lpqm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v4

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v6, v1, Lojg;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    :goto_11
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Logz;->l()Z

    move-result v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_14
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Lojy;->w()V

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    :goto_17
    invoke-virtual {p0, v2, v1}, Loil;->j(Lofz;Ljava/lang/Exception;)V

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Loil;->b:Logz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1a
    new-instance v2, Lofz;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    iget-object v9, v8, Lokb;->f:Loqd;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    iget-object v2, v1, Lojg;->d:Lokb;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_20
    iget-object v3, p0, Loil;->c:Lohw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_21
    invoke-direct {v2, v0}, Lofz;-><init>(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_23
    :try_start_1
    iget-object v1, p0, Loil;->b:Logz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4}, Logz;->i(Lojt;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_32

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_25
    invoke-static {v1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v2, v1, Lojg;->e:Loqi;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual/range {v5 .. v11}, Lolx;->a(Landroid/content/Context;Landroid/os/Looper;Lokb;Ljava/lang/Object;Lohf;Lohg;)Logz;

    move-result-object v2

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_28
    iget-object v8, v1, Lojg;->d:Lokb;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_29
    check-cast v2, Loqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2a
    invoke-virtual {v1, v2}, Lojy;->i(Lojt;)V

    goto/32 :goto_11

    nop

    nop

    :goto_2b
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2c
    new-instance v3, Lodu;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2d
    const/4 v5, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Loil;->b:Logz;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    :catch_1
    move-exception v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_33
    invoke-virtual {p0, v2, v1}, Loil;->j(Lofz;Ljava/lang/Exception;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, v1, Lojg;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v4, v1, v2, v3}, Loin;-><init>(Loio;Logz;Lohw;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0}, Logz;->k()Z

    move-result v0

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

    :goto_38
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x16

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_3b
    invoke-static {v0}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Loil;->m:Lojg;

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

    :goto_3d
    iget-object v1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3e
    move v7, v5

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    :try_start_2
    iget-object v8, v2, Lpqm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v8, Landroid/util/SparseIntArray;

    nop

    nop

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    nop

    nop

    if-ge v7, v8, :cond_8

    nop

    nop

    nop

    iget-object v8, v2, Lpqm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Landroid/util/SparseIntArray;

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    nop

    if-le v8, v3, :cond_7

    nop

    nop

    nop

    nop

    iget-object v9, v2, Lpqm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Landroid/util/SparseIntArray;

    nop

    nop

    nop

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    nop

    nop

    nop

    if-nez v8, :cond_7

    nop

    nop

    nop

    nop

    goto :goto_40

    nop

    nop

    :cond_7
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    :cond_8
    move v5, v6

    nop

    nop

    nop

    nop

    :goto_40
    if-ne v5, v6, :cond_9

    nop

    nop

    nop

    iget-object v5, v2, Lpqm;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v5, Loge;

    nop

    nop

    invoke-virtual {v5, v1, v3}, Loge;->f(Landroid/content/Context;I)I

    move-result v1

    nop

    move v5, v1

    nop

    :cond_9
    iget-object v1, v2, Lpqm;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Landroid/util/SparseIntArray;

    nop

    nop

    nop

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v4

    nop

    goto :goto_41

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    monitor-exit v4

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    nop

    nop

    :cond_a
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    new-instance v1, Lofz;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    invoke-direct {v1, v5, v2}, Lofz;-><init>(ILandroid/app/PendingIntent;)V

    const-string v2, "GoogleApiManager"

    nop

    nop

    nop

    nop

    iget-object v3, p0, Loil;->b:Logz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service for "

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available: "

    nop

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Loil;->i(Lofz;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v2, :cond_b

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_43
    invoke-interface {v2}, Logz;->n()Z

    move-result v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v2, :cond_c

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v2, v1}, Lojv;-><init>(Lojy;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_46
    new-instance v2, Lojv;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v3, v1, v5}, Lodu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_48
    iput-object v4, v1, Lojg;->f:Loin;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_49
    move-object v11, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-object v3, v2, Lokb;->g:Ljava/lang/Integer;

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4b
    new-instance v4, Loin;

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

    nop

    :goto_4c
    invoke-direct {v2, v0}, Lofz;-><init>(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v2, Lofz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4e
    iget-object v2, v1, Lojg;->b:Landroid/os/Handler;

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

    :goto_4f
    iget-object v2, v1, Lojg;->e:Loqi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_50
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_52
    iget-object v5, v1, Lojg;->g:Lolx;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public final e(Lohv;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loil;->a2d5024664df85075db576b91d9663e9m(Lohv;)Z

    move-result v0

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
    if-nez p1, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Loil;->k:Loio;

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

    :goto_3
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-interface {v0}, Logz;->k()Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Loil;->b:Logz;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Loil;->i(Lofz;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Loil;->d()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Loil;->i:Lofz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Loil;->m()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Loil;->a:Ljava/util/Queue;

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

    :goto_17
    iget-object v0, p0, Loil;->a:Ljava/util/Queue;

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

    :goto_18
    invoke-virtual {p1}, Lofz;->a()Z

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_b

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    iget-object v0, p0, Loil;->k:Loio;

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, v0, v1}, Loil;->e94656b6137dd01f26085f984afe853em(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 5

    goto/32 :goto_7

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1e

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v4}, Logz;->k()Z

    move-result v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
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

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_b
    iget-object v4, p0, Loil;->b:Logz;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Loil;->a:Ljava/util/Queue;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v3, Lohv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v3}, Loil;->a2d5024664df85075db576b91d9663e9m(Lohv;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Loil;->a:Ljava/util/Queue;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    if-lt v2, v1, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    const v1, 0x10

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

    :goto_1d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    goto :goto_16

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 5

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Logz;->j(Ljava/lang/String;)V

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_11

    nop

    nop

    :goto_3
    :try_start_0
    iget-object v1, v1, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    iget-object v2, p0, Loil;->b:Logz;

    nop

    nop

    nop

    new-instance v3, Lpic;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-direct {v3, v4}, Lpic;-><init>([S)V

    check-cast v1, Lojd;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Lojd;->b(Logu;Lpic;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Loil;->o()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Loil;->m()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/32 :goto_2

    nop

    nop

    :goto_9
    iget-object v0, p0, Loil;->e:Ljava/util/Map;

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

    :goto_a
    sget-object v0, Lofz;->a:Lofz;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Loil;->a(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v3, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/uK/JLjgPsjc;->UMXTmeXon:Ljava/lang/String;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_f
    const-string v1, "DeadObjectException thrown while calling register listener method."

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    invoke-direct {p0, v2}, Loil;->d116db4599d9ddc8c35e61366a4f4967m([Logb;)Logb;

    move-result-object v2

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Loil;->g()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

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

    :goto_16
    if-nez v2, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Loil;->c()V

    goto/32 :goto_a

    nop

    nop

    :goto_18
    iget-object v0, p0, Loil;->b:Logz;

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

    :goto_19
    iget-object v2, v2, Lojd;->b:[Logb;

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

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v1, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    check-cast v2, Lojd;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    const-string v2, "GoogleApiManager"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_23
    const v0, 0x13

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, v0}, Loil;->430f03c2ea70bd28108d593eca0c7c30m(Lofz;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Lhon;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    const/4 v3, 0x0

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

    :goto_2c
    const v1, 0x1c

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
.end method

.method public final i(Lofz;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v0}, Loil;->j(Lofz;Ljava/lang/Exception;)V

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
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final j(Lofz;Ljava/lang/Exception;)V
    .locals 5

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v2, 0x19

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    :goto_2
    if-eq p2, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_1
    goto/32 :goto_57

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

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_40

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    if-nez p2, :cond_2

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Loil;->f(Lcom/google/android/gms/common/api/Status;)V

    :goto_a
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_b
    instance-of v0, v0, Lolr;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Loil;->132cd3b981019b59dc42653eea0b34b4m(Lofz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    :goto_e
    invoke-virtual {v0}, Lojy;->w()V

    :goto_f
    goto/32 :goto_5a

    nop

    nop

    :goto_10
    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    if-eqz p2, :cond_4

    nop

    goto/32 :goto_a

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    :goto_12
    invoke-direct {p0, p1}, Loil;->132cd3b981019b59dc42653eea0b34b4m(Lofz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2, p1, v0}, Loio;->h(Lofz;I)Z

    move-result p2

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

    nop

    :goto_14
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    :goto_15
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_6

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Loil;->k:Loio;

    nop

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

    :goto_18
    iget-object p2, p0, Loil;->a:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_5b

    nop

    nop

    :goto_1b
    iget-object p1, p0, Loil;->k:Loio;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v2, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_1d
    invoke-static {v0}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_60

    nop

    nop

    :goto_1e
    if-ne v0, v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_7
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1f
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    iget v0, p1, Lofz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :goto_22
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz p2, :cond_8

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    iput-object p1, p0, Loil;->i:Lofz;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/32 v3, 0x493e0

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_26
    if-ne v0, v2, :cond_9

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, p1}, Loil;->132cd3b981019b59dc42653eea0b34b4m(Lofz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_28
    invoke-direct {p0, v0, p2, p1}, Loil;->e94656b6137dd01f26085f984afe853em(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2a
    if-eqz p2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_a
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p2, p0, Loil;->k:Loio;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_2d
    iget p2, p1, Lofz;->c:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2e
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Loil;->c:Lohw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_30
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    if-eq v0, v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0, p1}, Loil;->430f03c2ea70bd28108d593eca0c7c30m(Lofz;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p2, p0, Loil;->k:Loio;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, p1}, Loil;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_36
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :goto_38
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p0, p2, v0, v1}, Loil;->e94656b6137dd01f26085f984afe853em(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3a
    sget-object p1, Loio;->b:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p0, p1}, Loil;->86d5c0c77e4f72baec1b0d5a6810921fm(Lofz;)Z

    move-result p2

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

    :goto_3d
    const/16 v0, 0x12

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_6

    nop

    :goto_40
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 p1, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v0, p1, Lofz;->c:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, p1}, Loil;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Loil;->a:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Loil;->k:Loio;

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_48
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, v0, Loio;->p:Lpqm;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4b
    iget-boolean p2, p0, Loil;->g:Z

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

    :goto_4c
    return-void

    nop

    :goto_4d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    :goto_4f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0}, Lpqm;->h()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 p2, 0x9

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_a

    nop

    :goto_56
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_57
    iput-boolean v1, p0, Loil;->g:Z

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-boolean p2, p2, Loio;->o:Z

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

    :goto_5a
    invoke-virtual {p0}, Loil;->c()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {p0, p1}, Loil;->132cd3b981019b59dc42653eea0b34b4m(Lofz;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5c
    const-wide/16 v0, 0x1388

    nop

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

    :goto_5d
    if-nez p2, :cond_d

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, v0, Lojg;->e:Loqi;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5f
    invoke-static {p1}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v0, p0, Loil;->m:Lojg;

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_61
    iget-object v0, p0, Loil;->k:Loio;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0, p1}, Loil;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_63
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_64
    iget-object v0, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v0, :cond_e

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v2, 0x18

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_67
    iget v0, p0, Loil;->f:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput-boolean v1, v0, Loio;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_69
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method

.method public final k(I)V
    .locals 4

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lpqm;->h()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Loil;->l:Lnar;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_11

    nop

    nop

    :goto_5
    iget-object p0, p0, Loil;->e:Ljava/util/Map;

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

    :goto_6
    const-string p1, " Last reason for disconnect: "

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_25

    nop

    nop

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_e
    const-string p1, " due to service disconnection."

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    const/4 v3, 0x3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_11
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_12
    if-eq p1, v3, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    :goto_19
    iget-object p1, p1, Lhon;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e
    goto/32 :goto_3b

    nop

    nop

    :goto_1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    iput-boolean v0, p0, Loil;->g:Z

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Loil;->c:Lohw;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v1}, Logz;->g()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_41

    nop

    nop

    :goto_26
    invoke-virtual {p1, v0, v1}, Lnar;->H(ZLcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_27
    iget-object v1, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "The connection to Google Play services was lost"

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    const-string p1, " due to dead object exception."

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    :goto_2d
    const/16 v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_24

    nop

    nop

    :goto_30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    :goto_31
    invoke-virtual {p0}, Loil;->c()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_32
    iget-object p1, p1, Loio;->p:Lpqm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v3, 0x14

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p1, p1, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x16

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v1, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    :goto_3c
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

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

    :goto_3d
    const-wide/16 v1, 0x1388

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3e
    check-cast p1, Lhon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3f
    const-wide/32 v1, 0x1d4c0

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

    :goto_40
    goto/32 :goto_9

    nop

    :goto_41
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Loil;->c:Lohw;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Lofz;)V
    .locals 5

    goto/32 :goto_16

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget-object v0, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

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

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    const-string v1, " with "

    nop

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
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    :goto_a
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v1}, Logz;->j(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    const v0, 0x13

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_17
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    const-string v4, "onSignInFailed for "

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Loil;->i(Lofz;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0xc

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

    nop

    :goto_7
    iget-object v1, p0, Loil;->c:Lohw;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iget-wide v2, v0, Loio;->e:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Loil;->k:Loio;

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_c
    iget-object v1, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Loil;->c:Lohw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final n()V
    .locals 7

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Loil;->b:Logz;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    array-length v1, v0

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    :goto_4
    new-instance v0, Lofz;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    sget-object v1, Loio;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    invoke-direct {v4, v3, v5}, Lohu;-><init>(Loix;Lpic;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Loil;->f(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_19

    nop

    nop

    :goto_a
    invoke-interface {v0}, Logz;->k()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lofz;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_c
    check-cast v0, [Loix;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v5, v6}, Lpic;-><init>([S)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array v1, v2, [Loix;

    nop

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

    nop

    :goto_f
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v0}, Loil;->430f03c2ea70bd28108d593eca0c7c30m(Lofz;)V

    goto/32 :goto_0

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_12
    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v4}, Loil;->e(Lohv;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v5, Lpic;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_18
    aget-object v3, v0, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Loil;->l:Lnar;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2, v1}, Lnar;->H(ZLcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Lolx;->aa(Landroid/os/Handler;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0xa

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v4, Lohu;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_3

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2f

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    :goto_26
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Loil;->b:Logz;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Logz;->q(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Loio;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x16

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

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Loil;->e:Ljava/util/Map;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final o()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Loil;->g:Z

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

    :goto_1
    iget-object v0, p0, Loil;->k:Loio;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const v0, 0x15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Loio;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_18

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v2, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Loil;->c:Lohw;

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

    :goto_11
    iput-boolean v0, p0, Loil;->g:Z

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Loil;->c:Lohw;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Loil;->k:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final p()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Logz;->n()Z

    move-result p0

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
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Loil;->b:Logz;

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
