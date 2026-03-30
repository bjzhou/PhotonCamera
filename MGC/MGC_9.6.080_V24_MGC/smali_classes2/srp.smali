.class public final Lsrp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lj$/time/Duration;

.field public static final b:D

.field public static final c:Lj$/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v4, v5}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-static {v4, v5, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v4, v5}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Lsrp;->b(J)Lj$/time/Duration;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v2, Lsrp;->c:Lj$/time/Duration;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v4, v5}, Lsrp;->b(J)Lj$/time/Duration;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    goto/32 :goto_7

    nop

    nop

    :goto_10
    sput-wide v2, Lsrp;->b:D

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_12
    sput-object v2, Lsrp;->a:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v2

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    const-wide v4, 0x7fffffffffffffffL

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    const-wide/32 v2, 0x3b9ac9ff

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    :goto_18
    const-wide/high16 v0, -0x8000000000000000L

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    long-to-double v2, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Lj$/time/Duration;)J
    .locals 7

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v4, v1, v2}, Lrrf;->ad(JJ)J

    move-result-wide v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/32 v1, 0xf4240

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

    :goto_5
    if-ltz v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    const-wide v2, -0x8637bd05af6L

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v5, 0x1

    nop

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
    invoke-static {v0, v1, v2, v3}, Lrrf;->ac(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const v2, -0xf4240

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-static {v3, v4, v1, v2}, Lrrf;->ad(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    cmp-long v0, v0, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-long/2addr v3, v5

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    int-to-long v2, p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    :goto_13
    return-wide v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    div-int/lit16 p0, p0, 0x3e8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    div-int/lit16 p0, p0, 0x3e8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    add-int/2addr p0, v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    invoke-static {v0, v1, v2, v3}, Lrrf;->ac(JJ)J

    move-result-wide v0

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

    :goto_19
    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result p0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

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

    :goto_1e
    int-to-long v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop
.end method

.method public static b(J)Lj$/time/Duration;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, v0}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object p0

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
.end method

.method public static c(Lj$/time/Duration;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lj$/time/Duration;->isNegative()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    invoke-virtual {p0}, Lj$/time/Duration;->isZero()Z

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop
.end method
