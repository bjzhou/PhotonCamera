.class public Lhpj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljava/util/TreeSet;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method private final declared-synchronized 1a36313b7ed15ba14e0acb4da569b8b7m(Lggk;)Z
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_5

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
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p1}, Lggk;->b()Lggl;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lhpj;->b1051a9d8893542362ad09051775f8f6m(Lggl;)Lrss;

    move-result-object p1

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return p0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_2
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lggk;->b()Lggl;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lggl;->d()Llxm;

    move-result-object v0

    nop

    nop

    invoke-interface {p1}, Lggk;->b()Lggl;

    move-result-object v1

    nop

    nop

    invoke-interface {v1}, Lggl;->c()Landroid/net/Uri;

    move-result-object v1

    nop

    if-eqz v0, :cond_1

    nop

    iget-object v2, p0, Lhpj;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lggk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Lhpj;->d:Ljava/util/Map;

    nop

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lggk;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    iget-object v1, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    const-string v2, "Couldn\'t remove %s from filmstripItems=%s"

    nop

    nop

    nop

    invoke-static {v0, v2, p1, v1}, Lrrf;->B(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xe

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "hpj"

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
    sput-object v0, Lhpj;->a:Lsdb;

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
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lpsu;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/util/HashMap;

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
    invoke-direct {v1, p1, v2}, Lhph;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, v2}, Lhpi;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    iput-object p1, p0, Lhpj;->c:Ljava/util/Map;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2}, Lhpi;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_10
    invoke-static {p1, v1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

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

    :goto_11
    const v1, 0x8

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    new-instance p1, Lhpi;

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

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    new-instance v0, Ljava/util/TreeSet;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lhpj;->d:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    :goto_18
    new-instance v1, Lhph;

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

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, p1}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

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

    :goto_1c
    const/4 v2, 0x2

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

    :goto_1d
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Lhpi;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized b1051a9d8893542362ad09051775f8f6m(Lggl;)Lrss;
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p1

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p1}, Lggl;->d()Llxm;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lggl;->c()Landroid/net/Uri;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    if-nez v4, :cond_0

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :cond_0
    move v4, v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_1
    :goto_9
    move v4, v3

    nop

    nop

    :goto_a
    const-string v5, "At least one of shotId or Uri should be set: %s"

    nop

    nop

    nop

    invoke-static {v4, v5, p1}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    nop

    nop

    nop

    iget-object p1, p0, Lhpj;->c:Ljava/util/Map;

    nop

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lggk;

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhpj;->d:Ljava/util/Map;

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

    check-cast v0, Lggk;

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_5

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    move v2, v3

    nop

    :cond_3
    const-string v1, "Maps out of sync, byUri:%s, byShotId: %s"

    nop

    invoke-static {v2, v1, v0, p1}, Lrrf;->B(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    :goto_d
    const v1, 0x17

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

    :goto_e
    return-object p1

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    throw p1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_2
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object p1

    nop

    :goto_16
    :try_start_3
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_7

    nop

    goto/32 :goto_16

    nop

    :cond_7
    :try_start_4
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-gez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

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
    return v0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()Lggk;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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
    return-object v0

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lggk;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    :goto_6
    return-object p0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized c(Landroid/net/Uri;)Lggk;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhpj;->d:Ljava/util/Map;

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lggk;

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

    nop

    :goto_3
    throw p1

    nop

    nop

    nop
.end method

.method final declared-synchronized d(Llxm;)Lggk;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_2

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhpj;->c:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lggk;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized e(Lggk;)Lggk;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    rem-int v0, v0, v1

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
    return-object p1

    nop

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lhpj;->l(Lggk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

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
    return-object p1

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    invoke-interface {p1}, Lggk;->b()Lggl;

    move-result-object v0

    nop

    nop

    nop

    invoke-direct {p0, v0}, Lhpj;->b1051a9d8893542362ad09051775f8f6m(Lggl;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()Lggk;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lggk;

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

    :goto_3
    return-object p0

    nop

    :catchall_0
    move-exception v0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
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

    nop

    nop
.end method

.method public final declared-synchronized h(Ljava/util/Collection;)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_0
    move-object v0, p1

    nop

    nop

    nop

    check-cast v0, Lsbh;

    nop

    iget v0, v0, Lsbh;->c:I

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const-string v2, "addAll must be called on an empty list. filmstripItems contains: %s"

    nop

    nop

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    nop

    invoke-static {v1, v2, v0}, Lrrf;->z(ZLjava/lang/String;I)V

    iget-object v0, p0, Lhpj;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    nop

    const-string v2, "addAll must be called on an empty list. uriFilmstripItemMap contains: %s"

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v0}, Lrrf;->z(ZLjava/lang/String;I)V

    iget-object v0, p0, Lhpj;->c:Ljava/util/Map;

    nop

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const-string v2, "addAll must be called on an empty list. shotToFilmStripMap contains: %s"

    nop

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    nop

    nop

    invoke-static {v1, v2, v0}, Lrrf;->z(ZLjava/lang/String;I)V

    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    check-cast p1, Lryb;

    nop

    nop

    nop

    invoke-virtual {p1}, Lryb;->t()Lscq;

    move-result-object p1

    nop

    :cond_1
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lggk;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lggk;->b()Lggl;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v1}, Lggl;->d()Llxm;

    move-result-object v1

    nop

    nop

    invoke-interface {v0}, Lggk;->b()Lggl;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lggl;->c()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    nop

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    iget-object v3, p0, Lhpj;->d:Ljava/util/Map;

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    xor-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    iget-object v5, p0, Lhpj;->d:Ljava/util/Map;

    nop

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v2, v5, v0}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    const-string v6, "Multiple entries for uri: %s. %s & %s"

    nop

    nop

    nop

    nop

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-static {v3, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-object v3, p0, Lhpj;->d:Ljava/util/Map;

    nop

    nop

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_1

    nop

    nop

    nop

    iget-object v2, p0, Lhpj;->c:Ljava/util/Map;

    nop

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    xor-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lhpj;->c:Ljava/util/Map;

    nop

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    filled-new-array {v1, v4, v0}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    const-string v5, "Multiple entries for shotId: %s. %s & %s"

    nop

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-static {v2, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-object v2, p0, Lhpj;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_4

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v1, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop
.end method

.method public final declared-synchronized i()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
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

    nop

    :try_start_0
    monitor-exit p0

    nop

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

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lhpj;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lhpj;->d:Ljava/util/Map;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    throw v0

    nop
.end method

.method public final declared-synchronized iterator()Ljava/util/Iterator;
    .locals 2

    goto/32 :goto_5

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

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

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

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

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
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

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
    return-object v0

    nop

    nop

    nop

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method public final declared-synchronized j(Landroid/net/Uri;)Z
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p1

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

    :try_start_0
    monitor-exit p0

    nop

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

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, p1}, Lhpj;->c(Landroid/net/Uri;)Lggk;

    move-result-object v0

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    sget-object v0, Lhpj;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x44e

    nop

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

    const-string v1, "Uri %s not found in filmstrip"

    nop

    nop

    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const v1, 0x11

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

    :goto_4
    goto/32 :goto_9

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
    const v0, 0x12

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    throw p1

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const/4 p0, 0x0

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

    :goto_e
    return p0

    nop

    nop

    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lhpj;->1a36313b7ed15ba14e0acb4da569b8b7m(Lggk;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop
.end method

.method final declared-synchronized k(Lggk;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-direct {p0, p1}, Lhpj;->1a36313b7ed15ba14e0acb4da569b8b7m(Lggk;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

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

    nop

    nop

    :catchall_0
    move-exception p1

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
.end method

.method public final declared-synchronized l(Lggk;)V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-interface {p1}, Lggk;->b()Lggl;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v0}, Lggl;->d()Llxm;

    move-result-object v1

    nop

    nop

    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    move-result-object v2

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    :cond_0
    const/4 v3, 0x0

    nop

    nop

    nop

    :cond_1
    :goto_1
    const-string v4, "At least one of shotId or Uri should be set: %s"

    nop

    invoke-static {v3, v4, p1}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lhpj;->b1051a9d8893542362ad09051775f8f6m(Lggl;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    iget-object v4, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Lggk;->f(Lggl;)V

    :cond_2
    if-eqz v1, :cond_3

    nop

    iget-object v0, p0, Lhpj;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    nop

    nop

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-nez v0, :cond_4

    nop

    iget-object v0, p0, Lhpj;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lhpj;->b:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lrss;->h()Z

    move-result p1

    nop

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_b

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    throw p1

    nop

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
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    return-void

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

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
