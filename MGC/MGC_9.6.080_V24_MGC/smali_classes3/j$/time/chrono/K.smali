.class public final Lj$/time/chrono/K;
.super Lj$/time/chrono/d;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final transient a:Lj$/time/h;


# direct methods
.method constructor <init>(Lj$/time/h;)V
    .locals 1

    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    const-string v0, "isoDate"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    return-void
.end method

.method private c0()I
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->e0()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method private e0(Lj$/time/h;)Lj$/time/chrono/K;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {p1, v0}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/chrono/K;

    invoke-direct {v0, p1}, Lj$/time/chrono/K;-><init>(Lj$/time/h;)V

    :goto_0
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/time/chrono/G;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/G;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/l;)Lj$/time/chrono/e;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/g;->W(Lj$/time/chrono/b;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final O(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->O(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/K;

    return-object p1
.end method

.method public final W()Lj$/time/chrono/o;
    .locals 2

    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lj$/time/chrono/L;->BE:Lj$/time/chrono/L;

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/chrono/L;->BEFORE_BE:Lj$/time/chrono/L;

    :goto_0
    return-object v0
.end method

.method final Y(J)Lj$/time/chrono/b;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/K;->e0(Lj$/time/h;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1
.end method

.method final Z(J)Lj$/time/chrono/b;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->o0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/K;->e0(Lj$/time/h;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lj$/time/chrono/n;
    .locals 1

    sget-object v0, Lj$/time/chrono/I;->d:Lj$/time/chrono/I;

    return-object v0
.end method

.method final a0(J)Lj$/time/chrono/b;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {v0, p1, p2}, Lj$/time/h;->p0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/K;->e0(Lj$/time/h;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1
.end method

.method public final b0(Lj$/time/temporal/l;)Lj$/time/chrono/b;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/d;->b0(Lj$/time/temporal/l;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/K;

    return-object p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/n;)Lj$/time/chrono/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/K;->d0(JLj$/time/temporal/n;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/K;->d0(JLj$/time/temporal/n;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1
.end method

.method public final d0(JLj$/time/temporal/n;)Lj$/time/chrono/K;
    .locals 8

    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_7

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {p0, v0}, Lj$/time/chrono/K;->x(Lj$/time/temporal/n;)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lj$/time/chrono/J;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    iget-object v3, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    const/4 v7, 0x5

    if-eq v2, v7, :cond_1

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_1
    sget-object p3, Lj$/time/chrono/I;->d:Lj$/time/chrono/I;

    invoke-virtual {p3, v0}, Lj$/time/chrono/I;->M(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lj$/time/temporal/r;->b(JLj$/time/temporal/n;)V

    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result p3

    int-to-long v0, p3

    const-wide/16 v4, 0xc

    mul-long v0, v0, v4

    invoke-virtual {v3}, Lj$/time/h;->c0()I

    move-result p3

    int-to-long v4, p3

    add-long/2addr v0, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    sub-long/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Lj$/time/h;->o0(J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/K;->e0(Lj$/time/h;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v2, Lj$/time/chrono/I;->d:Lj$/time/chrono/I;

    invoke-virtual {v2, v0}, Lj$/time/chrono/I;->M(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lj$/time/temporal/r;->a(JLj$/time/temporal/n;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    :goto_0
    invoke-virtual {v3, p1, p2, p3}, Lj$/time/h;->r0(JLj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/K;->e0(Lj$/time/h;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result p1

    rsub-int p1, p1, -0x21e

    invoke-virtual {v3, p1}, Lj$/time/h;->u0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/K;->e0(Lj$/time/h;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1

    :cond_4
    add-int/lit16 v2, v2, -0x21f

    invoke-virtual {v3, v2}, Lj$/time/h;->u0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/K;->e0(Lj$/time/h;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_6

    goto :goto_1

    :cond_6
    rsub-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit16 v2, v2, -0x21f

    invoke-virtual {v3, v2}, Lj$/time/h;->u0(I)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/chrono/K;->e0(Lj$/time/h;)Lj$/time/chrono/K;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/n;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/K;

    return-object p1
.end method

.method public final e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/K;

    return-object p1
.end method

.method public final e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/K;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lj$/time/chrono/K;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/chrono/K;

    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    iget-object p1, p1, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lj$/time/chrono/I;->d:Lj$/time/chrono/I;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->hashCode()I

    move-result v0

    const v1, 0x8b59791

    xor-int/2addr v0, v1

    return v0
.end method

.method public final k(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->O(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/K;

    return-object p1
.end method

.method public final r(Lj$/time/h;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-super {p0, p1}, Lj$/time/chrono/d;->b0(Lj$/time/temporal/l;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/K;

    return-object p1
.end method

.method public final s(Lj$/time/temporal/n;)Lj$/time/temporal/r;
    .locals 7

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lj$/time/chrono/i;->h(Lj$/time/chrono/b;Lj$/time/temporal/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    sget-object v1, Lj$/time/chrono/J;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    sget-object p1, Lj$/time/chrono/I;->d:Lj$/time/chrono/I;

    invoke-virtual {p1, v0}, Lj$/time/chrono/I;->M(Lj$/time/temporal/a;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->k()Lj$/time/temporal/r;

    move-result-object p1

    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x21f

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lj$/time/temporal/r;->e()J

    move-result-wide v5

    add-long/2addr v5, v3

    neg-long v3, v5

    add-long/2addr v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lj$/time/temporal/r;->d()J

    move-result-wide v5

    add-long/2addr v3, v5

    :goto_0
    invoke-static {v1, v2, v3, v4}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Lj$/time/temporal/q;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported field: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lj$/time/temporal/n;)J
    .locals 6

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_6

    sget-object v0, Lj$/time/chrono/J;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    iget-object v3, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {v3, p1}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result p1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    int-to-long v0, v2

    return-wide v0

    :cond_2
    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_3
    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v4, 0xc

    mul-long v0, v0, v4

    invoke-virtual {v3}, Lj$/time/h;->c0()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_4
    invoke-direct {p0}, Lj$/time/chrono/K;->c0()I

    move-result p1

    if-lt p1, v2, :cond_5

    goto :goto_1

    :cond_5
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    :cond_6
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->n(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()J
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/K;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->y()J

    move-result-wide v0

    return-wide v0
.end method
