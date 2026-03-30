.class public Llii;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Likm;
.implements Lilg;
.implements Lilq;
.implements Lilf;


# static fields
.field public static final a:Lsdb;

.field private static final f:Lryy;

.field private static final g:Lryy;


# instance fields
.field public final b:Llgc;

.field public final c:Lrss;

.field public final d:Lljp;

.field public final e:Z

.field private final h:Lije;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/HashMap;

.field private final k:Ltud;

.field private final l:Lipv;

.field private final m:Z

.field private final n:Ltbt;

.field private final o:Liof;

.field private final p:Lfdn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

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
    new-instance v0, Lsbt;

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

    :goto_2
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_4
    const v1, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    invoke-static {v0, v1, v2}, Lryy;->H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    sput-object v0, Llii;->f:Lryy;

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

    nop

    :goto_10
    sput-object v0, Llii;->a:Lsdb;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    sput-object v0, Llii;->g:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    const-string v0, "lii"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_17
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

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

    nop
.end method

.method public constructor <init>(Llgc;Lije;Lrss;Ltud;Ljava/util/concurrent/Executor;Liof;Lljp;Lipv;Ltud;Lhoh;Ltbt;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

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

    :goto_1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Llii;->e:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Llii;->k:Ltud;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    iput-object p2, p0, Llii;->h:Lije;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Llii;->b:Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Llii;->m:Z

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
    return-void

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Llii;->p:Lfdn;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    sget-object p1, Lhml;->R:Lhmn;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lfdn;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p6, p0, Llii;->o:Liof;

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

    :goto_f
    sget-object p1, Lhml;->O:Lhmn;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    iput-object p5, p0, Llii;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p10, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p10, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

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

    :goto_13
    iput-object p7, p0, Llii;->d:Lljp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    iput-object p11, p0, Llii;->n:Ltbt;

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

    :goto_15
    iput-object p3, p0, Llii;->c:Lrss;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1, p9}, Lfdn;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    iput-object p8, p0, Llii;->l:Lipv;

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

    :goto_18
    invoke-virtual {p3}, Lrss;->h()Z

    move-result p1

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

