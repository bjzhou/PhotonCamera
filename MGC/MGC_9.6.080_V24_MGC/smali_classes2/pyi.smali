.class public final synthetic Lpyi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic c:Lsuk;

.field public final synthetic d:Lrss;

.field public final synthetic e:Lrss;

.field public final synthetic f:Lrss;

.field public final synthetic g:Lrss;

.field public final synthetic h:Lrss;

.field public final synthetic i:Lrss;

.field public final synthetic j:Lrss;

.field public final synthetic k:Lpwh;

.field public final synthetic l:Lrbs;

.field public final synthetic m:Lhdn;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lsuk;Lhdn;Lrbs;Lrss;Lrss;Lrss;Lrss;Lrss;Lrss;Lrss;Lpwh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p13, p0, Lpyi;->k:Lpwh;

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

    :goto_1
    iput-object p6, p0, Lpyi;->d:Lrss;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iput-object p9, p0, Lpyi;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    iput-object p7, p0, Lpyi;->e:Lrss;

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

    :goto_5
    iput-object p2, p0, Lpyi;->b:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p8, p0, Lpyi;->f:Lrss;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p12, p0, Lpyi;->j:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    iput-object p3, p0, Lpyi;->c:Lsuk;

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

    :goto_9
    iput-object p4, p0, Lpyi;->m:Lhdn;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p11, p0, Lpyi;->i:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iput-object p10, p0, Lpyi;->h:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iput-object p1, p0, Lpyi;->a:Landroid/content/Context;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iput-object p5, p0, Lpyi;->l:Lrbs;

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


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 13

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpyi;->g:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpyi;->h:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_3
    move-object v3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    new-instance p0, Lpyh;

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

    :goto_5
    iget-object v0, v5, Loco;->a:Ljava/util/Map;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6
    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v11, "Provided UrlEngine must support URL scheme: %s"

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

    :goto_9
    const-string v1, "https"

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a
    move-object v8, v10

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_b
    move-object v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v11, v1}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    xor-int/2addr v0, v4

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_e
    invoke-direct/range {v3 .. v11}, Lpyh;-><init>(Locr;Lhdn;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;Lqvg;Lqar;Lrss;Lrss;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v11, p0, Lpyi;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    move v11, v4

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

    :goto_11
    const/4 v4, 0x1

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

    :goto_12
    invoke-direct {v0, v12, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v8}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v11}, La;->au(Z)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v8, p0, Lpyi;->c:Lsuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v9, Lqar;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_17
    iget-object v3, p0, Lpyi;->f:Lrss;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_66

    nop

    nop

    :goto_19
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_1a
    new-instance v4, Loby;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v8, v5, Loco;->b:Ljava/util/concurrent/Executor;

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

    :goto_1c
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_1d
    invoke-direct {v1}, Loct;-><init>()V

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v8, Lpmy;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3, v8}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v4, v1}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v10, Lqvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    iget-object v5, p0, Lpyi;->l:Lrbs;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Lpwh;->p()I

    move-result v8

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_26
    check-cast v1, Loct;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v4, Locr;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v10, v5, v8}, Lqvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_29
    new-instance v9, Lpyf;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2a
    check-cast v3, Locv;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-long v10, v8

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2d
    iget-object v4, p0, Lpyi;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v3}, Locv;->a()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2f
    check-cast v0, Ltud;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_31
    const/4 v9, 0x4

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_45

    nop

    nop

    :goto_33
    invoke-direct {v1, v0, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_35
    move-object v7, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4f

    nop

    :goto_37
    new-instance v5, Loco;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_38
    iget-object v3, v4, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Lpyi;->i:Lrss;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v8, v9}, Lpmy;-><init>(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v4, v5, v6, v10, v11}, Loby;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;J)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_4d

    nop

    :goto_3d
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v0}, Lpwh;->g()I

    move-result v0

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

    :goto_3f
    const v1, 0xd

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_1e

    nop

    :goto_41
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string v4, "Requested scheme already has a UrlEngine registered: %s"

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v0, Lpya;

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

    :goto_44
    invoke-interface {v3}, Ltud;->a()Ljava/lang/Object;

    move-result-object v3

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

    :goto_45
    new-instance v4, Locr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {v9}, Lpyf;-><init>()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move-object v10, v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v5, :cond_1

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_1
    goto/32 :goto_34

    nop

    nop

    :goto_49
    iget-object v12, p0, Lpyi;->d:Lrss;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v4, v5}, Locr;-><init>(Loco;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, v5, Loco;->a:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v7, v2

    nop

    nop

    :goto_4d
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_50
    invoke-direct {v5}, Loco;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    :goto_52
    iget-object v0, p0, Lpyi;->k:Lpwh;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v4, v5, Loco;->e:Loby;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v8, v9}, Lqar;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    :goto_55
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_56
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4e

    nop

    :goto_58
    iget-object v5, p0, Lpyi;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5a
    throw p0

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    new-instance v8, Lqar;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5d
    iget-object v5, p0, Lpyi;->m:Lhdn;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_5e
    const v0, 0xd

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_5f
    new-instance v1, Loct;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v4, Lrsx;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_61
    iput-object v1, v5, Loco;->d:Loct;

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

    nop

    :goto_62
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_63
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v2, v4, Locr;->b:Ljava/util/IdentityHashMap;

    nop

    nop

    nop

    new-instance v3, Lsut;

    nop

    nop

    invoke-direct {v3, v8}, Lsut;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v2, 0x0

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

    :goto_65
    const/4 v11, 0x0

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v6, p0, Lpyi;->b:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_68
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_69
    iput v0, v5, Loco;->c:I

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

    nop
.end method
