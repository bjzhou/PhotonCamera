.class public final Lmbj;
.super Ljava/lang/Object;


# instance fields
.field public final a:D

.field private final b:J

.field private final c:D

.field private final d:D

.field private final e:D


# direct methods
.method public constructor <init>(Llyf;Llwq;J)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lmbj;->b:J

    iget-wide v0, p1, Llyf;->f:J

    invoke-static {v0, v1}, Llyh;->g(J)D

    move-result-wide v0

    iput-wide v0, p0, Lmbj;->c:D

    iget-wide v0, p2, Llwq;->f:J

    invoke-static {v0, v1}, Llyh;->g(J)D

    move-result-wide v0

    iput-wide v0, p0, Lmbj;->d:D

    iget-object p1, p2, Llwq;->j:Llwz;

    iget-wide p1, p1, Llwz;->f:D

    iput-wide p1, p0, Lmbj;->e:D

    long-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Llyh;->f(D)D

    move-result-wide p1

    iput-wide p1, p0, Lmbj;->a:D

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 6

    iget-wide v0, p0, Lmbj;->c:D

    mul-double p1, p1, v0

    iget-wide v2, p0, Lmbj;->d:D

    iget-wide v4, p0, Lmbj;->e:D

    mul-double v2, v2, v4

    iget-wide v4, p0, Lmbj;->b:J

    long-to-double v4, v4

    sub-double/2addr p1, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v4

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Llyh;->f(D)D

    move-result-wide p1

    return-wide p1
.end method
