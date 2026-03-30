.class public final Lj$/time/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/Temporal;
.implements Lj$/time/temporal/l;
.implements Lj$/time/chrono/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/h;

.field public static final e:Lj$/time/h;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final a:I

.field private final b:S

.field private final c:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/h;->j0(III)Lj$/time/h;

    move-result-object v0

    sput-object v0, Lj$/time/h;->d:Lj$/time/h;

    const/16 v0, 0xc

    const/16 v2, 0x1f

    const v3, 0x3b9ac9ff

    invoke-static {v3, v0, v2}, Lj$/time/h;->j0(III)Lj$/time/h;

    move-result-object v0

    sput-object v0, Lj$/time/h;->e:Lj$/time/h;

    const/16 v0, 0x7b2

    invoke-static {v0, v1, v1}, Lj$/time/h;->j0(III)Lj$/time/h;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/h;->a:I

    int-to-short p1, p2

    iput-short p1, p0, Lj$/time/h;->b:S

    int-to-short p1, p3

    iput-short p1, p0, Lj$/time/h;->c:S

    return-void
.end method

.method private static W(III)Lj$/time/h;
    .locals 5

    const/16 v0, 0x1c

    if-le p2, v0, :cond_4

    const/4 v1, 0x2

    const/16 v2, 0x1d

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0

    :cond_1
    sget-object v1, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    int-to-long v3, p0

    invoke-virtual {v1, v3, v4}, Lj$/time/chrono/u;->R(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1d

    :cond_2
    :goto_0
    if-le p2, v0, :cond_4

    if-ne p2, v2, :cond_3

    new-instance p1, Lj$/time/b;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid date \'February 29\' as \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Lj$/time/b;

    invoke-static {p1}, Lj$/time/m;->Y(I)Lj$/time/m;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid date \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Lj$/time/h;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/h;-><init>(III)V

    return-object v0
.end method

.method public static X(Lj$/time/temporal/TemporalAccessor;)Lj$/time/h;
    .locals 4

    const-string v0, "temporal"

    invoke-static {p0, v0}, Lj$/util/Objects;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lj$/time/temporal/k;->f()Lj$/time/temporal/p;

    move-result-object v0

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->C(Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lj$/time/b;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Unable to obtain LocalDate from TemporalAccessor: "

    const-string v3, " of type "

    invoke-static {v2, v1, v3, p0}, Lj$/time/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Y(Lj$/time/temporal/n;)I
    .locals 4

    sget-object v0, Lj$/time/g;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-short v1, p0, Lj$/time/h;->c:S

    iget v2, p0, Lj$/time/h;->a:I

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/time/temporal/q;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported field: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_1
    return v2

    :pswitch_2
    new-instance p1, Lj$/time/temporal/q;

    const-string v0, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    iget-short p1, p0, Lj$/time/h;->b:S

    return p1

    :pswitch_4
    invoke-virtual {p0}, Lj$/time/h;->b0()I

    move-result p1

    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v3

    return p1

    :pswitch_5
    new-instance p1, Lj$/time/temporal/q;

    const-string v0, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    invoke-virtual {p0}, Lj$/time/h;->b0()I

    move-result p1

    sub-int/2addr p1, v3

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v3

    return p1

    :pswitch_7
    sub-int/2addr v1, v3

    rem-int/lit8 v1, v1, 0x7

    :goto_1
    add-int/2addr v1, v3

    return v1

    :pswitch_8
    invoke-virtual {p0}, Lj$/time/h;->a0()Lj$/time/c;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/c;->getValue()I

    move-result p1

    return p1

    :pswitch_9
    if-lt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    rsub-int/lit8 v2, v2, 0x1

    :goto_2
    return v2

    :pswitch_a
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x7

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lj$/time/h;->b0()I

    move-result p1

    return p1

    :pswitch_c
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d0()J
    .locals 4

    iget v0, p0, Lj$/time/h;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Lj$/time/h;->b:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private i0(Lj$/time/h;)J
    .locals 8

    invoke-direct {p0}, Lj$/time/h;->d0()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long v0, v0, v2

    iget-short v4, p0, Lj$/time/h;->c:S

    int-to-long v4, v4

    add-long/2addr v0, v4

    invoke-direct {p1}, Lj$/time/h;->d0()J

    move-result-wide v4

    mul-long v4, v4, v2

    iget-short p1, p1, Lj$/time/h;->c:S

    int-to-long v6, p1

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    div-long/2addr v4, v2

    return-wide v4
.end method

.method public static j0(III)Lj$/time/h;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->V(J)V

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->V(J)V

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->V(J)V

    invoke-static {p0, p1, p2}, Lj$/time/h;->W(III)Lj$/time/h;

    move-result-object p0

    return-object p0
.end method

.method public static k0(ILj$/time/m;I)Lj$/time/h;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->V(J)V

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->V(J)V

    invoke-virtual {p1}, Lj$/time/m;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lj$/time/h;->W(III)Lj$/time/h;

    move-result-object p0

    return-object p0
.end method

.method public static l0(J)Lj$/time/h;
    .locals 22

    move-wide/from16 v0, p0

    sget-object v2, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-virtual {v2, v0, v1}, Lj$/time/temporal/a;->V(J)V

    const-wide/32 v2, 0xafa6c

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x23ab1

    const-wide/16 v8, 0x190

    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-gez v12, :cond_0

    const-wide/32 v12, 0xafa6d

    add-long/2addr v0, v12

    div-long/2addr v0, v6

    sub-long/2addr v0, v4

    mul-long v12, v0, v8

    neg-long v0, v0

    mul-long v0, v0, v6

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    move-wide v12, v10

    :goto_0
    mul-long v0, v2, v8

    const-wide/16 v14, 0x24f

    add-long/2addr v0, v14

    div-long/2addr v0, v6

    const-wide/16 v6, 0x16d

    mul-long v14, v0, v6

    const-wide/16 v16, 0x4

    div-long v18, v0, v16

    add-long v18, v18, v14

    const-wide/16 v14, 0x64

    div-long v20, v0, v14

    sub-long v18, v18, v20

    div-long v20, v0, v8

    add-long v20, v20, v18

    sub-long v18, v2, v20

    cmp-long v20, v18, v10

    if-gez v20, :cond_1

    sub-long/2addr v0, v4

    mul-long v6, v6, v0

    div-long v4, v0, v16

    add-long/2addr v4, v6

    div-long v6, v0, v14

    sub-long/2addr v4, v6

    div-long v6, v0, v8

    add-long/2addr v6, v4

    sub-long v18, v2, v6

    :cond_1
    move-wide/from16 v2, v18

    add-long/2addr v0, v12

    long-to-int v3, v2

    mul-int/lit8 v2, v3, 0x5

    add-int/lit8 v2, v2, 0x2

    div-int/lit16 v2, v2, 0x99

    add-int/lit8 v4, v2, 0x2

    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v2, 0x132

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0xa

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v2, v2, 0xa

    int-to-long v5, v2

    add-long/2addr v0, v5

    sget-object v2, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v2, v0, v1}, Lj$/time/temporal/a;->F(J)I

    move-result v0

    new-instance v1, Lj$/time/h;

    invoke-direct {v1, v0, v4, v3}, Lj$/time/h;-><init>(III)V

    return-object v1
.end method

.method private static q0(III)Lj$/time/h;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_1
    sget-object v0, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/u;->R(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    new-instance v0, Lj$/time/h;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/h;-><init>(III)V

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

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lj$/time/u;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A(Lj$/time/l;)Lj$/time/chrono/e;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/j;->h0(Lj$/time/h;Lj$/time/l;)Lj$/time/j;

    move-result-object p1

    return-object p1
.end method

.method public final C(Lj$/time/temporal/p;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/time/temporal/k;->f()Lj$/time/temporal/p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/i;->j(Lj$/time/chrono/b;Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->a(Lj$/time/chrono/b;Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final L()Z
    .locals 3

    sget-object v0, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    iget v1, p0, Lj$/time/h;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/u;->R(J)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic O(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 0

    check-cast p3, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->h0(JLj$/time/temporal/ChronoUnit;)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final P()I
    .locals 1

    invoke-virtual {p0}, Lj$/time/h;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    goto :goto_0

    :cond_0
    const/16 v0, 0x16d

    :goto_0
    return v0
.end method

.method public final Q(Lj$/time/chrono/b;)I
    .locals 1

    instance-of v0, p1, Lj$/time/h;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/h;

    invoke-virtual {p0, p1}, Lj$/time/h;->V(Lj$/time/h;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/chrono/i;->b(Lj$/time/chrono/b;Lj$/time/chrono/b;)I

    move-result p1

    return p1
.end method

.method final V(Lj$/time/h;)I
    .locals 2

    iget v0, p1, Lj$/time/h;->a:I

    iget v1, p0, Lj$/time/h;->a:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    iget-short v0, p0, Lj$/time/h;->b:S

    iget-short v1, p1, Lj$/time/h;->b:S

    sub-int v1, v0, v1

    if-nez v1, :cond_0

    iget-short v0, p0, Lj$/time/h;->c:S

    iget-short p1, p1, Lj$/time/h;->c:S

    sub-int v1, v0, p1

    :cond_0
    return v1
.end method

.method public final Z()I
    .locals 1

    iget-short v0, p0, Lj$/time/h;->c:S

    return v0
.end method

.method public final a()Lj$/time/chrono/n;
    .locals 1

    sget-object v0, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    return-object v0
.end method

.method public final a0()Lj$/time/c;
    .locals 4

    invoke-virtual {p0}, Lj$/time/h;->y()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/nio/file/attribute/n;->g(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lj$/time/c;->V(I)Lj$/time/c;

    move-result-object v0

    return-object v0
.end method

.method public final b0()I
    .locals 2

    iget-short v0, p0, Lj$/time/h;->b:S

    invoke-static {v0}, Lj$/time/m;->Y(I)Lj$/time/m;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/h;->L()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj$/time/m;->V(Z)I

    move-result v0

    iget-short v1, p0, Lj$/time/h;->c:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final c0()I
    .locals 1

    iget-short v0, p0, Lj$/time/h;->b:S

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/b;

    invoke-virtual {p0, p1}, Lj$/time/h;->Q(Lj$/time/chrono/b;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/n;)Lj$/time/chrono/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->r0(JLj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->r0(JLj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->m0(JLj$/time/temporal/TemporalUnit;)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->m0(JLj$/time/temporal/TemporalUnit;)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final e0()I
    .locals 1

    iget v0, p0, Lj$/time/h;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/h;

    invoke-virtual {p0, p1}, Lj$/time/h;->V(Lj$/time/h;)I

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
    .locals 2

    invoke-static {p1}, Lj$/time/h;->X(Lj$/time/temporal/TemporalAccessor;)Lj$/time/h;

    move-result-object p1

    instance-of v0, p2, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/g;->b:[I

    move-object v1, p2

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/q;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Unsupported unit: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p2, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p1, p2}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    invoke-virtual {p0, p2}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    :pswitch_1
    invoke-direct {p0, p1}, Lj$/time/h;->i0(Lj$/time/h;)J

    move-result-wide p1

    const-wide/16 v0, 0x2ee0

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_2
    invoke-direct {p0, p1}, Lj$/time/h;->i0(Lj$/time/h;)J

    move-result-wide p1

    const-wide/16 v0, 0x4b0

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_3
    invoke-direct {p0, p1}, Lj$/time/h;->i0(Lj$/time/h;)J

    move-result-wide p1

    const-wide/16 v0, 0x78

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_4
    invoke-direct {p0, p1}, Lj$/time/h;->i0(Lj$/time/h;)J

    move-result-wide p1

    const-wide/16 v0, 0xc

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_5
    invoke-direct {p0, p1}, Lj$/time/h;->i0(Lj$/time/h;)J

    move-result-wide p1

    return-wide p1

    :pswitch_6
    invoke-virtual {p1}, Lj$/time/h;->y()J

    move-result-wide p1

    invoke-virtual {p0}, Lj$/time/h;->y()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7

    div-long/2addr p1, v0

    return-wide p1

    :pswitch_7
    invoke-virtual {p1}, Lj$/time/h;->y()J

    move-result-wide p1

    invoke-virtual {p0}, Lj$/time/h;->y()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_0
    invoke-interface {p2, p0, p1}, Lj$/time/temporal/TemporalUnit;->k(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f0(Lj$/time/chrono/b;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/h;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/h;

    invoke-virtual {p0, p1}, Lj$/time/h;->V(Lj$/time/h;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lj$/time/h;->y()J

    move-result-wide v3

    invoke-interface {p1}, Lj$/time/chrono/b;->y()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final g(Lj$/time/temporal/n;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->h(Lj$/time/chrono/b;Lj$/time/temporal/n;)Z

    move-result p1

    return p1
.end method

.method public final g0()I
    .locals 2

    const/4 v0, 0x2

    iget-short v1, p0, Lj$/time/h;->b:S

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0

    :cond_1
    invoke-virtual {p0}, Lj$/time/h;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    :goto_0
    return v0
.end method

.method public final h0(JLj$/time/temporal/ChronoUnit;)Lj$/time/h;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->m0(JLj$/time/temporal/TemporalUnit;)Lj$/time/h;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/h;->m0(JLj$/time/temporal/TemporalUnit;)Lj$/time/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->m0(JLj$/time/temporal/TemporalUnit;)Lj$/time/h;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lj$/time/h;->a:I

    and-int/lit16 v1, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    iget-short v2, p0, Lj$/time/h;->b:S

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    iget-short v2, p0, Lj$/time/h;->c:S

    add-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic k(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->h0(JLj$/time/temporal/ChronoUnit;)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final m0(JLj$/time/temporal/TemporalUnit;)Lj$/time/h;
    .locals 2

    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/g;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/q;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unsupported unit: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/nio/channels/c;->g(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/h;->r0(JLj$/time/temporal/n;)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x3e8

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->p0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0x64

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->p0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_3
    const/16 p3, 0xa

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->p0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/h;->p0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/h;->o0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_6
    const/4 p3, 0x7

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/TemporalUnit;->n(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/h;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Lj$/time/temporal/n;)I
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lj$/time/h;->Y(Lj$/time/temporal/n;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/k;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)I

    move-result p1

    return p1
.end method

.method public final n0(J)Lj$/time/h;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget-short v2, p0, Lj$/time/h;->c:S

    int-to-long v2, v2

    add-long/2addr v2, p1

    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    const-wide/16 v0, 0x1c

    iget-short v4, p0, Lj$/time/h;->b:S

    iget v5, p0, Lj$/time/h;->a:I

    cmp-long v6, v2, v0

    if-gtz v6, :cond_1

    new-instance p1, Lj$/time/h;

    long-to-int p2, v2

    invoke-direct {p1, v5, v4, p2}, Lj$/time/h;-><init>(III)V

    return-object p1

    :cond_1
    const-wide/16 v0, 0x3b

    cmp-long v6, v2, v0

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lj$/time/h;->g0()I

    move-result p1

    int-to-long p1, p1

    cmp-long v0, v2, p1

    if-gtz v0, :cond_2

    new-instance p1, Lj$/time/h;

    long-to-int p2, v2

    invoke-direct {p1, v5, v4, p2}, Lj$/time/h;-><init>(III)V

    return-object p1

    :cond_2
    const/16 v0, 0xc

    const/4 v1, 0x1

    if-ge v4, v0, :cond_3

    new-instance v0, Lj$/time/h;

    add-int/2addr v4, v1

    sub-long/2addr v2, p1

    long-to-int p1, v2

    invoke-direct {v0, v5, v4, p1}, Lj$/time/h;-><init>(III)V

    return-object v0

    :cond_3
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    add-int/2addr v5, v1

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lj$/time/temporal/a;->V(J)V

    new-instance v0, Lj$/time/h;

    sub-long/2addr v2, p1

    long-to-int p1, v2

    invoke-direct {v0, v5, v1, p1}, Lj$/time/h;-><init>(III)V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lj$/time/h;->y()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/nio/channels/c;->g(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lj$/time/h;->l0(J)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final o0(J)Lj$/time/h;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/h;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short v2, p0, Lj$/time/h;->b:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-long/2addr v0, p1

    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    const/16 p2, 0xc

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lj$/nio/file/attribute/n;->f(JJ)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lj$/time/temporal/a;->F(J)I

    move-result p1

    invoke-static {v0, v1, v2, v3}, Lj$/nio/file/attribute/n;->g(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    add-int/lit8 p2, p2, 0x1

    iget-short v0, p0, Lj$/time/h;->c:S

    invoke-static {p1, p2, v0}, Lj$/time/h;->q0(III)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final p0(J)Lj$/time/h;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/h;->a:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->F(J)I

    move-result p1

    iget-short p2, p0, Lj$/time/h;->b:S

    iget-short v0, p0, Lj$/time/h;->c:S

    invoke-static {p1, p2, v0}, Lj$/time/h;->q0(III)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic r(Lj$/time/h;)Lj$/time/temporal/Temporal;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/time/h;->s0(Lj$/time/temporal/l;)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method public final r0(JLj$/time/temporal/n;)Lj$/time/h;
    .locals 6

    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->V(J)V

    sget-object v1, Lj$/time/g;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x7

    iget-short v2, p0, Lj$/time/h;->c:S

    iget-short v3, p0, Lj$/time/h;->b:S

    const/4 v4, 0x1

    iget v5, p0, Lj$/time/h;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/q;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unsupported field: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-nez p3, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lj$/time/h;->u0(I)Lj$/time/h;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_1
    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lj$/time/h;->u0(I)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-direct {p0}, Lj$/time/h;->d0()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->o0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_3
    long-to-int p2, p1

    if-ne v3, p2, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    sget-object p1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lj$/time/temporal/a;->V(J)V

    invoke-static {v5, p2, v2}, Lj$/time/h;->q0(III)Lj$/time/h;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_4
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v2

    sub-long/2addr p1, v2

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p1, p2}, Lj$/time/h;->l0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_6
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_7
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0}, Lj$/time/h;->a0()Lj$/time/c;

    move-result-object p3

    invoke-virtual {p3}, Lj$/time/c;->getValue()I

    move-result p3

    int-to-long v0, p3

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_9
    if-lt v5, v4, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v0, 0x1

    sub-long p1, v0, p1

    :goto_2
    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lj$/time/h;->u0(I)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_a
    sget-object p3, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/h;->x(Lj$/time/temporal/n;)J

    move-result-wide v2

    sub-long/2addr p1, v2

    int-to-long v0, v1

    invoke-static {p1, p2, v0, v1}, Lj$/nio/channels/c;->j(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/h;->n0(J)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_b
    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lj$/time/h;->t0(I)Lj$/time/h;

    move-result-object p1

    return-object p1

    :pswitch_c
    long-to-int p2, p1

    if-ne v2, p2, :cond_3

    move-object p1, p0

    goto :goto_3

    :cond_3
    invoke-static {v5, v3, p2}, Lj$/time/h;->j0(III)Lj$/time/h;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_4
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/n;->s(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/h;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lj$/time/temporal/n;)Lj$/time/temporal/r;
    .locals 4

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->C()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lj$/time/g;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->k()Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_0
    iget p1, p0, Lj$/time/h;->a:I

    if-gtz p1, :cond_1

    const-wide/32 v0, 0x3b9aca00

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    goto :goto_0

    :goto_1
    return-object p1

    :cond_2
    iget-short p1, p0, Lj$/time/h;->b:S

    invoke-static {p1}, Lj$/time/m;->Y(I)Lj$/time/m;

    move-result-object p1

    sget-object v0, Lj$/time/m;->FEBRUARY:Lj$/time/m;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/h;->L()Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x5

    :goto_2
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lj$/time/h;->P()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lj$/time/h;->g0()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance v0, Lj$/time/temporal/q;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported field: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->x(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final s0(Lj$/time/temporal/l;)Lj$/time/h;
    .locals 1

    instance-of v0, p1, Lj$/time/h;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/h;

    return-object p1

    :cond_0
    invoke-interface {p1, p0}, Lj$/time/temporal/l;->F(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;

    move-result-object p1

    check-cast p1, Lj$/time/h;

    return-object p1
.end method

.method public final t0(I)Lj$/time/h;
    .locals 6

    invoke-virtual {p0}, Lj$/time/h;->b0()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/h;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lj$/time/temporal/a;->V(J)V

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Lj$/time/temporal/a;->V(J)V

    sget-object v0, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    invoke-virtual {v0, v2, v3}, Lj$/time/chrono/u;->R(J)Z

    move-result v0

    const/16 v2, 0x16e

    if-ne p1, v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lj$/time/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid date \'DayOfYear 366\' as \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a leap year"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    add-int/lit8 v2, p1, -0x1

    div-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lj$/time/m;->Y(I)Lj$/time/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lj$/time/m;->V(Z)I

    move-result v3

    invoke-virtual {v2, v0}, Lj$/time/m;->W(Z)I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_3

    invoke-virtual {v2}, Lj$/time/m;->Z()Lj$/time/m;

    move-result-object v2

    :cond_3
    invoke-virtual {v2, v0}, Lj$/time/m;->V(Z)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    new-instance v0, Lj$/time/h;

    invoke-virtual {v2}, Lj$/time/m;->getValue()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lj$/time/h;-><init>(III)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lj$/time/h;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x270f

    if-le v0, v1, :cond_2

    const/16 v1, 0x2b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, "-"

    const-string v1, "-0"

    iget-short v4, p0, Lj$/time/h;->b:S

    if-ge v4, v3, :cond_3

    move-object v5, v1

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lj$/time/h;->c:S

    if-ge v4, v3, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u0(I)Lj$/time/h;
    .locals 3

    iget v0, p0, Lj$/time/h;->a:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->V(J)V

    iget-short v0, p0, Lj$/time/h;->b:S

    iget-short v1, p0, Lj$/time/h;->c:S

    invoke-static {p1, v0, v1}, Lj$/time/h;->q0(III)Lj$/time/h;

    move-result-object p1

    return-object p1
.end method

.method final v0(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, Lj$/time/h;->a:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-short v0, p0, Lj$/time/h;->b:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-short v0, p0, Lj$/time/h;->c:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public final x(Lj$/time/temporal/n;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/h;->y()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lj$/time/h;->d0()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-direct {p0, p1}, Lj$/time/h;->Y(Lj$/time/temporal/n;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/n;->n(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()J
    .locals 12

    iget v0, p0, Lj$/time/h;->a:I

    int-to-long v0, v0

    iget-short v2, p0, Lj$/time/h;->b:S

    int-to-long v2, v2

    const-wide/16 v4, 0x16d

    mul-long v4, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v0, v8

    const-wide/16 v8, 0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    sub-long v0, v4, v0

    :goto_0
    const-wide/16 v4, 0x16f

    mul-long v4, v4, v2

    const-wide/16 v6, 0x16a

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc

    div-long/2addr v4, v6

    add-long/2addr v4, v0

    iget-short v0, p0, Lj$/time/h;->c:S

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v4, v0

    const-wide/16 v0, 0x2

    cmp-long v6, v2, v0

    if-lez v6, :cond_2

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    invoke-virtual {p0}, Lj$/time/h;->L()Z

    move-result v6

    if-nez v6, :cond_1

    sub-long/2addr v4, v0

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :cond_2
    :goto_1
    const-wide/32 v0, 0xafaa8

    sub-long/2addr v4, v0

    return-wide v4
.end method
