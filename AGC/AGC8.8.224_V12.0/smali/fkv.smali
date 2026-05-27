.class public final Lfkv;
.super Ljava/lang/Object;

# interfaces
.implements Lfkx;


# instance fields
.field private volatile a:F

.field private volatile b:F

.field private final c:Lfjx;

.field private final d:Lgsk;


# direct methods
.method public constructor <init>(Lfjx;Lgsk;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfkv;->d:Lgsk;

    iput-object p1, p0, Lfkv;->c:Lfjx;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lfkv;->a:F

    iget p1, p2, Lgsk;->a:F

    iput p1, p0, Lfkv;->b:F

    return-void
.end method


# virtual methods
.method public final a()Lfkq;
    .locals 1

    sget-object v0, Lfkq;->c:Lfkq;

    return-object v0
.end method

.method public final b(Lgrw;Lgrw;)Z
    .locals 6

    iget-object v0, p0, Lfkv;->c:Lfjx;

    invoke-virtual {v0, p1, p2}, Lfjx;->a(Lgrw;Lgrw;)F

    move-result v0

    iget-wide v1, p2, Lgrw;->c:J

    iget-wide p1, p1, Lgrw;->c:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 v1, 0xbebc200

    cmp-long v3, p1, v1

    if-gtz v3, :cond_3

    iget v1, p0, Lfkv;->a:F

    float-to-double v2, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, p1

    double-to-float p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lfkv;->a:F

    iget p1, p0, Lfkv;->a:F

    iget-object p2, p0, Lfkv;->d:Lgsk;

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43160000    # 150.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    iget p1, p2, Lgsk;->b:F

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget p1, p2, Lgsk;->a:F

    goto :goto_0

    :cond_2
    iget v1, p2, Lgsk;->b:F

    const/high16 v2, -0x3cea0000    # -150.0f

    add-float/2addr p1, v2

    iget p2, p2, Lgsk;->a:F

    sub-float/2addr p2, v1

    mul-float p1, p1, p2

    const/high16 p2, 0x42480000    # 50.0f

    div-float/2addr p1, p2

    add-float/2addr p1, v1

    :goto_0
    iput p1, p0, Lfkv;->b:F

    :cond_3
    iget p1, p0, Lfkv;->b:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
