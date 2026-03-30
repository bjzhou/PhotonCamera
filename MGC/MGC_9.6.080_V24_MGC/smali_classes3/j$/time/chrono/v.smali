.class public final enum Lj$/time/chrono/v;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/o;


# static fields
.field public static final enum BCE:Lj$/time/chrono/v;

.field public static final enum CE:Lj$/time/chrono/v;

.field private static final synthetic a:[Lj$/time/chrono/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lj$/time/chrono/v;

    const-string v3, "BCE"

    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lj$/time/chrono/v;->BCE:Lj$/time/chrono/v;

    new-instance v3, Lj$/time/chrono/v;

    const-string v4, "CE"

    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/time/chrono/v;->CE:Lj$/time/chrono/v;

    const/4 v4, 0x2

    new-array v4, v4, [Lj$/time/chrono/v;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    sput-object v4, Lj$/time/chrono/v;->a:[Lj$/time/chrono/v;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/v;
    .locals 1

    const-class v0, Lj$/time/chrono/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/v;

    return-object p0
.end method

.method public static values()[Lj$/time/chrono/v;
    .locals 1

    sget-object v0, Lj$/time/chrono/v;->a:[Lj$/time/chrono/v;

    invoke-virtual {v0}, [Lj$/time/chrono/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/v;

    return-object v0
.end method


# virtual methods
.method public final synthetic C(Lj$/time/temporal/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->m(Lj$/time/chrono/o;Lj$/time/temporal/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final F(Lj$/time/temporal/Temporal;)Lj$/time/temporal/Temporal;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/chrono/v;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/Temporal;->d(JLj$/time/temporal/n;)Lj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic g(Lj$/time/temporal/n;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/time/chrono/i;->i(Lj$/time/chrono/o;Lj$/time/temporal/n;)Z

    move-result p1

    return p1
.end method

.method public final getValue()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final synthetic n(Lj$/time/temporal/n;)I
    .locals 0

    check-cast p1, Lj$/time/temporal/a;

    invoke-static {p0, p1}, Lj$/time/chrono/i;->f(Lj$/time/chrono/o;Lj$/time/temporal/a;)I

    move-result p1

    return p1
.end method

.method public final s(Lj$/time/temporal/n;)Lj$/time/temporal/r;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/k;->d(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/n;)Lj$/time/temporal/r;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic x(Lj$/time/temporal/n;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/time/chrono/i;->g(Lj$/time/chrono/o;Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method
