.class final Lapc;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I

.field final c:J

.field final d:J


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lapc;->a:I

    iput p2, p0, Lapc;->b:I

    iput-wide p3, p0, Lapc;->c:J

    iput-wide p5, p0, Lapc;->d:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Lapc;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lapc;

    iget v2, p0, Lapc;->b:I

    iget v3, p1, Lapc;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lapc;->c:J

    iget-wide v4, p1, Lapc;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lapc;->a:I

    iget v3, p1, Lapc;->a:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lapc;->d:J

    iget-wide v4, p1, Lapc;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lapc;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lapc;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lapc;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lapc;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
