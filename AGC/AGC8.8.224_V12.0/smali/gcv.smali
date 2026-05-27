.class public final Lgcv;
.super Ljava/lang/Object;

# interfaces
.implements Lgcs;


# instance fields
.field private final a:Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

.field private b:D


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/stats/ViewfinderJankSession;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4040800000000000L    # 33.0

    iput-wide v0, p0, Lgcv;->b:D

    iput-object p1, p0, Lgcv;->a:Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

    return-void
.end method


# virtual methods
.method public final a(Lkou;DD)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v0, v1, Lgcv;->a:Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

    iget v4, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->d:I

    iget-wide v4, v1, Lgcv;->b:D

    const-wide v6, 0x4040800000000000L    # 33.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_4

    cmpl-double v8, v2, v6

    if-lez v8, :cond_4

    sub-double v8, v2, v4

    div-double/2addr v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v12, v8, v10

    if-ltz v12, :cond_4

    iget-object v12, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->a:Ljava/lang/Object;

    monitor-enter v12

    cmpl-double v13, v8, v10

    if-ltz v13, :cond_0

    :try_start_0
    iget v10, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->e:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->e:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    cmpl-double v13, v8, v10

    if-ltz v13, :cond_1

    iget v13, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->f:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->f:I

    :cond_1
    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    cmpl-double v15, v8, v13

    if-ltz v15, :cond_2

    iget v13, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->g:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->g:I

    :cond_2
    cmpl-double v13, v8, v10

    if-ltz v13, :cond_3

    move-object/from16 v8, p1

    invoke-static {v8, v2, v3, v4, v5}, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->c(Lkou;DD)Lnig;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;->a(Lnig;)V

    :cond_3
    monitor-exit v12

    goto :goto_2

    :goto_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_2
    cmpl-double v0, v2, v6

    if-lez v0, :cond_6

    iget-wide v4, v1, Lgcv;->b:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    div-double/2addr v2, v4

    iput-wide v2, v1, Lgcv;->b:D

    return-void

    :cond_5
    iput-wide v2, v1, Lgcv;->b:D

    :cond_6
    return-void
.end method
