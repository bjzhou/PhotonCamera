.class public final Lpuw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Z

.field public static final b:Ljava/lang/Object;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "COLLECTION_BASIS_VERIFIER"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lpuw;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    sput-boolean v0, Lpuw;->a:Z

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    sput-object v0, Lpuw;->c:[Ljava/lang/String;

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

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    filled-new-array {v0}, [Ljava/lang/String;

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
.end method

.method public static a(Lpun;Lscn;)V
    .locals 11

    goto/32 :goto_32

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Lohe;->d(Lojj;)Loqy;

    move-result-object p1

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

    :goto_1
    new-instance v9, Lsuv;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2
    new-instance v3, Loji;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    move-object v2, p0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    :goto_7
    invoke-static {p0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v10, Lpuz;->a:Ljava/util/concurrent/RejectedExecutionHandler;

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    move-object v2, p0

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

    :goto_14
    invoke-static {p0}, Lpuq;->t(Landroid/content/Context;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    const/16 v4, 0xa

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    invoke-direct {v5, v1, p1, v2}, Lopv;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    :goto_1a
    goto/32 :goto_53

    nop

    nop

    :goto_1b
    const-string v2, "com.google.android.libraries.consentverifier#"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2}, Lsgj;->F([Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lpun;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v3, p1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p1, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->PEECNWbSMBf:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v5, Lopv;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lpun;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_24
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_25
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_27
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_29
    const-wide/16 v5, 0xa

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lpun;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2d
    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    :goto_2e
    :try_start_0
    new-instance v2, Lpuv;

    nop

    nop

    nop

    invoke-direct {v2, v0, v1, p0}, Lpuv;-><init>(Lopx;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1, p0, v2}, Loqy;->l(Ljava/util/concurrent/Executor;Loqv;)V

    new-instance v0, Lnts;

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    invoke-direct {v0, v1, v2}, Lnts;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p0, v0}, Loqy;->k(Ljava/util/concurrent/Executor;Loqu;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_3a

    nop

    nop

    :goto_2f
    invoke-direct {v3}, Loji;-><init>()V

    goto/32 :goto_22

    nop

    nop

    :goto_30
    invoke-direct {v8, p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v4, 0xa

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

    nop

    :goto_32
    const v0, 0xe

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

    :goto_33
    invoke-direct {v0, v1}, Lopx;-><init>(Landroid/content/Context;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

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

    :goto_36
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_b

    nop

    nop

    :goto_37
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_1

    nop

    nop

    :goto_39
    const/16 p0, 0xa

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3}, Loji;->a()Lojj;

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

    nop

    :goto_3c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_3d
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string p1, "CBVerifier"

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v2, p1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_44
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sget-object v2, Lpuw;->c:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_46
    const-wide/16 v5, 0x3c

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_47
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_48
    invoke-direct {v9, v2, v3, v4}, Lsuv;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/atomic/AtomicLong;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_49
    iget-object v1, p0, Lpun;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4b
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4c
    const/4 v3, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4d
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_4e
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object v5, v3, Loji;->a:Lojf;

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

    :goto_50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_51
    if-eqz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    nop

    nop

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    iput-object v2, p1, Lscn;->a:Ljava/lang/Object;

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v3, v4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v0, Lopx;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_54
    sget-object p0, Looe;->a:Lolx;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop
.end method
