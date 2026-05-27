.class public final Lfra;
.super Lfqx;


# instance fields
.field final c:J

.field d:Lmqp;

.field public e:Lmqp;

.field final f:F

.field final g:F


# direct methods
.method public constructor <init>(JFF)V
    .locals 1

    invoke-direct {p0}, Lfqx;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lfra;->d:Lmqp;

    iput-object v0, p0, Lfra;->e:Lmqp;

    iput-wide p1, p0, Lfra;->c:J

    iput p3, p0, Lfra;->f:F

    iput p4, p0, Lfra;->g:F

    return-void
.end method


# virtual methods
.method public final c()Lmym;
    .locals 2

    iget-wide v0, p0, Lfra;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v0}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
