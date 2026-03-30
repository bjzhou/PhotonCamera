.class public final Locl;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/text/SimpleDateFormat;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public final d:Locj;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lsuj;

.field public final g:Lsip;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Loct;

.field private final j:Locv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Locl;->a:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const-string v0, "bytes (\\d+)-(\\d+)/(\\d+|\\*)"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

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

    :goto_9
    sput-object v0, Locl;->c:Ljava/lang/Object;

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

    :goto_a
    throw v1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    nop

    nop

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Locl;->b:Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    const-string v2, "UTC"

    nop

    nop

    nop

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    :goto_10
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public constructor <init>(Loct;Locj;Locv;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljbm;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljbm;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lsuj;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iput-object p1, p0, Locl;->i:Loct;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x3

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

    :goto_7
    invoke-direct {v0}, Lsip;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

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

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Locl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Locl;->d:Locj;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v0}, Lsuj;-><init>(Ljava/util/concurrent/Callable;)V

    goto/32 :goto_17

    nop

    nop

    :goto_13
    iput-object p3, p0, Locl;->j:Locv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    iput-object v0, p0, Locl;->g:Lsip;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    :goto_16
    new-instance v0, Lsip;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, p0, Locl;->f:Lsuj;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p4, p0, Locl;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public static varargs a(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

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

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Locg;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Locg;

    nop

    goto/32 :goto_0

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

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static c(Locb;)J
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_f

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Locl;->c:Ljava/lang/Object;

    nop

    nop

    monitor-enter v0

    nop
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Locl;->b:Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_14

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    :goto_b
    check-cast p0, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    invoke-direct {v2, p0, v0}, Locg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    const-string v0, "Last-Modified"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

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

    :goto_13
    throw v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_16
    const/4 v0, 0x0

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

    :goto_17
    new-instance v2, Locg;

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

    :goto_18
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_19
    const-string v1, "Invalid Last-Modified header: "

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    :goto_1b
    invoke-virtual {p0}, Locb;->b()Ljava/util/Map;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    :try_start_2
    new-instance v0, Locg;

    nop

    const-string v1, "Invalid Last-Modified header: "

    nop

    invoke-static {p0, v1}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-direct {v0, v1}, Locg;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v0

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    return-wide v0

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

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
.end method


# virtual methods
.method public final b(Ljava/net/URI;)Lsub;
    .locals 9

    goto/32 :goto_e

    nop

    nop

    :goto_0
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1
    const/4 v7, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_3
    new-instance v2, Llbc;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4
    invoke-direct {v2, v0, v4}, Llbc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, v1, Locj;->b:Lryt;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_7
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljuu;

    nop

    nop

    nop

    goto/32 :goto_c

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

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, v1, Locj;->f:Lram;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Locl;->e:Ljava/util/concurrent/Executor;

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

    :goto_c
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, p0, p1, v3}, Lkny;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_50

    nop

    nop

    :goto_e
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x4

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

    :goto_10
    invoke-static {v0, v1, v2}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v4, v3, Lutp;->e:Z

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Locl;->j:Locv;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_15
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    new-instance v1, Ljjo;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Locl;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_19
    invoke-direct {v1, v2}, Ljjo;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_1a
    check-cast v3, Lutp;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_1e
    iget-object v1, p0, Locl;->d:Locj;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Lsub;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1, v2, p0}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v2, v4}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v3, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    const-class v3, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v1, p0, v2}, Ljuu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_48

    nop

    nop

    :goto_28
    invoke-virtual {v1}, Lram;->b()Lsui;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct/range {v2 .. v7}, Lock;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0, v1}, Locv;->b(Ljava/lang/String;)Lnar;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v8, Lock;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_53

    nop

    :goto_2d
    move-object v2, v8

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

    :goto_2e
    move-object v3, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Lrxq;->em()Lscp;

    move-result-object v1

    nop

    nop

    :goto_30
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v3, Lstd;->a:Lstd;

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

    :goto_32
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v2, Lock;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_34
    invoke-static {v1, v8, v2}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_35
    const/16 v4, 0x10

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v3, v2}, Lnar;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v3, 0x5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_42

    nop

    nop

    :goto_3a
    invoke-static {v0, v3, v1, v2}, Lsrv;->j(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v1}, Lryt;->a()Lrxq;

    move-result-object v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget v2, v1, Locj;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1, v2, v3}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v0, v1, v2}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_40
    invoke-direct {v1, v3}, Ljjo;-><init>(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v1}, Lsub;->q(Lsui;)Lsub;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_42
    iget-object v1, p0, Locl;->d:Locj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_43
    sget-object v0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput v2, v3, Lutp;->f:I

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_47
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Locl;->e:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p0, p0, Locl;->e:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v1, v2, v0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v2, p0, v0, p1, v3}, Lock;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4c
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4d
    if-nez v2, :cond_2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object v5, v0

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

    :goto_4f
    new-instance v2, Lkny;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_50
    iget-object v4, p0, Locl;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {v2, p0, v0, v3, v4}, Lkny;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_1c

    nop

    nop

    :goto_54
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_55
    new-instance v2, Lkny;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_56
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v1, Ljjo;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop
.end method

.method public final d(Locb;)Lsui;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Locb;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3
    new-instance p0, Locg;

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

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1, v0, p0}, Locg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_10

    nop

    nop

    :goto_9
    const v1, 0xa

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ge v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Locg;

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

    :goto_e
    iget-object v0, p1, Locb;->d:Ljava/lang/String;

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

    :goto_f
    const/16 v1, 0x12c

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

    :goto_10
    invoke-static {p1}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    :goto_16
    if-le v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Locb;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    :goto_1a
    const/16 v1, 0x190

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ge v0, v1, :cond_3

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

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p1, "Too many redirects"

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

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "Unable to parse redirect url"

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_20
    return-object p0

    nop

    :catch_0
    move-exception p0

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

    :goto_21
    new-instance p0, Locg;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "Unable to close response for redirect"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_24
    invoke-direct {p0, p1}, Locg;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_26
    invoke-direct {p1, v0, p0}, Locg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p1, Locg;

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

    :goto_29
    const/16 v1, 0x14

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

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Locl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_2d
    const-string p1, "Redirect response with no redirect url given"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    :goto_2f
    :try_start_1
    new-instance v0, Ljava/net/URI;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Locb;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Locl;->b(Ljava/net/URI;)Lsub;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, p1}, Locg;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop
.end method
