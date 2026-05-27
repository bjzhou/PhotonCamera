.class public final Lkjw;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public volatile b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkjw;->b:J

    iput-wide p3, p0, Lkjw;->a:J

    return-void
.end method


# virtual methods
.method public final a(JJ)Z
    .locals 6

    sub-long/2addr p1, p3

    iget-wide p3, p0, Lkjw;->b:J

    add-long/2addr p1, p3

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    iget-wide v3, p0, Lkjw;->a:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    cmp-long v1, p1, v3

    if-gez v1, :cond_1

    neg-long v1, v3

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    sub-long/2addr p3, p1

    iput-wide p3, p0, Lkjw;->b:J

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(JJ)Z
    .locals 1

    sub-long/2addr p3, p1

    iget-wide p1, p0, Lkjw;->b:J

    sub-long/2addr p3, p1

    iget-wide p1, p0, Lkjw;->a:J

    add-long/2addr p3, p1

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
