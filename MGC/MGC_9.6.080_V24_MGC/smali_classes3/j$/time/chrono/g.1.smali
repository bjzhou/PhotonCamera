.class final Lj$/time/chrono/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/e;
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/l;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final transient a:Lj$/time/chrono/b;

.field private final transient b:Lj$/time/l;


# direct methods
.method private constructor <init>(Lj$/time/chrono/b;Lj$/time/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "time"

    invoke-static {p2, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    iput-object p2, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    return-void
.end method

.method static V(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/g;
    .locals 3

    check-cast p1, Lj$/time/chrono/g;

    iget-object v0, p1, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/chrono/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-interface {p0}, Lj$/time/chrono/n;->l()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {p1}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

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

.method static W(Lj$/time/chrono/b;Lj$/time/l;)Lj$/time/chrono/g;
    .locals 1

    new-instance v0, Lj$/time/chrono/g;

    invoke-direct {v0, p0, p1}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/b;Lj$/time/l;)V

    return-object v0
.end method

.method private Z(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lj$/time/chrono/g;->b:Lj$/time/l;

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    invoke-direct {v0, v1, v6}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    div-long v4, p8, v2

    const-wide/32 v7, 0x15180

    div-long v9, p6, v7

    add-long/2addr v9, v4

    const-wide/16 v4, 0x5a0

    div-long v11, p4, v4

    add-long/2addr v11, v9

    const-wide/16 v9, 0x18

    div-long v13, p2, v9

    add-long/2addr v13, v11

    rem-long v11, p8, v2

    rem-long v7, p6, v7

    const-wide/32 v15, 0x3b9aca00

    mul-long v7, v7, v15

    add-long/2addr v7, v11

    rem-long v4, p4, v4

    const-wide v11, 0xdf8475800L

    mul-long v4, v4, v11

    add-long/2addr v4, v7

    rem-long v7, p2, v9

    const-wide v9, 0x34630b8a000L

    mul-long v7, v7, v9

    add-long/2addr v7, v4

    invoke-virtual {v6}, Lj$/time/l;->m0()J

    move-result-wide v4

    add-long/2addr v7, v4

    invoke-static {v7, v8, v2, v3}, Lj$/nio/file/attribute/n;->f(JJ)J

    move-result-wide v9

    add-long/2addr v9, v13

    invoke-static {v7, v8, v2, v3}, Lj$/nio/file/attribute/n;->g(JJ)J

    move-result-wide v2

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lj$/time/l;->e0(J)Lj$/time/l;

    move-result-object v6

    :goto_0
    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v9, v10, v2}, Lj$/time/chrono/b;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object v1

    return-object v1
.end method

.method private c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/time/chrono/d;->V(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/b;

    move-result-object p1

    new-instance v0, Lj$/time/chrono/g;

    invoke-direct {v0, p1, p2}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/b;Lj$/time/l;)V

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

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/G;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic C(Lj$/time/temporal/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->k(Lj$/time/chrono/e;Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/chrono/g;->c()Lj$/time/chrono/b;

    move-result-object v1

    invoke-interface {v1}, Lj$/time/chrono/b;->y()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/chrono/g;->b()Lj$/time/l;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/l;->m0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic I(Lj$/time/chrono/e;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->c(Lj$/time/chrono/e;Lj$/time/chrono/e;)I

    move-result p1

    return p1
.end method

.method public final X(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/g;
    .locals 21

    move-object/from16 v10, p0

    move-wide/from16 v8, p1

    move-object/from16 v0, p3

    instance-of v1, v0, Lj$/time/temporal/ChronoUnit;

    iget-object v2, v10, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    sget-object v3, Lj$/time/chrono/f;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    iget-object v3, v10, Lj$/time/chrono/g;->b:Lj$/time/l;

    packed-switch v1, :pswitch_data_0

    invoke-interface {v2, v8, v9, v0}, Lj$/time/chrono/b;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v0

    invoke-direct {v10, v0, v3}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-wide/16 v0, 0x100

    div-long v4, v8, v0

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/b;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v2

    invoke-direct {v10, v2, v3}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/16 v2, 0xc

    mul-long v13, v0, v2

    iget-object v12, v11, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v1, v10, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :pswitch_2
    const-wide/16 v6, 0x0

    const-wide/16 v11, 0x0

    iget-object v1, v10, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lj$/time/chrono/g;->Y(J)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    div-long v4, v8, v0

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/b;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v2

    invoke-direct {v10, v2, v3}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/32 v2, 0xf4240

    mul-long v19, v0, v2

    iget-object v12, v11, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide v0, 0x141dd76000L

    div-long v4, v8, v0

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/b;->e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v2

    invoke-direct {v10, v2, v3}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/16 v2, 0x3e8

    mul-long v19, v0, v2

    iget-object v12, v11, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v1, v10, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v1

    invoke-interface {v0, v10, v8, v9}, Lj$/time/temporal/TemporalUnit;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    invoke-static {v1, v0}, Lj$/time/chrono/g;->V(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/g;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final Y(J)Lj$/time/chrono/g;
    .locals 10

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/chrono/g;->Z(Lj$/time/chrono/b;JJJJ)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lj$/time/chrono/n;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Lj$/time/ZoneOffset;)Lj$/time/Instant;
    .locals 4

    invoke-static {p0, p1}, Lj$/time/chrono/i;->n(Lj$/time/chrono/e;Lj$/time/ZoneOffset;)J

    move-result-wide v0

    iget-object p1, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    invoke-virtual {p1}, Lj$/time/l;->b0()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lj$/time/l;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    return-object v0
.end method

.method public final b0(JLj$/time/temporal/n;)Lj$/time/chrono/g;
    .locals 3

    instance-of v0, p3, Lj$/time/temporal/a;

    iget-object v1, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->W()Z

    move-result v0

    iget-object v2, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    if-eqz v0, :cond_0

    invoke-virtual {v2, p1, p2, p3}, Lj$/time/l;->o0(JLj$/time/temporal/n;)Lj$/time/l;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lj$/time/chrono/b;->d(JLj$/time/temporal/n;)Lj$/time/chrono/b;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v1}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/n;->s(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/g;->V(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lj$/time/chrono/b;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/e;

    invoke-virtual {p0, p1}, Lj$/time/chrono/g;->I(Lj$/time/chrono/e;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/g;->b0(JLj$/time/temporal/n;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/g;->X(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/chrono/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/chrono/e;

    invoke-static {p0, p1}, Lj$/time/chrono/i;->c(Lj$/time/chrono/e;Lj$/time/chrono/e;)I

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
    .locals 6

    const-string v0, "endExclusive"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v1

    invoke-interface {v1, p1}, Lj$/time/chrono/n;->E(Lj$/time/temporal/Temporal;)Lj$/time/chrono/e;

    move-result-object p1

    instance-of v1, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    if-eqz v1, :cond_1

    sget-object v1, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-interface {p1, v1}, Lj$/time/temporal/TemporalAccessor;->x(Lj$/time/temporal/n;)J

    move-result-wide v4

    invoke-interface {v0, v1}, Lj$/time/temporal/TemporalAccessor;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    sub-long/2addr v4, v0

    sget-object v0, Lj$/time/chrono/f;->a:[I

    move-object v1, p2

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x2

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v4

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x18

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v4

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x5a0

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v4

    goto :goto_1

    :pswitch_3
    const v0, 0x15180

    int-to-long v0, v0

    invoke-static {v4, v5, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v4

    goto :goto_1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    invoke-static {v4, v5, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v4

    goto :goto_1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    invoke-static {v4, v5, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v4

    goto :goto_1

    :pswitch_6
    const-wide v0, 0x4e94914f0000L

    invoke-static {v4, v5, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v4

    :goto_1
    invoke-interface {p1}, Lj$/time/chrono/e;->b()Lj$/time/l;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Lj$/time/l;->f(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    invoke-static {v4, v5, p1, p2}, Lj$/nio/channels/c;->g(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    invoke-interface {p1}, Lj$/time/chrono/e;->c()Lj$/time/chrono/b;

    move-result-object v1

    invoke-interface {p1}, Lj$/time/chrono/e;->b()Lj$/time/l;

    move-result-object p1

    invoke-virtual {p1, v3}, Lj$/time/l;->V(Lj$/time/l;)I

    move-result p1

    if-gez p1, :cond_2

    const-wide/16 v3, 0x1

    invoke-interface {v1, v3, v4, v2}, Lj$/time/chrono/b;->O(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;

    move-result-object v1

    :cond_2
    invoke-interface {v0, v1, p2}, Lj$/time/chrono/b;->f(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_3
    const-string v0, "unit"

    invoke-static {p2, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lj$/time/temporal/n;)Z
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->C()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lj$/time/temporal/a;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/n;->r(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    invoke-virtual {v1}, Lj$/time/l;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final k(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->a()Lj$/time/chrono/n;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lj$/time/temporal/k;->b(Lj$/time/temporal/Temporal;JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

    move-result-object p1

    invoke-static {v0, p1}, Lj$/time/chrono/g;->V(Lj$/time/chrono/n;Lj$/time/temporal/Temporal;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final n(Lj$/time/temporal/n;)I
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    invoke-virtual {v0, p1}, Lj$/time/l;->n(Lj$/time/temporal/n;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->n(Lj$/time/temporal/n;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lj$/time/chrono/g;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/chrono/g;->x(Lj$/time/temporal/n;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/r;->a(JLj$/time/temporal/n;)I

    move-result p1

    return p1
.end method

.method public final r(Lj$/time/h;)Lj$/time/temporal/Temporal;
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    invoke-direct {p0, p1, v0}, Lj$/time/chrono/g;->c0(Lj$/time/temporal/Temporal;Lj$/time/l;)Lj$/time/chrono/g;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lj$/time/temporal/n;)Lj$/time/temporal/r;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lj$/time/temporal/k;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lj$/time/ZoneOffset;)Lj$/time/chrono/k;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lj$/time/chrono/m;->V(Lj$/time/ZoneId;Lj$/time/ZoneOffset;Lj$/time/chrono/g;)Lj$/time/chrono/k;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0}, Lj$/time/chrono/b;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    invoke-virtual {v1}, Lj$/time/l;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final x(Lj$/time/temporal/n;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/chrono/g;->b:Lj$/time/l;

    invoke-virtual {v0, p1}, Lj$/time/l;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/chrono/g;->a:Lj$/time/chrono/b;

    invoke-interface {v0, p1}, Lj$/time/temporal/TemporalAccessor;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->n(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method
