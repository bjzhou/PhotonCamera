.class public final Lve;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field private final b:I

.field private final c:Luen;

.field private final d:Lrv;

.field private final e:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Lrv;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    new-instance v0, Luen;

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
    invoke-direct {v0, v1, p1}, Luen;-><init>(ZLucu;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lvf;->a:Lueo;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iput-object p1, p0, Lve;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lve;->d:Lrv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    iput-object v0, p0, Lve;->c:Luen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-direct {p1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lueo;->b()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lve;->a:Ljava/util/List;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_19
    iput p1, p0, Lve;->b:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ltzy;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1, v2}, Luen;->a(ZZ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lve;->c:Luen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lrv;->b(Ltzy;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    nop

    :goto_9
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

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_11
    const v1, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

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

    :goto_13
    iget-object p0, p0, Lve;->d:Lrv;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    const v0, 0x8

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    :goto_16
    sget-object p1, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 10

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v5, v1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v5}, Lsb;->a()Lqk;

    move-result-object v9

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    nop

    invoke-static {v1}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    iget-object v2, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v8, Lqj;

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

    :goto_6
    monitor-exit v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_7
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_a
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

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

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v5}, Lsb;->a()Lqk;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v8, v9}, Lqj;->a(Lqk;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v4, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5}, Lsb;->a()Lqk;

    move-result-object v6

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

    :goto_12
    invoke-virtual {v5}, Lsb;->a()Lqk;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    :goto_14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v5, Lsb;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v6, v6, Lqk;->c:Ljava/util/List;

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

    :goto_17
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

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_18
    iget-object v5, v1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

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

    :goto_1a
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v8, v8, Lqk;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v2, "InvokeInternalListeners"

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1c

    nop

    nop

    :goto_22
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "InvokeRequestListeners"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_28
    move v4, v3

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    monitor-exit v0

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

    :goto_2c
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lrv;->a:Lsc;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lsc;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2d
    if-lt v7, v6, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_30
    monitor-exit v0

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

    :goto_31
    monitor-exit v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lve;->d:Lrv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_3a

    nop

    nop

    :goto_34
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x8

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_36
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_37
    move v7, v3

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2d

    nop

    nop

    :goto_39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3b
    move v7, v3

    nop

    nop

    :goto_3c
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_40
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    nop

    nop

    :goto_41
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move v4, v3

    nop

    nop

    :goto_45
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v8, v1, Lrr;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_47
    check-cast v5, Lsb;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v6, v1, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, v1, Lrr;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-lt v4, v2, :cond_4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v1, Lrr;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4c
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_14

    nop

    nop

    :goto_4e
    if-lt v7, v6, :cond_5

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v2, v1, Lrr;->c:Ljava/util/List;

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

    :goto_50
    invoke-interface {v8, v9}, Lqj;->a(Lqk;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_51
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v8, Lqj;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_53
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_54
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lrv;->a:Lsc;

    nop

    nop

    invoke-interface {p0}, Lsc;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrv;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lve;->d:Lrv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop
.end method

.method public final d(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z
    .locals 9

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_199

    nop

    nop

    nop

    :goto_2
    move p5, v1

    nop

    :goto_3
    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    :goto_4
    const-string p4, " is closed."

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_6
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v2, v3}, Lqj;->a(Lqk;)V

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_b
    move v0, v1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v0, p5, :cond_2

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_cc

    nop

    nop

    :goto_e
    move p5, v1

    nop

    :goto_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    :cond_3
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_12
    if-lt p5, p4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_4c

    nop

    nop

    :cond_5
    :try_start_0
    const-string p2, "CXCP"

    nop

    nop

    nop

    nop

    const-string p3, "Failed to submit "

    nop

    const-string p4, ": "

    nop

    const-string p5, " received -1 from submit."

    nop

    nop

    invoke-static {p0, p1, p3, p4, p5}, La;->bo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    nop

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lsw; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-enter p2

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object p4, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_15
    monitor-enter p2

    nop

    nop

    :try_start_2
    iget-object p0, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lt p3, p0, :cond_6

    nop

    goto/32 :goto_d6

    nop

    nop

    :cond_6
    goto/32 :goto_13d

    nop

    nop

    :goto_17
    invoke-interface {v0, v2}, Lqj;->a(Lqk;)V

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_18
    move p2, v1

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p4, :cond_7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string p0, "InvokeInternalListeners"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lt p3, p0, :cond_8

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_8
    goto/32 :goto_39

    nop

    nop

    :goto_1f
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :goto_20
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_21
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_23
    move p2, v1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p3, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_26
    if-lt p5, p4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p4}, Lsb;->a()Lqk;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_28
    goto/16 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_107

    nop

    nop

    :goto_2a
    check-cast v0, Lqj;

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_2b
    return p3

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p2

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

    :goto_2f
    iget-object p4, p1, Lrr;->d:Ljava/util/List;

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_30
    monitor-exit p3

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_31
    invoke-interface {v0, v2}, Lqj;->a(Lqk;)V

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p4, Lsb;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lt p5, p4, :cond_a

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return v1

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p4, Lqj;

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    :goto_39
    iget-object p4, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lt p2, p0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :cond_b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3d
    throw p2

    nop

    nop

    :catch_0
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_a7

    nop

    nop

    :goto_40
    if-lt v0, p5, :cond_c

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_43
    if-eqz p4, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_d
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_45
    if-eqz p2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_17c

    nop

    nop

    :goto_46
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_179

    nop

    nop

    :goto_47
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_48
    move p3, p2

    nop

    :goto_49
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    :goto_4b
    move p3, v1

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v0, v2}, Lqj;->a(Lqk;)V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_4e
    move p3, v1

    nop

    nop

    :goto_4f
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v0, Lqj;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-string p4, " is closed."

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_52
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    :goto_53
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_d

    nop

    nop

    :goto_55
    monitor-exit p2

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_56
    monitor-enter p3

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object p0, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_be

    nop

    nop

    :goto_57
    if-lt v0, p5, :cond_f

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_58
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1a0

    nop

    nop

    :goto_59
    const-string p0, "InvokeInternalListeners"

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_b6

    nop

    :goto_5b
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_18e

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v2, Lqj;

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_3b

    nop

    nop

    :goto_60
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {p0, p2, p1, p3, p4}, La;->bo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    :goto_62
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v2

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_63
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_64
    if-nez p2, :cond_10

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_c5

    nop

    nop

    :goto_65
    const/4 p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_66
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_67
    if-nez p4, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-nez p1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_174

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Lve;->c:Luen;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p3, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    :goto_6b
    move p2, v1

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_f

    nop

    :goto_6e
    goto/32 :goto_ae

    nop

    nop

    :goto_6f
    monitor-exit p2

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_70
    add-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_71
    throw p0

    nop

    :goto_72
    goto/32 :goto_af

    nop

    nop

    :goto_73
    const-string p1, "Failed to submit "

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v0, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->GMZHhdHtAWR:Ljava/lang/String;

    nop

    nop

    nop

    :try_start_4
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lve;->d:Lrv;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Lve;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    move v3, p1

    nop

    move-object v4, p2

    nop

    nop

    nop

    nop

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    move-object v6, p4

    nop

    nop

    move-object v7, p5

    nop

    nop

    invoke-virtual/range {v2 .. v8}, Lrv;->c(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/wear/ambient/AmbientMode$AmbientController;)Lrr;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v2, v2, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v0

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_77
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_b5

    nop

    :goto_78
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {p0, p2, p1, p3, p4}, La;->bo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :goto_7a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-lt v0, p5, :cond_14

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7c
    move p3, v1

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    monitor-exit p2

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_80
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :goto_81
    goto/16 :goto_197

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    monitor-exit p3

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_83
    throw p0

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-interface {v0, v2}, Lqj;->a(Lqk;)V

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v2, v2, Lqk;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_dc

    nop

    nop

    :goto_87
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_88
    iget-object p4, p4, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_89
    return v1

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const/4 p2, 0x0

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_8d
    iget-object p0, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_8e
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_8f
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_91
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-boolean p2, p1, Lrr;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    :goto_94
    monitor-enter p3

    nop

    :try_start_5
    iget-object p0, p0, Lve;->a:Ljava/util/List;

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    check-cast p3, Lsb;

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {p4}, Luen;->b()Z

    move-result p4

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_97
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_99
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p4}, Lsb;->a()Lqk;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast p3, Lsb;

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    :goto_9d
    if-lt p2, p0, :cond_15

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_9e
    iget-object v0, v0, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-interface {v2, v3}, Lqj;->a(Lqk;)V

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    monitor-exit p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_54

    nop

    :goto_a2
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_a3
    invoke-interface {p2}, Lwf;->close()V

    :goto_a4
    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {p4}, Lsb;->a()Lqk;

    move-result-object p5

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_a6
    iget-object p4, p1, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    if-nez p4, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/16 :goto_1b2

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_52

    nop

    nop

    :goto_ad
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_ae
    add-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_af
    move v1, p2

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_b0
    if-lt p3, p0, :cond_17

    nop

    goto/32 :goto_19e

    nop

    :cond_17
    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    move p5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_26

    nop

    nop

    :goto_b3
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

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

    :goto_b5
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    if-lt p2, p0, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :cond_18
    goto/32 :goto_5

    nop

    nop

    :goto_b8
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_b9
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    :goto_ba
    if-nez v0, :cond_19

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_19
    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_125

    nop

    nop

    :goto_bc
    iget-object p2, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_bd
    add-int/lit8 p5, p5, 0x1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    monitor-exit p3

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v0}, Luen;->b()Z

    move-result v0

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    monitor-exit p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object p3, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_c2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    add-int/lit8 p5, p5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {p4}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object p2, p2, Lpv;->a:Lwf;

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_c6
    check-cast v2, Lqj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_c7
    invoke-virtual {p4}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v0, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c9
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_168

    nop

    nop

    nop

    :goto_cb
    iget-object p4, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object v2, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    :goto_cd
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const-string p0, "InvokeRequestListeners"

    nop

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

    :goto_cf
    check-cast p3, Lsb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_d0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    goto/16 :goto_72

    nop

    :catchall_2
    move-exception p0

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

    :goto_d3
    iget-object p4, p4, Lqk;->e:Lpv;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_7d

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_104

    nop

    nop

    nop

    :goto_d7
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_d8
    iget-object p4, p4, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    :goto_d9
    check-cast v0, Lqj;

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_da
    move p2, p3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_db
    move p5, v1

    nop

    nop

    :goto_dc
    goto/32 :goto_111

    nop

    nop

    :goto_dd
    check-cast v0, Lqj;

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

    :goto_de
    if-eqz p2, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_df
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_18b

    nop

    nop

    :goto_e0
    monitor-exit p2

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_e1
    return v1

    nop

    :cond_1b
    :try_start_6
    const-string p2, "CXCP#submit(CaptureSequence)"

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p2, p0, Lve;->d:Lrv;

    nop

    nop

    nop

    nop

    nop

    iget-object p4, p2, Lrv;->c:Ljava/lang/Object;

    nop

    monitor-enter p4

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    iget-boolean p5, p2, Lrv;->d:Z

    nop

    if-eqz p5, :cond_1f

    nop

    const-string p5, "CXCP"

    nop

    nop

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " closed. "

    nop

    nop

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " won\'t be submitted"

    nop

    nop

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-static {p5, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    monitor-exit p4

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_e2
    if-lt p2, p0, :cond_1c

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object p3, p1, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v0

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_e5
    iget-boolean p2, p1, Lrr;->a:Z

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    :goto_e9
    add-int/lit8 v0, v0, 0x1

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

    :goto_ea
    const-string p3, ": "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v0, v0, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    :goto_ec
    goto/16 :goto_166

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-interface {v2, v3}, Lqj;->a(Lqk;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {p4}, Lsb;->a()Lqk;

    move-result-object p5

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object p4

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    check-cast v2, Lqj;

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_f1
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_11d

    nop

    nop

    :goto_f2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_f5
    const-string p0, "InvokeInternalListeners"

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_f6
    iget-boolean p2, p1, Lrr;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    add-int/lit8 p5, p5, 0x1

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_f8
    goto/16 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    if-eqz p3, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_fc
    move p3, v1

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object p4, p0, Lve;->c:Luen;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_ff
    monitor-enter p2

    nop

    nop

    nop

    :try_start_a
    iget-object p0, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto/32 :goto_15b

    nop

    nop

    :goto_100
    goto/16 :goto_3

    nop

    :goto_101
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget-object v0, v0, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_103
    check-cast p3, Lsb;

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_104
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-static {p0, p2, p1, p3, p4}, La;->bo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_106
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_107
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_108
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_8e

    nop

    nop

    :goto_109
    const-string p4, " failed to build CaptureSequence."

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_10a
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_10b
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    :goto_10c
    goto/32 :goto_58

    nop

    nop

    :goto_10d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_10f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_110
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_111
    if-lt p5, p4, :cond_1e

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_1e
    goto/32 :goto_180

    nop

    nop

    :goto_112
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_113
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_197

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception p2

    nop

    nop

    nop

    nop

    :try_start_b
    monitor-exit p4

    nop

    throw p2

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception p2

    nop

    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p2

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p2

    nop

    nop

    :try_start_d
    monitor-exit p1

    nop

    throw p2

    nop

    nop
    :try_end_d
    .catch Lsw; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception p2

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

    :goto_115
    iget-object p5, p5, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    iget-object v0, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_117
    iget-object p2, p1, Lqk;->e:Lpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_118
    iget-object p5, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    :goto_119
    const-string p1, "CXCP"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11b
    goto/16 :goto_b2

    nop

    nop

    nop

    :goto_11c
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    :goto_11f
    check-cast p3, Lsb;

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_120
    check-cast v2, Lqj;

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_121
    invoke-interface {v0, v2}, Lqj;->a(Lqk;)V

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_122
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_123
    const-string p1, "CXCP"

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_124
    const-string p0, "InvokeInternalListeners"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_125
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_126
    iget-object p5, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_127
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-interface {v0, v2}, Lqj;->a(Lqk;)V

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    :goto_12a
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_12b
    goto/16 :goto_145

    nop

    :catchall_8
    move-exception p0

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12d
    const-string p1, "Failed to submit "

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    goto/16 :goto_130

    nop

    :cond_1f
    :try_start_e
    iget-object p5, p1, Lrr;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    nop

    nop

    nop

    nop

    if-ne p5, p3, :cond_22

    nop

    nop

    iget-object p5, p2, Lrv;->a:Lsc;

    nop

    nop

    instance-of v0, p5, Lqt;

    nop

    nop

    if-nez v0, :cond_22

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p1, Lrr;->a:Z

    nop

    if-eqz v0, :cond_21

    nop

    nop

    nop

    nop

    iget-boolean v0, p2, Lrv;->b:Z

    nop

    nop

    if-eqz v0, :cond_20

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p2, Lrv;->e:Lrr;

    nop

    nop

    :cond_20
    iget-object p2, p1, Lrr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Landroid/hardware/camera2/CaptureRequest;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p5, p2, p1}, Lsc;->g(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    goto :goto_12f

    nop

    nop

    :cond_21
    iget-object p2, p1, Lrr;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Landroid/hardware/camera2/CaptureRequest;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p5, p2, p1}, Lsc;->d(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    goto :goto_12f

    nop

    nop

    :cond_22
    iget-boolean p5, p1, Lrr;->a:Z

    nop

    nop

    nop

    if-eqz p5, :cond_23

    nop

    nop

    nop

    nop

    iget-object p2, p2, Lrv;->a:Lsc;

    nop

    nop

    iget-object p5, p1, Lrr;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p2, p5, p1}, Lsc;->f(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto :goto_12f

    nop

    :cond_23
    iget-object p2, p2, Lrv;->a:Lsc;

    nop

    nop

    nop

    iget-object p5, p1, Lrr;->b:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p2, p5, p1}, Lsc;->e(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_12f
    :try_start_f
    monitor-exit p4

    nop

    nop

    :goto_130
    const/4 p4, -0x1

    nop

    nop

    nop

    if-eqz p2, :cond_24

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    goto :goto_131

    nop

    :cond_24
    move p2, p4

    nop

    nop

    :goto_131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    nop

    nop

    iput-object p5, p1, Lrr;->e:Ljava/lang/Integer;

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    if-eq p2, p4, :cond_5

    nop

    nop

    nop

    const-string p2, "InvokeInternalListeners"

    nop

    nop

    nop

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p2, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    move p4, v1

    nop

    nop

    nop

    nop

    nop

    :goto_132
    if-ge p4, p2, :cond_26

    nop

    nop

    nop

    nop

    nop

    iget-object p5, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    nop

    check-cast p5, Lsb;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lrr;->d:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    move v2, v1

    nop

    :goto_133
    if-ge v2, v0, :cond_25

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lqj;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, p5}, Lqj;->h(Lsb;)V

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto :goto_133

    nop

    nop

    nop

    nop

    nop

    :cond_25
    add-int/lit8 p4, p4, 0x1

    nop

    nop

    nop

    nop

    goto :goto_132

    nop

    nop

    :cond_26
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p2, "InvokeRequestListeners"

    nop

    nop

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p2, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    nop

    nop

    nop

    move p4, v1

    nop

    :goto_134
    if-ge p4, p2, :cond_28

    nop

    nop

    iget-object p5, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    nop

    check-cast p5, Lsb;

    nop

    nop

    nop

    invoke-virtual {p5}, Lsb;->a()Lqk;

    move-result-object v0

    nop

    nop

    nop

    iget-object v0, v0, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    move v2, v1

    nop

    nop

    nop

    nop

    :goto_135
    if-ge v2, v0, :cond_27

    nop

    invoke-virtual {p5}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lqk;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lqj;

    nop

    nop

    nop

    invoke-interface {v3, p5}, Lqj;->h(Lsb;)V

    add-int/lit8 v2, v2, 0x1

    nop

    goto :goto_135

    nop

    nop

    nop

    nop

    :cond_27
    add-int/lit8 p4, p4, 0x1

    nop

    nop

    nop

    goto :goto_134

    nop

    nop

    :cond_28
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_11
    .catch Lsw; {:try_start_11 .. :try_end_11} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_12
    .catch Lsw; {:try_start_12 .. :try_end_12} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/32 :goto_da

    nop

    nop

    :goto_136
    iget-object p5, p5, Lqk;->c:Ljava/util/List;

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :goto_137
    if-lt p5, p4, :cond_29

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_138
    goto/16 :goto_fd

    nop

    nop

    :goto_139
    goto/32 :goto_10d

    nop

    nop

    :goto_13a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_13b
    iget-boolean p3, p1, Lrr;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13c
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_13d
    iget-object p4, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_14d

    nop

    nop

    :goto_13f
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_140
    iget-object p4, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_141
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    :goto_142
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    invoke-virtual {p4}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_144
    throw p0

    nop

    nop

    nop

    :goto_145
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p2, 0x0

    nop

    sget-object p2, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->OjqvVVBrxDoi:Ljava/lang/String;

    nop

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p2, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    move p4, v1

    nop

    nop

    :goto_146
    if-ge p4, p2, :cond_2b

    nop

    nop

    nop

    nop

    iget-object p5, p1, Lrr;->c:Ljava/util/List;

    nop

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    nop

    check-cast p5, Lsb;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    move v2, v1

    nop

    nop

    :goto_147
    if-ge v2, v0, :cond_2a

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lrr;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lqj;

    nop

    nop

    invoke-interface {v3, p5}, Lqj;->g(Lsb;)V

    add-int/lit8 v2, v2, 0x1

    nop

    goto :goto_147

    nop

    nop

    :cond_2a
    add-int/lit8 p4, p4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_146

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p2, "InvokeRequestListeners"

    nop

    nop

    nop

    nop

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p2, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    nop

    nop

    nop

    move p4, v1

    nop

    nop

    :goto_148
    if-ge p4, p2, :cond_2d

    nop

    nop

    nop

    nop

    nop

    iget-object p5, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    nop

    nop

    nop

    check-cast p5, Lsb;

    nop

    nop

    nop

    invoke-virtual {p5}, Lsb;->a()Lqk;

    move-result-object v0

    nop

    nop

    iget-object v0, v0, Lqk;->c:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    move v2, v1

    nop

    nop

    :goto_149
    if-ge v2, v0, :cond_2c

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p5}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    nop

    nop

    iget-object v3, v3, Lqk;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lqj;

    nop

    nop

    nop

    nop

    invoke-interface {v3, p5}, Lqj;->g(Lsb;)V

    add-int/lit8 v2, v2, 0x1

    nop

    goto :goto_149

    nop

    nop

    nop

    nop

    nop

    :cond_2c
    add-int/lit8 p4, p4, 0x1

    nop

    nop

    nop

    goto :goto_148

    nop

    :cond_2d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    monitor-enter p1

    nop
    :try_end_13
    .catch Lsw; {:try_start_13 .. :try_end_13} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    iget-object p2, p0, Lve;->c:Luen;

    nop

    nop

    nop

    invoke-virtual {p2}, Luen;->b()Z

    move-result p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_1b

    nop

    nop

    nop

    nop

    nop

    const-string p2, "CXCP"

    nop

    nop

    const-string p3, "Failed to submit "

    nop

    nop

    nop

    const/4 p4, 0x0

    nop

    sget-object p4, Lcom/google/vr/ndk/base/qbMr/qVSTXuYNqkCvm;->GzGYdgqmlMpzwfM:Ljava/lang/String;

    nop

    nop

    const-string p5, " is closed."

    nop

    nop

    nop

    invoke-static {p0, p1, p3, p4, p5}, La;->bo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    nop

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    monitor-exit p1

    nop

    nop

    nop
    :try_end_15
    .catch Lsw; {:try_start_15 .. :try_end_15} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto/32 :goto_f6

    nop

    nop

    :goto_14a
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_14b
    goto/16 :goto_190

    nop

    :goto_14c
    goto/32 :goto_92

    nop

    nop

    :goto_14d
    return v1

    nop

    :goto_14e
    goto/32 :goto_fe

    nop

    nop

    :goto_14f
    const v1, 0x1f

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_150
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    iget-object p3, p1, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_152
    const-string p1, "CXCP"

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_153
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_154
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_155
    if-lt p3, p0, :cond_2e

    nop

    goto/32 :goto_139

    nop

    nop

    :cond_2e
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    if-eqz p2, :cond_2f

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    move p2, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_158
    const-string p3, ": "

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_159
    invoke-virtual {p4}, Lsb;->a()Lqk;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_15b
    monitor-exit p2

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_15d
    add-int/lit8 p5, p5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_15e
    if-eqz p3, :cond_30

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_15f
    move p3, v1

    nop

    nop

    nop

    nop

    :goto_160
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_161
    if-lt p2, p0, :cond_31

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :goto_162
    move p2, v1

    nop

    nop

    :goto_163
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_164
    iget-object p2, p1, Lqk;->c:Ljava/util/List;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    throw p0

    nop

    nop

    nop

    :goto_166
    goto/32 :goto_3d

    nop

    nop

    :goto_167
    monitor-enter p0

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    add-int/lit8 p3, p3, 0x1

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_169
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    iget-object p2, p0, Lve;->a:Ljava/util/List;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    iget-object p3, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    check-cast p1, Lqk;

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_16d
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_16e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16f
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_170
    return v1

    nop

    nop

    nop

    nop

    :catchall_9
    move-exception p0

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_171
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_172
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object p4

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_173
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_174
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_175
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_176
    move v0, v1

    nop

    nop

    nop

    :goto_177
    goto/32 :goto_40

    nop

    nop

    :goto_178
    check-cast p4, Lsb;

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_179
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    iget-object p4, p4, Lqk;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    const-string p3, ": "

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    iget-object p2, p0, Lve;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_17d
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-interface {p4, p1}, Lqj;->a(Lqk;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_17f
    add-int/lit8 p5, p5, 0x1

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

    :goto_180
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v0

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_181
    if-eqz p2, :cond_32

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_bc

    nop

    nop

    :goto_182
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_183
    check-cast p3, Lsb;

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_184
    check-cast p4, Lsb;

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_185
    invoke-virtual {p3}, Lsb;->a()Lqk;

    move-result-object v2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_186
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_187
    add-int/lit8 p3, p3, 0x1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_188
    goto/16 :goto_1b8

    nop

    nop

    :goto_189
    goto/32 :goto_df

    nop

    nop

    nop

    :goto_18a
    iget-object p3, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    goto/16 :goto_197

    nop

    nop

    :catchall_a
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_18d
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_18f
    move p2, v1

    nop

    nop

    :goto_190
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_191
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_192
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_193
    check-cast p4, Lqk;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_194
    check-cast v0, Lqj;

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    :goto_195
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_196
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catch_2
    :goto_197
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_198
    iget-boolean p2, p1, Lrr;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_199
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_19a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    check-cast v0, Lqj;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :goto_1a0
    const-string p0, "InvokeRequestListeners"

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1a2
    add-int/lit8 p5, p5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_1a3
    move p5, v1

    nop

    :goto_1a4
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    check-cast p4, Lsb;

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_1a6
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_1a7
    iget-object p0, p1, Lrr;->c:Ljava/util/List;

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    if-lt p2, p0, :cond_33

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    if-eqz p1, :cond_34

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_1aa
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_1ab
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_1ac
    invoke-interface {v2, v3}, Lqj;->a(Lqk;)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    iget-object p4, p1, Lrr;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_1ae
    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1af
    iget-boolean p3, p1, Lrr;->a:Z

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_1b0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1b1
    move p5, v1

    nop

    nop

    nop

    nop

    :goto_1b2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b3
    if-lt p5, p4, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_1b4
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_170

    nop

    nop

    :goto_1b5
    const-string p1, "Failed to submit "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_1b6
    const-string p0, "InvokeInternalListeners"

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    :goto_1b7
    move p2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const-string v1, "GraphRequestProcessor-"

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lve;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
