.class public final Leld;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Leld;->a:F

    const/4 v0, 0x4

    iput v0, p0, Leld;->f:I

    iput-object p1, p0, Leld;->d:Ljava/lang/Object;

    iput-object p1, p0, Leld;->b:Ljava/lang/Object;

    iput-object p1, p0, Leld;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leld;->e:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Leld;->a:F

    const/4 v0, 0x4

    iput v0, p0, Leld;->f:I

    iget-object v0, p0, Leld;->d:Ljava/lang/Object;

    iput-object v0, p0, Leld;->b:Ljava/lang/Object;

    iput-object v0, p0, Leld;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leld;->e:J

    return-void
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Leld;->e:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Leld;->e:J

    iget v0, p0, Leld;->f:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v7, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    packed-switch v0, :pswitch_data_1

    const-string v0, "FADED_OUT"

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Leld;->c:Ljava/lang/Object;

    iget-object v1, p0, Leld;->d:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Leld;->b:Ljava/lang/Object;

    iput v4, p0, Leld;->f:I

    iget v0, p0, Leld;->a:F

    long-to-float v1, v2

    div-float/2addr v1, v6

    add-float/2addr v0, v1

    iput v0, p0, Leld;->a:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_0

    iput v7, p0, Leld;->a:F

    :cond_0
    return-void

    :pswitch_1
    iget v0, p0, Leld;->a:F

    long-to-float v1, v2

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    iput v0, p0, Leld;->a:F

    iget-object v1, p0, Leld;->c:Ljava/lang/Object;

    iget-object v2, p0, Leld;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    iput v4, p0, Leld;->f:I

    return-void

    :cond_1
    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    iput v2, p0, Leld;->a:F

    const/4 v0, 0x4

    iput v0, p0, Leld;->f:I

    iput-object v1, p0, Leld;->b:Ljava/lang/Object;

    :cond_2
    return-void

    :pswitch_2
    iget-object v0, p0, Leld;->c:Ljava/lang/Object;

    iget-object v1, p0, Leld;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    iput v5, p0, Leld;->f:I

    :cond_3
    return-void

    :pswitch_3
    iget v0, p0, Leld;->a:F

    long-to-float v1, v2

    div-float/2addr v1, v6

    add-float/2addr v0, v1

    iput v0, p0, Leld;->a:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_5

    iput v7, p0, Leld;->a:F

    iget-object v0, p0, Leld;->c:Ljava/lang/Object;

    iget-object v1, p0, Leld;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    iput v5, p0, Leld;->f:I

    return-void

    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Leld;->f:I

    :cond_5
    return-void

    :pswitch_4
    const-string v0, "FADING_OUT"

    goto :goto_0

    :pswitch_5
    const-string v0, "FADED_IN"

    goto :goto_0

    :pswitch_6
    const-string v0, "FADING_IN"

    :goto_0
    const-string v2, "Unhandled FadeState: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
