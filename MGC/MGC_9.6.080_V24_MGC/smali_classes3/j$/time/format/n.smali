.class final Lj$/time/format/n;
.super Lj$/time/format/k;
.source "SourceFile"


# static fields
.field static final h:Lj$/time/h;


# instance fields
.field private final g:Lj$/time/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/h;->j0(III)Lj$/time/h;

    move-result-object v0

    sput-object v0, Lj$/time/format/n;->h:Lj$/time/h;

    return-void
.end method

.method private constructor <init>(Lj$/time/temporal/n;IILj$/time/h;I)V
    .locals 6

    sget-object v4, Lj$/time/format/B;->NOT_NEGATIVE:Lj$/time/format/B;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/k;-><init>(Lj$/time/temporal/n;IILj$/time/format/B;I)V

    iput-object p4, p0, Lj$/time/format/n;->g:Lj$/time/h;

    return-void
.end method

.method constructor <init>(Lj$/time/temporal/n;Lj$/time/h;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v3, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lj$/time/format/n;-><init>(Lj$/time/temporal/n;IILj$/time/h;I)V

    if-nez p2, :cond_2

    invoke-interface {p1}, Lj$/time/temporal/n;->k()Lj$/time/temporal/r;

    move-result-object p1

    const/4 p2, 0x0

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lj$/time/temporal/r;->i(J)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lj$/time/format/k;->f:[J

    aget-wide v2, p1, v6

    add-long/2addr v0, v2

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lj$/time/b;

    const-string p2, "Unable to add printer-parser as the range exceeds the capacity of an int"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The base value must be within the range of the field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lj$/time/temporal/n;Lj$/time/h;I)V
    .locals 6

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lj$/time/format/n;-><init>(Lj$/time/temporal/n;IILj$/time/h;I)V

    return-void
.end method


# virtual methods
.method final b(Lj$/time/format/v;J)J
    .locals 7

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/format/n;->g:Lj$/time/h;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lj$/time/format/v;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object p1

    invoke-static {p1}, Lj$/time/chrono/i;->p(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/n;

    move-result-object p1

    invoke-interface {p1, v2}, Lj$/time/chrono/n;->o(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;

    move-result-object p1

    iget-object v2, p0, Lj$/time/format/k;->a:Lj$/time/temporal/n;

    invoke-interface {p1, v2}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long v2, p1

    sget-object p1, Lj$/time/format/k;->f:[J

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    iget v4, p0, Lj$/time/format/k;->b:I

    aget-wide v4, p1, v4

    add-long/2addr v2, v4

    cmp-long v6, p2, v2

    if-gez v6, :cond_1

    rem-long/2addr v0, v4

    return-wide v0

    :cond_1
    iget p2, p0, Lj$/time/format/k;->c:I

    aget-wide p2, p1, p2

    rem-long/2addr v0, p2

    return-wide v0
.end method

.method final c()Lj$/time/format/k;
    .locals 8

    iget v0, p0, Lj$/time/format/k;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/format/n;

    iget-object v6, p0, Lj$/time/format/n;->g:Lj$/time/h;

    const/4 v7, -0x1

    iget-object v3, p0, Lj$/time/format/k;->a:Lj$/time/temporal/n;

    iget v4, p0, Lj$/time/format/k;->b:I

    iget v5, p0, Lj$/time/format/k;->c:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/time/format/n;-><init>(Lj$/time/temporal/n;IILj$/time/h;I)V

    :goto_0
    return-object v0
.end method

.method final d(I)Lj$/time/format/k;
    .locals 7

    new-instance v6, Lj$/time/format/n;

    iget v0, p0, Lj$/time/format/k;->e:I

    add-int v5, v0, p1

    iget v2, p0, Lj$/time/format/k;->b:I

    iget v3, p0, Lj$/time/format/k;->c:I

    iget-object v1, p0, Lj$/time/format/k;->a:Lj$/time/temporal/n;

    iget-object v4, p0, Lj$/time/format/n;->g:Lj$/time/h;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/n;-><init>(Lj$/time/temporal/n;IILj$/time/h;I)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lj$/time/format/k;->a:Lj$/time/temporal/n;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lj$/time/format/n;->g:Lj$/time/h;

    invoke-static {v2, v1}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReducedValue("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/k;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/k;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
