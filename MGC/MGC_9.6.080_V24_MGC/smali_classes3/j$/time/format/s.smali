.class final Lj$/time/format/s;
.super Lj$/time/format/r;
.source "SourceFile"


# static fields
.field private static final e:Lj$/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final c:Lj$/time/format/C;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/format/s;->e:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Lj$/time/format/C;Z)V
    .locals 4

    invoke-static {}, Lj$/time/temporal/k;->j()Lj$/time/temporal/p;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZoneText("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/time/format/r;-><init>(Lj$/time/temporal/p;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "textStyle"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj$/time/format/s;->c:Lj$/time/format/C;

    iput-boolean p2, p0, Lj$/time/format/s;->d:Z

    return-void
.end method


# virtual methods
.method public final k(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z
    .locals 13

    invoke-static {}, Lj$/time/temporal/k;->k()Lj$/time/temporal/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/format/v;->f(Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lj$/time/ZoneId;->l()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v0, Lj$/time/ZoneOffset;

    const/4 v4, 0x1

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lj$/time/format/v;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object v3

    iget-boolean v5, p0, Lj$/time/format/s;->d:Z

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v5, :cond_2

    sget-object v5, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v3, v5}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lj$/time/ZoneId;->W()Lj$/time/zone/e;

    move-result-object v0

    invoke-static {v3}, Lj$/time/Instant;->X(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/time/zone/e;->h(Lj$/time/Instant;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v5, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {v3, v5}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v3, v8}, Lj$/time/temporal/TemporalAccessor;->g(Lj$/time/temporal/n;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3, v5}, Lj$/time/temporal/TemporalAccessor;->x(Lj$/time/temporal/n;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lj$/time/h;->l0(J)Lj$/time/h;

    move-result-object v5

    invoke-interface {v3, v8}, Lj$/time/temporal/TemporalAccessor;->x(Lj$/time/temporal/n;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lj$/time/l;->e0(J)Lj$/time/l;

    move-result-object v3

    invoke-static {v5, v3}, Lj$/time/j;->h0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v3

    invoke-virtual {v0}, Lj$/time/ZoneId;->W()Lj$/time/zone/e;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj$/time/zone/e;->f(Lj$/time/j;)Lj$/time/zone/b;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lj$/time/ZoneId;->W()Lj$/time/zone/e;

    move-result-object v5

    invoke-static {v3, v0, v6}, Lj$/time/ZonedDateTime;->X(Lj$/time/j;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Lj$/time/chrono/i;->o(Lj$/time/chrono/k;)J

    move-result-wide v8

    invoke-virtual {v0}, Lj$/time/ZonedDateTime;->b()Lj$/time/l;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/l;->b0()I

    move-result v0

    int-to-long v10, v0

    invoke-static {v8, v9, v10, v11}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {v5, v0}, Lj$/time/zone/e;->h(Lj$/time/Instant;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Lj$/time/format/v;->c()Ljava/util/Locale;

    move-result-object p1

    sget-object v3, Lj$/time/format/C;->NARROW:Lj$/time/format/C;

    iget-object v5, p0, Lj$/time/format/s;->c:Lj$/time/format/C;

    if-ne v5, v3, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object v3, Lj$/time/format/s;->e:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v6, :cond_4

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    if-nez v8, :cond_6

    :cond_4
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/String;

    aput-object v2, v11, v1

    invoke-virtual {v8, v1, v4, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v8, v1, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v8, v4, v4, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v10

    const/4 v7, 0x4

    invoke-virtual {v8, v4, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v7

    aput-object v2, v11, v9

    const/4 v1, 0x6

    aput-object v2, v11, v1

    if-nez v6, :cond_5

    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_5
    invoke-interface {v6, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v11

    :cond_6
    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    invoke-virtual {v5}, Lj$/time/format/C;->k()I

    move-result p1

    add-int/2addr p1, v9

    aget-object v6, v8, p1

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Lj$/time/format/C;->k()I

    move-result p1

    add-int/2addr p1, v10

    aget-object v6, v8, p1

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Lj$/time/format/C;->k()I

    move-result p1

    add-int/2addr p1, v4

    aget-object v6, v8, p1

    :goto_1
    if-eqz v6, :cond_9

    move-object v2, v6

    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4
.end method
