.class final Lj$/time/format/r;
.super Lj$/time/format/l;


# instance fields
.field private g:C

.field private h:I


# direct methods
.method constructor <init>(CIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lj$/time/format/r;-><init>(CIIII)V

    return-void
.end method

.method constructor <init>(CIIII)V
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Lj$/time/format/B;->NOT_NEGATIVE:Lj$/time/format/B;

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/l;-><init>(Lj$/time/temporal/l;IILj$/time/format/B;I)V

    iput-char p1, p0, Lj$/time/format/r;->g:C

    iput p2, p0, Lj$/time/format/r;->h:I

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/w;Ljava/lang/StringBuilder;)Z
    .locals 7

    invoke-virtual {p1}, Lj$/time/format/w;->c()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/s;->h:Lj$/time/temporal/TemporalUnit;

    if-eqz v0, :cond_6

    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sget-object v2, Lj$/time/c;->SUNDAY:Lj$/time/c;

    add-int/lit8 v1, v1, -0x1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lj$/time/c;->r(J)Lj$/time/c;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-static {v1, v0}, Lj$/time/temporal/s;->f(Lj$/time/c;I)Lj$/time/temporal/s;

    move-result-object v0

    iget-char v1, p0, Lj$/time/format/r;->g:C

    const/16 v2, 0x57

    if-eq v1, v2, :cond_5

    const/16 v2, 0x59

    if-eq v1, v2, :cond_2

    const/16 v2, 0x63

    if-eq v1, v2, :cond_1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lj$/time/temporal/s;->i()Lj$/time/temporal/l;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Lj$/time/temporal/s;->c()Lj$/time/temporal/l;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lj$/time/temporal/s;->g()Lj$/time/temporal/l;

    move-result-object v2

    iget v3, p0, Lj$/time/format/r;->h:I

    const/4 v0, 0x2

    if-ne v3, v0, :cond_3

    new-instance v0, Lj$/time/format/o;

    sget-object v1, Lj$/time/format/o;->i:Lj$/time/g;

    iget v3, p0, Lj$/time/format/l;->e:I

    invoke-direct {v0, v2, v1, v3}, Lj$/time/format/o;-><init>(Lj$/time/temporal/l;Lj$/time/g;I)V

    goto :goto_2

    :cond_3
    new-instance v0, Lj$/time/format/l;

    const/16 v4, 0x13

    const/4 v1, 0x4

    if-ge v3, v1, :cond_4

    sget-object v1, Lj$/time/format/B;->NORMAL:Lj$/time/format/B;

    goto :goto_0

    :cond_4
    sget-object v1, Lj$/time/format/B;->EXCEEDS_PAD:Lj$/time/format/B;

    :goto_0
    move-object v5, v1

    iget v6, p0, Lj$/time/format/l;->e:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lj$/time/format/l;-><init>(Lj$/time/temporal/l;IILj$/time/format/B;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lj$/time/temporal/s;->h()Lj$/time/temporal/l;

    move-result-object v0

    :goto_1
    move-object v2, v0

    new-instance v0, Lj$/time/format/l;

    iget v3, p0, Lj$/time/format/l;->b:I

    iget v4, p0, Lj$/time/format/l;->c:I

    sget-object v5, Lj$/time/format/B;->NOT_NEGATIVE:Lj$/time/format/B;

    iget v6, p0, Lj$/time/format/l;->e:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lj$/time/format/l;-><init>(Lj$/time/temporal/l;IILj$/time/format/B;I)V

    :goto_2
    invoke-interface {v0, p1, p2}, Lj$/time/format/g;->a(Lj$/time/format/w;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locale"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final d()Lj$/time/format/l;
    .locals 8

    iget v0, p0, Lj$/time/format/l;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/format/r;

    iget-char v3, p0, Lj$/time/format/r;->g:C

    iget v4, p0, Lj$/time/format/r;->h:I

    iget v5, p0, Lj$/time/format/l;->b:I

    iget v6, p0, Lj$/time/format/l;->c:I

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/time/format/r;-><init>(CIIII)V

    :goto_0
    return-object v0
.end method

.method final e(I)Lj$/time/format/l;
    .locals 7

    new-instance v6, Lj$/time/format/r;

    iget-char v1, p0, Lj$/time/format/r;->g:C

    iget v2, p0, Lj$/time/format/r;->h:I

    iget v3, p0, Lj$/time/format/l;->b:I

    iget v4, p0, Lj$/time/format/l;->c:I

    iget v0, p0, Lj$/time/format/l;->e:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/r;-><init>(CIIII)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lj$/time/format/r;->g:C

    const/16 v2, 0x59

    if-ne v1, v2, :cond_3

    iget v1, p0, Lj$/time/format/r;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "WeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "ReducedValue(WeekBasedYear,2,2,2000-01-01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v1, "WeekBasedYear,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/format/r;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",19,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/format/r;->h:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    sget-object v1, Lj$/time/format/B;->NORMAL:Lj$/time/format/B;

    goto :goto_0

    :cond_2
    sget-object v1, Lj$/time/format/B;->EXCEEDS_PAD:Lj$/time/format/B;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v2, 0x57

    if-eq v1, v2, :cond_6

    const/16 v2, 0x63

    if-eq v1, v2, :cond_5

    const/16 v2, 0x65

    if-eq v1, v2, :cond_5

    const/16 v2, 0x77

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "WeekOfWeekBasedYear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v1, "DayOfWeek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "WeekOfMonth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/format/r;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
