.class public abstract synthetic Lj$/time/temporal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lj$/time/temporal/p;

.field static final b:Lj$/time/temporal/p;

.field static final c:Lj$/time/temporal/p;

.field static final d:Lj$/time/temporal/p;

.field static final e:Lj$/time/temporal/p;

.field static final f:Lj$/time/temporal/p;

.field static final g:Lj$/time/temporal/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    sput-object v0, Lj$/time/temporal/k;->a:Lj$/time/temporal/p;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    sput-object v0, Lj$/time/temporal/k;->b:Lj$/time/temporal/p;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    sput-object v0, Lj$/time/temporal/k;->c:Lj$/time/temporal/p;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    sput-object v0, Lj$/time/temporal/k;->d:Lj$/time/temporal/p;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    sput-object v0, Lj$/time/temporal/k;->e:Lj$/time/temporal/p;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    sput-object v0, Lj$/time/temporal/k;->f:Lj$/time/temporal/p;

    new-instance v0, Lj$/time/temporal/o;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lj$/time/temporal/o;-><init>(I)V

    sput-object v0, Lj$/time/temporal/k;->g:Lj$/time/temporal/p;

    return-void
.end method

.method public static a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)I
    .locals 5

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/temporal/r;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->x(Lj$/time/temporal/n;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/r;->i(J)Z

    move-result p0

    if-eqz p0, :cond_0

    long-to-int p0, v1

    return p0

    :cond_0
    new-instance p0, Lj$/time/b;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid value for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (valid values "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lj$/time/temporal/q;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid field "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for get() method, use getLong() instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/Temporal;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p0

    const-wide/16 p1, 0x1

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lj$/time/temporal/Temporal;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p0

    goto :goto_1

    :cond_0
    neg-long p1, p1

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static c(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lj$/time/temporal/k;->a:Lj$/time/temporal/p;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/k;->b:Lj$/time/temporal/p;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/k;->c:Lj$/time/temporal/p;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->a(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)Lj$/time/temporal/r;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->k()Lj$/time/temporal/r;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lj$/time/temporal/q;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unsupported field: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "field"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lj$/time/temporal/n;->x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lj$/time/temporal/p;
    .locals 1

    sget-object v0, Lj$/time/temporal/k;->b:Lj$/time/temporal/p;

    return-object v0
.end method

.method public static f()Lj$/time/temporal/p;
    .locals 1

    sget-object v0, Lj$/time/temporal/k;->f:Lj$/time/temporal/p;

    return-object v0
.end method

.method public static g()Lj$/time/temporal/p;
    .locals 1

    sget-object v0, Lj$/time/temporal/k;->g:Lj$/time/temporal/p;

    return-object v0
.end method

.method public static h()Lj$/time/temporal/p;
    .locals 1

    sget-object v0, Lj$/time/temporal/k;->d:Lj$/time/temporal/p;

    return-object v0
.end method

.method public static i()Lj$/time/temporal/p;
    .locals 1

    sget-object v0, Lj$/time/temporal/k;->c:Lj$/time/temporal/p;

    return-object v0
.end method

.method public static j()Lj$/time/temporal/p;
    .locals 1

    sget-object v0, Lj$/time/temporal/k;->e:Lj$/time/temporal/p;

    return-object v0
.end method

.method public static k()Lj$/time/temporal/p;
    .locals 1

    sget-object v0, Lj$/time/temporal/k;->a:Lj$/time/temporal/p;

    return-object v0
.end method
