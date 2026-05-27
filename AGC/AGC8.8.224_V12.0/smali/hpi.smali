.class public final synthetic Lhpi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Leuh;FJI)V
    .locals 0

    iput p5, p0, Lhpi;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhpi;->c:Ljava/lang/Object;

    iput p2, p0, Lhpi;->b:F

    iput-wide p3, p0, Lhpi;->a:J

    return-void
.end method

.method public synthetic constructor <init>(Lhpq;JFI)V
    .locals 0

    iput p5, p0, Lhpi;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhpi;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lhpi;->a:J

    iput p4, p0, Lhpi;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lhpi;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhpi;->c:Ljava/lang/Object;

    iget v1, p0, Lhpi;->b:F

    iget-wide v2, p0, Lhpi;->a:J

    check-cast v0, Leuh;

    iget-object v4, v0, Leuh;->a:Leuj;

    iget-object v4, v4, Leuj;->i:Liff;

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v1

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Liff;->D(IJZ)V

    invoke-virtual {v0, v1}, Leuh;->g(F)V

    iget-object v2, v0, Leuh;->a:Leuj;

    iget-object v2, v2, Leuj;->k:Lfmd;

    invoke-interface {v2}, Lfmd;->a()V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, v0, Leuh;->a:Leuj;

    iget-object v1, v1, Leuj;->i:Liff;

    invoke-interface {v1}, Liff;->m()V

    iget-object v0, v0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->j:Lhgy;

    const v1, 0x7f130008

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhpi;->c:Ljava/lang/Object;

    iget-wide v1, p0, Lhpi;->a:J

    iget v3, p0, Lhpi;->b:F

    check-cast v0, Lhpq;

    invoke-virtual {v0}, Lhpq;->k()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v3, v0, Lhpq;->h:Lhxb;

    float-to-long v4, v4

    invoke-interface {v3, v4, v5}, Lhxb;->g(J)V

    iget-object v3, v0, Lhpq;->D:Lipk;

    const-string v6, "/video_state_recording_output"

    invoke-interface {v3, v6, v4, v5}, Lipk;->l(Ljava/lang/String;J)V

    iget-object v3, v0, Lhpq;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    iget-object v3, v0, Lhpq;->p:Liff;

    invoke-interface {v3}, Liff;->ak()V

    iget-object v0, v0, Lhpq;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
