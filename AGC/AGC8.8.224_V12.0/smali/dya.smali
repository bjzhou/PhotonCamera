.class public final Ldya;
.super Ljava/lang/Object;

# interfaces
.implements Ldxz;


# instance fields
.field final synthetic a:Ldxz;

.field final synthetic b:J


# direct methods
.method public constructor <init>(Ldxz;J)V
    .locals 0

    iput-object p1, p0, Ldya;->a:Ldxz;

    iput-wide p2, p0, Ldya;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Ljyp;
    .locals 4

    iget-object v0, p0, Ldya;->a:Ldxz;

    invoke-interface {v0, p1, p2}, Ldxz;->b(J)Ljyp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Ljyp;->a:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-wide v1, p0, Ldya;->b:J

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(J)Ljyp;
    .locals 1

    iget-object v0, p0, Ldya;->a:Ldxz;

    invoke-interface {v0, p1, p2}, Ldxz;->b(J)Ljyp;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ldya;->a:Ldxz;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Ldya;->b:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[maxTimeDiffNs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
