.class public final Ltff;
.super Ltdx;
.source "PG"


# static fields
.field public static final a:Ltdy;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Lthn;)Ljava/util/Date;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    :try_start_0
    iget-object p0, p0, Ltff;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/text/DateFormat;

    nop

    invoke-virtual {v2}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    throw p0

    nop

    :catch_0
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance p0, Ljava/text/ParsePosition;

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    invoke-direct {p0, v0}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {v1, p0}, Lthd;->a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ltff;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, p1, p0}, Ltdu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const-string v2, "\' as Date; at path "

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, p1, v0, v2}, Lfey;->f(Ljava/lang/String;Lthn;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    :goto_a
    goto/32 :goto_14

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    throw v3

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    monitor-exit v0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v3, Ltdu;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "Failed parsing \'"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x19

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lthn;->j()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ltfe;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    new-instance v0, Ltfe;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ltff;->a:Ltdy;

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
.end method

.method public constructor <init>()V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    goto/32 :goto_15

    nop

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

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    const-string v1, "MMM d, yyyy h:mm:ss a"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ltdx;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Ltff;->b:Ljava/util/List;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v1, p0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_12
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

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

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-static {}, Ltek;->a()Z

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    invoke-virtual {p0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p0, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    const/4 v1, 0x2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_1a

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lthn;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltff;->33f5b80483094659737b73d90f80a8a4m(Lthn;)Ljava/util/Date;

    move-result-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    const v0, 0x1e

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
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lthn;->t()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    const-string v2, "DefaultDateTypeAdapter("

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Ljava/text/DateFormat;

    nop

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

    :goto_6
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, ")"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    :goto_c
    instance-of v0, p0, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ljava/text/SimpleDateFormat;

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

    nop

    nop

    :goto_11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x11

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Ltff;->b:Ljava/util/List;

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

    nop

    :goto_1b
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

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

    :goto_1e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    :goto_21
    const/4 v0, 0x0

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
.end method
