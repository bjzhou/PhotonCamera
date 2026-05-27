.class public final Lgxz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lgxy;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Lgya;

.field public final e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgxy;JLjava/lang/String;Lgya;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxz;->a:Lgxy;

    iput-wide p2, p0, Lgxz;->b:J

    if-eqz p4, :cond_1

    iput-object p4, p0, Lgxz;->c:Ljava/lang/String;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lgxz;->d:Lgya;

    iput-wide p6, p0, Lgxz;->e:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null captureSessionType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null title"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lgxy;JLjava/lang/String;Lgya;)Lgxz;
    .locals 9

    new-instance v8, Lgxz;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v6, v0

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lgxz;-><init>(Lgxy;JLjava/lang/String;Lgya;J)V

    return-object v8
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lgxz;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lgxz;

    iget-object v1, p0, Lgxz;->a:Lgxy;

    if-nez v1, :cond_1

    iget-object v1, p1, Lgxz;->a:Lgxy;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lgxz;->a:Lgxy;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-wide v3, p0, Lgxz;->b:J

    iget-wide v5, p1, Lgxz;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lgxz;->c:Ljava/lang/String;

    iget-object v3, p1, Lgxz;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgxz;->d:Lgya;

    iget-object v3, p1, Lgxz;->d:Lgya;

    invoke-virtual {v1, v3}, Lgya;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lgxz;->e:J

    iget-wide v5, p1, Lgxz;->e:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lgxz;->a:Lgxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-wide v1, p0, Lgxz;->b:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    iget-object v4, p0, Lgxz;->c:Ljava/lang/String;

    const v5, 0xf4243

    xor-int/2addr v0, v5

    mul-int v0, v0, v5

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lgxz;->d:Lgya;

    mul-int v0, v0, v5

    invoke-virtual {v1}, Lgya;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lgxz;->e:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    mul-int v0, v0, v5

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lgxz;->a:Lgxy;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lgxz;->b:J

    iget-object v3, p0, Lgxz;->c:Ljava/lang/String;

    iget-object v4, p0, Lgxz;->d:Lgya;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lgxz;->e:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ShotInfo{shotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shotIdForTracker="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", captureSessionType="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
