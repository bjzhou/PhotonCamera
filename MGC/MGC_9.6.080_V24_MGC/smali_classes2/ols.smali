.class public final Lols;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lols;


# instance fields
.field public final a:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lols;->b:Ljava/lang/Object;

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

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lols;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public static a()Lols;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const v0, 0x13

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

    :goto_2
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

    :goto_3
    sget-object v0, Lols;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Lols;->c:Lols;

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lols;

    nop

    nop

    nop

    invoke-direct {v1}, Lols;-><init>()V

    sput-object v1, Lols;->c:Lols;

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    goto :goto_d

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lols;->c:Lols;

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

    :goto_6
    invoke-static {v0}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    sget-object v0, Lols;->c:Lols;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method private static d(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private static e(Landroid/content/ServiceConnection;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    instance-of p0, p0, Lokm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

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
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2}, Lols;->e(Landroid/content/ServiceConnection;)Z

    move-result v0

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

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Lols;->d(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lols;->a:Lj$/util/concurrent/ConcurrentHashMap;

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

    nop

    :goto_4
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    iget-object p0, p0, Lols;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    return-void

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

    :goto_9
    if-nez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    iget-object v0, p0, Lols;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Landroid/content/ServiceConnection;

    nop

    invoke-static {p1, v0}, Lols;->d(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-object v0, p0, Lols;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_e

    nop

    nop

    :goto_2
    invoke-virtual {p0, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4
    const v1, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_b

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

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    :try_start_0
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v3, 0x200000

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p0, "Attempted to bind to a service in a STOPPED package."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_1a

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Landroid/content/ServiceConnection;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    filled-new-array {p4, p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_13
    move v2, p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

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

    :goto_16
    goto :goto_f

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    invoke-static {p4}, Lols;->e(Landroid/content/ServiceConnection;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne p4, v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_1e
    const v0, 0xc

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lols;->a:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto :goto_1a

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    and-int/2addr v0, v3

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

    :goto_25
    const-string v3, "com.google.android.gms"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    return v2

    nop

    :goto_27
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_2b
    iget-object p0, p0, Lols;->a:Lj$/util/concurrent/ConcurrentHashMap;

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

    :goto_2c
    iget-object p0, p0, Lols;->a:Lj$/util/concurrent/ConcurrentHashMap;

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

    nop

    :goto_2d
    invoke-virtual {p0, p4, p4}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2f
    if-eqz p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, "ConnectionTracker"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :try_start_1
    invoke-static {p1}, Lomb;->b(Landroid/content/Context;)Lpic;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0, v2}, Lpic;->x(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    nop

    nop

    nop

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_9

    nop

    nop

    :goto_32
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    :goto_33
    const-string v0, "Duplicate binding with the same ServiceConnection: %s, %s, %s."

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method
