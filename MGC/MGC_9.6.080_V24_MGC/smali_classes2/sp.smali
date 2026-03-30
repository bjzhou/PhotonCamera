.class public final Lsp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsx;


# instance fields
.field public final a:Lufs;

.field public final b:Ljava/lang/Object;

.field public c:Lsd;

.field public d:I

.field private final e:Lur;

.field private final f:Lsl;

.field private final g:Lpk;

.field private final h:I

.field private final i:Lueq;

.field private final j:Ljava/util/Map;

.field private k:Luh;

.field private l:Lsm;

.field private m:Ljava/util/Map;

.field private n:Ljava/util/Map;

.field private o:Z

.field private p:Ljava/util/Map;

.field private final q:Ljava/util/Map;

.field private final r:Lts;


# direct methods
.method private final 51550bab6b6440a4fd45f825c221b363m(Lsc;)V
    .locals 10

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

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
    iget-object p1, p0, Lsp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v1, 0x16

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

    :goto_4
    monitor-exit v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p1

    nop

    nop

    nop

    goto/32 :goto_1e

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

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lsp;->b:Ljava/lang/Object;

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
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v4}, Lsp;->c(Z)V

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :cond_2
    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    monitor-exit v0

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit v0

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

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lsp;->d:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_7

    nop

    const/4 v2, 0x5

    nop

    if-ne v1, v2, :cond_3

    nop

    nop

    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v1, p0, Lsp;->l:Lsm;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    if-eqz p1, :cond_4

    nop

    nop

    nop

    new-instance v1, Lsm;

    nop

    nop

    iget-object v2, p0, Lsp;->r:Lts;

    nop

    iget-object v6, p0, Lsp;->j:Ljava/util/Map;

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lrv;

    nop

    nop

    nop

    iget-object v3, v2, Lts;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lts;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v7, v2, Lts;->b:Ljava/lang/Object;

    nop

    nop

    iget-object v2, v2, Lts;->a:Ljava/lang/Object;

    nop

    check-cast v2, Lsa;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lsa;->b:Lejk;

    nop

    nop

    check-cast v4, Lov;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lov;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lejk;->c(Ljava/lang/String;)Lrp;

    move-result-object v2

    nop

    invoke-static {v2}, La;->ak(Lrp;)Z

    move-result v8

    nop

    nop

    nop

    nop

    move-object v5, v3

    nop

    nop

    nop

    check-cast v5, Lejk;

    nop

    nop

    move-object v3, v9

    nop

    move-object v4, p1

    nop

    nop

    invoke-direct/range {v3 .. v8}, Lrv;-><init>(Lsc;Lejk;Ljava/util/Map;Lqp;Z)V

    new-instance v2, Lve;

    nop

    nop

    nop

    invoke-direct {v2, v9}, Lve;-><init>(Lrv;)V

    invoke-direct {v1, p1, v2}, Lsm;-><init>(Lsc;Lve;)V

    iput-object v1, p0, Lsp;->l:Lsm;

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget p1, p0, Lsp;->d:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    if-ne p1, v2, :cond_2

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    :cond_5
    iget-object p1, p0, Lsp;->m:Ljava/util/Map;

    nop

    const/4 v3, 0x1

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    iget-object p1, p0, Lsp;->n:Ljava/util/Map;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p1

    nop

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    nop

    nop

    nop

    iget-object v0, p0, Lsp;->k:Luh;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, v0, Luh;->a:J

    nop

    nop

    nop

    nop

    sub-long/2addr v4, v6

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const-string v0, "%."

    nop

    nop

    nop

    const-string v6, "f ms"

    nop

    nop

    nop

    nop

    invoke-static {v2, v0, v6}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    long-to-double v4, v4

    nop

    nop

    nop

    nop

    const-wide v6, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    div-double/2addr v4, v6

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lsp;->e:Lur;

    nop

    nop

    iget-object v0, v1, Lsm;->b:Lve;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object v1, Lpr;->a:Lpr;

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    check-cast v2, Lvd;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lvd;->c:Lulh;

    nop

    invoke-virtual {v2, v1}, Lulh;->d(Ljava/lang/Object;)V

    check-cast p0, Lvd;

    nop

    iget-object p0, p0, Lvd;->b:Lvc;

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lvc;->f(Lve;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_17
    move p1, v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move p1, v4

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :cond_7
    :goto_1c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_8
    goto/32 :goto_12

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lur;Lsl;Lts;Lpk;Lufs;)V
    .locals 0

    goto/32 :goto_11

    nop

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

    nop

    :goto_1
    iput-object p1, p0, Lsp;->e:Lur;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    iput-object p3, p0, Lsp;->r:Lts;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lsp;->a:Lufs;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iput-object p1, p0, Lsp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p3, p1, p2}, Lueq;-><init>(Ljava/lang/Object;Lucu;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Ljava/util/HashMap;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_a
    iput-object p1, p0, Lsp;->q:Ljava/util/Map;

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

    :goto_b
    sget-object p1, Lsq;->a:Lueo;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lsp;->j:Ljava/util/Map;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p1, 0x1

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

    :goto_f
    new-instance p3, Lueq;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p2, p0, Lsp;->f:Lsl;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    iput-object p3, p0, Lsp;->i:Lueq;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    iput p1, p0, Lsp;->d:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    iput-object p4, p0, Lsp;->g:Lpk;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    sget-object p2, Luer;->a:Luer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    iput p1, p0, Lsp;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    new-instance p1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lueo;->b()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    monitor-exit v0

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

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    throw p0

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    monitor-exit v0

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

    :goto_9
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_8

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

    :goto_b
    iget-object v0, p0, Lsp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_7

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

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lsp;->d:I

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    if-eq v1, v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Lsp;->p:Ljava/util/Map;

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    sget-object v1, Ltyx;->a:Ltyx;

    nop

    nop

    nop

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    nop

    nop

    invoke-static {v2}, Lrkm;->aE(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    nop

    nop

    invoke-static {v1, v2}, Lrkm;->Q(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Landroid/view/Surface;

    nop

    nop

    iget-object v6, p0, Lsp;->q:Ljava/util/Map;

    nop

    nop

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Ljava/lang/AutoCloseable;

    nop

    if-eqz v6, :cond_3

    nop

    nop

    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    move-object v5, v6

    nop

    nop

    nop

    :cond_3
    if-eqz v5, :cond_4

    nop

    nop

    goto :goto_f

    nop

    :cond_4
    const-string p0, "Surface "

    nop

    nop

    nop

    nop

    const-string p1, " doesn\'t have a matching surface token!"

    nop

    nop

    invoke-static {v4, p0, p1}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    :cond_5
    invoke-static {v2, v1}, Lrkm;->Q(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/view/Surface;

    nop

    nop

    iget-object v3, p0, Lsp;->g:Lpk;

    nop

    nop

    invoke-virtual {v3, v2}, Lpk;->a(Landroid/view/Surface;)Ljava/lang/AutoCloseable;

    move-result-object v3

    nop

    iget-object v4, p0, Lsp;->q:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    nop

    nop

    :cond_6
    iput-object p1, p0, Lsp;->p:Ljava/util/Map;

    nop

    nop

    nop

    iget-object v1, p0, Lsp;->m:Ljava/util/Map;

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_9

    nop

    iget-object v4, p0, Lsp;->n:Ljava/util/Map;

    nop

    if-nez v4, :cond_9

    nop

    nop

    nop

    new-instance v4, Ljava/util/LinkedHashMap;

    nop

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    nop

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :cond_7
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_8

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/util/Map$Entry;

    nop

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_8
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    nop

    if-ne p1, v1, :cond_9

    nop

    iput-object v4, p0, Lsp;->n:Ljava/util/Map;

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lsp;->a:Lufs;

    nop

    new-instance v1, Lsn;

    nop

    invoke-direct {v1, p0, v5, v3}, Lsn;-><init>(Lsp;Ltzy;I)V

    invoke-static {p1, v5, v3, v1, v2}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    :cond_9
    iget-object p1, p0, Lsp;->a:Lufs;

    nop

    nop

    nop

    nop

    new-instance v1, Lsn;

    nop

    const/4 v4, 0x2

    nop

    invoke-direct {v1, p0, v5, v4, v5}, Lsn;-><init>(Lsp;Ltzy;I[C)V

    invoke-static {p1, v5, v3, v1, v2}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 8

    goto/32 :goto_32

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lur;->c()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_2
    iget-object v0, v1, Lsm;->b:Lve;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    const-string v1, "#abortCaptures"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

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

    :goto_6
    const-string v1, "#onGraphStopped"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lsp;->e:Lur;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lve;->b()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1}, Lur;->c()V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lsp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_1c
    invoke-virtual {p0, v5, v6}, Lsp;->d(J)V

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lsp;->e:Lur;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
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

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_6

    nop

    nop

    :goto_24
    monitor-exit v0

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

    :goto_25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lsp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_33

    nop

    nop

    :goto_28
    move-object v0, v4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lsp;->e:Lur;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :catchall_1
    move-exception p0

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

    :goto_2d
    const-string v1, "#shutdown"

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_30
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x19

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_35
    move-object v1, v4

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3

    nop

    nop

    :goto_37
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Lve;->c()V

    goto/32 :goto_2b

    nop

    nop

    :goto_39
    monitor-exit v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3a
    const-string v2, "#onGraphStopped"

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3b
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    :goto_3f
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_41
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lsp;->d:I

    nop

    const/4 v2, 0x0

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_7

    nop

    iget-object v1, p0, Lsp;->c:Lsd;

    nop

    nop

    const/4 v7, 0x1

    nop

    if-eqz v1, :cond_6

    nop

    iget-boolean v1, p0, Lsp;->o:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    goto :goto_42

    nop

    nop

    nop

    nop

    :cond_4
    invoke-static {v2, v7}, La;->p(II)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_5
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v1}, La;->p(II)Z

    move-result v1

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    const-wide/16 v5, 0x7d0

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_42
    move v2, v7

    nop

    nop

    nop

    :cond_7
    iput-object v4, p0, Lsp;->c:Lsd;

    nop

    nop

    nop

    nop

    iput v3, p0, Lsp;->d:I

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_43
    throw p0

    nop

    nop

    :goto_44
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lsp;->e:Lur;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_47
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_48
    const-string v1, "#stopRepeating"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4a
    monitor-exit v0

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

    :goto_4b
    monitor-enter v0

    nop

    nop

    :try_start_1
    iget v1, p0, Lsp;->d:I

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    if-eq v1, v2, :cond_8

    nop

    nop

    nop

    if-ne v1, v3, :cond_9

    nop

    nop

    goto :goto_47

    nop

    :cond_9
    iput v2, p0, Lsp;->d:I

    nop

    nop

    iget-object v1, p0, Lsp;->l:Lsm;

    nop

    iput-object v4, p0, Lsp;->l:Lsm;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_46

    nop

    nop

    :goto_4c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_b

    nop

    nop
.end method

.method public final c(Z)V
    .locals 9

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/LinkedHashSet;

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

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

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

    :goto_3
    if-nez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget-object p0, p0, Lvd;->b:Lvc;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    goto/32 :goto_22

    nop

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

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lsp;->d:I

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v6, :cond_3

    nop

    iget-object v1, p0, Lsp;->j:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    nop

    nop

    sub-long/2addr v7, v4

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lqq;

    nop

    nop

    nop

    nop

    iget v3, v3, Lqq;->a:I

    nop

    nop

    nop

    nop

    new-instance v4, Lqq;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lqq;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const-string v1, "%."

    nop

    nop

    const-string v2, "f ms"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v1, v2}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    long-to-double v2, v7

    nop

    nop

    nop

    const-wide v4, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    div-double/2addr v2, v4

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    invoke-static {v4, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v2, :cond_2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_12
    check-cast v6, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_14
    check-cast v7, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lsp;->l:Lsm;

    nop

    nop

    nop

    iget-object v2, p0, Lsp;->m:Ljava/util/Map;

    nop

    iget-object v3, p0, Lsp;->n:Ljava/util/Map;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    const-string p1, "Required value was null."

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_24

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

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

    :goto_1d
    throw p0

    nop

    :goto_1e
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1f
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lsp;->e:Lur;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_22
    const v1, 0xe

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x0

    nop

    :goto_24
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v8, Lqq;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v3, :cond_4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_29
    check-cast p0, Lvd;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2a
    invoke-interface {v1, v0}, Lsc;->i(Ljava/util/List;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v0, "#finalizeOutputConfigurations"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    throw p0

    nop

    nop

    :goto_2d
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2e
    check-cast v6, Lrh;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_30
    iget-object v0, p0, Lsp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lsp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_33
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_37

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_9

    nop

    nop

    :goto_36
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v7, Lrh;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_39
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    nop

    nop

    :goto_3a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3b
    check-cast v7, Lqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3c
    check-cast v7, Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_40
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget v7, v7, Lqq;->a:I

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_43
    invoke-direct {v8, v7}, Lqq;-><init>(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

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

    :goto_45
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_1e

    nop

    :goto_47
    goto/32 :goto_30

    nop

    nop

    :goto_48
    invoke-virtual {v6, v7}, Lrh;->a(Landroid/view/Surface;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Lvc;->d()V

    :goto_4b
    goto/32 :goto_31

    nop

    nop

    :goto_4c
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

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

    :goto_4d
    add-int v0, v0, v1

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

    :goto_4e
    if-lez v0, :cond_8

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_46

    nop

    :goto_4f
    if-nez v7, :cond_9

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_51
    iget-object v1, v1, Lsm;->a:Lsc;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v7, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_16

    nop

    nop
.end method

.method public final d(J)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1c

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
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    invoke-static {v0, v2, p1, v1, p0}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_7

    nop

    nop

    :goto_6
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

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
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

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Lsp;->q:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-static {p2}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    nop

    nop

    nop

    iget-object p0, p0, Lsp;->q:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    check-cast p1, Ljava/lang/AutoCloseable;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const v1, 0x7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_13
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_2

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

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, p1, p2, p0, v2}, Lso;-><init>(JLsp;Ltzy;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lsp;->b:Ljava/lang/Object;

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

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    monitor-exit p1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Lso;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lsp;->a:Lufs;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    const/4 p0, 0x3

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

    :goto_22
    cmp-long v0, p1, v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p1, 0x0

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

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final e(Lsc;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_4
    invoke-direct {p0, p1}, Lsp;->51550bab6b6440a4fd45f825c221b363m(Lsc;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "#configure"

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

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    return-void

    nop

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

    :goto_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_a

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lsp;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

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

    :goto_3
    const-wide/16 v0, 0x0

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

    :goto_4
    invoke-virtual {p0, v0, v1}, Lsp;->d(J)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    const v0, 0x11

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    const/4 v1, 0x0

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

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2}, Lueq;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    :goto_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_14
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "#onSessionFinalized"

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

    :goto_19
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lsp;->i:Lueq;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 8

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit v1

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v3

    nop

    nop

    :try_start_0
    iget v4, p0, Lsp;->d:I

    nop

    const/4 v6, 0x4

    nop

    nop

    nop

    if-eq v4, v6, :cond_6

    nop

    const/4 v6, 0x5

    nop

    nop

    nop

    if-ne v4, v6, :cond_0

    nop

    nop

    goto/16 :goto_10

    nop

    nop

    nop

    :cond_0
    if-ne v4, v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    iput v0, p0, Lsp;->d:I

    nop

    iget-object v0, p0, Lsp;->j:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iput-object v1, p0, Lsp;->m:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lsp;->p:Ljava/util/Map;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    new-instance v2, Ljava/util/LinkedHashMap;

    nop

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :cond_1
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    nop

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    nop

    nop

    nop

    :cond_2
    move-object v2, v4

    nop

    :cond_3
    if-eqz v2, :cond_4

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    nop

    if-ne v0, v1, :cond_4

    nop

    iput-object v2, p0, Lsp;->n:Ljava/util/Map;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v4}, Lsp;->51550bab6b6440a4fd45f825c221b363m(Lsc;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    const v1, 0xd

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    :try_start_1
    iget-object v2, p0, Lsp;->p:Ljava/util/Map;

    nop

    nop

    iget-object v4, p0, Lsp;->c:Lsd;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_8

    nop

    nop

    if-eqz v4, :cond_8

    nop

    const/4 v5, 0x2

    nop

    iput v5, p0, Lsp;->d:I

    nop

    iput-boolean v3, p0, Lsp;->o:Z

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    new-instance v3, Luh;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v6, v7}, Luh;-><init>(J)V

    iput-object v3, p0, Lsp;->k:Luh;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v3, "CameraDevice-"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "Unexpected state: "

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

    :goto_e
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lsp;->d:I

    nop

    nop

    nop

    invoke-static {p0}, Lkg;->C(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_6
    :goto_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget p0, p0, Lsp;->d:I

    nop

    invoke-static {p0}, Lkg;->C(I)Ljava/lang/String;

    move-result-object p0

    nop

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-ne v2, v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lsp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_17

    nop

    nop

    :goto_16
    invoke-interface {v4}, Lsd;->a()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-exit v3

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

    :goto_19
    monitor-exit v1

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

    :goto_1a
    const-string v3, "#createCaptureSession"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    monitor-exit v1

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

    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    monitor-exit v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    throw p0

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    :goto_24
    iget-object v1, p0, Lsp;->b:Ljava/lang/Object;

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

    :goto_25
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lsp;->f:Lsl;

    nop

    nop

    nop

    invoke-interface {v1, v4, v2, p0}, Lsl;->a(Lsd;Ljava/util/Map;Lsp;)Ljava/util/Map;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_21

    nop

    nop

    :goto_27
    monitor-exit v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_4
    iget v2, p0, Lsp;->d:I

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1}, Loz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v4}, Lsd;->a()Ljava/lang/String;

    move-result-object v3

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

    :goto_2c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_d

    nop

    nop

    :goto_2e
    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2f
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    :catchall_2
    move-exception p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_7

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "#onClosed"

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

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    invoke-virtual {p0}, Lsp;->b()V

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_3

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

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final i()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lsp;->b()V

    goto/32 :goto_14

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, " Configuration Failed"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "CXCP"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const-string v0, "#onConfigureFailed"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    const v1, 0xe

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lsp;->h:I

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

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "CaptureSessionState-"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method
