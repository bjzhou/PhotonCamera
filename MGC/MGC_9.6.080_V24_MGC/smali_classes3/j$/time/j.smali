.class public final Lj$/time/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/l;
.implements Lj$/time/chrono/e;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lj$/time/j;

.field public static final d:Lj$/time/j;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final a:Lj$/time/h;

.field private final b:Lj$/time/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj$/time/h;->d:Lj$/time/h;

    sget-object v1, Lj$/time/l;->e:Lj$/time/l;

    invoke-static {v0, v1}, Lj$/time/j;->h0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v0

    sput-object v0, Lj$/time/j;->c:Lj$/time/j;

    sget-object v0, Lj$/time/h;->e:Lj$/time/h;

    sget-object v1, Lj$/time/l;->f:Lj$/time/l;

    invoke-static {v0, v1}, Lj$/time/j;->h0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v0

    sput-object v0, Lj$/time/j;->d:Lj$/time/j;

    return-void
.end method

.method private constructor <init>(Lj$/time/h;Lj$/time/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/j;->a:Lj$/time/h;

    iput-object p2, p0, Lj$/time/j;->b:Lj$/time/l;

    return-void
.end method

.method private V(Lj$/time/j;)I
    .locals 2

    iget-object v0, p1, Lj$/time/j;->a:Lj$/time/h;

    iget-object v1, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v1, v0}, Lj$/time/h;->V(Lj$/time/h;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    iget-object p1, p1, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0, p1}, Lj$/time/l;->V(Lj$/time/l;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static W(Lj$/time/temporal/Temporal;)Lj$/time/j;
    .locals 5

    instance-of v0, p0, Lj$/time/j;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/time/j;

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/time/ZonedDateTime;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/time/ZonedDateTime;

    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->a0()Lj$/time/j;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lj$/time/q;

    if-eqz v0, :cond_2

    check-cast p0, Lj$/time/q;

    invoke-virtual {p0}, Lj$/time/q;->Z()Lj$/time/j;

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    invoke-static {p0}, Lj$/time/h;->X(Lj$/time/temporal/TemporalAccessor;)Lj$/time/h;

    move-result-object v0

    invoke-static {p0}, Lj$/time/l;->X(Lj$/time/temporal/Temporal;)Lj$/time/l;

    move-result-object v1

    new-instance v2, Lj$/time/j;

    invoke-direct {v2, v0, v1}, Lj$/time/j;-><init>(Lj$/time/h;Lj$/time/l;)V
    :try_end_0
    .catch Lj$/time/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lj$/time/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Unable to obtain LocalDateTime from TemporalAccessor: "

    const-string v4, " of type "

    invoke-static {v3, v2, v4, p0}, Lj$/time/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static g0(I)Lj$/time/j;
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lj$/time/h;->j0(III)Lj$/time/h;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/time/l;->d0(I)Lj$/time/l;

    move-result-object v0

    new-instance v1, Lj$/time/j;

    invoke-direct {v1, p0, v0}, Lj$/time/j;-><init>(Lj$/time/h;Lj$/time/l;)V

    return-object v1
.end method

.method public static h0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;
    .locals 1

    const-string v0, "date"

    invoke-static {p0, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    invoke-static {p1, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lj$/time/j;

    invoke-direct {v0, p0, p1}, Lj$/time/j;-><init>(Lj$/time/h;Lj$/time/l;)V

    return-object v0
.end method

.method public static i0(JILj$/time/ZoneOffset;)Lj$/time/j;
    .locals 5

    const-string v0, "offset"

    invoke-static {p3, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->V(J)V

    invoke-virtual {p3}, Lj$/time/ZoneOffset;->d0()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p0, p2

    const p2, 0x15180

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3}, Lj$/nio/file/attribute/n;->f(JJ)J

    move-result-wide v3

    invoke-static {p0, p1, p2, p3}, Lj$/nio/file/attribute/n;->g(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    invoke-static {v3, v4}, Lj$/time/h;->l0(J)Lj$/time/h;

    move-result-object p0

    int-to-long p1, p1

    const-wide/32 v3, 0x3b9aca00

    mul-long p1, p1, v3

    add-long/2addr p1, v1

    invoke-static {p1, p2}, Lj$/time/l;->e0(J)Lj$/time/l;

    move-result-object p1

    new-instance p2, Lj$/time/j;

    invoke-direct {p2, p0, p1}, Lj$/time/j;-><init>(Lj$/time/h;Lj$/time/l;)V

    return-object p2
.end method

.method private l0(Lj$/time/h;JJJJ)Lj$/time/j;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lj$/time/j;->b:Lj$/time/l;

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    invoke-direct {v0, v1, v6}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

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

    const/4 v11, 0x1

    int-to-long v11, v11

    mul-long v13, v13, v11

    rem-long v15, p8, v2

    rem-long v7, p6, v7

    const-wide/32 v17, 0x3b9aca00

    mul-long v7, v7, v17

    add-long/2addr v7, v15

    rem-long v4, p4, v4

    const-wide v15, 0xdf8475800L

    mul-long v4, v4, v15

    add-long/2addr v4, v7

    rem-long v7, p2, v9

    const-wide v9, 0x34630b8a000L

    mul-long v7, v7, v9

    add-long/2addr v7, v4

    invoke-virtual {v6}, Lj$/time/l;->m0()J

    move-result-wide v4

    mul-long v7, v7, v11

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
    invoke-virtual {v1, v9, v10}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v1

    return-object v1
.end method

.method private p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;
    .locals 1

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/j;

    invoke-direct {v0, p1, p2}, Lj$/time/j;-><init>(Lj$/time/h;Lj$/time/l;)V

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

    new-instance v0, Lj$/time/u;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lj$/time/u;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final C(Lj$/time/temporal/p;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/k;->f()Lj$/time/temporal/p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/j;->a:Lj$/time/h;

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/i;->k(Lj$/time/chrono/e;Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/j;->c()Lj$/time/chrono/b;

    move-result-object v1

    check-cast v1, Lj$/time/h;

    invoke-virtual {v1}, Lj$/time/h;->y()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/j;->b()Lj$/time/l;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/l;->m0()J

    move-result-wide v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final I(Lj$/time/chrono/e;)I
    .locals 1

    instance-of v0, p1, Lj$/time/j;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/j;

    invoke-direct {p0, p1}, Lj$/time/j;->V(Lj$/time/j;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/i;->c(Lj$/time/chrono/e;Lj$/time/chrono/e;)I

    move-result p1

    return p1
.end method

.method public final X()I
    .locals 1

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->Z()I

    move-result v0

    return v0
.end method

.method public final Y()I
    .locals 1

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->Z()I

    move-result v0

    return v0
.end method

.method public final Z()I
    .locals 1

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->a0()I

    move-result v0

    return v0
.end method

.method public final a()Lj$/time/chrono/n;
    .locals 1

    invoke-virtual {p0}, Lj$/time/j;->c()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->a()Lj$/time/chrono/n;

    move-result-object v0

    return-object v0
.end method

.method public final a0()I
    .locals 1

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->c0()I

    move-result v0

    return v0
.end method

.method public final b()Lj$/time/l;
    .locals 1

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    return-object v0
.end method

.method public final b0()I
    .locals 1

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->b0()I

    move-result v0

    return v0
.end method

.method public final c()Lj$/time/chrono/b;
    .locals 1

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    return-object v0
.end method

.method public final c0()I
    .locals 1

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->c0()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/e;

    invoke-virtual {p0, p1}, Lj$/time/j;->I(Lj$/time/chrono/e;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/j;->n0(JLj$/time/temporal/n;)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final d0()I
    .locals 1

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->e0()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/j;->j0(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final e0(Lj$/time/j;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lj$/time/j;->V(Lj$/time/j;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->y()J

    move-result-wide v3

    iget-object v0, p1, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->y()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->m0()J

    move-result-wide v3

    iget-object p1, p1, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {p1}, Lj$/time/l;->m0()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/j;

    iget-object v1, p1, Lj$/time/j;->a:Lj$/time/h;

    iget-object v3, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v3, v1}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/j;->b:Lj$/time/l;

    iget-object p1, p1, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v1, p1}, Lj$/time/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final f(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J
    .locals 10

    invoke-static {p1}, Lj$/time/j;->W(Lj$/time/temporal/Temporal;)Lj$/time/j;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x1

    iget-object v3, p0, Lj$/time/j;->b:Lj$/time/l;

    iget-object v4, p0, Lj$/time/j;->a:Lj$/time/h;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lj$/time/h;->y()J

    move-result-wide v5

    invoke-virtual {v4}, Lj$/time/h;->y()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    iget-object p1, p1, Lj$/time/j;->b:Lj$/time/l;

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    invoke-virtual {v3, p1, p2}, Lj$/time/l;->f(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_1
    invoke-virtual {p1}, Lj$/time/l;->m0()J

    move-result-wide v7

    invoke-virtual {v3}, Lj$/time/l;->m0()J

    move-result-wide v3

    sub-long/2addr v7, v3

    const-wide v3, 0x4e94914f0000L

    if-lez v0, :cond_2

    sub-long/2addr v5, v1

    add-long/2addr v7, v3

    goto :goto_1

    :cond_2
    add-long/2addr v5, v1

    sub-long/2addr v7, v3

    :goto_1
    sget-object p1, Lj$/time/i;->a:[I

    check-cast p2, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 p1, 0x2

    int-to-long p1, p1

    invoke-static {v5, v6, p1, p2}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v5

    const-wide p1, 0x274a48a78000L

    div-long/2addr v7, p1

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x18

    int-to-long p1, p1

    invoke-static {v5, v6, p1, p2}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v5

    const-wide p1, 0x34630b8a000L

    div-long/2addr v7, p1

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x5a0

    int-to-long p1, p1

    invoke-static {v5, v6, p1, p2}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v5

    const-wide p1, 0xdf8475800L

    div-long/2addr v7, p1

    goto :goto_2

    :pswitch_3
    const p1, 0x15180

    int-to-long p1, p1

    invoke-static {v5, v6, p1, p2}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v5

    const-wide/32 p1, 0x3b9aca00

    div-long/2addr v7, p1

    goto :goto_2

    :pswitch_4
    const-wide/32 p1, 0x5265c00

    invoke-static {v5, v6, p1, p2}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v5

    const-wide/32 p1, 0xf4240

    div-long/2addr v7, p1

    goto :goto_2

    :pswitch_5
    const-wide p1, 0x141dd76000L

    invoke-static {v5, v6, p1, p2}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v5

    const-wide/16 p1, 0x3e8

    div-long/2addr v7, p1

    goto :goto_2

    :pswitch_6
    invoke-static {v5, v6, v3, v4}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide v5

    :goto_2
    invoke-static {v5, v6, v7, v8}, Lj$/nio/channels/c;->g(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_3
    iget-object v0, p1, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lj$/time/h;

    iget-object p1, p1, Lj$/time/j;->b:Lj$/time/l;

    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Lj$/time/h;->V(Lj$/time/h;)I

    move-result v5

    if-lez v5, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lj$/time/h;->y()J

    move-result-wide v5

    invoke-virtual {v4}, Lj$/time/h;->y()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_5

    :goto_3
    invoke-virtual {p1, v3}, Lj$/time/l;->V(Lj$/time/l;)I

    move-result v5

    if-gez v5, :cond_5

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v4}, Lj$/time/h;->f0(Lj$/time/chrono/b;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v3}, Lj$/time/l;->V(Lj$/time/l;)I

    move-result p1

    if-lez p1, :cond_6

    invoke-virtual {v0, v1, v2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-virtual {v4, v0, p2}, Lj$/time/h;->f(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_7
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    nop

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

.method public final f0(Lj$/time/j;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lj$/time/j;->V(Lj$/time/j;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->y()J

    move-result-wide v3

    iget-object v0, p1, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->y()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->m0()J

    move-result-wide v3

    iget-object p1, p1, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {p1}, Lj$/time/l;->m0()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
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

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v1}, Lj$/time/l;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j0(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;
    .locals 21

    move-object/from16 v10, p0

    move-wide/from16 v8, p1

    move-object/from16 v0, p3

    instance-of v1, v0, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    sget-object v2, Lj$/time/i;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    iget-object v2, v10, Lj$/time/j;->b:Lj$/time/l;

    iget-object v3, v10, Lj$/time/j;->a:Lj$/time/h;

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v3, v8, v9, v0}, Lj$/time/h;->m0(JLj$/time/temporal/TemporalUnit;)Lj$/time/h;

    move-result-object v0

    invoke-direct {v10, v0, v2}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-wide/16 v0, 0x100

    div-long v4, v8, v0

    invoke-virtual {v3, v4, v5}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object v3

    invoke-direct {v10, v3, v2}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/16 v2, 0xc

    mul-long v13, v0, v2

    iget-object v12, v11, Lj$/time/j;->a:Lj$/time/h;

    const-wide/16 v19, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/j;->l0(Lj$/time/h;JJJJ)Lj$/time/j;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v1, v10, Lj$/time/j;->a:Lj$/time/h;

    const-wide/16 v11, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lj$/time/j;->l0(Lj$/time/h;JJJJ)Lj$/time/j;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v1, v10, Lj$/time/j;->a:Lj$/time/h;

    const-wide/16 v11, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lj$/time/j;->l0(Lj$/time/h;JJJJ)Lj$/time/j;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lj$/time/j;->k0(J)Lj$/time/j;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    div-long v4, v8, v0

    invoke-virtual {v3, v4, v5}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object v3

    invoke-direct {v10, v3, v2}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/32 v2, 0xf4240

    mul-long v19, v0, v2

    iget-object v12, v11, Lj$/time/j;->a:Lj$/time/h;

    const-wide/16 v17, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/j;->l0(Lj$/time/h;JJJJ)Lj$/time/j;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide v0, 0x141dd76000L

    div-long v4, v8, v0

    invoke-virtual {v3, v4, v5}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object v3

    invoke-direct {v10, v3, v2}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object v11

    rem-long v0, v8, v0

    const-wide/16 v2, 0x3e8

    mul-long v19, v0, v2

    iget-object v12, v11, Lj$/time/j;->a:Lj$/time/h;

    const-wide/16 v17, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v11 .. v20}, Lj$/time/j;->l0(Lj$/time/h;JJJJ)Lj$/time/j;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v1, v10, Lj$/time/j;->a:Lj$/time/h;

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/j;->l0(Lj$/time/h;JJJJ)Lj$/time/j;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0, v10, v8, v9}, Lj$/time/temporal/TemporalUnit;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Lj$/time/j;

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

.method public final k(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/j;->j0(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/j;->j0(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/j;->j0(JLj$/time/temporal/TemporalUnit;)Lj$/time/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final k0(J)Lj$/time/j;
    .locals 10

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lj$/time/j;->a:Lj$/time/h;

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Lj$/time/j;->l0(Lj$/time/h;JJJJ)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final m0()Lj$/time/h;
    .locals 1

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    return-object v0
.end method

.method public final n(Lj$/time/temporal/n;)I
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0, p1}, Lj$/time/l;->n(Lj$/time/temporal/n;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->n(Lj$/time/temporal/n;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/k;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)I

    move-result p1

    return p1
.end method

.method public final n0(JLj$/time/temporal/n;)Lj$/time/j;
    .locals 3

    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->W()Z

    move-result v0

    iget-object v1, p0, Lj$/time/j;->b:Lj$/time/l;

    iget-object v2, p0, Lj$/time/j;->a:Lj$/time/h;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/l;->o0(JLj$/time/temporal/n;)Lj$/time/l;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v2, p1, p2, p3}, Lj$/time/h;->r0(JLj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/n;->s(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/j;

    return-object p1
.end method

.method public final o0(Lj$/time/h;)Lj$/time/j;
    .locals 1

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-direct {p0, p1, v0}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method final q0(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->v0(Ljava/io/DataOutput;)V

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0, p1}, Lj$/time/l;->q0(Ljava/io/DataOutput;)V

    return-void
.end method

.method public final r(Lj$/time/h;)Lj$/time/temporal/Temporal;
    .locals 1

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-direct {p0, p1, v0}, Lj$/time/j;->p0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

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

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lj$/time/temporal/k;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->s(Lj$/time/temporal/n;)Lj$/time/temporal/r;

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

    invoke-static {p0, p1, v0}, Lj$/time/ZonedDateTime;->X(Lj$/time/j;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)Lj$/time/ZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/j;->b:Lj$/time/l;

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

.method public final x(Lj$/time/temporal/n;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/j;->b:Lj$/time/l;

    invoke-virtual {v0, p1}, Lj$/time/l;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/j;->a:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->n(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method
