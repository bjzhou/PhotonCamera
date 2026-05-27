.class final Lj$/time/format/o;
.super Lj$/time/format/l;


# static fields
.field static final i:Lj$/time/g;


# instance fields
.field private final g:I

.field private final h:Lj$/time/chrono/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/g;->I(III)Lj$/time/g;

    move-result-object v0

    sput-object v0, Lj$/time/format/o;->i:Lj$/time/g;

    return-void
.end method

.method private constructor <init>(Lj$/time/temporal/l;IIILj$/time/chrono/b;I)V
    .locals 6

    sget-object v4, Lj$/time/format/B;->NOT_NEGATIVE:Lj$/time/format/B;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/l;-><init>(Lj$/time/temporal/l;IILj$/time/format/B;I)V

    iput p4, p0, Lj$/time/format/o;->g:I

    iput-object p5, p0, Lj$/time/format/o;->h:Lj$/time/chrono/b;

    return-void
.end method

.method constructor <init>(Lj$/time/temporal/l;Lj$/time/g;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lj$/time/format/o;-><init>(Lj$/time/temporal/l;IIILj$/time/chrono/b;I)V

    return-void
.end method

.method synthetic constructor <init>(Lj$/time/temporal/l;Lj$/time/g;I)V
    .locals 7

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lj$/time/format/o;-><init>(Lj$/time/temporal/l;IIILj$/time/chrono/b;I)V

    return-void
.end method


# virtual methods
.method final c(Lj$/time/format/w;J)J
    .locals 7

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v2, p0, Lj$/time/format/o;->h:Lj$/time/chrono/b;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lj$/time/format/w;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object p1

    invoke-static {p1}, Lj$/time/chrono/d;->b(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/g;

    invoke-static {v2}, Lj$/time/g;->s(Lj$/time/temporal/TemporalAccessor;)Lj$/time/g;

    move-result-object p1

    iget-object v2, p0, Lj$/time/format/l;->a:Lj$/time/temporal/l;

    invoke-virtual {p1, v2}, Lj$/time/g;->f(Lj$/time/temporal/l;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lj$/time/format/o;->g:I

    :goto_0
    int-to-long v2, p1

    sget-object p1, Lj$/time/format/l;->f:[J

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    iget v4, p0, Lj$/time/format/l;->b:I

    aget-wide v4, p1, v4

    add-long/2addr v2, v4

    cmp-long v6, p2, v2

    if-gez v6, :cond_1

    rem-long/2addr v0, v4

    return-wide v0

    :cond_1
    iget p2, p0, Lj$/time/format/l;->c:I

    aget-wide p2, p1, p2

    rem-long/2addr v0, p2

    return-wide v0
.end method

.method final d()Lj$/time/format/l;
    .locals 9

    iget v0, p0, Lj$/time/format/l;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/format/o;

    iget-object v3, p0, Lj$/time/format/l;->a:Lj$/time/temporal/l;

    iget v4, p0, Lj$/time/format/l;->b:I

    iget v5, p0, Lj$/time/format/l;->c:I

    iget v6, p0, Lj$/time/format/o;->g:I

    iget-object v7, p0, Lj$/time/format/o;->h:Lj$/time/chrono/b;

    const/4 v8, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lj$/time/format/o;-><init>(Lj$/time/temporal/l;IIILj$/time/chrono/b;I)V

    :goto_0
    return-object v0
.end method

.method final e(I)Lj$/time/format/l;
    .locals 8

    new-instance v7, Lj$/time/format/o;

    iget-object v1, p0, Lj$/time/format/l;->a:Lj$/time/temporal/l;

    iget v2, p0, Lj$/time/format/l;->b:I

    iget v3, p0, Lj$/time/format/l;->c:I

    iget v4, p0, Lj$/time/format/o;->g:I

    iget-object v5, p0, Lj$/time/format/o;->h:Lj$/time/chrono/b;

    iget v0, p0, Lj$/time/format/l;->e:I

    add-int v6, v0, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lj$/time/format/o;-><init>(Lj$/time/temporal/l;IIILj$/time/chrono/b;I)V

    return-object v7
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lj$/time/format/l;->a:Lj$/time/temporal/l;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lj$/time/format/o;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lj$/time/format/o;->h:Lj$/time/chrono/b;

    invoke-static {v2, v1}, Lj$/util/Objects;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReducedValue("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/l;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/l;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
