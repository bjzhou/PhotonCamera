.class public final Lj$/util/OptionalDouble;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lj$/util/OptionalDouble;


# instance fields
.field private final a:Z

.field private final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/OptionalDouble;

    invoke-direct {v0}, Lj$/util/OptionalDouble;-><init>()V

    sput-object v0, Lj$/util/OptionalDouble;->c:Lj$/util/OptionalDouble;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/OptionalDouble;->a:Z

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lj$/util/OptionalDouble;->b:D

    return-void
.end method

.method private constructor <init>(D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/OptionalDouble;->a:Z

    iput-wide p1, p0, Lj$/util/OptionalDouble;->b:D

    return-void
.end method

.method public static a()Lj$/util/OptionalDouble;
    .locals 1

    sget-object v0, Lj$/util/OptionalDouble;->c:Lj$/util/OptionalDouble;

    return-object v0
.end method

.method public static b(D)Lj$/util/OptionalDouble;
    .locals 1

    new-instance v0, Lj$/util/OptionalDouble;

    invoke-direct {v0, p0, p1}, Lj$/util/OptionalDouble;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/util/OptionalDouble;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj$/util/OptionalDouble;

    iget-boolean v1, p0, Lj$/util/OptionalDouble;->a:Z

    if-eqz v1, :cond_3

    iget-boolean v3, p1, Lj$/util/OptionalDouble;->a:Z

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lj$/util/OptionalDouble;->b:D

    iget-wide v5, p1, Lj$/util/OptionalDouble;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean p1, p1, Lj$/util/OptionalDouble;->a:Z

    if-ne v1, p1, :cond_2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lj$/util/OptionalDouble;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalDouble;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public orElse(D)D
    .locals 1

    iget-boolean v0, p0, Lj$/util/OptionalDouble;->a:Z

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lj$/util/OptionalDouble;->b:D

    :cond_0
    return-wide p1
.end method

.method public orElseThrow()D
    .locals 2

    iget-boolean v0, p0, Lj$/util/OptionalDouble;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lj$/util/OptionalDouble;->b:D

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lj$/util/OptionalDouble;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptionalDouble["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lj$/util/OptionalDouble;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalDouble.empty"

    :goto_0
    return-object v0
.end method
