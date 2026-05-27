.class final Lfqz;
.super Lfqx;


# instance fields
.field final c:Lgxy;

.field public final d:J

.field final e:Lnom;


# direct methods
.method public constructor <init>(JLnom;Lgxy;[B[B)V
    .locals 0

    invoke-direct {p0}, Lfqx;-><init>()V

    iput-wide p1, p0, Lfqz;->d:J

    iput-object p4, p0, Lfqz;->c:Lgxy;

    iput-object p3, p0, Lfqz;->e:Lnom;

    return-void
.end method


# virtual methods
.method public final c()Lmym;
    .locals 5

    iget-wide v0, p0, Lfqz;->d:J

    const-wide/32 v2, -0x8f0d180

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lfqz;->d:J

    const-wide/32 v3, 0x8f0d180

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
