.class abstract Lpli;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpkn;


# instance fields
.field protected final a:Lpgz;

.field protected final b:Lpcu;

.field protected final c:Lpdf;

.field protected final d:I

.field private final e:Lpln;

.field private final f:Lhdn;


# direct methods
.method protected constructor <init>(ILpgz;Lhdn;Lpln;Lpcu;Lpdf;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p5, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lpli;->e:Lpln;

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
    iput-object p3, p0, Lpli;->f:Lhdn;

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput p1, p0, Lpli;->d:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iput-object p1, p0, Lpli;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iput-object p6, p0, Lpli;->c:Lpdf;

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

    :goto_8
    iput-object p2, p0, Lpli;->a:Lpgz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "SessionOpener"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c(Lpmm;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lpmm;->h()Landroid/view/Surface;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lpmm;->a()I

    move-result v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    const-string v0, ", format="

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lpmm;->b()Lpck;

    move-result-object v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

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

    :goto_e
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    :goto_10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    const-string v0, ", surface="

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    const v0, 0x6

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

    :goto_15
    const v1, 0x18

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_1b
    const-string v0, ", size="

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop
.end method

.method private static final d(Lpkt;Ljava/util/concurrent/Executor;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0, p1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1, p1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lpmb;->a:Loxv;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lpkt;->a:Lpmb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    const v1, 0x7

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_12

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
    goto/32 :goto_3

    nop

    nop

    :goto_9
    const v0, 0x11

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-direct {v1, p0, v2}, Lnug;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_e

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

    :goto_e
    iget-object p0, p0, Lpku;->c:Lsui;

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lpke;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-direct {v0, p1, v1}, Lpke;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lnug;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected abstract a(Lpri;Lpko;Ljava/util/List;Landroid/os/Handler;)V
.end method

.method public final b(Lpri;Lpko;Ljava/util/List;Ljava/util/List;Lows;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 6

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lpln;->c()V

    :goto_1
    new-instance v0, Lrxw;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lrxw;-><init>()V

    invoke-virtual {v0, p4}, Lrxw;->j(Ljava/lang/Iterable;)V

    invoke-virtual {v0, p3}, Lrxw;->j(Ljava/lang/Iterable;)V

    sget-object p3, Ldqy;->a:Ljava/util/Comparator;

    nop

    invoke-virtual {v0}, Lrxw;->g()Lryb;

    move-result-object v0

    nop

    invoke-static {p3, v0}, Lryb;->s(Ljava/util/Comparator;Ljava/lang/Iterable;)Lryb;

    move-result-object p3

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpli;->b:Lpcu;

    nop

    nop

    nop

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using "

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->f(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p6}, Lpli;->a(Lpri;Lpko;Ljava/util/List;Landroid/os/Handler;)V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    nop

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    nop

    nop

    nop

    if-eqz p6, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    nop

    nop

    nop

    nop

    check-cast p6, Lpkr;

    nop

    nop

    invoke-static {p6, p7}, Lpli;->d(Lpkt;Ljava/util/concurrent/Executor;)V

    iget-object v0, p6, Lpku;->c:Lsui;

    nop

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p6}, Lpkr;->a()Ljava/util/List;

    move-result-object p6

    nop

    invoke-interface {v5, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-static {p1}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance p3, Lplh;

    nop

    nop

    move-object v0, p3

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    move-object v2, p5

    nop

    nop

    move-object v3, p2

    nop

    nop

    nop

    move-object v4, p4

    nop

    invoke-direct/range {v0 .. v5}, Lplh;-><init>(Lpli;Lows;Lpko;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1, p3, p7}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lpli;->c:Lpdf;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lpli;->c:Lpdf;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    iget-object p0, p0, Lpli;->c:Lpdf;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x7

    nop

    goto/32 :goto_c

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    throw p1

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    :goto_14
    const-string v2, "Create-"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
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

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

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

    :goto_17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_4

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lpku;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lpku;->c()Landroid/view/Surface;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    nop

    nop

    nop

    :cond_4
    iget-object v1, p0, Lpli;->e:Lpln;

    nop

    invoke-virtual {v1, p2}, Lpln;->d(Lpko;)V

    iget-object v1, p0, Lpli;->e:Lpln;

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, v1, Lpln;->d:Lpko;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    nop

    :cond_5
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v4, "setActiveCaptureSession must be invoked first."

    nop

    new-array v3, v3, [Ljava/lang/Object;

    nop

    invoke-static {v2, v4, v3}, Lqrg;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lpln;->d:Lpko;

    nop

    nop

    if-eq p2, v2, :cond_6

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    goto/16 :goto_1

    nop

    :cond_6
    iget-object v2, v1, Lpln;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpri;Lpko;Lows;Landroid/os/Handler;)V
    .locals 14

    goto/32 :goto_64

    nop

    nop

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v12, Lplg;

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_2
    move v9, v5

    nop

    :goto_3
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4
    const-string v11, "Awaiting required outputs for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-direct {v10, v8}, Lowr;-><init>(Landroid/os/Handler;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v5, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Lpmb;->i()Lphm;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_9
    invoke-static {v3, v9}, Lpkv;->b(Lpmm;Landroid/view/Surface;)Lpkv;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v2, Lpmb;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-static {v6}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Lpmb;->h()Landroid/view/Surface;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_d
    invoke-static {v2, v3}, Lpkw;->b(Lpmm;Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_90

    nop

    nop

    :goto_f
    move-object/from16 v5, p3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_10
    move-object v1, p0

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

    :goto_11
    sget-object v9, Lphm;->c:Lphm;

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

    nop

    :goto_12
    const-string v3, " "

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

    :goto_13
    if-ne v3, v9, :cond_1

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2}, Lpmm;->b()Lpck;

    move-result-object v9

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_15
    invoke-interface {v2, v3}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_16
    const-string v11, "%s for %s was not valid, this may prevent the viewfinder from starting!"

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_17
    move-object/from16 v8, p4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v3, v9, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v9, v11}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_1a
    xor-int/2addr v3, v9

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_1b
    sget v3, Lpkw;->a:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_20
    iget-object v3, v1, Lpli;->b:Lpcu;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_23
    iget v3, v1, Lpli;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, v1, Lpli;->b:Lpcu;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v11, v1, Lpli;->a:Lpgz;

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

    :goto_28
    sget-object v9, Lpgz;->b:Lpgz;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-le v3, v11, :cond_3

    nop

    goto/32 :goto_8e

    nop

    :cond_3
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

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

    :goto_2b
    move-object v3, v11

    nop

    nop

    :goto_2c
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v10, Lowr;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2e
    move v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v9, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    :goto_30
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_31
    if-nez v11, :cond_4

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_33
    const/4 v9, 0x1

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v3, v9, v12}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v11, 0x0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_37
    move-object/from16 v8, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_38
    const/4 v9, 0x3

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_39
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_5

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3d
    const-string v11, "createCaptureSession adding stream to delayed configs. "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_3e
    iget-object v3, v1, Lpli;->b:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq v3, v9, :cond_6

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7e

    nop

    nop

    :goto_40
    const-string v3, "HIGH_SPEED Sessions may only have 1 or 2 streams."

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v3, v2}, Lpks;-><init>(Lpmb;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v3, v11}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_6e

    nop

    nop

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object/from16 v2, p3

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_49
    move-object v5, p1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v2, v0, Lhdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v11, v2, v3}, Lpkr;-><init>(Lpmb;Landroid/hardware/camera2/params/OutputConfiguration;)V

    :goto_4d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v11, v3}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_51
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v3, Lpks;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_55
    sget-object v9, Lphm;->b:Lphm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_56
    if-nez v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a3

    nop

    nop

    :goto_57
    iget-object v0, v1, Lpli;->f:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_58
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v9}, Lpck;->c()Landroid/util/Size;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c2

    nop

    nop

    :goto_5b
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v9, "createCaptureSession adding stream to deferred configs. "

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

    :goto_5d
    invoke-static {v2, v3}, Lpkw;->b(Lpmm;Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v9, v3}, Lpcu;->h(Ljava/lang/String;)V

    :goto_5f
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v2}, Lpmb;->i()Lphm;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_61
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8f

    nop

    nop

    :goto_62
    iget-object v3, v1, Lpli;->a:Lpgz;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_63
    if-ne v3, v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    :goto_64
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v9, :cond_9

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_66
    invoke-static {v3}, Lpli;->c(Lpmm;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_67
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_68
    const-class v12, Landroid/graphics/SurfaceTexture;

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

    :goto_69
    invoke-static {v2}, Lpli;->c(Lpmm;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object/from16 v6, p4

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v3, v1, Lpli;->a:Lpgz;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v11, v1, Lpli;->b:Lpcu;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_6e
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_70
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_71
    goto :goto_78

    nop

    :goto_72
    goto/32 :goto_77

    nop

    nop

    :goto_73
    if-ne v3, v9, :cond_a

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/16 :goto_a5

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    new-instance v3, Lpks;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_77
    move v3, v9

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v3, v10}, Lpli;->d(Lpkt;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

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

    :goto_7b
    iget-object v9, v1, Lpli;->b:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-direct/range {v0 .. v9}, Lplg;-><init>(Lpli;Lows;Lpko;Ljava/util/List;Lpri;Ljava/util/List;Ljava/util/List;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_a1

    nop

    nop

    :goto_7d
    if-lez v0, :cond_b

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_cb

    nop

    :goto_7e
    sget v3, Lpkw;->a:I

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v3, v9}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_c
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v2}, Lpli;->c(Lpmm;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v3, Lpma;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_84
    const-string v12, "createCaptureSession adding external stream. "

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v3, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_43

    nop

    nop

    :goto_88
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_74

    nop

    nop

    :goto_8b
    invoke-static {v0}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8c
    const/4 v9, 0x5

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_8d
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_90
    new-instance v4, Ljava/util/ArrayList;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_91
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_92
    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_93
    invoke-interface {v11, v12}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_94
    return-void

    nop

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_96
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_97
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-nez v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_f
    goto/32 :goto_67

    nop

    nop

    :goto_99
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v2}, Lpmm;->b()Lpck;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v3, v2}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_36

    nop

    nop

    :goto_9d
    goto/16 :goto_87

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    move-object v7, v10

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_a0
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {v11, v12, v10}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_a2
    invoke-static {v2}, Lpli;->c(Lpmm;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    new-instance v11, Lpkr;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_a5
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_a6
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_a7
    const/4 v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v9}, Lpck;->c()Landroid/util/Size;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_a9
    invoke-static {v3, v11}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const v1, 0x1b

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_ac
    move-object/from16 v3, p2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_ad
    sget-object v11, Lpgz;->b:Lpgz;

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_ae
    const-string v11, "HIGH_SPEED Sessions must have streams."

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v3}, Lpma;->h()Landroid/view/Surface;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    move-object v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-static {v3, v11}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    return-void

    nop

    :goto_b4
    goto/32 :goto_97

    nop

    nop

    nop

    :goto_b5
    iget-object v9, v1, Lpli;->b:Lpcu;

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_b6
    invoke-static {v2, v3}, Lpkv;->b(Lpmm;Landroid/view/Surface;)Lpkv;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const-string v13, "createCaptureSession adding buffered stream. "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_b9
    const-string v11, "HIGH_SPEED Sessions cannot use buffered streams."

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-direct {v3, v9, v12}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const-string v12, "createCaptureSession, operatingMode="

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_bc
    invoke-interface {v3, v11}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_bd
    if-nez v3, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    :cond_10
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    move-object v4, v7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual/range {v0 .. v7}, Lpli;->b(Lpri;Lpko;Ljava/util/List;Ljava/util/List;Lows;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_b3

    nop

    nop

    :goto_c1
    move-object v0, v12

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

    nop

    nop

    :goto_c2
    goto/16 :goto_87

    nop

    nop

    :goto_c3
    goto/32 :goto_6f

    nop

    nop

    :goto_c4
    goto/16 :goto_2c

    nop

    nop

    :goto_c5
    goto/32 :goto_2b

    nop

    nop

    :goto_c6
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const-string v11, "Cannot create a capture session without streams."

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

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

    :goto_ca
    iget-object v3, v3, Lpku;->c:Lsui;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_95

    nop

    :goto_cc
    goto/32 :goto_10

    nop

    nop

    :goto_cd
    iget-object v3, v1, Lpli;->b:Lpcu;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const-class v12, Landroid/view/SurfaceHolder;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_d0
    goto/16 :goto_2c

    nop

    :goto_d1
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_d3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v0, v0, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-eq v3, v11, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_11
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop
.end method
