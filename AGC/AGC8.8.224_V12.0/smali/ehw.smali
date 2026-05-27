.class public final Lehw;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field private b:F

.field private c:I

.field private d:J

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lehw;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lehw;->a:F

    const v0, 0x3ac49ba6    # 0.0015f

    iput v0, p0, Lehw;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lehw;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lehw;->d:J

    const/4 v0, 0x1

    iput v0, p0, Lehw;->f:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lehw;->e:J

    return-void
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lehw;->e:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lehw;->e:J

    iget v0, p0, Lehw;->f:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    packed-switch v1, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    iget-wide v4, p0, Lehw;->d:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lehw;->d:J

    const-wide/16 v1, 0x320

    cmp-long v3, v4, v1

    if-ltz v3, :cond_0

    iput v0, p0, Lehw;->f:I

    return-void

    :pswitch_1
    iget v1, p0, Lehw;->b:F

    long-to-float v2, v2

    const v3, -0x49151e75    # -7.0E-6f

    mul-float v3, v3, v2

    add-float/2addr v1, v3

    iput v1, p0, Lehw;->b:F

    iget v3, p0, Lehw;->a:F

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    iput v3, p0, Lehw;->a:F

    const/4 v2, 0x0

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget v3, p0, Lehw;->c:I

    add-int/2addr v3, v0

    iput v3, p0, Lehw;->c:I

    iput v2, p0, Lehw;->a:F

    const v0, 0x3f0ccccd    # 0.55f

    mul-float v1, v1, v0

    neg-float v0, v1

    iput v0, p0, Lehw;->b:F

    const/4 v0, 0x2

    if-lt v3, v0, :cond_0

    iput v0, p0, Lehw;->f:I

    const v0, 0x3ac49ba6    # 0.0015f

    iput v0, p0, Lehw;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lehw;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lehw;->d:J

    return-void

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
