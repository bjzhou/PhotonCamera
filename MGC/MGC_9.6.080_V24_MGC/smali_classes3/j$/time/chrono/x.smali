.class public final Lj$/time/chrono/x;
.super Lj$/time/chrono/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/chrono/x;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/time/chrono/x;

    invoke-direct {v0}, Lj$/time/chrono/x;-><init>()V

    sput-object v0, Lj$/time/chrono/x;->d:Lj$/time/chrono/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/time/chrono/a;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final J(I)Lj$/time/chrono/b;
    .locals 2

    new-instance v0, Lj$/time/chrono/z;

    const/4 v1, 0x1

    invoke-static {p1, v1, v1}, Lj$/time/h;->j0(III)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/z;-><init>(Lj$/time/h;)V

    return-object v0
.end method

.method public final M(Lj$/time/temporal/a;)Lj$/time/temporal/r;
    .locals 6

    sget-object v0, Lj$/time/chrono/w;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lj$/time/temporal/a;->k()Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :pswitch_0
    sget-object p1, Lj$/time/chrono/A;->d:Lj$/time/chrono/A;

    invoke-virtual {p1}, Lj$/time/chrono/A;->getValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {}, Lj$/time/chrono/A;->m()Lj$/time/chrono/A;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/chrono/A;->getValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :pswitch_1
    sget-object p1, Lj$/time/chrono/z;->d:Lj$/time/h;

    invoke-virtual {p1}, Lj$/time/h;->e0()I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/r;->j(JJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {}, Lj$/time/chrono/A;->u()J

    move-result-wide v2

    sget-object p1, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->k()Lj$/time/temporal/r;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/temporal/r;->d()J

    move-result-wide v4

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {}, Lj$/time/chrono/A;->m()Lj$/time/chrono/A;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/chrono/A;->o()Lj$/time/h;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/h;->e0()I

    move-result p1

    invoke-static {}, Lj$/time/chrono/A;->w()J

    move-result-wide v2

    const v0, 0x3b9ac9ff

    sub-int/2addr v0, p1

    int-to-long v4, v0

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/r;->k(JJJ)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-instance v0, Lj$/time/temporal/q;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported field: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final N(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/k;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/time/chrono/m;->W(Lj$/time/chrono/n;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/m;

    move-result-object p1

    return-object p1
.end method

.method public final R(J)Z
    .locals 1

    sget-object v0, Lj$/time/chrono/u;->d:Lj$/time/chrono/u;

    invoke-virtual {v0, p1, p2}, Lj$/time/chrono/u;->R(J)Z

    move-result p1

    return p1
.end method

.method public final S(I)Lj$/time/chrono/o;
    .locals 0

    invoke-static {p1}, Lj$/time/chrono/A;->q(I)Lj$/time/chrono/A;

    move-result-object p1

    return-object p1
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, "Japanese"

    return-object v0
.end method

.method public final o(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;
    .locals 1

    instance-of v0, p1, Lj$/time/chrono/z;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/chrono/z;

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/chrono/z;

    invoke-static {p1}, Lj$/time/h;->X(Lj$/time/temporal/TemporalAccessor;)Lj$/time/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/chrono/z;-><init>(Lj$/time/h;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    const-string v0, "japanese"

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/time/chrono/G;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/G;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method
