.class public final Lcom/google/googlex/gcam/base/LongPair;
.super Ljava/lang/Object;


# instance fields
.field public first:J

.field public second:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/base/LongPair;->first:J

    iput-wide v0, p0, Lcom/google/googlex/gcam/base/LongPair;->second:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/googlex/gcam/base/LongPair;->first:J

    iput-wide p3, p0, Lcom/google/googlex/gcam/base/LongPair;->second:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/googlex/gcam/base/LongPair;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/googlex/gcam/base/LongPair;

    iget-wide v2, p0, Lcom/google/googlex/gcam/base/LongPair;->first:J

    iget-wide v4, p1, Lcom/google/googlex/gcam/base/LongPair;->first:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/googlex/gcam/base/LongPair;->second:J

    iget-wide v4, p1, Lcom/google/googlex/gcam/base/LongPair;->second:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/googlex/gcam/base/LongPair;->first:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/googlex/gcam/base/LongPair;->second:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
