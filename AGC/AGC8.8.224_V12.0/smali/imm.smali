.class public final Limm;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Limm;Limm;)D
    .locals 6

    iget-wide v0, p0, Limm;->a:D

    iget-wide v2, p1, Limm;->a:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Limm;->b:D

    iget-wide v4, p1, Limm;->b:D

    mul-double v2, v2, v4

    iget-wide v4, p0, Limm;->c:D

    iget-wide p0, p1, Limm;->c:D

    mul-double v4, v4, p0

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static c(Limm;Limm;Limm;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Limm;->b:D

    iget-wide v4, v1, Limm;->c:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Limm;->c:D

    iget-wide v10, v1, Limm;->b:D

    mul-double v12, v8, v10

    iget-wide v14, v1, Limm;->a:D

    mul-double v8, v8, v14

    iget-wide v0, v0, Limm;->a:D

    mul-double v4, v4, v0

    mul-double v0, v0, v10

    mul-double v2, v2, v14

    sub-double v15, v6, v12

    sub-double v17, v8, v4

    sub-double v19, v0, v2

    move-object/from16 v14, p2

    invoke-virtual/range {v14 .. v20}, Limm;->g(DDD)V

    return-void
.end method


# virtual methods
.method public final b()D
    .locals 6

    iget-wide v0, p0, Limm;->a:D

    mul-double v0, v0, v0

    iget-wide v2, p0, Limm;->b:D

    mul-double v2, v2, v2

    iget-wide v4, p0, Limm;->c:D

    mul-double v4, v4, v4

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()V
    .locals 5

    invoke-virtual {p0}, Limm;->b()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Limm;->e(D)V

    :cond_0
    return-void
.end method

.method public final e(D)V
    .locals 2

    iget-wide v0, p0, Limm;->a:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Limm;->a:D

    iget-wide v0, p0, Limm;->b:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Limm;->b:D

    iget-wide v0, p0, Limm;->c:D

    mul-double v0, v0, p1

    iput-wide v0, p0, Limm;->c:D

    return-void
.end method

.method public final f(Limm;)V
    .locals 2

    iget-wide v0, p1, Limm;->a:D

    iput-wide v0, p0, Limm;->a:D

    iget-wide v0, p1, Limm;->b:D

    iput-wide v0, p0, Limm;->b:D

    iget-wide v0, p1, Limm;->c:D

    iput-wide v0, p0, Limm;->c:D

    return-void
.end method

.method public final g(DDD)V
    .locals 0

    iput-wide p1, p0, Limm;->a:D

    iput-wide p3, p0, Limm;->b:D

    iput-wide p5, p0, Limm;->c:D

    return-void
.end method

.method public final h()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Limm;->c:D

    iput-wide v0, p0, Limm;->b:D

    iput-wide v0, p0, Limm;->a:D

    return-void
.end method
