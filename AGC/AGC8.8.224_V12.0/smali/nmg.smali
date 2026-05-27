.class public final Lnmg;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    invoke-static {v0, v1}, Lnmg;->b(J)V

    invoke-static {v2, v3}, Lnmg;->b(J)V

    invoke-static {v0, v1}, Lnmg;->a(J)Lj$/time/Instant;

    invoke-static {v2, v3}, Lnmg;->a(J)Lj$/time/Instant;

    sget-object v0, Lj$/time/Instant;->MIN:Lj$/time/Instant;

    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    sget-object v0, Lj$/time/Instant;->MAX:Lj$/time/Instant;

    invoke-virtual {v0}, Lj$/time/Instant;->getEpochSecond()J

    return-void
.end method

.method public static a(J)Lj$/time/Instant;
    .locals 3

    const-wide/32 v0, 0x3b9aca00

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, p1, v0, v1, v2}, Lnsy;->af(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    const v2, 0x3b9aca00

    invoke-static {p0, p1, v2}, Lnsy;->ab(JI)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static b(J)V
    .locals 3

    const-wide/32 v0, 0xf4240

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, p1, v0, v1, v2}, Lnsy;->af(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    const v2, 0xf4240

    invoke-static {p0, p1, v2}, Lnsy;->ab(JI)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    return-void
.end method
