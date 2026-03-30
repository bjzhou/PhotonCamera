.class public final Ligd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Likm;
.implements Lilg;
.implements Lilp;


# instance fields
.field public final a:Lifx;

.field private final b:Lije;

.field private final c:Liof;


# direct methods
.method public constructor <init>(Liof;Lifx;Lije;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Ligd;->b:Lije;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p1, p0, Ligd;->c:Liof;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Ligd;->a:Lifx;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llxm;)V
    .locals 4
    .annotation runtime Ltxo;
    .end annotation

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ligu;

    nop

    nop

    goto/32 :goto_29

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

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    :try_start_0
    iget-object p1, v0, Ligg;->k:Ljava/util/List;

    nop

    nop

    invoke-virtual {v1}, Linb;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ligg;->c(Linb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_23

    nop

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
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1, v3}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_8
    sget-object p1, Lifx;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_9
    check-cast v2, Linb;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "onShotAborted called on unknown shot %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v0, 0x5bd

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit v0

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

    :goto_10
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lifx;->l:Ljava/util/Set;

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

    :goto_12
    invoke-virtual {v1}, Linb;->a()I

    move-result v2

    nop

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

    nop

    :goto_13
    iget-object p1, p0, Lifx;->r:Lhoh;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_15
    monitor-exit v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    sget-object v3, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->FRWYVIeibvR:Ljava/lang/String;

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

    :goto_17
    check-cast p1, Lscz;

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

    :goto_18
    invoke-interface {v2}, Llxa;->j()Llxm;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Ligg;->c(Linb;)V

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Ligu;->a:Ligg;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_25

    nop

    :goto_1e
    invoke-virtual {v1}, Linb;->a()I

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v0, Lhmr;->j:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lifx;->k:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_24
    const/4 v3, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_3

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    :goto_2e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x14

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_30
    sget-object p0, Lifx;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_32
    const/16 v3, 0x5c5

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_33
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_34
    iget-object v2, v2, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2, p1}, Llxm;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Lifx;->o:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_38
    check-cast v1, Linb;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lifx;->n:Ljava/util/Map;

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

    :goto_3b
    invoke-interface {p0, v0}, Lsdo;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lifx;->l:Ljava/util/Set;

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

    :goto_3e
    const/4 v1, 0x0

    nop

    nop

    :goto_3f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Ligd;->a:Lifx;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_44
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_45
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_46
    goto/32 :goto_49

    nop

    nop

    :goto_47
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

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    :goto_4a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p1, v3}, Lsdo;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final b(Linb;Lpge;)V
    .locals 0
    .annotation runtime Ltxo;
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-interface {p2}, Lpge;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public final c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 7
    .annotation runtime Ltxo;
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "Session not active. Not adding preview frame"

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x4

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

    :goto_2
    iget p0, p0, Ligg;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3
    const v1, 0x14

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ligu;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Linb;->a()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p2, Lhmr;->j:Lhmn;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p3}, Llxm;->equals(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lifx;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4, p0}, Lifx;->a(Llxm;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    :goto_c
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lifx;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Llxa;->j()Llxm;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_13
    iput-object p3, p0, Ligg;->v:Llko;

    nop

    :goto_14
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_16
    invoke-direct/range {v0 .. v6}, Lift;-><init>(Loel;Lows;ILifx;Ljava/lang/Integer;Lify;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, v4, Lifx;->r:Lhoh;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    move-object v5, p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v0, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2}, Lije;->a()Lijd;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1b
    if-eqz v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v6, v4, Lifx;->g:Lify;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0, v1}, Ligu;-><init>(Ligg;Lubk;)V

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

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

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, p2}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_22
    if-eqz p3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v1, Ligt;->a:Ligt;

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

    :goto_24
    const-string p1, "Preview controller not registered. Not adding preview frame"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    throw p1

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_27
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Linb;->a()I

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Linb;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_2a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Ligg;->k:Ljava/util/List;

    nop

    invoke-virtual {p1}, Linb;->a()I

    move-result p3

    nop

    nop

    nop

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p2, p0, Ligg;->q:Z

    nop

    nop

    nop

    nop

    nop

    if-nez p2, :cond_4

    nop

    nop

    nop

    iget-object p2, p0, Ligg;->j:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Linb;->a()I

    move-result p3

    nop

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    goto/32 :goto_5f

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_31

    nop

    nop

    :goto_2d
    if-eqz p3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    :goto_30
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_31
    iget-object p0, v4, Lifx;->i:Ligg;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 p0, 0x0

    nop

    :goto_33
    goto/32 :goto_18

    nop

    nop

    :goto_34
    iget-object p3, p0, Ligg;->v:Llko;

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

    :goto_35
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_36

    nop

    nop

    :goto_36
    iget-object p0, p1, Linb;->w:Llko;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v4, p0, Ligd;->a:Lifx;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_39
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v6}, Lify;->i()Loel;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_3b
    new-instance v2, Lows;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3d
    iget-object p3, p0, Ligg;->s:Lijd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3e
    iget-object p2, p0, Ligd;->b:Lije;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3f
    if-eqz v6, :cond_7

    nop

    goto/32 :goto_30

    nop

    :cond_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_40
    invoke-interface {p0, p1}, Lsdo;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Llko;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_42
    new-instance p1, Lift;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_43
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_44
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1}, Linb;->a()I

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    :goto_47
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    :goto_49
    invoke-interface {p0, p1}, Lsdo;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p0, p1}, Lpge;->j(Lpuq;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, v1, Loel;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_50
    iput-object p2, p0, Ligg;->s:Lijd;

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_2a

    nop

    nop

    :goto_52
    iget-object p2, v4, Lifx;->k:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p0, v4, Lifx;->o:Ljava/util/List;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 p1, 0x5b5

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v2, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_57
    const/16 p1, 0x5b4

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, v4, Lifx;->l:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p3, v4, Lifx;->p:Llxm;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5b
    iget-object p0, v4, Lifx;->i:Ligg;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v2}, Lows;-><init>()V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez p3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast p0, Lscz;

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

    :goto_5f
    monitor-exit p0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p3, p1, Linb;->w:Llko;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Linb;IJLpro;)V
    .locals 0

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    invoke-interface {p2, p3}, Lsdo;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lifx;->b:Lrss;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ligu;

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

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

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p2, p2, Lhxs;->a:[F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lifx;->c:Lrss;

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

    :goto_9
    invoke-virtual {p1}, Linb;->a()I

    move-result p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p0

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

    :goto_c
    invoke-virtual {p2, p3, p4}, Lhze;->c(J)Lhxs;

    move-result-object p2

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
    const-string p3, "dequeueShotForStitching called. Expect a hole"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p2, Lifx;->a:Lsdb;

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
    check-cast p1, Ligu;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p2, p3}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Linb;->a()I

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p0, Lhmr;->a:Lhmo;

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    const/16 p3, 0x5b9

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

    :goto_17
    invoke-virtual {p0, p1}, Ligg;->c(Linb;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    iget-object p3, p0, Lifx;->k:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Ligd;->a:Lifx;

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

    :goto_1a
    check-cast p2, Lrsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p2, p1, Ligu;->b:[F

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    :goto_20
    array-length p3, p2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Ligu;->a:Ligg;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_22
    check-cast p2, Lscz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Linb;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p2, p2, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_25
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_26
    const/4 p4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_27
    check-cast p2, Lhze;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_28
    if-ne p3, p4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_29
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lifx;->k:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final f(Linb;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Linb;->a()I

    move-result p2

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

    :goto_1
    check-cast p2, Ligu;

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

    :goto_2
    iget-object p0, p0, Lifx;->l:Ljava/util/Set;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object p2, p2, Ligu;->d:Lubk;

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

    :goto_5
    invoke-interface {p2, p3}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lifx;->k:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p2, :cond_0

    nop

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

    nop

    nop

    nop

    :goto_b
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ligd;->a:Lifx;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Linb;->a()I

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

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
.end method

.method public final g(Llxm;)V
    .locals 1
    .annotation runtime Ltxo;
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {v0, p1}, Liof;->c(Llxm;)Linc;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p1, Linc;->C:Lrss;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p0}, Linc;->e(Lilp;)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object v0, p0, Ligd;->c:Liof;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0}, Linc;->a(Lilg;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final h(Linb;)Z
    .locals 6
    .annotation runtime Ltxo;
    .end annotation

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    iget-object v1, v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3
    invoke-virtual {v4, v5}, Lmhf;->c(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, v3, Ligm;->o:I

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5
    iget-object v3, p0, Lifx;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6
    iget-object v1, v1, Lifn;->e:Lowu;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lifx;->m:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lifx;->i:Ligg;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xc

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lifx;->d(I)V

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    iput-object v1, v3, Ligm;->z:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_12
    const v5, 0x7f130073

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    add-int/2addr v1, v2

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

    :goto_15
    invoke-virtual {v4}, Lkjj;->d()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v3, Lhsx;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, p1}, Ligg;->a(Linb;)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v3, Ligm;->G:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v3}, Lowu;->c(Ljava/lang/Runnable;)V

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Ligd;->a:Lifx;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lifx;->o:Ljava/util/List;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_20
    invoke-virtual {v3, v1, v2}, Ligm;->e(ZZ)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return v2

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v1, v3, Ligm;->o:I

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

    nop

    :goto_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_25
    if-ge v1, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_26
    iget v4, v3, Ligm;->h:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    if-nez v3, :cond_3

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

    :cond_3
    goto/32 :goto_28

    nop

    nop

    :goto_28
    iget-object v3, v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v3}, Ligm;->d()V

    goto/32 :goto_3b

    nop

    nop

    :goto_2a
    iget-object v4, v3, Lifn;->R:Lmhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2b
    iget-object v3, v3, Lifn;->c:Ligm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v3, v2}, Ligm;->h(Z)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Linb;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_22

    nop

    nop

    :goto_2f
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    :goto_32
    iget-object v4, v3, Lifn;->X:Lkjj;

    nop

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

    nop

    :goto_33
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 v4, 0x14

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2f

    nop

    :goto_36
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3}, Ligm;->g()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_39
    check-cast v1, Lifn;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v3, Lifn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v1, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3d
    invoke-direct {v3, v1, v4}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_39

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

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method
