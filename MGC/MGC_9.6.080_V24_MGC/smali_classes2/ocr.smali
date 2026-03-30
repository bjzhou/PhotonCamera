.class public final Locr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic j:I

.field private static final k:Lryy;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/IdentityHashMap;

.field public final c:Ljava/util/Queue;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/util/Set;

.field public h:I

.field public final i:Loct;

.field private final l:Lryh;

.field private final m:I

.field private final n:Loby;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Locp;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Locn;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    const v0, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Locp;->b:Lsuj;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Locr;->c:Ljava/util/Queue;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0, v1}, Lsuj;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Locr;->d()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_f
    invoke-direct {v0, p0, p1, v1}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    :goto_4
    sput-object v0, Locr;->k:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const-string v0, "http"

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

    nop

    nop

    :goto_6
    const-string v1, "https"

    nop

    nop

    goto/32 :goto_9

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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

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

    :goto_a
    const v0, 0x6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    const v1, 0x1f

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
.end method

.method public constructor <init>(Loco;)V
    .locals 5

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Locr;->b:Ljava/util/IdentityHashMap;

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

    nop

    :goto_1
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Locr;->e:Ljava/util/Map;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_2d

    nop

    nop

    :goto_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    iget-object v2, p1, Loco;->e:Loby;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9
    invoke-static {v2, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v2, "Must set a connectivity handler"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Locr;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    iput p1, p0, Locr;->m:I

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

    :goto_10
    const-string v4, "Must set a callback executor"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_12
    xor-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_13
    invoke-static {v2, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v2, v3

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

    nop

    :goto_15
    iget p1, p1, Loco;->c:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_1f

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, p1, Loco;->b:Ljava/util/concurrent/Executor;

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

    :goto_1c
    const-string v4, "Must set a logger"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/util/HashMap;

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

    :goto_1e
    move v2, v0

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p1, Loco;->d:Loct;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

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

    :goto_22
    goto/32 :goto_26

    nop

    :goto_23
    iget-object v0, p1, Loco;->e:Loby;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_28
    move v0, v3

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_c

    nop

    nop

    :goto_2a
    iput-object v0, p0, Locr;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2b
    invoke-static {v1}, Lryh;->m(Ljava/util/Map;)Lryh;

    move-result-object v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move v2, v0

    nop

    :goto_2d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v0, p0, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    iput v0, p0, Locr;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p1, Loco;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_34
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_35
    iput-object v0, p0, Locr;->n:Loby;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_36
    new-instance v0, Ljava/util/ArrayDeque;

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

    :goto_37
    iget-object v0, p1, Loco;->d:Loct;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_38
    iput-object v1, p0, Locr;->l:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_39
    iget-object v1, p1, Loco;->a:Ljava/util/Map;

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

    :goto_3a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

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

    :goto_3d
    const-string v4, "Must have at least one UrlEngine"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3e
    iput-object v0, p0, Locr;->g:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    :goto_40
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v0, p0, Locr;->c:Ljava/util/Queue;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v3, 0x1

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

    nop

    :goto_43
    new-instance v0, Ljava/util/IdentityHashMap;

    nop

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

    :goto_44
    invoke-virtual {v1}, Lryh;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_45
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v0, p0, Locr;->i:Loct;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Locj;)Lsui;
    .locals 10

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Locr;->e:Ljava/util/Map;

    nop

    nop

    iget-object v2, p1, Locj;->f:Lram;

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Locl;

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object v1, v1, Locl;->f:Lsuj;

    nop

    nop

    new-instance v2, Lkny;

    nop

    nop

    const/16 v3, 0x9

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-direct {v2, p0, p1, v3, v4}, Lkny;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iget-object p0, p0, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-static {v1, v2, p0}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Locr;->l:Lryh;

    nop

    nop

    nop

    nop

    iget-object v2, p1, Locj;->a:Ljava/net/URI;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Locv;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Locl;

    nop

    nop

    nop

    iget-object v2, p0, Locr;->i:Loct;

    nop

    nop

    nop

    iget-object v3, p0, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v2, p1, v1, v3}, Locl;-><init>(Loct;Locj;Locv;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Locr;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p1, Locj;->f:Lram;

    nop

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Locl;->f:Lsuj;

    nop

    new-instance v9, Lmcf;

    nop

    nop

    const/16 v6, 0xa

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    move-object v2, v9

    nop

    nop

    nop

    nop

    move-object v3, p0

    nop

    move-object v4, p1

    nop

    nop

    nop

    nop

    move-object v5, v8

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v7}, Lmcf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    invoke-interface {v1, v9, p0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {v8}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-object p0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const v1, 0x12

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

    :goto_a
    iget-object v0, p0, Locr;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop
.end method

.method public final b()V
    .locals 10

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
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

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Locr;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Locr;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    nop

    nop

    iget v2, p0, Locr;->m:I

    nop

    nop

    if-lt v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    iget-object v1, p0, Locr;->c:Ljava/util/Queue;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Locp;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

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

    :cond_2
    iget-object v2, v1, Locp;->a:Locj;

    nop

    nop

    sget-object v3, Locr;->k:Lryy;

    nop

    nop

    iget-object v4, v2, Locj;->a:Ljava/net/URI;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    if-nez v3, :cond_3

    nop

    nop

    nop

    sget-object v3, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v3, p0, Locr;->n:Loby;

    nop

    nop

    nop

    iget-object v5, v2, Locj;->c:Locf;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Loby;->a(Locf;)Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lsue;->a:Lsui;

    nop

    goto :goto_b

    nop

    nop

    nop

    :cond_4
    new-instance v6, Ljbm;

    nop

    const/4 v7, 0x2

    nop

    invoke-direct {v6, v7}, Ljbm;-><init>(I)V

    new-instance v7, Lsuj;

    nop

    nop

    nop

    invoke-direct {v7, v6}, Lsuj;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v6, Lobx;

    nop

    invoke-direct {v6, v3, v5, v7}, Lobx;-><init>(Loby;Locf;Ljava/lang/Runnable;)V

    iget-object v5, v3, Loby;->b:Landroid/content/Context;

    nop

    nop

    new-instance v8, Landroid/content/IntentFilter;

    nop

    nop

    nop

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    nop

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Lnii;

    nop

    nop

    nop

    const/16 v8, 0x13

    nop

    nop

    nop

    invoke-direct {v5, v3, v6, v8, v4}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    sget-object v6, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v5, v6}, Lsuj;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-wide v5, v3, Loby;->d:J

    nop

    nop

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Loby;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    invoke-static {v7, v5, v6, v8, v3}, Lsgj;->V(Lsui;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v3}, Lsui;->isDone()Z

    move-result v5

    nop

    nop

    nop

    const/16 v6, 0x14

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    iget-object v3, p0, Locr;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v2, Locj;->f:Lram;

    nop

    nop

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Locp;->c:Lsub;

    nop

    nop

    new-instance v5, Lnii;

    nop

    nop

    nop

    nop

    invoke-direct {v5, p0, v2, v6, v4}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iget-object v2, p0, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v2}, Lssk;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Locr;->d()V

    iget-object v1, v1, Locp;->b:Lsuj;

    nop

    invoke-virtual {v1}, Lsuj;->run()V

    goto :goto_c

    nop

    :cond_5
    iget v2, p0, Locr;->h:I

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v2, v5

    nop

    nop

    nop

    nop

    iput v2, p0, Locr;->h:I

    nop

    nop

    nop

    new-instance v2, Lnue;

    nop

    nop

    invoke-direct {v2, p0, v6}, Lnue;-><init>(Ljava/lang/Object;I)V

    sget-object v6, Lstd;->a:Lstd;

    nop

    nop

    nop

    invoke-interface {v3, v2, v6}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Locr;->d()V

    new-instance v2, Lgfq;

    nop

    const/16 v6, 0xc

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v1, v6, v4}, Lgfq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iget-object v6, p0, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-static {v3, v2, v6}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    iget-object v1, v1, Locp;->b:Lsuj;

    nop

    new-instance v2, Locn;

    nop

    nop

    nop

    invoke-direct {v2, p0, v3, v5, v4}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    sget-object v3, Lstd;->a:Lstd;

    nop

    invoke-virtual {v1, v2, v3}, Lsuj;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_c
    monitor-exit v0

    nop

    goto/16 :goto_8

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final c(Locp;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

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

    :try_start_1
    invoke-direct {p0, p1}, Locr;->7ecc92917e9c4556cc19f457ddc41af8m(Locp;)V

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Locr;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Locr;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop
.end method

.method public final d()V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v3, Locq;

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

    :goto_3
    iget-object p0, p0, Locr;->b:Ljava/util/IdentityHashMap;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p0, Locr;->h:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Locr;->g:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    invoke-direct {v3, v0, v1, v2}, Locq;-><init>(III)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Locr;->c:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    check-cast v1, Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
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

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v4, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2, v0, v3, v4}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    new-instance v2, Locn;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

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

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    check-cast v0, Ljava/util/Map$Entry;

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

