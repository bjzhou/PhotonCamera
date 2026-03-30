.class public final Lmlg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmlf;


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field private final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

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

    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_22

    nop

    nop

    :goto_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "\'VID\'_yyyyMMdd_HHmmss"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/text/SimpleDateFormat;

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

    nop

    :goto_b
    const-string v1, "\'PANO\'_yyyyMMdd_HHmmss"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lmlg;->a:Ljava/text/SimpleDateFormat;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_10
    const-string v1, "\'MVIMG\'_yyyyMMdd_HHmmss"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_14

    nop

    nop

    :goto_12
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/text/SimpleDateFormat;

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

    :goto_15
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

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

    :goto_17
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    sput-object v0, Lmlg;->b:Ljava/text/SimpleDateFormat;

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

    :goto_1d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1e
    const-string v1, "\'VID\'_yyyyMMdd_HHmmss_\'LS\'"

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

    :goto_1f
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    const v1, 0x10

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

    nop

    :goto_22
    sput-object v0, Lmlg;->c:Ljava/text/SimpleDateFormat;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmle;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljava/util/HashSet;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmlg;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lj$/util/DesugarCollections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

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

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(JLjava/text/DateFormat;)Ljava/lang/String;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    iget-object p2, p0, Lmlg;->d:Ljava/util/Set;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p2

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Lmlg;->d:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    iget-object v2, p0, Lmlg;->d:Ljava/util/Set;

    nop

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lmlg;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    nop

    move-object v0, v1

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    iget-object p0, p0, Lmlg;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p2

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_1
    monitor-exit p3

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/Date;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v0, 0x1e

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    :goto_c
    const-string p3, ""

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

    :goto_d
    monitor-enter p3

    nop

    :try_start_2
    invoke-virtual {p3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    monitor-exit p3

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_11
    add-int v0, v0, v1

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
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lmlg;->a:Ljava/text/SimpleDateFormat;

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

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lmlg;->da190e616797844b591057d0190e7728m(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(J)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lmlg;->da190e616797844b591057d0190e7728m(JLjava/text/DateFormat;)Ljava/lang/String;

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

    nop

    :goto_1
    sget-object v0, Lmlg;->c:Ljava/text/SimpleDateFormat;

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
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(J)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lmlg;->b:Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lmlg;->da190e616797844b591057d0190e7728m(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
