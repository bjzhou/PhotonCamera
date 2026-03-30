.class public final Lthj;
.super Ltdx;
.source "PG"


# static fields
.field static final a:Ltdy;


# instance fields
.field private final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lthj;->a:Ltdy;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ltfg;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v0, 0x14

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ltfg;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const-string v1, "hh:mm:ss a"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

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
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

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

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/text/SimpleDateFormat;

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lthj;->b:Ljava/text/DateFormat;

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

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lthn;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

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
    const/4 v0, 0x1

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
    new-array v0, v0, [Ljava/lang/Object;

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

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ljava/sql/Time;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    const/4 v2, 0x0

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

    :goto_a
    const/16 v2, 0x3a7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    aput-object p1, v0, v2

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
.end method

.method public final c(Lthn;)Ljava/sql/Time;
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lthn;->j()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    const v1, 0x12

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    invoke-virtual {p1}, Lthn;->t()I

    move-result v0

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

    :goto_7
    goto :goto_8

    nop

    nop

    nop

    :catch_0
    move-exception v2

    nop

    nop

    :try_start_0
    new-instance v3, Ltdu;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "Failed parsing \'"

    nop

    const-string v5, "\' as SQL Time; at path "

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1, v4, v5}, Lfey;->f(Ljava/lang/String;Lthn;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, p1, v2}, Ltdu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_8
    :try_start_1
    iget-object v0, p0, Lthj;->b:Ljava/text/DateFormat;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    throw p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    return-object v3

    nop

    nop

    nop

    :catchall_1
    move-exception p1

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

    :goto_a
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_10

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-object v1, p0, Lthj;->b:Ljava/text/DateFormat;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lthj;->b:Ljava/text/DateFormat;

    nop

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/sql/Time;

    nop

    nop

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    nop

    nop

    invoke-direct {v3, v4, v5}, Ljava/sql/Time;-><init>(J)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Lthj;->b:Ljava/text/DateFormat;

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_12
    goto/32 :goto_c

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
