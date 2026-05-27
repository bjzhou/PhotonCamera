.class final Lj$/time/format/t;
.super Lj$/time/format/s;


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

    sput-object v0, Lj$/time/format/t;->e:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Lj$/time/format/C;Z)V
    .locals 4

    invoke-static {}, Lj$/time/temporal/n;->f()Lj$/time/temporal/o;

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

    invoke-direct {p0, v0, v1}, Lj$/time/format/s;-><init>(Lj$/time/temporal/o;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lj$/time/format/t;->c:Lj$/time/format/C;

    iput-boolean p2, p0, Lj$/time/format/t;->d:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "textStyle"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lj$/time/format/w;Ljava/lang/StringBuilder;)Z
    .locals 13

    invoke-static {}, Lj$/time/temporal/n;->g()Lj$/time/temporal/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/time/format/w;->f(Lj$/time/temporal/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/ZoneId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lj$/time/ZoneId;->q()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v0, Lj$/time/p;

    const/4 v4, 0x1

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lj$/time/format/w;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object v3

    const/4 v5, 0x2

    iget-boolean v6, p0, Lj$/time/format/t;->d:Z

    const/4 v7, 0x0

    if-nez v6, :cond_2

    sget-object v6, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v3, v6}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/l;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lj$/time/ZoneId;->r()Lj$/time/zone/c;

    move-result-object v0

    invoke-static {v3}, Lj$/time/Instant;->q(Lj$/time/temporal/TemporalAccessor;)Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/time/zone/c;->h(Lj$/time/Instant;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v6, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {v3, v6}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/l;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v3, v8}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/l;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3, v6}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/l;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lj$/time/g;->J(J)Lj$/time/g;

    move-result-object v6

    invoke-interface {v3, v8}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/l;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lj$/time/k;->C(J)Lj$/time/k;

    move-result-object v3

    invoke-static {v6, v3}, Lj$/time/i;->F(Lj$/time/g;Lj$/time/k;)Lj$/time/i;

    move-result-object v3

    invoke-virtual {v0}, Lj$/time/ZoneId;->r()Lj$/time/zone/c;

    move-result-object v6

    invoke-virtual {v6, v3}, Lj$/time/zone/c;->f(Lj$/time/i;)Lj$/time/zone/a;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lj$/time/ZoneId;->r()Lj$/time/zone/c;

    move-result-object v6

    invoke-static {v3, v0, v7}, Lj$/time/s;->s(Lj$/time/i;Lj$/time/ZoneId;Lj$/time/p;)Lj$/time/s;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/s;->z()J

    move-result-wide v8

    invoke-virtual {v0}, Lj$/time/s;->D()Lj$/time/k;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/k;->z()I

    move-result v0

    int-to-long v10, v0

    invoke-static {v8, v9, v10, v11}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {v6, v0}, Lj$/time/zone/c;->h(Lj$/time/Instant;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Lj$/time/format/w;->c()Ljava/util/Locale;

    move-result-object p1

    sget-object v3, Lj$/time/format/C;->NARROW:Lj$/time/format/C;

    iget-object v6, p0, Lj$/time/format/t;->c:Lj$/time/format/C;

    if-ne v6, v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v3, Lj$/time/format/t;->e:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/SoftReference;

    const/4 v9, 0x5

    const/4 v10, 0x3

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_4

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    aput-object v12, v11, v5

    invoke-virtual {v8, v4, v4, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v10

    const/4 v5, 0x4

    invoke-virtual {v8, v4, v1, p1}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v5

    aput-object v2, v11, v9

    const/4 v1, 0x6

    aput-object v2, v11, v1

    if-nez v7, :cond_5

    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_5
    invoke-interface {v7, p1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v11

    :cond_6
    invoke-virtual {v6}, Lj$/time/format/C;->a()I

    move-result p1

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    add-int/2addr p1, v9

    aget-object v7, v8, p1

    goto :goto_1

    :cond_7
    add-int/2addr p1, v10

    aget-object v7, v8, p1

    goto :goto_1

    :cond_8
    add-int/2addr p1, v4

    aget-object v7, v8, p1

    :goto_1
    if-eqz v7, :cond_9

    move-object v2, v7

    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v4
.end method
