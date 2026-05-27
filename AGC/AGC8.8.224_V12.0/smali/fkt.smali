.class final Lfkt;
.super Ljava/lang/Object;

# interfaces
.implements Lfkx;


# instance fields
.field final synthetic a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    iput p1, p0, Lfkt;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lfkq;
    .locals 1

    sget-object v0, Lfkq;->d:Lfkq;

    return-object v0
.end method

.method public final b(Lgrw;Lgrw;)Z
    .locals 11

    iget v0, p1, Lgrw;->u:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p1, Lgrw;->v:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget v0, p2, Lgrw;->f:I

    int-to-long v3, v0

    iget-wide v5, p2, Lgrw;->d:J

    mul-long v3, v3, v5

    iget p2, p2, Lgrw;->g:I

    int-to-long v5, p2

    iget p2, p1, Lgrw;->f:I

    int-to-long v7, p2

    iget-wide v9, p1, Lgrw;->d:J

    mul-long v7, v7, v9

    iget p1, p1, Lgrw;->g:I

    int-to-long p1, p1

    mul-long v7, v7, p1

    const-wide/16 p1, 0x64

    div-long/2addr v7, p1

    mul-long v3, v3, v5

    div-long/2addr v3, p1

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    long-to-float p1, p1

    iget p2, p0, Lfkt;->a:F

    long-to-float v0, v3

    mul-float v0, v0, p2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method
