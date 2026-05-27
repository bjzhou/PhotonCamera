.class public final Lmdc;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method public constructor <init>(Llyf;I)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Llyf;->f:J

    invoke-static {v0, v1}, Llyh;->g(J)D

    move-result-wide v2

    iput-wide v2, p0, Lmdc;->a:D

    int-to-long p1, p2

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Llyh;->g(J)D

    move-result-wide p1

    iput-wide p1, p0, Lmdc;->b:D

    return-void
.end method


# virtual methods
.method public final a(J)D
    .locals 2

    iget-wide v0, p0, Lmdc;->b:D

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    iget-wide p1, p0, Lmdc;->a:D

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Llyh;->f(D)D

    move-result-wide p1

    return-wide p1
.end method
