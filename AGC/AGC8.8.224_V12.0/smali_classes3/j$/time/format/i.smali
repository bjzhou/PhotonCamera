.class final Lj$/time/format/i;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/format/g;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/w;Ljava/lang/StringBuilder;)Z
    .locals 16

    move-object/from16 v0, p2

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lj$/time/format/w;->e(Lj$/time/temporal/l;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/w;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v3, v4}, Lj$/time/temporal/TemporalAccessor;->h(Lj$/time/temporal/l;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/w;->d()Lj$/time/temporal/TemporalAccessor;

    move-result-object v2

    invoke-interface {v2, v4}, Lj$/time/temporal/TemporalAccessor;->k(Lj$/time/temporal/l;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v4, v1, v2}, Lj$/time/temporal/a;->k(J)I

    move-result v1

    const/4 v2, 0x1

    const-wide v9, -0xe79747c00L

    const-string v4, ":00"

    const-wide/16 v11, 0x1

    const-wide v13, 0xe79747c00L

    const-wide v7, 0x497968bd80L

    cmp-long v15, v5, v9

    if-ltz v15, :cond_4

    sub-long/2addr v5, v7

    add-long/2addr v5, v13

    invoke-static {v5, v6, v7, v8}, Lj$/nio/file/attribute/Y;->c(JJ)J

    move-result-wide v9

    add-long/2addr v9, v11

    invoke-static {v5, v6, v7, v8}, Lj$/nio/file/attribute/Y;->d(JJ)J

    move-result-wide v5

    sub-long/2addr v5, v13

    sget-object v7, Lj$/time/p;->f:Lj$/time/p;

    invoke-static {v5, v6, v3, v7}, Lj$/time/i;->G(JILj$/time/p;)Lj$/time/i;

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v8, v9, v6

    if-lez v8, :cond_3

    const/16 v6, 0x2b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lj$/time/i;->A()I

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    add-long/2addr v5, v13

    div-long v9, v5, v7

    rem-long/2addr v5, v7

    sub-long v7, v5, v13

    sget-object v13, Lj$/time/p;->f:Lj$/time/p;

    invoke-static {v7, v8, v3, v13}, Lj$/time/i;->G(JILj$/time/p;)Lj$/time/i;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lj$/time/i;->A()I

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-wide/16 v13, 0x0

    cmp-long v4, v9, v13

    if-gez v4, :cond_8

    invoke-virtual {v7}, Lj$/time/i;->B()I

    move-result v4

    const/16 v7, -0x2710

    if-ne v4, v7, :cond_6

    add-int/lit8 v4, v8, 0x2

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    cmp-long v4, v5, v13

    if-nez v4, :cond_7

    invoke-virtual {v0, v8, v9, v10}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    add-int/2addr v8, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v0, v8, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    if-gtz v1, :cond_9

    goto :goto_4

    :cond_9
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v4, 0x5f5e100

    :goto_3
    if-gtz v1, :cond_b

    rem-int/lit8 v5, v3, 0x3

    if-nez v5, :cond_b

    const/4 v5, -0x2

    if-ge v3, v5, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_b
    :goto_5
    div-int v5, v1, v4

    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int v5, v5, v4

    sub-int/2addr v1, v5

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Instant()"

    return-object v0
.end method
