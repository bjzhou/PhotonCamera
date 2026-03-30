.class public final Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/CoroutineWorker;
.source "PG"


# instance fields
.field private final e:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-direct {v1, p0, v2, v3}, Lrt;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Ltzy;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lrt;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v3, 0xd

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-static {v0}, Luch;->J(Ljava/util/concurrent/Executor;)Lufp;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Leqg;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    invoke-static {v0, v1, p1}, Lucd;->s(Luad;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

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

    nop
.end method

.method public final g(Ltzy;)Ljava/lang/Object;
    .locals 14

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    :goto_4
    move-object p0, p1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, v0, Lexh;->d:I

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, p1}, Lexh;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Ltzy;)V

    :goto_7
    goto/32 :goto_50

    nop

    nop

    :goto_8
    iget-object p0, v0, Lexh;->a:Ljava/lang/Object;

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

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    :goto_b
    goto/16 :goto_1b

    nop

    nop

    :goto_c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Leqd;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lexm;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_11
    new-instance p1, Leqe;

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_12
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_14
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p0, Leqe;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v10, :cond_3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1a
    iget p0, p0, Lexe;->a:I

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v9, v2}, Lfdn;-><init>(Lhwy;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lexh;->e:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    nop

    :try_start_0
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_45

    nop

    nop

    :goto_1f
    new-instance p0, Leqd;

    nop

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

    :goto_20
    invoke-virtual {p1, p0}, Leqg;->e(I)V

    :goto_21
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p0, :cond_4

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v5, p0, Leqg;->b:Landroidx/work/WorkerParameters;

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_26
    goto/16 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_29
    if-nez p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v2}, Lepu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2d
    instance-of p0, v0, Lexe;

    nop

    nop

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

    :goto_2e
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_d

    nop

    nop

    :goto_2f
    move-object v13, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_30
    check-cast v0, Lexh;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_31
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v9, v10}, Lfdn;->D(Levq;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_34
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    :goto_35
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_8
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, v2, Lts;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Leqg;->f()Z

    move-result v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_49

    nop

    :goto_3f
    goto/32 :goto_88

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Leqg;->f()Z

    move-result v1

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

    :goto_41
    if-eqz v2, :cond_a

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3e

    nop

    nop

    :goto_42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v2}, Luch;->J(Ljava/util/concurrent/Executor;)Lufp;

    move-result-object v2

    nop

    nop

    nop

    nop

    new-instance v4, Lenv;

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    const/4 v12, 0x3

    nop

    move-object v6, v4

    nop

    move-object v7, p0

    nop

    nop

    nop

    move-object v8, p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v6 .. v12}, Lenv;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Leqg;Lfdn;Levq;Ltzy;I)V

    iput-object p0, v0, Lexh;->e:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    nop

    nop

    nop

    nop

    iput-object p1, v0, Lexh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iput v3, v0, Lexh;->d:I

    nop

    nop

    nop

    nop

    invoke-static {v2, v4, v0}, Lucd;->s(Luad;Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {p0}, Leqe;-><init>()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v2}, Lese;->b(Landroid/content/Context;)Lese;

    move-result-object v2

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_46
    move-object v13, p1

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    instance-of v0, p1, Lexh;

    nop

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

    nop

    :goto_48
    return-object p0

    nop

    :goto_49
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p0, Lexe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4b
    iget-object v4, v2, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_4c
    instance-of v1, v0, Lexe;

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

    :goto_4d
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4e
    const/4 v3, 0x1

    nop

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

    :goto_4f
    move-object p0, v0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_50
    iget-object p1, v0, Lexh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_51
    new-instance v0, Lexh;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_52
    invoke-interface {v4, v5}, Levr;->a(Ljava/lang/String;)Levq;

    move-result-object v10

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_53
    if-ne v0, v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_b
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_54
    new-instance p0, Leqd;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_55
    return-object v1

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    :goto_56
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_57
    move-object p0, v0

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_58
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_c
    :goto_59
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-string p1, "Unreachable"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_5b
    return-object p0

    nop

    nop

    :goto_5c
    goto/32 :goto_7d

    nop

    nop

    :goto_5d
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_5f
    if-eq v2, v3, :cond_d

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object p1, v13

    nop

    nop

    nop

    :goto_61
    :try_start_2
    check-cast p1, Landroidx/wear/ambient/WearableControllerProvider;

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {p0}, Leqd;-><init>()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_63
    check-cast p1, Leqg;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_64
    iget-object v2, v2, Landroidx/work/WorkerParameters;->g:Lts;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_65
    invoke-direct {p0}, Leqd;-><init>()V

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_66
    const-string v2, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_68
    const-string p1, "No worker to delegate to."

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

    nop

    :goto_69
    iget-object v2, v2, Lese;->j:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_6a
    sget-object p0, Lexm;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6b
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_6c
    new-instance v9, Lfdn;

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

    :goto_6d
    move-object v0, v13

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_7

    nop

    nop

    :goto_6f
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_71
    return-object p0

    nop

    :goto_72
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p0, p0, Leqg;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-direct {p1}, Leqe;-><init>()V

    :goto_76
    goto/32 :goto_86

    nop

    nop

    :goto_77
    invoke-direct {p0}, Leqd;-><init>()V

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_78
    invoke-static {}, Leqh;->b()V

    :try_start_3
    iget-object v2, p0, Leqg;->b:Landroidx/work/WorkerParameters;

    nop

    iget-object v2, v2, Landroidx/work/WorkerParameters;->f:Ldwx;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Leqg;->a:Landroid/content/Context;

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->e:Landroidx/work/WorkerParameters;

    nop

    nop

    invoke-virtual {v2, v4, p1, v5}, Ldwx;->c(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Leqg;

    move-result-object p1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_79
    instance-of p0, v0, Lexe;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_7b
    move-object v0, p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_7c
    iget v1, v0, Lexh;->d:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v2, Lexm;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_7e
    invoke-virtual {p0}, Leqg;->c()Lepu;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_7f
    return-object p0

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v5, v5, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_86
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_17

    nop

    nop

    :goto_88
    iget-object v2, p0, Leqg;->a:Landroid/content/Context;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_89
    iget v2, v0, Lexh;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    move-object p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop
.end method

.method public final h(Leqg;Lfdn;Levq;Ltzy;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    sget-object p4, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p4}, Lexf;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Ltzy;)V

    :goto_2
    goto/32 :goto_21

    nop

    nop

    :goto_3
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4
    return-object p4

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    :goto_6
    instance-of v0, p4, Lexf;

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

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_9
    move-object v0, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    new-instance p0, Lexg;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_b
    goto/32 :goto_2c

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1a

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

    :goto_e
    sub-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, v0, Lexf;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    const/high16 v2, -0x80000000

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

    :goto_14
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    :goto_16
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    :goto_18
    invoke-direct {p0, p1, p2, p3, v1}, Lexg;-><init>(Leqg;Lfdn;Levq;Ltzy;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    :goto_1f
    iput v2, v0, Lexf;->c:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lexf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, v0, Lexf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lexf;

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

    :goto_24
    if-eq p0, p4, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    iget v1, v0, Lexf;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_27
    if-lez v0, :cond_4

    nop

    goto/32 :goto_c

    nop

    :cond_4
    goto/32 :goto_b

    nop

    :goto_28
    iput v1, v0, Lexf;->c:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0, v0}, Lufv;->h(Lubo;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_5

    nop

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

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p0}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