.method private static j(Lilo;Lilp;Ljava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, p2, v2, p0, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p2}, Lilk;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lilk;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_7
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    const-string v1, "Error getting RGB image from secondary shot: %s"

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

    :goto_9
    invoke-interface {p0, v0}, Lilo;->b(Lilk;)V

    :goto_a
    goto/32 :goto_d

    nop

    nop

    :goto_b
    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p0, p0, p0}, Llig;->a(Lcom/google/googlex/gcam/InterleavedImageU8;Linb;Lcom/google/googlex/gcam/ShotMetadata;)V

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    check-cast p1, Llig;

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

    :goto_12
    new-instance p2, Ljava/lang/Throwable;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_12

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

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p0, Llii;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_1a
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1b
    const/16 v2, 0xe9a

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

    :goto_1c
    invoke-virtual {v0}, Lilk;->getMessage()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Llxm;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Linb;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v2}, Llxa;->j()Llxm;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    goto :goto_2

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_2
    sget-object p1, Llii;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/16 v0, 0xe9e

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const-string v0, "Aborting shot %s"

    nop

    nop

    invoke-virtual {v1}, Linb;->a()I

    move-result v2

    nop

    nop

    invoke-interface {p1, v0, v2}, Lscz;->t(Ljava/lang/String;I)V

    iget-object p1, p0, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Llhz;

    nop

    if-eqz p1, :cond_3

    nop

    nop

    invoke-virtual {p1}, Llhz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    :goto_6
    return-void

    nop

    nop

    :cond_3
    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_4
    goto/32 :goto_a

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Linb;Lpge;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

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

    :try_start_0
    monitor-exit p0

    nop

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

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p2}, Lpge;->b()Lpgi;

    invoke-virtual {p1}, Linb;->a()I

    iget-object v0, p0, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Llih;

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Llhz;->c(Lpge;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :cond_0
    :try_start_2
    invoke-interface {p2}, Lpge;->b()Lpgi;

    invoke-virtual {p1}, Linb;->a()I

    invoke-interface {p2}, Lpge;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 8

    goto/32 :goto_a

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_e

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

    :cond_1
    :try_start_0
    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

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

    :goto_a
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    monitor-exit p0

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

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {p1}, Linb;->a()I

    iget-object v0, p0, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, p1, Linb;->p:Lioy;

    nop

    nop

    nop

    invoke-virtual {v0}, Lioy;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    iget v0, v0, Lioy;->c:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    if-ne v0, v1, :cond_4

    nop

    nop

    add-int/lit8 v1, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Llii;->f:Lryy;

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    invoke-virtual {v4, v1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    :cond_3
    throw v3

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_d
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    add-int/lit8 v0, v2, -0x1

    nop

    sget-object v1, Llii;->g:Lryy;

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-object v0, p0, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    iget-object v3, p1, Linb;->w:Llko;

    nop

    iget-object v1, p0, Llii;->h:Lije;

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Llih;

    nop

    invoke-virtual {v1}, Lije;->a()Lijd;

    move-result-object v4

    nop

    nop

    move-object v1, v7

    nop

    move-object v2, p0

    nop

    nop

    nop

    move-object v5, p2

    nop

    nop

    move-object v6, p3

    nop

    nop

    invoke-direct/range {v1 .. v6}, Llih;-><init>(Llii;Llko;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Linb;IJLpro;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    iget-object p2, p5, Llih;->l:Lsuu;

    nop

    nop

    invoke-virtual {p2, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p5, Llih;->a:Lsuu;

    nop

    invoke-virtual {p2, p1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_1
    invoke-virtual {p1}, Linb;->a()I

    iget-object p5, p0, Llii;->j:Ljava/util/HashMap;

    nop

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    nop

    nop

    nop

    check-cast p5, Llih;

    nop

    nop

    nop

    nop

    nop

    if-nez p5, :cond_0

    nop

    nop

    nop

    sget-object p2, Llii;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    const/16 p3, 0xeba

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Linb;->a()I

    move-result p1

    nop

    const-string p3, "Shot %s hasn\'t been started yet or was aborted!"

    nop

    nop

    nop

    invoke-interface {p2, p3, p1}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized dm(Linb;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_1
    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Llii;->a(Llxm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized dn(Linb;Lilk;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Llii;->a(Llxm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    throw p1

    nop
.end method

.method public final synthetic do(Linb;Lmjq;Lscn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final e(Linb;Lcom/google/googlex/gcam/AeResults;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Llih;->a(Liku;)V

    goto/32 :goto_21

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, v2}, Lcom/google/googlex/gcam/AeResults;->a(Lswv;)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v0, 0x16

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

    :goto_7
    iget-object v2, p0, Llii;->p:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    new-instance p0, Liku;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

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

    :goto_b
    invoke-direct {p0, p1, p1}, Liku;-><init>(FF)V

    goto/32 :goto_1

    nop

    nop

    :goto_c
    check-cast p0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_e
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

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

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-float/2addr p2, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Liku;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p1, v1, p2}, Liku;-><init>(FF)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v1, Lswv;->a:Lswv;

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

    :goto_16
    goto/32 :goto_5

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    const v1, 0x20

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p1}, Llih;->a(Liku;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    mul-float/2addr v1, v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v2, Lswv;->b:Lswv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2, v1}, Lcom/google/googlex/gcam/AeResults;->a(Lswv;)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lfdn;->r()Ljava/lang/Object;

    move-result-object p0

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

    :goto_1e
    invoke-virtual {p1}, Lfdn;->s()Z

    move-result p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Llih;

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Llii;->p:Lfdn;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Linb;->a()I

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Lfdn;->r()Ljava/lang/Object;

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

    :goto_27
    iget-object p1, p0, Llii;->p:Lfdn;

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

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_29
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop
.end method

.method public final synthetic f(Linb;Llih;)V
    .locals 25

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v3, v1, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Llih;

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    const/16 v1, 0xeb3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_2
    sget-object v3, Llii;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    throw v4

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_4
    const/16 v1, 0xea9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

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
    throw v2

    nop

    nop

    nop

    :cond_0
    :try_start_1
    iget-object v7, v3, Llih;->l:Lsuu;

    nop

    nop

    invoke-virtual {v7}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    invoke-virtual/range {p2 .. p2}, Llhz;->f()Ljava/util/List;

    move-result-object v14

    nop

    nop

    iget-object v15, v3, Llih;->a:Lsuu;

    nop

    nop

    invoke-virtual {v15}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    check-cast v15, Ljava/lang/Long;

    nop

    nop

    move/from16 v16, v6

    nop

    nop

    nop

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    iget-object v15, v2, Linb;->p:Lioy;

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Lioy;->a()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    const/16 v18, -0x1

    nop

    nop

    nop

    nop

    if-ne v15, v4, :cond_1

    nop

    nop

    nop

    if-ltz v7, :cond_1

    nop

    move-object v15, v14

    nop

    nop

    nop

    check-cast v15, Lsbh;

    nop

    nop

    iget v15, v15, Lsbh;->c:I

    nop

    nop

    nop

    if-lt v7, v15, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    invoke-static {}, Lshf;->f()Lj$/util/stream/Stream;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v14}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v14

    nop

    nop

    nop

    new-instance v15, Lsje;

    nop

    nop

    nop

    invoke-direct {v15, v7, v14}, Lsje;-><init>(Lj$/util/stream/Stream;Lj$/util/stream/Stream;)V

    new-instance v7, Lkzr;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8}, Lkzr;-><init>(I)V

    invoke-virtual {v15, v7}, Lsjf;->i(Ljava/util/function/Predicate;)Lsjf;

    move-result-object v7

    nop

    nop

    nop

    nop

    new-instance v14, Llie;

    nop

    nop

    nop

    nop

    invoke-direct {v14, v5, v6, v9}, Llie;-><init>(JI)V

    invoke-static {v14}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v5}, Lsjf;->l(Ljava/util/Comparator;)Lsjf;

    move-result-object v5

    nop

    nop

    nop

    nop

    new-instance v6, Lkzs;

    nop

    nop

    const/16 v7, 0x8

    nop

    nop

    invoke-direct {v6, v1, v7}, Lkzs;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Lsjf;->i(Ljava/util/function/Predicate;)Lsjf;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Lngh;

    nop

    nop

    nop

    nop

    const/16 v7, 0x10

    nop

    invoke-direct {v6, v7}, Lngh;-><init>(I)V

    invoke-virtual {v5, v6}, Lsjf;->d(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;

    move-result-object v5

    nop

    nop

    invoke-interface {v5}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    invoke-static {}, Lj$/util/function/Function$-CC;->identity()Ljava/util/function/Function;

    move-result-object v6

    nop

    nop

    invoke-virtual {v5, v6}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v5

    nop

    new-instance v6, Lpnp;

    nop

    nop

    nop

    const/16 v7, 0xa

    nop

    nop

    nop

    invoke-direct {v6, v7}, Lpnp;-><init>(I)V

    invoke-virtual {v5, v6}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v5

    nop

    sget-object v6, Lsiu;->a:Lsiu;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lsiu;

    nop

    nop

    new-instance v6, Ljot;

    nop

    nop

    nop

    const/4 v7, 0x7

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v7}, Ljot;-><init>(I)V

    invoke-virtual {v5, v6}, Lsiu;->a(Ljava/util/function/BiFunction;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    invoke-virtual {v5, v6}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    :cond_2
    if-gez v7, :cond_b

    nop

    invoke-virtual/range {p2 .. p2}, Llhz;->b()V

    new-instance v5, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string v6, "Invalid secondary base frame index."

    nop

    nop

    nop

    nop

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v10, v5}, Llii;->j(Lilo;Lilp;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lhtv; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lhui; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v3, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v3, v1, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Llih;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    const/16 v1, 0xeb4

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    move-object v2, v0

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    nop

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

    :goto_c
    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

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

    nop

    :goto_d
    throw v2

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v1, Llii;->a:Lsdb;

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

    nop

    :goto_10
    const/4 v11, 0x0

    nop

    nop

    nop

    :catch_0
    :try_start_3
    sget-object v4, Llii;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    const/16 v6, 0xea8

    nop

    invoke-interface {v5, v6}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    const-string v6, "Secondary shot didn\'t proceed."

    nop

    nop

    invoke-interface {v5, v6}, Lscz;->s(Ljava/lang/String;)V

    iget-object v5, v2, Linb;->p:Lioy;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lioy;->a()I

    move-result v5

    nop

    nop

    nop

    nop

    const/4 v6, 0x5

    nop

    nop

    nop

    if-eq v5, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/16 v5, 0xeaa

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    const-string v5, "Notifying error."

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    const/4 v4, 0x0

    nop

    invoke-static {v11, v10, v4}, Llii;->j(Lilo;Lilp;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_12
    invoke-virtual/range {p2 .. p2}, Llhz;->g()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_14
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {p2 .. p2}, Llhz;->g()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v3, v1, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Llih;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    const/16 v1, 0xeac

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    move-object v2, v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1, v3, v2}, Lscz;->t(Ljava/lang/String;I)V

    :goto_18
    goto/32 :goto_32

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Llhz;->g()V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_40

    nop

    :cond_5
    :try_start_5
    sget-object v4, Llii;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    const/16 v5, 0xea6

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    check-cast v4, Lscz;

    nop

    const-string v5, "Aborting secondary shot!!"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Llhz;->b()V
    :try_end_5
    .catch Lhtv; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lhui; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    monitor-exit p0

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_7
    iget-object v3, v1, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Llih;

    nop

    nop

    monitor-exit p0

    nop

    const/16 v1, 0xeb1

    nop

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_20
    monitor-enter p0

    nop

    :try_start_8
    iget-object v3, v1, Llii;->j:Ljava/util/HashMap;

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Llih;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    const/16 v1, 0xea7

    nop

    nop

    goto/16 :goto_5

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    move-object v2, v0

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual/range {p2 .. p2}, Llhz;->g()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_23
    throw v2

    nop

    :cond_6
    :try_start_9
    iget-object v13, v2, Linb;->o:Lpro;

    nop

    iget-object v14, v1, Llii;->b:Llgc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    check-cast v15, Lpge;

    nop

    new-instance v7, Loel;

    nop

    nop

    nop

    invoke-direct {v7, v14, v15}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7}, Loel;->e()Lphh;

    move-result-object v7

    nop

    if-eqz v7, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lphh;->d()Lpnx;

    move-result-object v14

    nop

    nop

    iget-object v14, v14, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    invoke-static {v13, v14}, Llia;->a(Lpro;Ljava/lang/String;)Lpro;

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Lphh;->d()Lpnx;

    move-result-object v7

    nop

    nop

    nop

    :goto_24
    move-object/from16 v17, v7

    nop

    nop

    nop

    nop

    goto :goto_25

    nop

    nop

    nop

    nop

    :cond_7
    move-object v7, v12

    nop

    nop

    nop

    check-cast v7, Lryb;

    nop

    nop

    nop

    invoke-virtual {v7}, Lryb;->t()Lscq;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    move-object v13, v5

    nop

    nop

    nop

    nop

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    nop

    nop

    nop

    nop

    if-eqz v14, :cond_9

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Lpge;

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v1, Llii;->b:Llgc;

    nop

    new-instance v15, Loel;

    nop

    nop

    nop

    invoke-direct {v15, v14, v13}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v15, v9}, Llia;->b(Loel;Z)Lpro;

    move-result-object v13

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Loel;->e()Lphh;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7}, Lphh;->d()Lpnx;

    move-result-object v7

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    :cond_9
    move-object/from16 v17, v5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v13, :cond_0

    nop

    nop

    invoke-static {v11, v10, v5}, Llii;->j(Lilo;Lilp;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Lhtv; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lhui; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_26
    move-object v2, v0

    nop

    nop

    nop

    :try_start_a
    monitor-exit p0

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    invoke-virtual/range {p2 .. p2}, Llhz;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    monitor-enter p0

    nop

    nop

    nop

    :try_start_b
    iget-object v3, v1, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Llih;

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xeb7

    nop

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v10, v5

    nop

    nop

    :goto_2b
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Llhz;->f()Ljava/util/List;

    move-result-object v12

    nop

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    nop

    if-eqz v13, :cond_6

    nop

    nop

    sget-object v6, Llii;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    const/16 v7, 0xeb6

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lscz;

    nop

    nop

    nop

    nop

    const-string v7, "No payload frames found, aborting shot."

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Lscz;->s(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Llhz;->b()V

    invoke-static {v11, v10, v5}, Llii;->j(Lilo;Lilp;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Lhtv; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lhui; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto/32 :goto_4f

    nop

    nop

    :goto_2c
    throw v2

    nop

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception v0

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

    nop

    :goto_2d
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

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

    :goto_2e
    const-string v3, "Couldn\'t remove shot %s."

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

    :goto_2f
    throw v2

    nop

    nop

    :goto_30
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_33
    invoke-virtual/range {p2 .. p2}, Llhz;->g()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v10, 0x0

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

    :goto_35
    throw v2

    nop

    nop

    :cond_b
    :try_start_d
    iget-object v5, v1, Llii;->l:Lipv;

    nop

    nop

    invoke-virtual/range {p2 .. p2}, Llhz;->f()Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lpge;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lipv;->a(Lpge;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    iget-object v6, v3, Llih;->t:Llko;

    nop

    new-instance v14, Llko;

    nop

    nop

    nop

    nop

    iget-object v15, v6, Llko;->c:Ljava/lang/Object;

    nop

    new-instance v4, Lkmp;

    nop

    nop

    nop

    check-cast v15, Lkmq;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v15}, Lkmp;-><init>(Lkmq;)V

    iput-object v5, v4, Lkmp;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lkmp;->a()Lkmq;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v6, Llko;->d:Ljava/lang/Object;

    nop

    nop

    iget-object v15, v6, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v6, v6, Llko;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-direct {v14, v4, v5, v15, v6}, Llko;-><init>(Lkmq;Llxa;Lktq;Lktr;)V

    sget-object v4, Lrsa;->a:Lrsa;

    nop

    if-eqz v16, :cond_c

    nop

    nop

    iget-object v5, v1, Llii;->p:Lfdn;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lfdn;->s()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_c

    nop

    nop

    nop

    nop

    iget-object v4, v3, Llih;->b:Lsuu;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Liku;

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    :cond_c
    move-object/from16 v24, v4

    nop

    nop

    nop

    invoke-virtual/range {v24 .. v24}, Lrss;->h()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_d

    nop

    nop

    nop

    nop

    invoke-virtual/range {v24 .. v24}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Liku;

    nop

    nop

    nop

    nop

    iget v4, v4, Liku;->b:F

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_36

    nop

    :cond_d
    sget-object v4, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v5, v2, Linb;->p:Lioy;

    nop

    nop

    invoke-virtual {v5}, Lioy;->a()I

    move-result v5

    nop

    nop

    iget-boolean v6, v1, Llii;->m:Z

    nop

    if-eqz v6, :cond_11

    nop

    if-eqz v5, :cond_10

    nop

    nop

    if-ne v5, v8, :cond_11

    nop

    nop

    nop

    nop

    move-object v5, v12

    nop

    check-cast v5, Lsbh;

    nop

    nop

    nop

    nop

    iget v5, v5, Lsbh;->c:I

    nop

    nop

    nop

    if-le v5, v8, :cond_11

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_11

    nop

    nop

    nop

    nop

    iget-object v5, v1, Llii;->n:Ltbt;

    nop

    invoke-virtual {v5, v13}, Ltbt;->t(Lpro;)[F

    move-result-object v5

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    aget v6, v5, v9

    nop

    div-float/2addr v4, v6

    nop

    nop

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    aget v5, v5, v6

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v4, v5

    nop

    const/high16 v5, 0x41200000    # 10.0f

    nop

    cmpg-float v4, v4, v5

    nop

    nop

    if-gez v4, :cond_11

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_e

    nop

    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_e
    move-object v4, v12

    nop

    nop

    check-cast v4, Lsbh;

    nop

    iget v4, v4, Lsbh;->c:I

    nop

    nop

    add-int/lit8 v4, v4, -0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v7, v4, :cond_f

    nop

    nop

    add-int/lit8 v9, v7, -0x2

    nop

    nop

    goto :goto_37

    nop

    :cond_f
    add-int/lit8 v9, v7, -0x1

    nop

    nop

    :goto_37
    add-int/lit8 v4, v9, 0x3

    nop

    check-cast v12, Lryb;

    nop

    nop

    nop

    invoke-virtual {v12, v9, v4}, Lryb;->b(II)Lryb;

    move-result-object v4

    nop

    nop

    nop

    sub-int/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    new-instance v6, Lrsu;

    nop

    nop

    nop

    invoke-direct {v6, v4, v5}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_38

    nop

    :cond_10
    const/4 v4, 0x0

    nop

    nop

    throw v4

    nop

    nop

    nop

    nop

    nop

    :cond_11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    new-instance v6, Lrsu;

    nop

    nop

    nop

    invoke-direct {v6, v12, v4}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_38
    monitor-enter p0

    nop

    nop

    nop

    nop
    :try_end_d
    .catch Lhtv; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lhui; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :try_start_e
    iget-object v4, v1, Llii;->o:Liof;

    nop

    iget-object v5, v2, Linb;->w:Llko;

    nop

    iget-object v5, v5, Llko;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v5}, Llxa;->j()Llxm;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Liof;->c(Llxm;)Linc;

    move-result-object v4

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    iget-boolean v5, v1, Llii;->e:Z

    nop

    nop

    nop

    if-eqz v5, :cond_12

    nop

    nop

    iget-object v5, v2, Linb;->p:Lioy;

    nop

    nop

    nop

    invoke-virtual {v5}, Lioy;->a()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-ne v5, v8, :cond_12

    nop

    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    iget-object v5, v3, Llih;->t:Llko;

    nop

    nop

    nop

    nop

    new-instance v7, Llnt;

    nop

    nop

    invoke-direct {v7, v1, v5}, Llnt;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    iput-object v5, v4, Linc;->B:Lrss;

    nop

    nop

    nop

    :cond_12
    if-eqz v10, :cond_13

    nop

    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    invoke-virtual {v4, v10}, Linc;->e(Lilp;)V

    goto :goto_39

    nop

    nop

    :cond_13
    if-eqz v11, :cond_14

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    invoke-virtual {v4, v11}, Linc;->d(Lilo;)V

    goto :goto_39

    nop

    nop

    :cond_14
    new-instance v4, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v5, "Invalid HDR+ output callback."

    nop

    nop

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    nop

    nop

    invoke-static {v5, v5, v4}, Llii;->j(Lilo;Lilp;Ljava/lang/Throwable;)V

    :goto_39
    iget-object v4, v1, Llii;->k:Ltud;

    nop

    nop

    nop

    invoke-interface {v4}, Ltud;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    move-object/from16 v16, v4

    nop

    nop

    nop

    check-cast v16, Llid;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v6, Lrsu;->a:Ljava/lang/Object;

    nop

    move-object/from16 v18, v4

    nop

    nop

    nop

    nop

    check-cast v18, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lled;

    nop

    nop

    nop

    invoke-direct {v4, v8}, Lled;-><init>(I)V

    iget-object v5, v6, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v21

    nop

    nop

    iget-object v5, v3, Llih;->s:Lijd;

    nop

    move-object/from16 v19, v4

    nop

    nop

    move-object/from16 v20, v14

    nop

    nop

    nop

    move-object/from16 v22, v13

    nop

    move-object/from16 v23, v5

    nop

    nop

    invoke-interface/range {v16 .. v24}, Llid;->b(Lpnx;Ljava/util/List;Lkub;Llko;ILpro;Lijd;Lrss;)V
    :try_end_f
    .catch Lhtv; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lhui; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3a
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_10
    iget-object v3, v1, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Llih;

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual/range {p2 .. p2}, Llhz;->g()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v3, 0xeab

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

    :goto_3e
    goto/16 :goto_30

    nop

    nop

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v10, 0x0

    nop

    nop

    nop

    :goto_40
    :try_start_11
    instance-of v6, v4, Ljava/lang/InterruptedException;

    nop

    nop

    if-eqz v6, :cond_15

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_15
    invoke-static {v5, v10, v4}, Llii;->j(Lilo;Lilp;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_16

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_19

    nop

    :goto_42
    const-string v3, "Couldn\'t remove shot %s."

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_44
    invoke-interface {v1, v3, v2}, Lscz;->t(Ljava/lang/String;I)V

    :goto_45
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_46
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    :try_start_12
    iget-object v6, v2, Linb;->p:Lioy;

    nop

    invoke-virtual {v6}, Lioy;->a()I

    move-result v6

    nop

    nop

    nop

    const/4 v8, 0x3

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

    if-ne v6, v8, :cond_17

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    goto :goto_47

    nop

    nop

    nop

    :cond_17
    move v6, v9

    nop

    nop

    nop

    :goto_47
    iget-object v10, v2, Linb;->p:Lioy;

    nop

    invoke-virtual {v10}, Lioy;->a()I

    move-result v10

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    nop

    if-eq v10, v11, :cond_19

    nop

    nop

    nop

    nop

    iget-object v10, v2, Linb;->p:Lioy;

    nop

    invoke-virtual {v10}, Lioy;->a()I

    move-result v10

    nop

    nop

    nop

    nop

    if-ne v10, v4, :cond_18

    nop

    goto :goto_48

    nop

    nop

    nop

    nop

    :cond_18
    move v10, v9

    nop

    nop

    nop

    goto :goto_49

    nop

    nop

    :cond_19
    :goto_48
    const/4 v10, 0x1

    nop

    :goto_49
    if-eqz v6, :cond_1a

    nop

    nop

    iget-object v10, v3, Llih;->t:Llko;

    nop

    nop

    nop

    nop

    nop

    new-instance v11, Llig;

    nop

    nop

    nop

    nop

    invoke-direct {v11, v1, v10}, Llig;-><init>(Llii;Llko;)V

    move-object v10, v11

    nop

    nop

    move-object v11, v5

    nop

    nop

    nop

    goto/16 :goto_2b

    nop

    :cond_1a
    if-eqz v10, :cond_5

    nop

    nop

    nop

    nop

    iget-object v10, v3, Llih;->t:Llko;

    nop

    nop

    nop

    nop

    new-instance v11, Llif;

    nop

    invoke-direct {v11, v1, v10, v9}, Llif;-><init>(Llii;Llko;I)V
    :try_end_12
    .catch Lhtv; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Lhui; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4a
    throw v2

    nop

    nop

    :catchall_9
    move-exception v0

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

    :goto_4b
    move-object v4, v0

    nop

    :try_start_13
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v4

    nop

    nop
    :try_end_14
    .catch Lhtv; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Lhui; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :catch_2
    move-exception v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v4, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4d
    const v0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v3, v1}, Lscz;->M(I)Lsdo;

    move-result-object v1

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

    :goto_4f
    invoke-virtual/range {p2 .. p2}, Llhz;->g()V

    goto/32 :goto_29

    nop

    nop

    :goto_50
    move-object v4, v0

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

    nop

    :goto_51
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_52
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_15
    iget-object v3, v1, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Llih;

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_53
    move-object v5, v11

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_54
    throw v2

    nop

    nop

    nop

    :catch_3
    goto/32 :goto_34

    nop

    nop

    :goto_55
    move-object/from16 v2, p1

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

    :goto_56
    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v2

    nop

    goto/32 :goto_42

    nop

    nop
.end method

.method public final declared-synchronized g(Llxm;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llii;->o:Liof;

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Liof;->c(Llxm;)Linc;

    move-result-object p1

    nop

    nop

    invoke-virtual {p1, p0}, Linc;->a(Lilg;)V

    invoke-virtual {p1, p0}, Linc;->f(Lilq;)V

    iget-object v0, p0, Llii;->p:Lfdn;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lfdn;->s()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p1, Linc;->f:Lryw;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    new-instance v0, Lryw;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lryw;-><init>()V

    iput-object v0, p1, Linc;->f:Lryw;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p1, p1, Linc;->f:Lryw;

    nop

    nop

    invoke-virtual {p1, p0}, Lryw;->h(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

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

    :try_start_1
    monitor-exit p0

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

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop
.end method

.method public final declared-synchronized h(Linb;)Z
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    :try_start_1
    invoke-virtual {p1}, Linb;->a()I

    iget-object v0, p0, Llii;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    nop

    check-cast v4, Llih;

    nop

    if-nez v4, :cond_0

    nop

    nop

    sget-object v0, Llii;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0xebd

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Linb;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Shot %s hasn\'t started yet or was aborted!"

    nop

    invoke-interface {v0, v1, p1}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    :cond_0
    :try_start_2
    iget-object v0, p0, Llii;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    new-instance v7, Lkss;

    nop

    nop

    nop

    nop

    const/16 v5, 0xd

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    move-object v1, v7

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Lkss;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[S)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x12

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

    :goto_d
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final synthetic i(Linb;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method
