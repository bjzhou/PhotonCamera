.class public final Loqm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:J

.field public static volatile p:Lolx;

.field private static volatile q:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final r:Ljava/lang/Object;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Landroid/os/PowerManager$WakeLock;

.field public d:I

.field public e:Ljava/util/concurrent/Future;

.field public f:J

.field public g:Z

.field public h:I

.field public i:Looc;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/util/Map;

.field public m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Ljava/util/concurrent/ScheduledExecutorService;

.field public o:Lolt;

.field private final s:Ljava/util/Set;

.field private t:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 v1, 0x16e

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    sput-object v0, Loqm;->p:Lolx;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-wide v0, Loqm;->a:J

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

    :goto_9
    sput-object v0, Loqm;->q:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Lolx;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    new-instance v0, Lolx;

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Loqm;->r:Ljava/lang/Object;

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

    :goto_14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    goto/32 :goto_39

    nop

    nop

    :goto_0
    iput-object v3, p0, Loqm;->c:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    sget-object v0, Loqm;->r:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3, v4}, Lolx;->af(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v5, :cond_1

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

    :cond_1
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget v3, Loly;->a:I

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

    :goto_b
    iget-object p1, p0, Loqm;->c:Landroid/os/PowerManager$WakeLock;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lolz;->b(Landroid/content/Context;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v5}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    nop

    :goto_10
    new-instance v2, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x1

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

    :goto_12
    const-string v5, "com.google.android.gms"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v3, p0, Loqm;->o:Lolt;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_14
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v5, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v2, p0, Loqm;->s:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "WorkSourceUtil"

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

    :goto_19
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1b
    iput v1, p0, Loqm;->d:I

    nop

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

    :goto_1c
    iput-object v3, p0, Loqm;->j:Ljava/lang/String;

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v1, p0, Loqm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-enter v0

    nop

    :try_start_0
    sget-object p1, Loqm;->q:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    if-nez p1, :cond_3

    nop

    nop

    nop

    sget-object p1, Looe;->a:Lolx;

    nop

    nop

    nop

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    nop

    nop

    sput-object p1, Loqm;->q:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string p1, "Could not get applicationInfo from package: "

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

    :goto_21
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    check-cast v5, Landroid/os/PowerManager;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v4, p0, Loqm;->i:Looc;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p1, v4}, Loqm;->e(Landroid/os/PowerManager$WakeLock;Landroid/os/WorkSource;)V

    :goto_25
    goto/32 :goto_50

    nop

    nop

    :goto_26
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_27
    :try_start_1
    invoke-static {p1}, Lomb;->b(Landroid/content/Context;)Lpic;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0, v1}, Lpic;->x(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v5, p0, Loqm;->j:Ljava/lang/String;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_29
    iput-object v3, p0, Loqm;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2b
    iput-object v3, p0, Loqm;->k:Ljava/lang/String;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_63

    nop

    :catch_0
    goto/32 :goto_4d

    nop

    nop

    :goto_2d
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v4, 0x0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_33
    goto/32 :goto_3f

    nop

    nop

    :goto_34
    iput-boolean v2, p0, Loqm;->g:Z

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v3, Ljava/util/HashMap;

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

    :goto_36
    if-nez v3, :cond_4

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

    nop

    :cond_4
    :goto_37
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_38
    const-string v4, "WakeLock: wakeLockName must not be empty"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_39
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_3a
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_3b
    invoke-static {v4, p1, v0}, Lolz;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_3c
    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v0, "WorkSourceUtil"

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_3f
    if-nez p1, :cond_7

    nop

    goto/32 :goto_63

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_40
    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    const-string v3, "WakeLock: context must not be null"

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_42
    const-string v5, "power"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x0

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

    :goto_46
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_63

    nop

    nop

    :goto_49
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v3, :cond_8

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

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p1, v3}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2d

    nop

    :goto_4d
    const-string p1, "Could not find package: "

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

    :goto_4e
    const-string v5, "*gcore*:Analytics WakeLock"

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object v3, p0, Loqm;->l:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_50
    sget-object p1, Loqm;->q:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_51
    sget-object v3, Lolt;->a:Lolt;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_52
    iput-object v4, p0, Loqm;->t:Landroid/os/WorkSource;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_54
    const v1, 0x13

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_55
    const-string v3, "Analytics WakeLock"

    nop

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

    nop

    :goto_56
    add-int v0, v0, v1

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

    nop

    nop

    :goto_57
    iput-object p1, p0, Loqm;->n:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_58
    new-instance v4, Landroid/os/WorkSource;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_a
    goto/32 :goto_1

    nop

    nop

    :goto_5a
    if-nez v0, :cond_b

    nop

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

    :cond_b
    goto/32 :goto_6

    nop

    nop

    :goto_5b
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_1c

    nop

    nop

    :goto_5d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

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

    nop

    :goto_5f
    new-instance v1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_60
    throw p0

    nop

    :goto_61
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63
    goto/32 :goto_52

    nop

    nop
