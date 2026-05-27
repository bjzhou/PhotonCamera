.class final Leua;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:F

.field final synthetic b:Leub;


# direct methods
.method public constructor <init>(Leub;JJF)V
    .locals 0

    iput-object p1, p0, Leua;->b:Leub;

    iput p6, p0, Leua;->a:F

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Leua;->b:Leub;

    iget-object v0, v0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->s:Liff;

    invoke-interface {v0}, Liff;->q()V

    invoke-virtual {p0}, Leua;->cancel()V

    return-void
.end method

.method public final onTick(J)V
    .locals 8

    iget-object v0, p0, Leua;->b:Leub;

    iget-object v0, v0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->n:Lflp;

    iget v1, p0, Leua;->a:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    iget-object v2, v0, Lflp;->b:Lihx;

    iput-wide p1, v2, Lihx;->h:J

    const-wide/16 v3, 0x3c

    div-long v5, p1, v3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v7, v6

    rem-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v7, p2

    const-string p1, "%01d:%02d"

    invoke-static {p1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lihx;->l:Ljava/lang/String;

    invoke-virtual {v2}, Lihx;->invalidate()V

    float-to-int p1, v1

    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    iget-object p1, v0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    iput-boolean p2, p1, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    return-void

    :cond_0
    iget-object p1, v0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    iput-boolean v6, p1, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    return-void
.end method
