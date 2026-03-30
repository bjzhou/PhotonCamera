.class final Lj$/time/format/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lj$/time/temporal/TemporalAccessor;

.field private b:Lj$/time/format/DateTimeFormatter;

.field private c:I


# direct methods
.method constructor <init>(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lj$/time/format/DateTimeFormatter;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-virtual {p2}, Lj$/time/format/DateTimeFormatter;->d()Lj$/time/ZoneId;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {}, Lj$/time/temporal/k;->e()Lj$/time/temporal/p;

    move-result-object v2

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->C(Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/chrono/n;

    invoke-static {}, Lj$/time/temporal/k;->k()Lj$/time/temporal/p;

    move-result-object v3

    invoke-interface {p1, v3}, Lj$/time/temporal/TemporalAccessor;->C(Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/ZoneId;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v0, v5

    :cond_1
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz v0, :cond_4

    move-object v4, v0

    goto :goto_0

    :cond_4
    move-object v4, v2

    :goto_0
    if-eqz v1, :cond_8

    sget-object v6, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v0, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    invoke-static {v4, v0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/n;

    invoke-static {p1}, Lj$/time/Instant;->X(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lj$/time/chrono/n;->N(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/k;

    move-result-object p1

    goto/16 :goto_6

    :cond_5
    :try_start_0
    invoke-virtual {v1}, Lj$/time/ZoneId;->W()Lj$/time/zone/e;

    move-result-object v6

    invoke-virtual {v6}, Lj$/time/zone/e;->i()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    invoke-virtual {v6, v7}, Lj$/time/zone/e;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v6
    :try_end_0
    .catch Lj$/time/zone/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_6
    move-object v6, v1

    :goto_1
    instance-of v6, v6, Lj$/time/ZoneOffset;

    if-eqz v6, :cond_8

    sget-object v6, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p1, v6}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result v6

    invoke-virtual {v1}, Lj$/time/ZoneId;->W()Lj$/time/zone/e;

    move-result-object v7

    sget-object v8, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    invoke-virtual {v7, v8}, Lj$/time/zone/e;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v7

    invoke-virtual {v7}, Lj$/time/ZoneOffset;->d0()I

    move-result v7

    if-ne v6, v7, :cond_7

    goto :goto_2

    :cond_7
    new-instance p2, Lj$/time/b;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to apply override zone \'"

    const-string v2, "\' because the temporal object being formatted has a different offset but does not represent an instant: "

    invoke-static {v1, v0, v2, p1}, Lj$/time/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    move-object v3, v1

    :cond_9
    if-eqz v0, :cond_e

    sget-object v1, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v4, p1}, Lj$/time/chrono/n;->o(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object v5

    goto :goto_5

    :cond_a
    sget-object v1, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    if-ne v0, v1, :cond_b

    if-eqz v2, :cond_e

    :cond_b
    invoke-static {}, Lj$/time/temporal/a;->values()[Lj$/time/temporal/a;

    move-result-object v1

    array-length v2, v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_e

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lj$/time/temporal/a;->C()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {p1, v7}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_4

    :cond_c
    new-instance p2, Lj$/time/b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unable to apply override chronology \'"

    const-string v2, "\' because the temporal object being formatted contains date fields but does not represent a whole date: "

    invoke-static {v1, v0, v2, p1}, Lj$/time/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_e
    :goto_5
    new-instance v0, Lj$/time/format/u;

    invoke-direct {v0, v5, p1, v4, v3}, Lj$/time/format/u;-><init>(Lj$/time/chrono/b;Lj$/time/temporal/TemporalAccessor;Lj$/time/chrono/n;Lj$/time/ZoneId;)V

    move-object p1, v0

    :goto_6
    iput-object p1, p0, Lj$/time/format/v;->a:Lj$/time/temporal/TemporalAccessor;

    iput-object p2, p0, Lj$/time/format/v;->b:Lj$/time/format/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget v0, p0, Lj$/time/format/v;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lj$/time/format/v;->c:I

    return-void
.end method

.method final b()Lj$/time/format/z;
    .locals 1

    iget-object v0, p0, Lj$/time/format/v;->b:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->b()Lj$/time/format/z;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lj$/time/format/v;->b:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatter;->c()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method final d()Lj$/time/temporal/TemporalAccessor;
    .locals 1

    iget-object v0, p0, Lj$/time/format/v;->a:Lj$/time/temporal/TemporalAccessor;

    return-object v0
.end method

.method final e(Lj$/time/temporal/n;)Ljava/lang/Long;
    .locals 2

    iget v0, p0, Lj$/time/format/v;->c:I

    iget-object v1, p0, Lj$/time/format/v;->a:Lj$/time/temporal/TemporalAccessor;

    if-lez v0, :cond_0

    invoke-interface {v1, p1}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v1, p1}, Lj$/time/temporal/TemporalAccessor;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method final f(Lj$/time/temporal/p;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lj$/time/format/v;->a:Lj$/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->C(Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget v2, p0, Lj$/time/format/v;->c:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lj$/time/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to extract "

    const-string v3, " from temporal "

    invoke-static {v2, p1, v3, v0}, Lj$/time/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method final g()V
    .locals 1

    iget v0, p0, Lj$/time/format/v;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/time/format/v;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/format/v;->a:Lj$/time/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
