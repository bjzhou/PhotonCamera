.class public Ljut;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Object;

.field public final e:Llyv;

.field public volatile f:I

.field public final g:Lhoh;

.field public final h:Loyb;

.field private final i:Loyn;

.field private final j:Lijo;

.field private volatile k:Ljvn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    sput-object v0, Ljut;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lsdb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

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

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_f
    const/16 v3, 0x1e3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "jut"

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
.end method

.method public constructor <init>(Loyn;Loyb;Lhoh;Lijo;Llyv;)V
    .locals 1

    goto/32 :goto_11

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
    iput-object p3, p0, Ljut;->g:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ljut;->d:Ljava/lang/Object;

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

    :goto_4
    new-instance v0, Ljava/lang/Object;

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
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    iput-object p5, p0, Ljut;->e:Llyv;

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

    :goto_7
    iput-object v0, p0, Ljut;->c:Ljava/util/List;

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

    :goto_8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_c
    iput-object p2, p0, Ljut;->h:Loyb;

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
    iput-object p4, p0, Ljut;->j:Lijo;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Ljut;->f:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Ljut;->i:Loyn;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Ljut;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Ljwx;->a(Z)V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljut;->h:Loyb;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljut;->e()Llko;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Ljwx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Loyb;->g()V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object v0, v0, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()Z
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ljut;->k:Ljvn;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

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

    :goto_3
    return v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_f

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    :goto_6
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    goto/32 :goto_17

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    :cond_2
    :goto_e
    goto/32 :goto_0

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

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    nop

    nop

    :goto_15
    :try_start_2
    invoke-virtual {p0}, Ljut;->e()Llko;

    move-result-object v2

    nop

    if-eqz v2, :cond_6

    nop

    iget-object v2, v2, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lkpx;

    nop

    sget-object v3, Lkpx;->b:Lkpx;

    nop

    nop

    invoke-virtual {v2, v3}, Lkpx;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-nez v3, :cond_1

    nop

    nop

    sget-object v3, Lkpx;->d:Lkpx;

    nop

    invoke-virtual {v2, v3}, Lkpx;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lkpx;->c:Lkpx;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lkpx;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    monitor-exit p0

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

    :goto_19
    return v1

    nop

    nop

    :cond_6
    :goto_1a
    :try_start_3
    iget-object v2, p0, Ljut;->i:Loyn;

    nop

    nop

    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ljut;->j:Lijo;

    nop

    nop

    iget-object v2, v2, Lijo;->b:Loyd;

    nop

    nop

    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Boolean;

    nop

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljvn;->d()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Ljvn;)V
    .locals 1

    goto/32 :goto_2

    nop

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

    :cond_0
    :try_start_0
    sget-object p1, Ljut;->a:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 v0, 0xa4a

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    const-string v0, "Cannot attach UI controller when already attached!"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1
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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Ljut;->k:Ljvn;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    iput-object p1, p0, Ljut;->k:Ljvn;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Ljvn;)V
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

    :cond_0
    :try_start_0
    sget-object p1, Ljut;->a:Lsdb;

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

    const/16 v0, 0xa4c

    nop

    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Cannot detach UI controller. Values mismatch."

    nop

    nop

    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljut;->k:Ljvn;

    nop

    nop

    nop

    nop

    nop

    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    iput-object p1, p0, Ljut;->k:Ljvn;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    :goto_4
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

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final e()Llko;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljut;->d:Ljava/lang/Object;

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    const v0, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    throw p0

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

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljut;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    monitor-exit v0

    nop

    nop

    const/4 p0, 0x0

    nop

    return-object p0

    nop

    :cond_1
    iget-object p0, p0, Ljut;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrgw;->ab(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Llko;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

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

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    const v1, 0x14

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
.end method
