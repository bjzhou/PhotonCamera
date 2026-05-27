.class public final Lkeg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lkeg;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lkeg;

    const-wide/16 v5, -0x1

    move-object v0, v7

    move-wide v1, v5

    move-wide v3, v5

    invoke-direct/range {v0 .. v6}, Lkeg;-><init>(JJJ)V

    sput-object v7, Lkeg;->a:Lkeg;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkeg;->b:J

    iput-wide p3, p0, Lkeg;->c:J

    iput-wide p5, p0, Lkeg;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lkeg;)I
    .locals 4

    iget-wide v0, p0, Lkeg;->d:J

    iget-wide v2, p1, Lkeg;->d:J

    cmp-long p1, v0, v2

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkeg;

    invoke-virtual {p0, p1}, Lkeg;->a(Lkeg;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lkeg;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lkeg;

    iget-wide v2, p0, Lkeg;->d:J

    iget-wide v4, p1, Lkeg;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-wide v2, p0, Lkeg;->b:J

    iget-wide v4, p1, Lkeg;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-wide v2, p0, Lkeg;->c:J

    iget-wide v4, p1, Lkeg;->c:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lkeg;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lkeg;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lkeg;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-wide v1, p0, Lkeg;->b:J

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lkeg;->d:J

    const-string v3, "onStartedId"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    iget-wide v1, p0, Lkeg;->c:J

    const-string v3, "frameNumber"

    invoke-virtual {v0, v3, v1, v2}, Lmqo;->f(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
