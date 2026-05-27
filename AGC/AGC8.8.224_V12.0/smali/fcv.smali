.class public final Lfcv;
.super Licd;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ljuh;

.field public final b:Ljava/util/List;

.field public c:Licf;

.field public d:Licf;

.field public e:Licf;

.field public f:Licf;

.field public final g:Lnou;

.field private final k:Lhrq;

.field private l:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljuh;Lnou;Lhrq;)V
    .locals 0

    invoke-direct {p0, p1}, Licd;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfcv;->b:Ljava/util/List;

    iput-object p2, p0, Lfcv;->a:Ljuh;

    iput-object p3, p0, Lfcv;->g:Lnou;

    iput-object p4, p0, Lfcv;->k:Lhrq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lfcv;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    iget-object v0, p0, Lfcv;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-virtual {p0}, Licd;->f()V

    return-void
.end method

.method public final b(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lfcv;->e:Licf;

    invoke-virtual {p0, p1}, Licd;->g(Licf;)V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Licd;->f()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lfcv;->g:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lceh;->b()V

    :cond_0
    iget-object v0, p0, Lfcv;->k:Lhrq;

    iget-object v1, v0, Lhrq;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lhrq;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lhrq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lhrq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lfcv;->k:Lhrq;

    invoke-virtual {v0}, Lhrq;->c()V

    :cond_2
    new-instance v0, Lfcu;

    invoke-direct {v0, p0}, Lfcu;-><init>(Lfcv;)V

    iput-object v0, p0, Lfcv;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
