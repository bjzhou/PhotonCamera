.class public final Lnmf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lj$/time/Duration;

.field public static final b:D

.field public static final c:Lj$/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v2

    sput-object v2, Lnmf;->a:Lj$/time/Duration;

    invoke-virtual {v2}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v2

    long-to-double v2, v2

    sput-wide v2, Lnmf;->b:D

    const-wide v2, 0x7fffffffffffffffL

    const-wide/32 v4, 0x3b9ac9ff

    invoke-static {v2, v3, v4, v5}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v4

    sput-object v4, Lnmf;->c:Lj$/time/Duration;

    invoke-static {v2, v3}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    invoke-static {v2, v3}, Lnmf;->b(J)V

    invoke-static {v0, v1}, Lnmf;->b(J)V

    invoke-static {v2, v3}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    invoke-static {v0, v1}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    return-void
.end method

.method public static a(Lj$/time/Duration;)J
    .locals 7

    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide v2, -0x8637bd05af6L

    const-wide/32 v4, 0xf4240

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1, v4, v5}, Lnsy;->ad(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    const v2, -0xf4240

    add-int/2addr p0, v2

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Lnsy;->ac(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lnsy;->ad(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Lnsy;->ac(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)V
    .locals 1

    sget-object v0, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    invoke-static {p0, p1, v0}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    return-void
.end method
