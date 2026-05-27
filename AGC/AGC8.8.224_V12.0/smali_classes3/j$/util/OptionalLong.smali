.class public final Lj$/util/OptionalLong;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lj$/util/OptionalLong;


# instance fields
.field private final a:Z

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/OptionalLong;

    invoke-direct {v0}, Lj$/util/OptionalLong;-><init>()V

    sput-object v0, Lj$/util/OptionalLong;->c:Lj$/util/OptionalLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalLong;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj$/util/OptionalLong;->b:J

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalLong;->a:Z

    iput-wide p1, p0, Lj$/util/OptionalLong;->b:J

    return-void
.end method

.method public static a()Lj$/util/OptionalLong;
    .locals 1

    sget-object v0, Lj$/util/OptionalLong;->c:Lj$/util/OptionalLong;

    return-object v0
.end method

.method public static b(J)Lj$/util/OptionalLong;
    .locals 1

    new-instance v0, Lj$/util/OptionalLong;

    invoke-direct {v0, p0, p1}, Lj$/util/OptionalLong;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/util/OptionalLong;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj$/util/OptionalLong;

    iget-boolean v1, p0, Lj$/util/OptionalLong;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v3, p1, Lj$/util/OptionalLong;->a:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lj$/util/OptionalLong;->b:J

    iget-wide v5, p1, Lj$/util/OptionalLong;->b:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean p1, p1, Lj$/util/OptionalLong;->a:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lj$/util/OptionalLong;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    iget-wide v1, p0, Lj$/util/OptionalLong;->b:J

    ushr-long v3, v1, v0

    xor-long/2addr v1, v3

    long-to-int v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier<",
            "+TX;>;)J^TX;"
        }
    .end annotation

    iget-boolean v0, p0, Lj$/util/OptionalLong;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalLong;->b:J

    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lj$/util/OptionalLong;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lj$/util/OptionalLong;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OptionalLong[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalLong.empty"

    :goto_0
    return-object v0
.end method
