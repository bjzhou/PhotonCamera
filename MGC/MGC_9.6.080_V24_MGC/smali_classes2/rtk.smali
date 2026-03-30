.class public final Lrtk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Z

.field private final b:Lrts;

.field private c:J

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

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

    :goto_1
    sget-object v0, Lrts;->a:Lrts;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lrtk;->b:Lrts;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrts;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrtk;->b:Lrts;

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
.end method

.method public static b(Lrts;)Lrtk;
    .locals 5

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const/16 v3, 0x2d2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v3, v0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lrtk;

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

    :goto_9
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    :goto_d
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Lrtk;-><init>(Lrts;)V

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm()J
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrts;->a()J

    move-result-wide v0

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
    iget-wide v2, p0, Lrtk;->d:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

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

    :goto_3
    iget-wide v2, p0, Lrtk;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    :goto_5
    return-wide v0

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

    :goto_7
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lrtk;->b:Lrts;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_14

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-long/2addr v0, v2

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

    :goto_f
    iget-wide v0, p0, Lrtk;->c:J

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lrtk;->a:Z

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

    nop

    :goto_12
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    sub-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-wide p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lrtk;->d5484163cd8d335e6b17663474ff5f2bm()J

    move-result-wide v0

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public final c()Lj$/time/Duration;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_4

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
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

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

    :goto_7
    invoke-static {v0, v1}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lrtk;->d5484163cd8d335e6b17663474ff5f2bm()J

    move-result-wide v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_5

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

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Lrtk;->c:J

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    const v0, 0x1e

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lrtk;->a:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iput-wide v0, p0, Lrtk;->d:J

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

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    iput-boolean v1, p0, Lrtk;->a:Z

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

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lrts;->a()J

    move-result-wide v0

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
    iget-boolean v0, p0, Lrtk;->a:Z

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v2, "This stopwatch is already running."

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrtk;->b:Lrts;

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

    :goto_11
    xor-int/2addr v0, v1

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

    :goto_12
    const v0, 0xf

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
.end method

.method public final f()V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iget-boolean v2, p0, Lrtk;->a:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    sub-long/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrtk;->b:Lrts;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    invoke-virtual {v0}, Lrts;->a()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iput-boolean v2, p0, Lrtk;->a:Z

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

    :goto_c
    const-string v3, "This stopwatch is already stopped."

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-long/2addr v2, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iput-wide v2, p0, Lrtk;->c:J

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, p0, Lrtk;->c:J

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
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    iget-wide v4, p0, Lrtk;->d:J

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

    :goto_14
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-static {v2, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/AssertionError;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const-string p0, "s"

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_9
    if-gtz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_a
    long-to-double v2, v2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_d
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    :goto_e
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_10
    cmp-long p0, v2, v4

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13
    goto :goto_e

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_15
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string p0, "min"

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    cmp-long p0, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_19
    cmp-long p0, v2, v4

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_1c

    nop

    nop

    :pswitch_0
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1b
    const-string p0, "ns"

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_1c

    nop

    nop

    :pswitch_1
    goto/32 :goto_3c

    nop

    nop

    :goto_1e
    const-wide/16 v4, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    cmp-long p0, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :goto_27
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Lrtk;->d5484163cd8d335e6b17663474ff5f2bm()J

    move-result-wide v0

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string p0, "ms"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lrtj;->a:[I

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2f
    const-string v1, "%.4g"

    nop

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

    :goto_30
    invoke-static {v4, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_31
    goto/16 :goto_e

    nop

    nop

    :goto_32
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    cmp-long p0, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

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

    nop

    :goto_35
    aget p0, v1, p0

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_36
    if-gtz p0, :cond_1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_37
    const-string v0, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_38
    long-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    const-wide/16 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_1c

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3c
    const-string p0, "\u03bcs"

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3d
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_3e
    if-gtz p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_40
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_41
    const-string p0, "d"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_43
    goto/16 :goto_1c

    nop

    :pswitch_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_46
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

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

    :goto_47
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string p0, "h"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_49
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto/32 :goto_21

    nop

    nop

    :goto_4a
    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4b
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4c
    div-double/2addr v0, v2

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_4d
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_2

    nop

    :goto_4e
    if-gtz p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_1c

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-gtz p0, :cond_5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    :goto_51
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_5d

    nop

    nop

    :goto_53
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_54
    add-int v0, v0, v1

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

    :goto_55
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_56
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_57
    goto/16 :goto_e

    nop

    nop

    :goto_58
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_59
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    cmp-long p0, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5c
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5d
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

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

    :goto_5e
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5f
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_1c

    nop

    :pswitch_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-gtz p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_63
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop
.end method
