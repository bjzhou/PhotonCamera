.class final Lj$/time/chrono/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/k;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final transient a:Lj$/time/chrono/g;

.field private final transient b:Lj$/time/ZoneOffset;

.field private final transient c:Lj$/time/ZoneId;


# direct methods
.method private constructor <init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dateTime"

    invoke-static {p3, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    const-string p3, "offset"

    invoke-static {p2, p3}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    const-string p2, "zone"

    invoke-static {p1, p2}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj$/time/chrono/m;->c:Lj$/time/ZoneId;

    return-void
.end method

.method static F(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/m;
    .locals 3

    check-cast p1, Lj$/time/chrono/m;

    invoke-virtual {p1}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/n;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/n;->l()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Chronology mismatch, required: "

    const-string v2, ", actual: "

    invoke-static {v1, p0, v2, p1}, Lj$/time/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static V(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)Lj$/time/chrono/k;
    .locals 6

    const-string v0, "localDateTime"

    invoke-static {p2, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zone"

    invoke-static {p0, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lj$/time/ZoneOffset;

    if-eqz v0, :cond_0

    new-instance p1, Lj$/time/chrono/m;

    move-object v0, p0

    check-cast v0, Lj$/time/ZoneOffset;

    invoke-direct {p1, p0, v0, p2}, Lj$/time/chrono/m;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lj$/time/ZoneId;->W()Lj$/time/zone/e;

    move-result-object v0

    invoke-static {p2}, Lj$/time/j;->W(Lj$/time/temporal/Temporal;)Lj$/time/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/zone/e;->g(Lj$/time/j;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneOffset;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Lj$/time/zone/e;->f(Lj$/time/j;)Lj$/time/zone/b;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/zone/b;->r()Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lj$/time/chrono/g;->Y(J)Lj$/time/chrono/g;

    move-result-object p2

    invoke-virtual {p1}, Lj$/time/zone/b;->s()Lj$/time/ZoneOffset;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/ZoneOffset;

    :goto_0
    const-string v0, "offset"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj$/time/chrono/m;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/chrono/m;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)V

    return-object v0
.end method

.method static W(Lj$/time/chrono/n;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/m;
    .locals 3

    invoke-virtual {p2}, Lj$/time/ZoneId;->W()Lj$/time/zone/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj$/time/zone/e;->d(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    const-string v1, "offset"

    invoke-static {v0, v1}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {p1}, Lj$/time/Instant;->Y()I

    move-result p1

    invoke-static {v1, v2, p1, v0}, Lj$/time/j;->i0(JILj$/time/ZoneOffset;)Lj$/time/j;

    move-result-object p1

    invoke-interface {p0, p1}, Lj$/time/chrono/n;->E(Lj$/time/temporal/Temporal;)Lj$/time/chrono/e;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/g;

    new-instance p1, Lj$/time/chrono/m;

    invoke-direct {p1, p2, v0, p0}, Lj$/time/chrono/m;-><init>(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)V

    return-object p1
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

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/G;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic C(Lj$/time/temporal/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->l(Lj$/time/chrono/k;Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final K()Lj$/time/chrono/e;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    return-object v0
.end method

.method public final synthetic U()J
    .locals 2

    invoke-static {p0}, Lj$/time/chrono/i;->o(Lj$/time/chrono/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final X(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/k;
    .locals 1

    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/chrono/g;->X(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/g;

    move-result-object p1

    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object p2

    invoke-virtual {p1, p0}, Lj$/time/chrono/g;->F(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {p2, p1}, Lj$/time/chrono/m;->F(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/m;->F(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lj$/time/chrono/n;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/m;->c()Lj$/time/chrono/b;

    move-result-object v0

    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lj$/time/l;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/m;->K()Lj$/time/chrono/e;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/g;

    invoke-virtual {v0}, Lj$/time/chrono/g;->b()Lj$/time/l;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lj$/time/chrono/b;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/m;->K()Lj$/time/chrono/e;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/g;

    invoke-virtual {v0}, Lj$/time/chrono/g;->c()Lj$/time/chrono/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/k;

    invoke-static {p0, p1}, Lj$/time/chrono/i;->d(Lj$/time/chrono/k;Lj$/time/chrono/k;)I

    move-result p1

    return p1
.end method

.method public final d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;
    .locals 5

    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    sget-object v1, Lj$/time/chrono/l;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lj$/time/chrono/m;->c:Lj$/time/ZoneId;

    iget-object v4, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    if-eq v1, v2, :cond_0

    invoke-virtual {v4, p1, p2, p3}, Lj$/time/chrono/g;->b0(JLj$/time/temporal/n;)Lj$/time/chrono/g;

    move-result-object p1

    iget-object p2, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    invoke-static {v3, p2, p1}, Lj$/time/chrono/m;->V(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)Lj$/time/chrono/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->F(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/ZoneOffset;->g0(I)Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {v4, p1}, Lj$/time/chrono/g;->a0(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object p1

    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object p2

    invoke-static {p2, p1, v3}, Lj$/time/chrono/m;->W(Lj$/time/chrono/n;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/m;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lj$/time/chrono/i;->o(Lj$/time/chrono/k;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    sget-object p3, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/m;->X(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/k;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/n;->s(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/m;->F(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/m;->X(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/chrono/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/chrono/k;

    invoke-static {p0, p1}, Lj$/time/chrono/i;->d(Lj$/time/chrono/k;Lj$/time/chrono/k;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 1

    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/time/chrono/n;->B(Lj$/time/temporal/Temporal;)Lj$/time/chrono/k;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    invoke-interface {p1, v0}, Lj$/time/chrono/k;->i(Lj$/time/ZoneId;)Lj$/time/chrono/k;

    move-result-object p1

    invoke-interface {p1}, Lj$/time/chrono/k;->K()Lj$/time/chrono/e;

    move-result-object p1

    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/g;->f(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string v0, "unit"

    invoke-static {p2, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final g(Lj$/time/temporal/n;)Z
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/n;->r(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final h()Lj$/time/ZoneOffset;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-virtual {v0}, Lj$/time/chrono/g;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/chrono/m;->c:Lj$/time/ZoneId;

    invoke-virtual {v1}, Lj$/time/ZoneId;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i(Lj$/time/ZoneId;)Lj$/time/chrono/k;
    .locals 2

    const-string v0, "zone"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj$/time/chrono/m;->c:Lj$/time/ZoneId;

    invoke-virtual {v0, p1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    iget-object v1, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v0, v1}, Lj$/time/chrono/g;->a0(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lj$/time/chrono/m;->W(Lj$/time/chrono/n;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/m;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final j(Lj$/time/ZoneId;)Lj$/time/chrono/k;
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    iget-object v1, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    invoke-static {p1, v1, v0}, Lj$/time/chrono/m;->V(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final k(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/k;->b(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/m;->F(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic n(Lj$/time/temporal/n;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->e(Lj$/time/chrono/k;Lj$/time/temporal/n;)I

    move-result p1

    return p1
.end method

.method public final r(Lj$/time/h;)Lj$/time/temporal/Temporal;
    .locals 1

    invoke-virtual {p0}, Lj$/time/chrono/m;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-virtual {p1, p0}, Lj$/time/h;->F(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/m;->F(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lj$/time/temporal/n;)Lj$/time/temporal/r;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/m;->K()Lj$/time/chrono/e;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/g;

    invoke-virtual {v0, p1}, Lj$/time/chrono/g;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->k()Lj$/time/temporal/r;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-virtual {v0}, Lj$/time/chrono/g;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    invoke-virtual {v1}, Lj$/time/ZoneOffset;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lj$/time/chrono/m;->c:Lj$/time/ZoneId;

    if-eq v1, v2, :cond_0

    invoke-virtual {v2}, Lj$/time/ZoneId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final v()Lj$/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/m;->c:Lj$/time/ZoneId;

    return-object v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/m;->a:Lj$/time/chrono/g;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/time/chrono/m;->b:Lj$/time/ZoneOffset;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/time/chrono/m;->c:Lj$/time/ZoneId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final x(Lj$/time/temporal/n;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/chrono/j;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lj$/time/chrono/m;->K()Lj$/time/chrono/e;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/g;

    invoke-virtual {v0, p1}, Lj$/time/chrono/g;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/chrono/m;->h()Lj$/time/ZoneOffset;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/ZoneOffset;->d0()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lj$/time/chrono/m;->U()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->n(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
