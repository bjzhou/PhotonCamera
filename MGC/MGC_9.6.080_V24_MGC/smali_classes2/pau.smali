.class public final Lpau;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/String;

.field public e:Lrss;

.field public volatile f:Z

.field public volatile g:J

.field public volatile h:J

.field public volatile i:J

.field private final j:Lsul;

.field private final k:Landroid/os/Handler;

.field private volatile l:Z

.field private m:Ljava/util/concurrent/Future;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m()V
    .locals 9

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0x10

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

    :goto_5
    if-lez v0, :cond_0

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
    goto/32 :goto_2

    nop

    :goto_6
    iget-object v0, p0, Lpau;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpau;->m:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpau;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v2, p0, Lpau;->j:Lsul;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lpam;

    nop

    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0, v1}, Lpam;-><init>(Ljava/lang/Object;I)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v6, 0x3e8

    nop

    nop

    nop

    invoke-interface/range {v2 .. v8}, Lsul;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lsun;

    move-result-object v1

    nop

    nop

    iput-object v1, p0, Lpau;->m:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Set;Landroid/os/Handler;Lrss;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p3, v1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lpau;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

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

    nop

    :goto_5
    iput-wide v1, p0, Lpau;->g:J

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "EncWatch"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p3, p0, Lpau;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lsgj;->I(Ljava/util/concurrent/ScheduledExecutorService;)Lsul;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    :goto_11
    iput-object p2, p0, Lpau;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    iput-wide v1, p0, Lpau;->i:J

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lpau;->j:Lsul;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_16
    iput-object p3, p0, Lpau;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    new-instance p2, Ljava/util/HashMap;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lpau;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-wide v1, p0, Lpau;->h:J

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    new-instance p2, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, ""

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    iput-object p2, p0, Lpau;->k:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    check-cast p2, Lpaj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v0, p0, Lpau;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_13

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

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

    :goto_28
    invoke-static {v0, v1}, Lolx;->be(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

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

    :goto_29
    iput-object p2, p0, Lpau;->a:Ljava/util/Map;

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

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v0, p0, Lpau;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v0, Lrsa;->a:Lrsa;

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

    :goto_33
    const-string v1, "EncWatcher"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop
.end method

.method public static final h(Lpaj;I)Lpar;
    .locals 2

    goto/32 :goto_27

    nop

    nop

    :goto_0
    sget-object p0, Lpar;->e:Lpar;

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

    nop

    :goto_1
    sget-object p0, Lpar;->d:Lpar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_7
    goto/16 :goto_17

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    sget-object p0, Lpar;->m:Lpar;

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

    :goto_a
    sget-object p0, Lpar;->c:Lpar;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

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
    goto/32 :goto_1f

    nop

    nop

    :goto_e
    if-nez p1, :cond_1

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lpaj;->ordinal()I

    move-result p0

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

    :goto_10
    goto/32 :goto_5

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    if-ne p0, v0, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne p0, v1, :cond_4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    :goto_1f
    sget-object p0, Lpar;->b:Lpar;

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

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p0, Lpar;->a:Lpar;

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

    :goto_24
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lpaj;->ordinal()I

    move-result p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne p0, v1, :cond_5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    const v0, 0x11

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p0, Lpar;->e:Lpar;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    if-ne p0, v0, :cond_7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a(Lpar;)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Loxl;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_3
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    :try_start_0
    sget-object v1, Lpar;->d:Lpar;

    nop

    nop

    if-ne p1, v1, :cond_0

    nop

    nop

    iget-object v1, p0, Lpau;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lpaj;->a:Lpaj;

    nop

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5
    const-string v1, "Found error: "

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

    :goto_6
    const/16 v2, 0xa

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

    :goto_7
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x8

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lpau;->k:Landroid/os/Handler;

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

    :goto_14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    iget-object v0, p0, Lpau;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lpau;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, p0, p1, v2, v3}, Loxl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

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

    nop

    :goto_1b
    iget-object v0, p0, Lpau;->e:Lrss;

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

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(J)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lpau;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lpau;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lpau;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Lpau;->m:Ljava/util/concurrent/Future;

    nop

    nop

    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    invoke-interface {p2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    iput-object p2, p0, Lpau;->m:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    :cond_1
    monitor-exit p1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(J)V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    iget-wide v2, p0, Lpau;->g:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    iget-object p0, p0, Lpau;->d:Ljava/lang/String;

    nop

    const-string p1, "Resume without pause"

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_0
    iget-wide v2, p0, Lpau;->g:J

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr p1, v2

    nop

    cmp-long v2, p1, v4

    nop

    nop

    nop

    nop

    if-ltz v2, :cond_1

    nop

    nop

    iget-wide v2, p0, Lpau;->h:J

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v2, p1

    nop

    nop

    nop

    nop

    iput-wide v2, p0, Lpau;->h:J

    nop

    nop

    nop

    goto :goto_1

    nop

    :cond_1
    iget-object p1, p0, Lpau;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Lpau;->h:J

    nop

    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-wide v4, p0, Lpau;->g:J

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpau;->1478a1c7833aac5e360e0ba4b0c0c568m()V

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    :goto_3
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v1, p0, Lpau;->f:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    iget-object v1, p0, Lpau;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "Pause duration is negative: "

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    const v0, 0x8

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

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v0, 0xc

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

    :goto_2
    iget-object v0, p0, Lpau;->c:Ljava/lang/Object;

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

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lpau;->f:Z

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    iput-boolean v1, p0, Lpau;->f:Z

    nop

    nop

    nop

    iget-object p0, p0, Lpau;->j:Lsul;

    nop

    nop

    nop

    invoke-interface {p0}, Lsul;->shutdown()V

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x13

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

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpas;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpau;->e:Lrss;

    nop

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

    :goto_2
    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

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

.method public final e(Lpaj;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 3

    goto/32 :goto_a

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

    goto/32 :goto_10

    nop

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

    :try_start_0
    iget-object v1, p0, Lpau;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    iget-object v1, p0, Lpau;->a:Ljava/util/Map;

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lpau;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lpau;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_2

    nop

    nop

    nop

    :cond_0
    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    iget-object p0, p0, Lpau;->d:Ljava/lang/String;

    nop

    const-string p2, "Unexpected track was started: "

    nop

    nop

    nop

    invoke-static {p1, p2}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    nop

    nop

    nop

    nop

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

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lpau;->f:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v1, 0x13

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

    :goto_a
    const v0, 0xd

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

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_7

    nop

    :goto_c
    iget-object v0, p0, Lpau;->c:Ljava/lang/Object;

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

    :goto_d
    if-nez v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    :cond_3
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

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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
.end method

.method public final f()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v1

    nop

    iput-wide v1, p0, Lpau;->i:J

    nop

    nop

    nop

    invoke-direct {p0}, Lpau;->1478a1c7833aac5e360e0ba4b0c0c568m()V

    monitor-exit v0

    nop

    nop

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

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lpau;->f:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_b
    iget-object v0, p0, Lpau;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final g(Lpaj;)Z
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lpau;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpau;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lpau;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    iget-object p0, p0, Lpau;->a:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    return v1

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

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop
.end method
