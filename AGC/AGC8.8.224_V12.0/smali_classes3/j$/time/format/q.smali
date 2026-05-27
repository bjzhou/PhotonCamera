.class final Lj$/time/format/q;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/format/g;


# instance fields
.field private final a:Lj$/time/temporal/l;

.field private final b:Lj$/time/format/C;

.field private final c:Lj$/time/format/y;

.field private volatile d:Lj$/time/format/l;


# direct methods
.method constructor <init>(Lj$/time/temporal/l;Lj$/time/format/C;Lj$/time/format/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/q;->a:Lj$/time/temporal/l;

    iput-object p2, p0, Lj$/time/format/q;->b:Lj$/time/format/C;

    iput-object p3, p0, Lj$/time/format/q;->c:Lj$/time/format/y;

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/w;Ljava/lang/StringBuilder;)Z
    .locals 9

    iget-object v0, p0, Lj$/time/format/q;->a:Lj$/time/temporal/l;

    invoke-virtual {p1, v0}, Lj$/time/format/w;->e(Lj$/time/temporal/l;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lj$/time/format/w;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-static {}, Lj$/time/temporal/n;->a()Lj$/time/temporal/o;

    move-result-object v2

    invoke-interface {v1, v2}, Lj$/time/temporal/TemporalAccessor;->m(Lj$/time/temporal/o;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lj$/time/chrono/g;

    if-eqz v3, :cond_2

    sget-object v1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    if-ne v3, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lj$/time/format/q;->c:Lj$/time/format/y;

    iget-object v4, p0, Lj$/time/format/q;->a:Lj$/time/temporal/l;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lj$/time/format/q;->b:Lj$/time/format/C;

    invoke-virtual {p1}, Lj$/time/format/w;->c()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lj$/time/format/y;->d(Lj$/time/chrono/g;Lj$/time/temporal/l;JLj$/time/format/C;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lj$/time/format/q;->c:Lj$/time/format/y;

    iget-object v2, p0, Lj$/time/format/q;->a:Lj$/time/temporal/l;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lj$/time/format/q;->b:Lj$/time/format/C;

    invoke-virtual {p1}, Lj$/time/format/w;->c()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lj$/time/format/y;->e(Lj$/time/temporal/l;JLj$/time/format/C;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/l;

    if-nez v0, :cond_3

    new-instance v0, Lj$/time/format/l;

    iget-object v2, p0, Lj$/time/format/q;->a:Lj$/time/temporal/l;

    const/16 v3, 0x13

    sget-object v4, Lj$/time/format/B;->NORMAL:Lj$/time/format/B;

    invoke-direct {v0, v2, v1, v3, v4}, Lj$/time/format/l;-><init>(Lj$/time/temporal/l;IILj$/time/format/B;)V

    iput-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/l;

    :cond_3
    iget-object v0, p0, Lj$/time/format/q;->d:Lj$/time/format/l;

    invoke-virtual {v0, p1, p2}, Lj$/time/format/l;->a(Lj$/time/format/w;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lj$/time/format/C;->FULL:Lj$/time/format/C;

    const-string v1, ")"

    const-string v2, "Text("

    iget-object v3, p0, Lj$/time/format/q;->a:Lj$/time/temporal/l;

    iget-object v4, p0, Lj$/time/format/q;->b:Lj$/time/format/C;

    if-ne v4, v0, :cond_0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
