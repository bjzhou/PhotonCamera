.class public final Lpin;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:Lpjb;

.field public final b:Lpdf;

.field public final c:Lhon;

.field private final d:Lpcu;


# direct methods
.method public constructor <init>(Lhon;Lpdf;Lpcu;Lpjb;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const-string p1, "FrameServerSession"

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

    :goto_1
    iput-object p1, p0, Lpin;->c:Lhon;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpin;->d:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lpin;->a:Lpjb;

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

    :goto_4
    iput-object p2, p0, Lpin;->b:Lpdf;

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-interface {p3, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

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
.end method

.method public static final g(Ljava/util/List;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Lpir;->h()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_8
    const v0, 0x12

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_d
    check-cast v0, Ljava/util/Set;

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
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_4

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    check-cast v1, Lpir;

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

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final h(Ljava/util/List;)Ljava/util/List;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    :goto_3
    iget-object v1, v1, Lphz;->c:Ljava/util/Set;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v2, v1, Lphz;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    :goto_a
    check-cast v1, Lphz;

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

    :goto_b
    goto :goto_11

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_e
    const v1, 0x1f

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    invoke-static {v2}, La;->au(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lpgc;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lpjb;->a()Lpgc;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpin;->a:Lpjb;

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
    return-object p0

    nop
.end method

.method public final b(Lpgd;)Lsui;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpin;->a:Lpjb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0}, Lpjb;->d(Lpgd;Z)Lsui;

    move-result-object p0

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

    :goto_3
    return-object p0

    nop
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 10

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v4

    nop

    :catch_0
    move-exception p1

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

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    const-string v2, "#submit-burst size="

    nop

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

    :goto_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_26

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

    nop

    goto/32 :goto_27

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Lpin;->c:Lhon;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    move-object v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xe

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

    :goto_10
    check-cast v2, Ljava/util/Set;

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

    :goto_11
    const-string v1, "FrameServerSession#submit(burst)"

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, "allocate"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2b

    nop

    :goto_14
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3, v2}, Lhon;->e(Ljava/util/Set;)Lsui;

    move-result-object v2

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

    :goto_17
    iget-object v1, p0, Lpin;->b:Lpdf;

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

    :goto_18
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lpin;->b:Lpdf;

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

    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x1

    nop

    nop

    :try_start_0
    iget-object v3, p0, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "await"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->h(Ljava/lang/String;)V

    invoke-static {v0}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object v3

    nop

    nop

    invoke-interface {v3}, Lsui;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/util/List;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lpin;->d:Lpcu;

    nop

    nop

    const-string v5, "#submit-list allocations complete."

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    if-ne v4, v5, :cond_1

    nop

    nop

    nop

    nop

    move v4, v2

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    move v4, v6

    nop

    nop

    :goto_1e
    invoke-static {v4}, Lrrf;->x(Z)V

    iget-object v4, p0, Lpin;->b:Lpdf;

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    sget-object v5, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->JIUvdimegxUT:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->h(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    nop

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    if-ge v6, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lphz;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljava/util/Set;

    nop

    nop

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    nop

    nop

    nop

    invoke-static {v7}, Lryh;->j(I)Lryd;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_2

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Lpir;

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lpjk;->k(Lpir;)Lpge;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lpir;->a:Lpgo;

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v8, v9}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_20

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v5, Lpim;

    nop

    invoke-virtual {v7}, Lryd;->b()Lryh;

    move-result-object v7

    nop

    nop

    invoke-direct {v5, v7}, Lpim;-><init>(Lryh;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lpfi; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_22
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    iget-object v1, p0, Lpin;->d:Lpcu;

    nop

    nop

    nop

    nop

    const-string v5, "#submit-list frame results created, submitting to request processor."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v5}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "submit"

    nop

    nop

    invoke-interface {v1, v5}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lpin;->a:Lpjb;

    nop

    nop

    invoke-virtual {v1, p1, v3}, Lpjb;->g(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lpfi; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    goto/16 :goto_1c

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

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

    nop

    :goto_29
    invoke-interface {v1, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    throw p1

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    :goto_2c
    goto/32 :goto_14

    nop

    :goto_2d
    goto/16 :goto_3a

    nop

    nop

    :catch_2
    move-exception p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    :goto_2f
    iget-object v0, p0, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_33
    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p1}, Lpin;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Lpin;->b:Lpdf;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_36
    iget-object v1, p0, Lpin;->d:Lpcu;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v3, 0x0

    nop

    nop

    :goto_3a
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lsui;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v2}, Lsui;->cancel(Z)Z

    move-result v5

    nop

    if-eqz v5, :cond_6

    nop

    invoke-interface {v4}, Lsui;->isDone()Z

    move-result v5

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    :cond_6
    invoke-static {v4}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Ljava/util/Set;

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_5

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lpir;

    nop

    nop

    invoke-virtual {v5}, Lpir;->h()V

    goto :goto_3b

    nop

    nop

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpim;

    nop

    nop

    invoke-virtual {v1}, Lpim;->close()V

    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    if-nez v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto :goto_3d

    nop

    nop

    :cond_9
    invoke-static {v3}, Lpin;->g(Ljava/util/List;)V

    :goto_3d
    new-instance v0, Lpfi;

    nop

    nop

    invoke-direct {v0, p1}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3e
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lpin;->a:Lpjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lpjb;->close()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final d()V
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

    :goto_1
    iget-object p0, p0, Lpin;->a:Lpjb;

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

    :goto_2
    invoke-virtual {p0}, Lpjb;->e()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lphz;)Lpim;
    .locals 8

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_1
    move-object v2, v3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

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

    :goto_3
    iget-object v1, p0, Lpin;->c:Lhon;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lpin;->d:Lpcu;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    move-object v5, v2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_0
    invoke-interface {v1, v0}, Lsui;->cancel(Z)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_0

    nop

    invoke-interface {v1}, Lsui;->isDone()Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    nop

    :cond_0
    invoke-static {v1}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/util/Set;

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lpir;

    nop

    invoke-virtual {v1}, Lpir;->h()V

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    if-eqz v5, :cond_2

    nop

    nop

    nop

    invoke-virtual {v5}, Lpim;->close()V

    :cond_2
    if-eqz v2, :cond_3

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lpir;

    nop

    nop

    nop

    invoke-virtual {v1}, Lpir;->h()V

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_3
    new-instance v0, Lpfi;

    nop

    nop

    nop

    invoke-direct {v0, p1}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "allocate"

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

    :goto_f
    invoke-interface {v1, v0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lpin;->b:Lpdf;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    iget-object v2, p1, Lphz;->c:Ljava/util/Set;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v3, p0, Lpin;->b:Lpdf;

    nop

    nop

    nop

    const-string v4, "await"

    nop

    invoke-interface {v3, v4}, Lpdf;->h(Ljava/lang/String;)V

    invoke-interface {v1}, Lsui;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/util/Set;

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lpfi; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lpin;->d:Lpcu;

    nop

    const-string v5, "#submit allocations complete."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpcu;->b(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    nop

    invoke-static {v4}, Lryh;->j(I)Lryd;

    move-result-object v4

    nop

    nop

    nop

    iget-object v5, p0, Lpin;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "build_results"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lpdf;->h(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_4

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lpir;

    nop

    invoke-static {v6}, Lpjk;->k(Lpir;)Lpge;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lpir;->a:Lpgo;

    nop

    invoke-virtual {v4, v6, v7}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_4
    new-instance v5, Lpim;

    nop

    invoke-virtual {v4}, Lryd;->b()Lryh;

    move-result-object v4

    nop

    nop

    nop

    invoke-direct {v5, v4}, Lpim;-><init>(Lryh;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lpfi; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lpin;->b:Lpdf;

    nop

    nop

    const-string v4, "submit"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v2, p0, Lpin;->d:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "#submit pending result created, submitting to request processor."

    nop

    nop

    invoke-interface {v2, v4}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lpin;->a:Lpjb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1, v3}, Lpjb;->i(Lphz;Ljava/util/Set;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lpfi; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "FrameServerSession#submit(single)"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_11

    nop

    nop

    :goto_18
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    :goto_19
    iget-object v0, p0, Lpin;->b:Lpdf;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v5, v2

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    throw p1

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lpin;->b:Lpdf;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_23
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_d

    nop

    nop

    :catch_1
    move-exception p1

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

    :goto_26
    iget-object p0, p0, Lpin;->b:Lpdf;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_28
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    return-object v5

    nop

    nop

    nop

    nop

    nop

    :catch_2
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

    :goto_2a
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v2}, Lhon;->e(Ljava/util/Set;)Lsui;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2e
    sget-object v0, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->acpbfACXy:Ljava/lang/String;

    nop

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

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_30
    iget-object v0, p0, Lpin;->b:Lpdf;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lphz;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lpjb;->h(Lphz;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpin;->a:Lpjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final i(Lpgd;)Lsui;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpin;->a:Lpjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lpjb;->j(Lpgd;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final j(Lpgd;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpin;->a:Lpjb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lpjb;->l(Lpgd;)V

    goto/32 :goto_2

    nop

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
.end method

.method public final k()Lqgk;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpin;->a:Lpjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lpjb;->n()Lqgk;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final l()Lqgk;
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lpin;->a:Lpjb;

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

    :goto_2
    invoke-virtual {p0}, Lpjb;->n()Lqgk;

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

    nop
.end method

.method public final m(Ljava/util/Set;Lpuq;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lpjb;->o(Ljava/util/Set;Lpuq;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpin;->a:Lpjb;

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
.end method
