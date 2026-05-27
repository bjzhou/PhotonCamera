.class final Leub;
.super Lftk;


# instance fields
.field final synthetic a:Leuc;

.field private final b:Z


# direct methods
.method public constructor <init>(Leuc;Z)V
    .locals 0

    iput-object p1, p0, Leub;->a:Leuc;

    invoke-direct {p0}, Lftk;-><init>()V

    iput-boolean p2, p0, Leub;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->B:Ldfb;

    invoke-virtual {v0}, Ldfb;->b()V

    iget-object v0, p0, Leub;->a:Leuc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leuc;->w(Z)V

    return-void
.end method

.method public final b(J)V
    .locals 2

    sget-object p1, Leuc;->b:Lnak;

    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->w:Lebl;

    invoke-virtual {p1}, Lebl;->l()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Leub;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p2, p1, Leuc;->f:Ljuh;

    iget-object p1, p1, Leuc;->p:Lfdu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lett;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lett;-><init>(Lfdu;I)V

    invoke-virtual {p2, v0}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(F)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leub;->a:Leuc;

    iget-boolean v2, p0, Leub;->b:Z

    invoke-virtual {v0, v1, v2}, Leuc;->z(ZZ)V

    :cond_0
    iget-object v0, p0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->N:Lfcv;

    invoke-virtual {v0, p1}, Lfcv;->b(F)V

    iget-object v0, p0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->s:Liff;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-interface {v0, v2}, Liff;->C(I)V

    iget-object v0, p0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->h:Lflv;

    invoke-virtual {v0}, Lflv;->a()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Leub;->a:Leuc;

    invoke-virtual {p1, v1}, Leuc;->B(Z)V

    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->s:Liff;

    invoke-interface {p1}, Liff;->l()V

    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->L:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->onFinish()V

    :cond_1
    return-void
.end method

.method public final e(FI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leub;->a:Leuc;

    invoke-virtual {v0, v1, v1}, Leuc;->z(ZZ)V

    iget-object v0, p0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->N:Lfcv;

    invoke-virtual {v0}, Lfcv;->c()V

    :cond_0
    iget-object v0, p0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->n:Lflp;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v2, v2, p1

    iget-object v3, v0, Lflp;->b:Lihx;

    iput p2, v3, Lihx;->i:I

    float-to-int p2, v2

    invoke-virtual {v3, p2}, Lihx;->b(I)V

    const/16 v2, 0x64

    if-lt p2, v2, :cond_1

    iget-object v0, v0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    :goto_0
    iget-object v0, p0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->s:Liff;

    invoke-interface {v0, p2}, Liff;->C(I)V

    iget-object p2, p0, Leub;->a:Leuc;

    iget-object p2, p2, Leuc;->h:Lflv;

    invoke-virtual {p2}, Lflv;->a()V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->N:Lfcv;

    invoke-virtual {p1}, Lfcv;->a()V

    iget-object p1, p0, Leub;->a:Leuc;

    invoke-virtual {p1, v1}, Leuc;->B(Z)V

    :cond_2
    return-void
.end method

.method public final f(FJ)V
    .locals 10

    iget-object v0, p0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->w:Lebl;

    invoke-virtual {v0}, Lebl;->l()Z

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Leub;->a:Leuc;

    iget-boolean v2, p0, Leub;->b:Z

    invoke-virtual {v1, v0, v2}, Leuc;->z(ZZ)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Leub;->a:Leuc;

    iget-object v1, v1, Leuc;->B:Ldfb;

    invoke-virtual {v1}, Ldfb;->a()V

    iget-object v1, p0, Leub;->a:Leuc;

    iget-object v1, v1, Leuc;->N:Lfcv;

    invoke-virtual {v1}, Lfcv;->c()V

    const-wide/16 v1, 0x1f4

    add-long/2addr p2, v1

    iget-object v1, p0, Leub;->a:Leuc;

    new-instance v2, Leua;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    move-object v3, v2

    move-object v4, p0

    move-wide v5, p2

    move v9, p1

    invoke-direct/range {v3 .. v9}, Leua;-><init>(Leub;JJF)V

    iput-object v2, v1, Leuc;->L:Landroid/os/CountDownTimer;

    iget-object v1, p0, Leub;->a:Leuc;

    iget-object v1, v1, Leuc;->L:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Leub;->a:Leuc;

    iget-object v1, v1, Leuc;->A:Ldfo;

    new-instance v2, Letz;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Letz;-><init>(Leub;I)V

    invoke-virtual {v1, v2}, Ldfo;->f(Ldfn;)V

    goto :goto_0

    :cond_1
    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    iget-object v2, p0, Leub;->a:Leuc;

    iget-object v2, v2, Leuc;->s:Liff;

    float-to-int v1, v1

    invoke-interface {v2, v1, p2, p3, v0}, Liff;->D(IJZ)V

    if-nez v0, :cond_3

    iget-object v2, p0, Leub;->a:Leuc;

    iget-object v2, v2, Leuc;->A:Ldfo;

    invoke-virtual {v2}, Ldfo;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leub;->a:Leuc;

    iget-object v2, v2, Leuc;->N:Lfcv;

    invoke-virtual {v2, p1}, Lfcv;->b(F)V

    :cond_2
    iget-object v2, p0, Leub;->a:Leuc;

    iget-object v2, v2, Leuc;->E:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Leub;->a:Leuc;

    iget-object v3, v2, Leuc;->C:Lebi;

    iget-boolean v3, v3, Lebi;->h:Z

    if-eqz v3, :cond_4

    iget-object v2, v2, Leuc;->E:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lckq;

    invoke-static {p2, p3}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lckq;->x(Lj$/time/Duration;I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Leub;->a:Leuc;

    iget-object v2, v2, Leuc;->n:Lflp;

    invoke-virtual {v2, v1}, Lflp;->f(I)V

    :cond_4
    :goto_1
    iget-object v1, p0, Leub;->a:Leuc;

    iget-object v1, v1, Leuc;->h:Lflv;

    invoke-virtual {v1}, Lflv;->a()V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_6

    iget-object p1, p0, Leub;->a:Leuc;

    invoke-virtual {p1, v0}, Leuc;->B(Z)V

    if-eqz v0, :cond_5

    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->B:Ldfb;

    invoke-virtual {p1}, Ldfb;->b()V

    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->N:Lfcv;

    invoke-virtual {p1}, Lfcv;->a()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->U:Lgxb;

    invoke-virtual {p1, p2, p3}, Lgxb;->l(J)V

    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->s:Liff;

    invoke-interface {p1}, Liff;->l()V

    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->A:Ldfo;

    invoke-virtual {p1}, Ldfo;->e()V

    :goto_2
    iget-object p1, p0, Leub;->a:Leuc;

    iget-object p1, p1, Leuc;->L:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->onFinish()V

    return-void

    :cond_6
    return-void
.end method
