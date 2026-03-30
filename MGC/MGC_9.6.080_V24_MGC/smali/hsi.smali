.class public Lhsi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgb;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private b:Lpdr;

.field private c:J

.field private final d:Ljava/util/Set;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lhsi;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "hsi"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object v0, p0, Lhsi;->d:Ljava/util/Set;

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

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lhsi;->b:Lpdr;

    nop

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

    :goto_5
    iput v0, p0, Lhsi;->e:I

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
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lpdr;->m:Lpdr;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    new-instance v0, Landroid/util/ArraySet;

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
.end method


# virtual methods
.method public final a(Lpdr;J)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_10

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xd

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

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget v0, p0, Lhsi;->e:I

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_0

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    :cond_0
    const/4 v0, 0x2

    nop

    nop

    nop

    iput v0, p0, Lhsi;->e:I

    nop

    sget-object v0, Lhsi;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v1, 0x494

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "CameraDeviceError : %s Open duration = %s"

    nop

    nop

    invoke-virtual {p1}, Lpdr;->c()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-interface {v0, v1, v2, p2, p3}, Lscz;->D(Ljava/lang/String;Ljava/lang/Object;J)V

    iput-object p1, p0, Lhsi;->b:Lpdr;

    nop

    iput-wide p2, p0, Lhsi;->c:J

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhsi;->d:Ljava/util/Set;

    nop

    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Lhsi;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_c
    check-cast v0, Lpgb;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    return-void

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

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_f
    invoke-virtual {v0}, Lryy;->em()Lscp;

    move-result-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, p1, p2, p3}, Lpgb;->a(Lpdr;J)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_11

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lryy;->em()Lscp;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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

    :goto_7
    monitor-enter p0

    nop

    :try_start_1
    iget v0, p0, Lhsi;->e:I

    nop

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

    nop

    monitor-exit p0

    nop

    return-void

    nop

    nop

    :cond_2
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lhsi;->e:I

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhsi;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Lhsi;->d:Ljava/util/Set;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->clear()V

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

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lpgb;->b()V

    goto/32 :goto_10

    nop

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lpgb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v0, 0x14

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x17

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

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpgb;)Lpci;
    .locals 7

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Lhig;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lncl;

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

    :goto_5
    const v1, 0x12

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

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget v0, p0, Lhsi;->e:I

    nop

    nop

    nop

    add-int/lit8 v1, v0, -0x1

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v4, :cond_1

    nop

    nop

    iget-object v1, p0, Lhsi;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    nop

    nop

    :cond_1
    move v0, v3

    nop

    goto :goto_7

    nop

    nop

    :cond_2
    iget-object v2, p0, Lhsi;->b:Lpdr;

    nop

    nop

    nop

    nop

    iget-wide v5, p0, Lhsi;->c:J

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lpgb;->b()V

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    const/16 v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v1}, Lncl;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    :goto_d
    throw p1

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, v2, v5, v6}, Lpgb;->a(Lpdr;J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v1}, Lncl;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_1
    throw v2

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

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    :goto_19
    new-instance v0, Lhig;

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

    :goto_1a
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    :goto_1b
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    new-instance p0, Lncl;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(Lpgb;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    return-void

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

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    throw p1

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget v0, p0, Lhsi;->e:I

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    if-eq v0, v1, :cond_1

    nop

    nop

    iget-object v0, p0, Lhsi;->d:Ljava/util/Set;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    invoke-interface {p1}, Lpgb;->b()V

    :cond_1
    iget-object v0, p0, Lhsi;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop
.end method
