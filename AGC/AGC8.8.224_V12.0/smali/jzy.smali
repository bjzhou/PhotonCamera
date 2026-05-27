.class public final Ljzy;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayDeque;

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljzy;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput v0, p0, Ljzy;->b:F

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljzx;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "Sample cannot be null"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    iget v0, p0, Ljzy;->b:F

    iget v1, p1, Ljzx;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Ljzy;->b:F

    iget-object v0, p0, Ljzy;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljzy;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljzx;

    iget-wide v2, v1, Ljzx;->a:J

    const-wide/32 v4, 0xf4240

    add-long/2addr v2, v4

    iget-wide v4, p1, Ljzx;->a:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget v2, p0, Ljzy;->b:F

    iget v1, v1, Ljzx;->b:F

    sub-float/2addr v2, v1

    iput v2, p0, Ljzy;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
