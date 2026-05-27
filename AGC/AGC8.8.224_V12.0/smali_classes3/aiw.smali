.class public final Laiw;
.super Ljava/lang/Object;


# instance fields
.field a:D

.field b:D

.field public c:D

.field public d:D

.field private e:Z

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private final j:Laio;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Laiw;->a:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Laiw;->b:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Laiw;->e:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Laiw;->i:D

    new-instance v0, Laio;

    invoke-direct {v0}, Laio;-><init>()V

    iput-object v0, p0, Laiw;->j:Laio;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Laiw;->a:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Laiw;->b:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Laiw;->e:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Laiw;->i:D

    new-instance v0, Laio;

    invoke-direct {v0}, Laio;-><init>()V

    iput-object v0, p0, Laiw;->j:Laio;

    float-to-double v0, p1

    iput-wide v0, p0, Laiw;->i:D

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    iget-wide v0, p0, Laiw;->i:D

    double-to-float v0, v0

    return v0
.end method

.method final b(DDJ)Laio;
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Laiw;->e:Z

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v4, v0, Laiw;->i:D

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_5

    iget-wide v4, v0, Laiw;->b:D

    cmpl-double v1, v4, v2

    if-lez v1, :cond_1

    neg-double v6, v4

    iget-wide v8, v0, Laiw;->a:D

    mul-double v6, v6, v8

    mul-double v4, v4, v4

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v8, v8, v4

    add-double/2addr v6, v8

    iput-wide v6, v0, Laiw;->f:D

    iget-wide v4, v0, Laiw;->b:D

    neg-double v6, v4

    iget-wide v8, v0, Laiw;->a:D

    mul-double v6, v6, v8

    mul-double v4, v4, v4

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v8, v8, v4

    sub-double/2addr v6, v8

    iput-wide v6, v0, Laiw;->g:D

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_2

    cmpg-double v1, v4, v2

    if-gez v1, :cond_2

    iget-wide v6, v0, Laiw;->a:D

    mul-double v4, v4, v4

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v6, v6, v4

    iput-wide v6, v0, Laiw;->h:D

    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Laiw;->e:Z

    :goto_1
    move-wide/from16 v4, p5

    long-to-double v4, v4

    iget-wide v6, v0, Laiw;->i:D

    sub-double v6, p1, v6

    iget-wide v8, v0, Laiw;->b:D

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    cmpl-double v1, v8, v2

    const-wide v12, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v12

    if-lez v1, :cond_3

    iget-wide v1, v0, Laiw;->g:D

    mul-double v8, v1, v6

    sub-double v8, v8, p3

    iget-wide v12, v0, Laiw;->f:D

    sub-double v12, v1, v12

    div-double/2addr v8, v12

    sub-double/2addr v6, v8

    mul-double v1, v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v6

    iget-wide v12, v0, Laiw;->f:D

    mul-double v12, v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v8

    iget-wide v14, v0, Laiw;->g:D

    mul-double v6, v6, v14

    mul-double v14, v14, v4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v6, v6, v14

    iget-wide v14, v0, Laiw;->f:D

    mul-double v8, v8, v14

    mul-double v14, v14, v4

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v8, v8, v3

    add-double/2addr v6, v8

    add-double/2addr v1, v12

    goto/16 :goto_2

    :cond_3
    cmpl-double v1, v8, v2

    if-nez v1, :cond_4

    iget-wide v1, v0, Laiw;->a:D

    mul-double v8, v1, v6

    add-double v8, p3, v8

    mul-double v12, v8, v4

    add-double/2addr v6, v12

    neg-double v1, v1

    mul-double v1, v1, v4

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v6

    iget-wide v12, v0, Laiw;->a:D

    neg-double v12, v12

    mul-double v12, v12, v4

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v6, v6, v12

    iget-wide v12, v0, Laiw;->a:D

    neg-double v12, v12

    mul-double v4, v4, v12

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v8, v8, v3

    mul-double v6, v6, v12

    add-double/2addr v6, v8

    goto :goto_2

    :cond_4
    iget-wide v12, v0, Laiw;->h:D

    div-double/2addr v2, v12

    iget-wide v12, v0, Laiw;->a:D

    mul-double v14, v8, v12

    mul-double v14, v14, v6

    add-double v14, v14, p3

    neg-double v8, v8

    mul-double v8, v8, v12

    mul-double v8, v8, v4

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget-wide v12, v0, Laiw;->h:D

    mul-double v12, v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v6

    iget-wide v10, v0, Laiw;->h:D

    mul-double v10, v10, v4

    mul-double v2, v2, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v2

    add-double/2addr v12, v10

    mul-double v8, v8, v12

    iget-wide v10, v0, Laiw;->a:D

    neg-double v12, v10

    iget-wide v14, v0, Laiw;->b:D

    mul-double v12, v12, v8

    mul-double v12, v12, v14

    neg-double v14, v14

    mul-double v14, v14, v10

    mul-double v14, v14, v4

    const-wide v10, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget-wide v14, v0, Laiw;->h:D

    move-wide/from16 p1, v8

    neg-double v8, v14

    mul-double v8, v8, v6

    mul-double v14, v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v8, v8, v6

    iget-wide v6, v0, Laiw;->h:D

    mul-double v2, v2, v6

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v8, v2

    mul-double v10, v10, v8

    add-double v6, v12, v10

    move-wide/from16 v1, p1

    :goto_2
    iget-object v3, v0, Laiw;->j:Laio;

    iget-wide v4, v0, Laiw;->i:D

    add-double/2addr v1, v4

    double-to-float v1, v1

    iput v1, v3, Laio;->a:F

    double-to-float v1, v6

    iput v1, v3, Laio;->b:F

    return-object v3

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v0, p1

    iput-wide v0, p0, Laiw;->b:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Laiw;->e:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Damping ratio must be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(F)V
    .locals 2

    float-to-double v0, p1

    iput-wide v0, p0, Laiw;->i:D

    return-void
.end method

.method public final e(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Laiw;->a:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Laiw;->e:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Spring stiffness constant must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
