.class final Lj$/time/temporal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/n;


# static fields
.field private static final f:Lj$/time/temporal/r;

.field private static final g:Lj$/time/temporal/r;

.field private static final h:Lj$/time/temporal/r;

.field private static final i:Lj$/time/temporal/r;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lj$/time/temporal/t;

.field private final c:Ljava/lang/Enum;

.field private final d:Ljava/lang/Enum;

.field private final e:Lj$/time/temporal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/s;->f:Lj$/time/temporal/r;

    const-wide/16 v5, 0x6

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x4

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/s;->g:Lj$/time/temporal/r;

    const-wide/16 v5, 0x36

    const-wide/16 v3, 0x34

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/s;->h:Lj$/time/temporal/r;

    const-wide/16 v3, 0x34

    const-wide/16 v5, 0x35

    const-wide/16 v1, 0x1

    invoke-static/range {v1 .. v6}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object v0

    sput-object v0, Lj$/time/temporal/s;->i:Lj$/time/temporal/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lj$/time/temporal/t;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/temporal/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/t;

    check-cast p3, Ljava/lang/Enum;

    iput-object p3, p0, Lj$/time/temporal/s;->c:Ljava/lang/Enum;

    check-cast p4, Ljava/lang/Enum;

    iput-object p4, p0, Lj$/time/temporal/s;->d:Ljava/lang/Enum;

    iput-object p5, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    return-void
.end method

.method private static a(II)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x7

    return p1
.end method