.method public final e(Locj;I)Lsub;
    .locals 6

    goto/32 :goto_4

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    check-cast p2, Lsub;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    return-object p2

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0x15

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Locr;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    :try_start_1
    new-instance v1, Ljbm;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljbm;-><init>(I)V

    new-instance v2, Lsuj;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1}, Lsuj;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v2}, Lsub;->q(Lsui;)Lsub;

    move-result-object v1

    nop

    nop

    nop

    new-instance v3, Lkny;

    nop

    nop

    nop

    nop

    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0, p1, v4, v5}, Lkny;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iget-object v4, p0, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-static {v1, v3, v4}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    new-instance v3, Ljjo;

    nop

    const/16 v4, 0x9

    nop

    nop

    invoke-direct {v3, v4}, Ljjo;-><init>(I)V

    iget-object v4, p0, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-static {v1, v3, v4}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-class v3, Ljava/lang/Exception;

    nop

    new-instance v4, Lpzz;

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, p0, p1, p2, v5}, Lpzz;-><init>(Locr;Locj;II)V

    iget-object p2, p0, Locr;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    invoke-static {v1, v3, v4, p2}, Lsrv;->j(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Locp;

    nop

    nop

    nop

    nop

    move-object v3, p2

    nop

    nop

    nop

    check-cast v3, Lsub;

    nop

    nop

    invoke-direct {v1, p1, v2, v3}, Locp;-><init>(Locj;Lsuj;Lsub;)V

    invoke-direct {p0, v1}, Locr;->7ecc92917e9c4556cc19f457ddc41af8m(Locp;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method
