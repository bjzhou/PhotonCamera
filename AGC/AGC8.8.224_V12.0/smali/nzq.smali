.class public final Lnzq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnwf;

.field public static final b:Lnwf;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lnwf;->c:Lnwf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnwf;

    const-wide v3, -0x4979cb9e00L

    iput-wide v3, v2, Lnwf;->a:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_1
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnwf;

    const v2, -0x3b9ac9ff

    iput v2, v1, Lnwf;->b:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnwf;

    sput-object v0, Lnzq;->a:Lnwf;

    sget-object v0, Lnwf;->c:Lnwf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_2
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnwf;

    const-wide v3, 0x4979cb9e00L

    iput-wide v3, v2, Lnwf;->a:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_3
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnwf;

    const v2, 0x3b9ac9ff

    iput v2, v1, Lnwf;->b:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnwf;

    sput-object v0, Lnzq;->b:Lnwf;

    sget-object v0, Lnwf;->c:Lnwf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnwf;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lnwf;->a:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lnwf;

    const/4 v2, 0x0

    iput v2, v1, Lnwf;->b:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnwf;

    return-void
.end method

.method public static a(JI)Lnwf;
    .locals 6

    const v0, 0x3b9aca00

    const v1, -0x3b9aca00

    if-le p2, v1, :cond_1

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    div-int v2, p2, v0

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lnsy;->ac(JJ)J

    move-result-wide p0

    rem-int/2addr p2, v0

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_2

    if-gez p2, :cond_2

    add-int/2addr p2, v0

    const-wide/16 v4, -0x1

    add-long/2addr p0, v4

    goto :goto_2

    :cond_2
    :goto_2
    cmp-long v0, p0, v2

    if-gez v0, :cond_3

    if-lez p2, :cond_3

    add-int/2addr p2, v1

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    goto :goto_3

    :cond_3
    :goto_3
    sget-object v0, Lnwf;->c:Lnwf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_4
    iget-object v1, v0, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnwf;

    iput-wide p0, v2, Lnwf;->a:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_5
    iget-object p0, v0, Lnwn;->b:Lnws;

    check-cast p0, Lnwf;

    iput p2, p0, Lnwf;->b:I

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object p0

    check-cast p0, Lnwf;

    invoke-static {p0}, Lnzq;->b(Lnwf;)V

    return-object p0
.end method

.method public static b(Lnwf;)V
    .locals 7

    iget-wide v0, p0, Lnwf;->a:J

    const-wide v2, -0x4979cb9e00L

    cmp-long v4, v0, v2

    iget p0, p0, Lnwf;->b:I

    if-ltz v4, :cond_2

    const-wide v2, 0x4979cb9e00L

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    int-to-long v2, p0

    const-wide/32 v4, -0x3b9ac9ff

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    const v2, 0x3b9aca00

    if-ge p0, v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    if-gez p0, :cond_1

    :cond_0
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    if-gtz p0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    const-string p0, "Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