.method private b(Lj$/time/temporal/TemporalAccessor;)I
    .locals 2

    iget-object v0, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/t;

    invoke-virtual {v0}, Lj$/time/temporal/t;->d()Lj$/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/c;->getValue()I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result p1

    sub-int/2addr p1, v0

    rem-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    xor-int/lit8 p1, p1, 0x7

    shr-int/lit8 p1, p1, 0x1f

    or-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x7

    :goto_0
    move p1, v0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private c(Lj$/time/temporal/TemporalAccessor;)I
    .locals 4

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v2

    invoke-direct {p0, v2, v0}, Lj$/time/temporal/s;->j(II)I

    move-result v0

    invoke-static {v0, v2}, Lj$/time/temporal/s;->a(II)I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lj$/time/chrono/i;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/n;->o(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object p1

    int-to-long v0, v2

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->O(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->c(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    return p1

    :cond_0
    const/16 v2, 0x32

    if-le v3, v2, :cond_1

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/r;->d()J

    move-result-wide v1

    long-to-int p1, v1

    iget-object v1, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/t;

    invoke-virtual {v1}, Lj$/time/temporal/t;->e()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    if-lt v3, p1, :cond_1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    return v3
.end method

.method static d(Lj$/time/temporal/t;)Lj$/time/temporal/s;
    .locals 7

    new-instance v6, Lj$/time/temporal/s;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    sget-object v5, Lj$/time/temporal/s;->f:Lj$/time/temporal/r;

    const-string v1, "DayOfWeek"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/s;-><init>(Ljava/lang/String;Lj$/time/temporal/t;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/r;)V

    return-object v6
.end method

.method static e(Lj$/time/temporal/t;)Lj$/time/temporal/s;
    .locals 7

    new-instance v6, Lj$/time/temporal/s;

    sget-object v3, Lj$/time/temporal/h;->d:Lj$/time/temporal/TemporalUnit;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->k()Lj$/time/temporal/r;

    move-result-object v5

    const-string v1, "WeekBasedYear"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/s;-><init>(Ljava/lang/String;Lj$/time/temporal/t;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/r;)V

    return-object v6
.end method

.method static f(Lj$/time/temporal/t;)Lj$/time/temporal/s;
    .locals 7

    new-instance v6, Lj$/time/temporal/s;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    sget-object v5, Lj$/time/temporal/s;->g:Lj$/time/temporal/r;

    const-string v1, "WeekOfMonth"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/s;-><init>(Ljava/lang/String;Lj$/time/temporal/t;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/r;)V

    return-object v6
.end method

.method static g(Lj$/time/temporal/t;)Lj$/time/temporal/s;
    .locals 7

    new-instance v6, Lj$/time/temporal/s;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    sget-object v4, Lj$/time/temporal/h;->d:Lj$/time/temporal/TemporalUnit;

    sget-object v5, Lj$/time/temporal/s;->i:Lj$/time/temporal/r;

    const-string v1, "WeekOfWeekBasedYear"

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/s;-><init>(Ljava/lang/String;Lj$/time/temporal/t;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/TemporalUnit;Lj$/time/temporal/r;)V

    return-object v6
.end method

.method private h(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/r;
    .locals 3

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lj$/time/temporal/s;->j(II)I

    move-result v0

    invoke-interface {p1, p2}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/r;->e()J

    move-result-wide v1

    long-to-int p2, v1

    invoke-static {v0, p2}, Lj$/time/temporal/s;->a(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1}, Lj$/time/temporal/r;->d()J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {v0, p2}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    int-to-long p1, p1

    invoke-static {v1, v2, p1, p2}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method private i(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;
    .locals 6

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lj$/time/temporal/s;->h:Lj$/time/temporal/r;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v1

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lj$/time/temporal/s;->j(II)I

    move-result v1

    invoke-static {v1, v2}, Lj$/time/temporal/s;->a(II)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lj$/time/chrono/i;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/n;->o(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object p1

    add-int/lit8 v2, v2, 0x7

    int-to-long v0, v2

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->O(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->i(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/r;->d()J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v4, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/t;

    invoke-virtual {v4}, Lj$/time/temporal/t;->e()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v1, v4}, Lj$/time/temporal/s;->a(II)I

    move-result v1

    if-lt v3, v1, :cond_2

    invoke-static {p1}, Lj$/time/chrono/i;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/n;

    move-result-object v1

    invoke-interface {v1, p1}, Lj$/time/chrono/n;->o(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object p1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Lj$/time/chrono/b;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->i(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    int-to-long v0, v1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method private j(II)I
    .locals 2

    sub-int/2addr p1, p2

    rem-int/lit8 p2, p1, 0x7

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    xor-int/lit8 p1, p1, 0x7

    shr-int/lit8 p1, p1, 0x1f

    or-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x7

    :goto_0
    move p1, p2

    :goto_1
    neg-int p2, p1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/t;

    invoke-virtual {v1}, Lj$/time/temporal/t;->e()I

    move-result v1

    if-le v0, v1, :cond_2

    rsub-int/lit8 p2, p1, 0x7

    :cond_2
    return p2
.end method


# virtual methods
.method public final C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()Lj$/time/temporal/r;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    return-object v0
.end method

.method public final n(Lj$/time/temporal/TemporalAccessor;)J
    .locals 6

    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/s;->d:Ljava/lang/Enum;

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lj$/time/temporal/s;->j(II)I

    move-result v0

    invoke-static {v0, p1}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lj$/time/temporal/s;->j(II)I

    move-result v0

    invoke-static {v0, p1}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    sget-object v0, Lj$/time/temporal/t;->h:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_3

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->c(Lj$/time/temporal/TemporalAccessor;)I

    move-result p1

    goto :goto_0

    :cond_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_6

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result v0

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v1

    sget-object v2, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v3

    invoke-direct {p0, v3, v0}, Lj$/time/temporal/s;->j(II)I

    move-result v0

    invoke-static {v0, v3}, Lj$/time/temporal/s;->a(II)I

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/r;->d()J

    move-result-wide v4

    long-to-int p1, v4

    iget-object v2, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/t;

    invoke-virtual {v2}, Lj$/time/temporal/t;->e()I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v0, v2}, Lj$/time/temporal/s;->a(II)I

    move-result p1

    if-lt v3, p1, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    :goto_1
    int-to-long v0, v1

    return-wide v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unreachable, rangeUnit: "

    const-string v3, ", this: "

    invoke-static {v2, v0, v3, v1}, Lj$/time/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final r(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 2

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/s;->d:Ljava/lang/Enum;

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result p1

    return p1

    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result p1

    return p1

    :cond_2
    sget-object v0, Lj$/time/temporal/t;->h:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_3

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result p1

    return p1

    :cond_3
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_4

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final s(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 4

    iget-object v0, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/n;)I

    move-result v0

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object v2, p0, Lj$/time/temporal/s;->d:Ljava/lang/Enum;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/t;

    invoke-static {v0}, Lj$/time/temporal/t;->a(Lj$/time/temporal/t;)Lj$/time/temporal/n;

    move-result-object v1

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v1

    invoke-static {v0}, Lj$/time/temporal/t;->b(Lj$/time/temporal/t;)Lj$/time/temporal/n;

    move-result-object v2

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v2

    invoke-static {p1}, Lj$/time/chrono/i;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/n;

    move-result-object p1

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lj$/time/chrono/n;->J(I)Lj$/time/chrono/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->b(Lj$/time/temporal/TemporalAccessor;)I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p3, p2}, Lj$/time/temporal/s;->j(II)I

    move-result p2

    invoke-interface {p1}, Lj$/time/chrono/b;->P()I

    move-result v3

    invoke-virtual {v0}, Lj$/time/temporal/t;->e()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p2, v0}, Lj$/time/temporal/s;->a(II)I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    neg-int p2, p2

    sub-int/2addr v1, p3

    add-int/2addr v1, p2

    sub-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    int-to-long p2, v0

    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/chrono/b;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr v0, v1

    int-to-long p2, v0

    iget-object v0, p0, Lj$/time/temporal/s;->c:Ljava/lang/Enum;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/Temporal;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/temporal/s;->b:Lj$/time/temporal/t;

    invoke-virtual {v0}, Lj$/time/temporal/t;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lj$/time/temporal/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;
    .locals 4

    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    iget-object v1, p0, Lj$/time/temporal/s;->d:Ljava/lang/Enum;

    if-ne v1, v0, :cond_0

    iget-object p1, p0, Lj$/time/temporal/s;->e:Lj$/time/temporal/r;

    return-object p1

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-direct {p0, p1, v0}, Lj$/time/temporal/s;->h(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne v1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-direct {p0, p1, v0}, Lj$/time/temporal/s;->h(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v0, Lj$/time/temporal/t;->h:Lj$/time/temporal/TemporalUnit;

    if-ne v1, v0, :cond_3

    invoke-direct {p0, p1}, Lj$/time/temporal/s;->i(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    if-ne v1, p1, :cond_4

    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->k()Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unreachable, rangeUnit: "

    const-string v3, ", this: "

    invoke-static {v2, v0, v3, v1}, Lj$/time/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
