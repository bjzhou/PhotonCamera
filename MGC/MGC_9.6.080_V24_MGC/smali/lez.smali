.class public Llez;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final h:Lsdb;


# instance fields
.field public final a:Lsuu;

.field public final b:Lpdf;

.field public final c:Lljs;

.field public final d:Llhq;

.field public e:Lpgo;

.field public f:Lcom/google/googlex/gcam/BurstSpec;

.field public final g:Lpik;

.field private final i:Likv;

.field private final j:Lldp;

.field private final k:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "lez"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Llez;->h:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Likv;Lldp;Lpdf;Lljs;Llhq;Lpik;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Llez;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Llez;->c:Lljs;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Llez;->b:Lpdf;

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

    :goto_3
    iput-object p2, p0, Llez;->j:Lldp;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Llez;->g:Lpik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    iput-object p1, p0, Llez;->i:Likv;

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

    :goto_7
    iput-object p5, p0, Llez;->d:Llhq;

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

    :goto_8
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p7, p0, Llez;->k:Ljava/util/concurrent/ExecutorService;

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

    :goto_a
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    return-void

    nop

    nop
.end method

.method public static final d(Landroid/util/Pair;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    check-cast v0, Lpim;

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

    :goto_6
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

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
    check-cast p0, Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lpim;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/util/Pair;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    const-string v1, "Error getting PSL frames."

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

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

    :goto_4
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    const/16 v2, 0xde4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    :try_start_0
    iget-object p0, p0, Llez;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lsuu;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Llez;->h:Lsdb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

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
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
    monitor-exit p0

    nop

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

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Llez;->a:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    invoke-virtual {p0}, Llez;->a()Landroid/util/Pair;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Llez;->d(Landroid/util/Pair;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    iget-object v0, p0, Llez;->a:Lsuu;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lsuu;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    const v1, 0x13

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final c(Linb;Lpro;Lpgo;Lpin;Lcom/google/googlex/gcam/BurstSpec;)Landroid/util/Pair;
    .locals 16

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_1
    :try_start_0
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v9

    nop

    nop

    nop

    invoke-static {v9}, Lryh;->j(I)Lryd;

    move-result-object v9

    nop

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    nop

    nop

    nop

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    check-cast v12, Lpir;

    nop

    nop

    nop

    nop

    invoke-static {v12}, Lpjk;->k(Lpir;)Lpge;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

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

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    :goto_5
    :try_start_1
    iget-object v12, v12, Lpir;->a:Lpgo;

    nop

    nop

    invoke-virtual {v9, v12, v13}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    nop

    nop

    :cond_0
    new-instance v11, Lpim;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lryd;->b()Lryh;

    move-result-object v9

    nop

    invoke-direct {v11, v9}, Lpim;-><init>(Lryh;)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/16 :goto_f

    nop

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    nop

    if-ne v5, v8, :cond_2

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    goto :goto_6

    nop

    :cond_2
    move v5, v7

    nop

    nop

    nop

    :goto_6
    invoke-static {v5}, Lrrf;->x(Z)V

    iget-object v5, v2, Lpin;->b:Lpdf;

    nop

    const-string v8, "submit"

    nop

    nop

    nop

    invoke-interface {v5, v8}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v5, v2, Lpin;->a:Lpjb;

    nop

    nop

    invoke-virtual {v5, v3, v6}, Lpjb;->g(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, v2, Lpin;->b:Lpdf;

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    iget-object v2, v2, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    :goto_7
    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->size()I

    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Llez;->h:Lsdb;

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/16 v3, 0xde7

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    const-string v3, "No PSL frame result received."

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    :goto_8
    iget-object v2, v1, Llez;->b:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    nop

    nop
    :try_end_2
    .catch Lpfi; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_9
    goto/32 :goto_21

    nop

    nop

    :goto_a
    if-eqz v13, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    :goto_b
    if-ge v7, v3, :cond_5

    nop

    nop

    nop

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lpim;

    nop

    invoke-virtual {v5}, Lpim;->close()V

    add-int/lit8 v7, v7, 0x1

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    invoke-static {v6}, Lpin;->g(Ljava/util/List;)V

    iget-object v3, v2, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    iget-object v2, v2, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V
    :try_end_3
    .catch Lpfi; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_26

    nop

    nop

    :goto_c
    iget-object v0, v1, Llez;->b:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v7, 0x0

    nop

    nop

    :try_start_4
    iget-object v8, v2, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v9, "allocate_and_build_results"

    nop

    invoke-interface {v8, v9}, Lpdf;->f(Ljava/lang/String;)V

    move v8, v7

    nop

    nop

    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    nop

    if-ge v8, v9, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Lphz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Ljava/util/Set;

    nop

    nop

    nop

    nop

    iget-object v10, v2, Lpin;->c:Lhon;

    nop

    nop

    nop

    invoke-virtual {v10, v9}, Lhon;->f(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    nop

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    nop

    :catch_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

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

    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    :goto_15
    if-ge v7, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lpim;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lpim;->close()V

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    :cond_6
    invoke-static {v6}, Lpin;->g(Ljava/util/List;)V

    iget-object v3, v2, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    iget-object v2, v2, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Lpfi; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_14

    nop

    nop

    :goto_18
    move-object/from16 v1, p0

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

    :goto_19
    if-ne v11, v9, :cond_7

    nop

    goto/32 :goto_1

    nop

    :cond_7
    :try_start_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    :goto_1a
    if-ge v7, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lpim;

    nop

    nop

    invoke-virtual {v5}, Lpim;->close()V
    :try_end_6
    .catch Lpfi; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v7, v7, 0x1

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

    :goto_1c
    move-object/from16 v2, p4

    nop

    nop

    nop

    :try_start_7
    iget-object v0, v1, Llez;->b:Lpdf;

    nop

    nop

    nop

    const-string v3, "PostShutterCaptureController#getPslFrames"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpdf;->f(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lpgo;->b()Loyd;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Llez;->h:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v2, 0xdeb

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v2, "Not enough available capacity for PSL request (%s required, none available). Skipping request."

    nop

    nop

    invoke-virtual/range {p5 .. p5}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, v3, v4}, Lscz;->u(Ljava/lang/String;J)V

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_8
    iget-object v0, v1, Llez;->b:Lpdf;

    nop

    nop

    const-string v3, "buildRequest"

    nop

    nop

    invoke-interface {v0, v3}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lpin;->l()Lqgk;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Lqgk;->d()V

    invoke-virtual/range {p5 .. p5}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v3

    nop

    nop

    nop

    long-to-int v3, v3

    nop

    nop

    nop

    nop

    const/16 v4, 0x7

    nop

    nop

    nop

    nop

    nop

    if-ge v3, v4, :cond_9

    nop

    move v3, v4

    nop

    nop

    :cond_9
    invoke-interface/range {p3 .. p3}, Lpgo;->b()Loyd;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    if-le v3, v4, :cond_a

    nop

    nop

    nop

    sget-object v5, Llez;->h:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    const/16 v6, 0xdea

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Not enough available capacity for PSL request (%s required, %s available).  Truncating request."

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6, v3, v4}, Lscz;->w(Ljava/lang/String;II)V

    move v15, v4

    nop

    nop

    nop

    nop

    goto :goto_1d

    nop

    nop

    :cond_a
    move v15, v3

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v1, Llez;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "buildPayload"

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v3, v1, Llez;->j:Lldp;

    nop

    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    int-to-long v4, v4

    nop

    nop

    nop

    new-instance v10, Lktn;

    nop

    invoke-direct {v10}, Lktn;-><init>()V

    invoke-static {v0}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {}, Lkav;->o()Lkqa;

    move-result-object v14

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    move-object v8, v3

    nop

    nop

    nop

    nop

    move-object v9, v6

    nop

    nop

    nop

    nop

    move-object/from16 v11, p3

    nop

    nop

    move v12, v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v8 .. v14}, Lldp;->c(Lqgk;Lktp;Lpgo;IILkqa;)V

    move-object/from16 v8, p2

    nop

    nop

    nop

    move v9, v15

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v9}, Lldp;->b(JLqgk;Lcom/google/googlex/gcam/FrameRequestVector;Lpro;I)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    new-instance v4, Lkoz;

    nop

    nop

    const/16 v5, 0xd

    nop

    nop

    invoke-direct {v4, v5}, Lkoz;-><init>(I)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    nop

    sget v4, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/util/List;

    nop

    nop

    const-string v4, "AUXILIARY_FRAME_COUNT_OUT"

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Llez;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "submitRequests"

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->h(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    invoke-interface/range {p3 .. p3}, Lpgo;->b()Loyd;

    move-result-object v4

    nop

    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    const-string v4, "FrameServerSession#trySubmit(burst"

    nop

    nop

    nop

    nop

    iget-object v5, v2, Lpin;->b:Lpdf;

    nop

    invoke-interface {v5, v4}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lpin;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    nop

    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Lpfi; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, v1, Llez;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    return-object v0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_27
    if-lez v0, :cond_b

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

    :cond_b
    goto/32 :goto_1e

    nop

    :goto_28
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, v1, Llez;->b:Lpdf;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_2b
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final e(Linb;Lpro;Loel;Lijd;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 10

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    :try_start_0
    invoke-virtual {p3}, Loel;->h()Lprw;

    move-result-object p3

    nop

    nop

    nop
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v9, Lpde;

    nop

    nop

    nop

    iget-object v0, p0, Llez;->b:Lpdf;

    nop

    const-string v1, "PckPostShutterCaptureController#buildBurstSpec"

    nop

    invoke-direct {v9, v0, v1}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v0, p0, Llez;->i:Likv;

    nop

    nop

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    nop

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    move-object v1, p1

    nop

    nop

    nop

    nop

    move-object v2, p3

    nop

    nop

    move-object v3, p2

    nop

    nop

    nop

    nop

    nop

    move-object v6, p4

    nop

    nop

    invoke-interface/range {v0 .. v8}, Likv;->B(Linb;Lprw;Lpro;ZZLijd;Lj$/util/Optional;Lj$/util/Optional;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v9}, Lpde;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_e

    nop

    nop

    :goto_4
    const/16 p2, 0xded

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p2, "Unable to build payloadBurstSpec %s"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_4
    invoke-virtual {v9}, Lpde;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1e

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

    :goto_b
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_e
    if-nez p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_5
    invoke-interface {p3}, Lprw;->close()V
    :try_end_5
    .catch Lpfi; {:try_start_5 .. :try_end_5} :catch_0

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, p2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw p0

    nop
    :try_end_6
    .catch Lpfi; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_16

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p0

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p1, Llez;->h:Lsdb;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    if-nez p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_8
    invoke-interface {p3}, Lprw;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(Linb;Loel;Lpro;Lpin;Lpci;Lijd;)Z
    .locals 14

    goto/32 :goto_6

    nop

    nop

    :goto_0
    move-object/from16 v2, p6

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1, v5, v3, v2}, Llez;->e(Linb;Lpro;Loel;Lijd;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object v7

    nop

    nop

    nop

    if-nez v7, :cond_0

    nop

    nop

    nop

    :goto_1
    move v11, v1

    nop

    goto :goto_2

    nop

    nop

    :cond_0
    invoke-virtual {v7}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v2

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/FrameRequestVector;->e()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    :cond_1
    const/4 v1, 0x1

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v11, :cond_3

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v10, Llez;->f:Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v12, v10, Llez;->k:Ljava/util/concurrent/ExecutorService;

    nop

    new-instance v13, Lley;

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v1, v13

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v3, p2

    nop

    nop

    move-object v4, p1

    nop

    nop

    nop

    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v6, p4

    nop

    nop

    nop

    move-object/from16 v8, p5

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v9}, Lley;-><init>(Llez;Loel;Linb;Lpro;Lpin;Lcom/google/googlex/gcam/BurstSpec;Lpci;I)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_4
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    move-object v10, p0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    return v11

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    :try_start_3
    iget-object v0, v10, Llez;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lsuu;->isCancelled()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    invoke-interface/range {p5 .. p5}, Lpci;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

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

    :goto_10
    throw v0

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    :goto_12
    goto :goto_13

    nop

    :catch_0
    :try_start_4
    sget-object v0, Llez;->h:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0xdf2

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Error executing the async PSL request."

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface/range {p5 .. p5}, Lpci;->close()V

    goto :goto_13

    nop

    :cond_3
    invoke-interface/range {p5 .. p5}, Lpci;->close()V

    iget-object v0, v10, Llez;->a:Lsuu;

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1

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

    :goto_15
    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop
.end method
