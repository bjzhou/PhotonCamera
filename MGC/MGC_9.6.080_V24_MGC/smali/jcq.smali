.class public Ljcq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:J

.field public final c:Ltud;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lpdf;

.field public final f:Ljtl;

.field public final g:Lnpq;

.field public final h:Loyd;

.field public final i:Ljava/util/Map;

.field public final j:Lkog;

.field public final k:Lhoh;

.field public final l:Liof;

.field public final m:Lhdu;

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ljcq;->a:Lsdb;

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
    const-string v0, "jcq"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

.method public constructor <init>(Lhoh;Ltud;Liof;Lkog;Ljava/util/concurrent/Executor;Lhdu;Lpdf;Ljtl;Lnpq;Loyd;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p5, p0, Ljcq;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    iput-object p10, p0, Ljcq;->h:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Ljcq;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/HashMap;

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

    :goto_5
    goto/32 :goto_1c

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
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p9, p0, Ljcq;->g:Lnpq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p7, p0, Ljcq;->e:Lpdf;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Ljcq;->l:Liof;

    nop

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

    :goto_e
    iput-object p2, p0, Ljcq;->c:Ltud;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lhmu;->u:Lhmo;

    nop

    goto/32 :goto_1f

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

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_15
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p6, p0, Ljcq;->m:Lhdu;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    sget-object v0, Lhmu;->s:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p1, p0, Ljcq;->k:Lhoh;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p8, p0, Ljcq;->f:Ljtl;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Ljcq;->i:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_23
    iput-wide v0, p0, Ljcq;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    int-to-long v0, v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p4, p0, Ljcq;->j:Lkog;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Linb;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljcq;->b(Ljcp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Linb;->a()I

    iget-object v0, p0, Ljcq;->i:Ljava/util/Map;

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljcp;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    sget-object v0, Ljcq;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    const-string v2, "KeplerController"

    nop

    invoke-interface {v0, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const/16 v1, 0x835

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    invoke-virtual {p1}, Linb;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    const-string v1, "Missing InflightSession for shot id %s"

    nop

    invoke-interface {v0, v1, p1}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    monitor-exit p0

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

    :goto_a
    throw p1

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

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

    :goto_d
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop
.end method

.method public final declared-synchronized b(Ljcp;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

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
    iget-object v0, p1, Ljcp;->f:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Llhz;

    nop

    nop

    nop

    invoke-virtual {v1}, Llhz;->g()V

    goto :goto_3

    nop

    :cond_0
    iget-object v0, p1, Ljcp;->g:Lsuu;

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsuu;->cancel(Z)Z

    iget-object v0, p1, Ljcp;->h:Lsuu;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsuu;->cancel(Z)Z

    iget-object v0, p1, Ljcp;->b:Llhz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Llhz;->g()V

    iget-object v0, p1, Ljcp;->n:Ljcv;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljcv;->c()V

    :cond_1
    iget-object v0, p0, Ljcq;->i:Ljava/util/Map;

    nop

    iget-object p1, p1, Ljcp;->a:Linb;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const v1, 0x20

    nop

    goto/32 :goto_7

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Linb;Llhz;ILpsf;Lsuu;)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    return-void

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Linb;->a()I

    iget-object v0, p0, Ljcq;->i:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    new-instance v0, Ljcp;

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    move-object v3, p2

    nop

    nop

    nop

    nop

    move v4, p3

    nop

    nop

    nop

    move-object v5, p4

    nop

    nop

    nop

    move-object v6, p5

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Ljcp;-><init>(Linb;Llhz;ILpsf;Lsuu;)V

    iget-object p2, p0, Ljcq;->i:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    const v0, 0x19

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
    const v1, 0x19

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
.end method

.method public final declared-synchronized d(Linb;)V
    .locals 23

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :goto_3
    const v1, 0x8

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

    :goto_4
    return-void

    nop

    :cond_1
    :try_start_0
    new-instance v1, Llko;

    nop

    nop

    nop

    new-instance v2, Lkto;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lkto;-><init>()V

    new-instance v3, Lkua;

    nop

    nop

    nop

    invoke-direct {v3}, Lkua;-><init>()V

    iget-object v6, v4, Ljcp;->b:Llhz;

    nop

    nop

    nop

    nop

    iget-object v8, v6, Llhz;->t:Llko;

    nop

    nop

    nop

    iget-object v9, v8, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lkmq;

    nop

    iget-object v8, v8, Llko;->d:Ljava/lang/Object;

    nop

    nop

    invoke-direct {v1, v9, v8, v2, v3}, Llko;-><init>(Lkmq;Llxa;Lktq;Lktr;)V

    invoke-virtual {v6}, Llhz;->f()Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    check-cast v3, Lsbh;

    nop

    nop

    nop

    iget v3, v3, Lsbh;->c:I

    nop

    nop

    iget v8, v7, Ljcq;->n:I

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v8, :cond_2

    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    nop

    nop

    nop

    move-object v0, v4

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    :cond_2
    iget-object v3, v6, Llhz;->o:Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_9

    nop

    nop

    nop

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget v9, v4, Ljcp;->o:I

    nop

    nop

    nop

    :goto_5
    move-object v10, v2

    nop

    nop

    nop

    check-cast v10, Lsbh;

    nop

    nop

    nop

    nop

    nop

    iget v10, v10, Lsbh;->c:I

    nop

    if-ge v9, v10, :cond_8

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v9, 0x1

    nop

    nop

    invoke-virtual {v3}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v9}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v11

    nop

    nop

    nop

    invoke-virtual {v11}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object v11

    nop

    sget-object v12, Lsxd;->c:Lsxd;

    nop

    if-eq v11, v12, :cond_3

    nop

    nop

    nop

    nop

    move-object/from16 v21, v3

    nop

    nop

    move-object/from16 v20, v4

    nop

    move-object v4, v1

    nop

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    iget v11, v7, Ljcq;->n:I

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    nop

    if-ge v9, v11, :cond_4

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    iget v13, v7, Ljcq;->n:I

    nop

    add-int/lit8 v13, v13, -0x1

    nop

    nop

    nop

    nop

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    nop

    nop

    invoke-static {v11, v13}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v11

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    sub-int v11, v9, v11

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v11, v12

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    invoke-static {v11, v9}, Lsay;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lsay;

    move-result-object v11

    nop

    iget v9, v7, Ljcq;->n:I

    nop

    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v15, Lcom/google/googlex/gcam/FrameRequestVector;

    nop

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FrameRequestVector__SWIG_0()J

    move-result-wide v13

    nop

    nop

    invoke-direct {v15, v13, v14, v12}, Lcom/google/googlex/gcam/FrameRequestVector;-><init>(JZ)V

    invoke-virtual {v11}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v13

    nop

    nop

    check-cast v13, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    nop

    :goto_7
    invoke-virtual {v11}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v14

    nop

    check-cast v14, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    nop

    if-gt v13, v14, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v14

    nop

    nop

    invoke-virtual {v14, v13}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v14

    nop

    nop

    invoke-virtual {v15, v14}, Lcom/google/googlex/gcam/FrameRequestVector;->c(Lcom/google/googlex/gcam/FrameRequest;)V

    add-int/lit8 v13, v13, 0x1

    nop

    goto :goto_7

    nop

    nop

    nop

    :cond_5
    new-instance v13, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    invoke-direct {v13}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    move-object/from16 v19, v1

    nop

    iget-wide v0, v13, Lcom/google/googlex/gcam/BurstSpec;->a:J

    nop

    nop

    nop

    move-object/from16 v21, v3

    nop

    nop

    nop

    nop

    move-object/from16 v20, v4

    nop

    iget-wide v3, v15, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    nop

    nop

    nop

    move-object/from16 v22, v13

    nop

    nop

    nop

    nop

    nop

    move-wide v13, v0

    nop

    nop

    nop

    nop

    move-object v0, v15

    nop

    nop

    nop

    move-object/from16 v15, v22

    nop

    nop

    nop

    nop

    move-wide/from16 v16, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v0

    nop

    nop

    nop

    nop

    invoke-static/range {v13 .. v18}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_frame_requests_set(JLcom/google/googlex/gcam/BurstSpec;JLcom/google/googlex/gcam/FrameRequestVector;)V

    iget-object v0, v6, Llhz;->s:Lijd;

    nop

    nop

    iget-object v1, v6, Llhz;->n:Lpro;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Llhz;

    nop

    move-object/from16 v4, v19

    nop

    nop

    nop

    move-object/from16 v13, v22

    nop

    nop

    invoke-direct {v3, v4, v0, v13, v1}, Llhz;-><init>(Llko;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V

    invoke-virtual {v3, v9}, Llhz;->h(I)V

    invoke-virtual {v11}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    invoke-virtual {v11}, Lsay;->i()Ljava/lang/Comparable;

    move-result-object v1

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v1, v12

    nop

    nop

    nop

    nop

    move-object v9, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lryb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v0, v1}, Lryb;->b(II)Lryb;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :cond_6
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_7

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    check-cast v9, Lpge;

    nop

    nop

    nop

    invoke-interface {v9}, Lpge;->a()Lpge;

    move-result-object v9

    nop

    if-eqz v9, :cond_6

    nop

    nop

    invoke-virtual {v3, v9}, Llhz;->c(Lpge;)V

    goto :goto_8

    nop

    nop

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object v1, v4

    nop

    move v9, v10

    nop

    nop

    nop

    nop

    move-object/from16 v4, v20

    nop

    move-object/from16 v3, v21

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    :cond_8
    move-object v0, v4

    nop

    nop

    nop

    iput v9, v0, Ljcp;->o:I

    nop

    nop

    nop

    move-object v3, v8

    nop

    nop

    nop

    :goto_a
    iget-object v1, v0, Ljcp;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v6, Lsuu;

    nop

    invoke-direct {v6}, Lsuu;-><init>()V

    iget-object v8, v7, Ljcq;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance v9, Ljcn;

    nop

    nop

    nop

    nop

    move-object v1, v9

    nop

    nop

    nop

    move-object/from16 v2, p0

    nop

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v5, p1

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Ljcn;-><init>(Ljcq;Ljava/util/List;Ljcp;Linb;Lsuu;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    throw v0

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Lsed;->a:Lsdr;

    nop

    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    iget-object v0, v7, Ljcq;->i:Ljava/util/Map;

    nop

    nop

    move-object/from16 v5, p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    check-cast v4, Ljcp;

    nop

    const/4 v0, 0x0

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    sget-object v1, Ljcq;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    sget-object v2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    const-string v3, "KeplerController"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const/16 v2, 0x830

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Missing InflightSession for shot id %s"

    nop

    invoke-interface {v1, v3, v2}, Lscz;->t(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :cond_9
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v1, "PayloadBurstSpec not provided"

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v7, p0

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
.end method