.end method

.method private static e(Landroid/os/PowerManager$WakeLock;Landroid/os/WorkSource;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

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

    :catch_0
    move-exception p0

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p1, "WakeLock"

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Loqm;->s:Ljava/util/Set;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

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

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

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

    nop

    :goto_3
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_7
    goto/32 :goto_12

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    if-lez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    :goto_a
    goto/32 :goto_1b

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    check-cast p0, Lolx;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_11
    goto/32 :goto_c

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Loqm;->s:Ljava/util/Set;

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

    :goto_14
    const/4 p0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    const v1, 0xd

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Loqm;->s:Ljava/util/Set;

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

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 1

    goto/32 :goto_3

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

    nop

    :try_start_0
    iget p0, p0, Loqm;->d:I

    nop

    nop

    if-lez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Loqm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :goto_1
    goto/32 :goto_2

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

    nop

    :goto_3
    iget-boolean p0, p0, Loqm;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    const v0, 0x1b

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

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    :try_start_0
    iget-object v1, p0, Loqm;->c:Landroid/os/PowerManager$WakeLock;

    nop

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Loqm;->i:Looc;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iput-object v3, p0, Loqm;->i:Looc;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_e

    nop

    :catchall_0
    move-exception v1

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

    nop

    :goto_9
    goto/32 :goto_7

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_c
    :try_start_3
    iget-object v2, p0, Loqm;->i:Looc;

    nop

    if-eqz v2, :cond_3

    nop

    iput-object v3, p0, Loqm;->i:Looc;

    nop

    nop

    nop

    :cond_3
    throw v1

    nop

    :goto_d
    const-string v1, "%s should be held!"

    nop

    nop

    iget-object p0, p0, Loqm;->j:Ljava/lang/String;

    nop

    nop

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p0}, Lolx;->bu(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_e
    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_c

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    const-class v4, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Loqm;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    const-string v4, "WakeLock"

    nop

    nop

    const-string v5, "%s failed to release!"

    nop

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Loqm;->i:Looc;

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iput-object v3, p0, Loqm;->i:Looc;

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Loqm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
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

    :goto_12
    monitor-enter v0

    nop

    nop

    :try_start_6
    invoke-virtual {p0}, Loqm;->b()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_5

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_5
    iget-boolean v1, p0, Loqm;->g:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Loqm;->d:I

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Loqm;->d:I

    nop

    if-lez v1, :cond_7

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    :cond_6
    iput v2, p0, Loqm;->d:I

    nop

    :cond_7
    invoke-virtual {p0}, Loqm;->a()V

    iget-object v1, p0, Loqm;->l:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_8

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Loql;

    nop

    nop

    nop

    iput v2, v3, Loql;->a:I

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_8
    iget-object v1, p0, Loqm;->l:Ljava/util/Map;

    nop

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Loqm;->e:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    if-eqz v1, :cond_9

    nop

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v3, p0, Loqm;->e:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    iput-wide v4, p0, Loqm;->f:J

    nop

    :cond_9
    iput v2, p0, Loqm;->h:I

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Loqm;->c:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
