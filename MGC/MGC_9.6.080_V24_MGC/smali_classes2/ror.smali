.class public final Lror;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/WeakHashMap;

.field public static final b:Ljava/lang/ThreadLocal;

.field private static final c:Lryy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    const-string v6, "com.google.android.libraries.performance.primes.metrics.crash.applicationexit.ApplicationExitMetricServiceImpl"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    const v1, 0x14

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lror;->a:Ljava/util/WeakHashMap;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    new-instance v0, Lrom;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    new-instance v0, Ljava/util/WeakHashMap;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lror;->b:Ljava/lang/ThreadLocal;

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

    :goto_d
    invoke-direct {v0}, Lroq;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    const-string v5, "com.google.android.libraries.performance.primes.metrics.crash.CrashMetricServiceImpl.isCrashLoopMonitorEnabled"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Lrom;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    new-array v7, v0, [Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lror;->c:Lryy;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lroq;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v4, "com.google.android.libraries.performance.primes.transmitter.clearcut"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Ljava/util/ArrayDeque;

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
    const-string v2, "androidx.activity.OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v3, "com.google.android.libraries.logging.logger.transmitters.clearcut"

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1b
    invoke-static/range {v1 .. v7}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/util/ArrayDeque;

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

    :goto_1f
    const-string v1, "android.support.v4.app.FragmentViewLifecycleOwner.handleLifecycleEvent"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public static a()Lrpd;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lror;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, Lrpd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method static b()Lrpe;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

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

    :goto_1
    new-instance v1, Lrot;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lrot;->a:Lroh;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lror;->a()Lrpd;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Lrpd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x16

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

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Lroh;

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

    nop

    :goto_e
    invoke-direct {v1, v2, v0}, Lrot;-><init>(Ljava/lang/Exception;Lrpd;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_13
    invoke-direct {v1}, Lroh;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Lrpd;Lrpe;)Lrpe;
    .locals 3

    goto/32 :goto_2b

    nop

    nop

    :goto_0
    goto/16 :goto_36

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lron;->a()Z

    move-result v1

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

    :goto_3
    iget-boolean v1, p0, Lrpd;->a:Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrpd;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_7
    move-object v1, p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lror;->f(Lrpe;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lrpe;->a()Lrpe;

    move-result-object v1

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

    :goto_a
    rem-int v0, v0, v1

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

    nop

    :goto_b
    invoke-interface {v0}, Lrpe;->a()Lrpe;

    move-result-object v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lrpd;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_f
    iput-boolean v1, p0, Lrpd;->a:Z

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_3

    nop

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

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Lror;->d(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Lrpe;->b()Ljava/lang/String;

    move-result-object v1

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

    nop

    :goto_15
    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

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

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lrpd;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    if-eq v0, p1, :cond_5

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

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    :goto_1d
    goto :goto_2d

    nop

    nop

    :goto_1e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object p1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_16

    nop

    nop

    :goto_22
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v1, v2

    nop

    nop

    :goto_24
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object p1

    nop

    nop

    :goto_26
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_36

    nop

    nop

    :goto_2a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v1, p1

    nop

    nop

    :goto_2d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_7

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lrpd;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eq v1, p1, :cond_8

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_23

    nop

    nop

    :goto_33
    goto/32 :goto_28

    nop

    :goto_34
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_e

    nop

    nop

    :goto_35
    invoke-static {v1}, Lror;->e(Lrpe;)V

    :goto_36
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

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

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    if-gt v0, v1, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const/16 v1, 0x7f

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_c
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop
.end method

.method private static e(Lrpe;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lror;->d(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lrpe;->a()Lrpe;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lrpe;->a()Lrpe;

    move-result-object v0

    nop

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

    :goto_4
    invoke-static {v0}, Lror;->e(Lrpe;)V

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lrpe;->b()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop
.end method

.method private static f(Lrpe;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lror;->f(Lrpe;)V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lrpe;->a()Lrpe;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lrpe;->a()Lrpe;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1

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
.end method
