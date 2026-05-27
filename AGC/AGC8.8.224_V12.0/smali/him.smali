.class public final Lhim;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lhsw;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lhsx;

.field public final c:Landroid/net/Uri;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public e:Ljava/util/concurrent/ScheduledFuture;

.field public final f:Ligo;

.field private final g:Lhie;

.field private final h:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lhsx;Landroid/net/Uri;Landroid/content/Context;Ligo;Lhie;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lhim;->a:Landroid/content/Context;

    iput-object p4, p0, Lhim;->f:Ligo;

    iput-object p1, p0, Lhim;->b:Lhsx;

    iput-object p2, p0, Lhim;->c:Landroid/net/Uri;

    iput-object p5, p0, Lhim;->g:Lhie;

    iput-object p6, p0, Lhim;->h:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lhim;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhim;->a:Landroid/content/Context;

    invoke-static {v0}, Linb;->w(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lhim;->f:Ligo;

    iget-object v1, p0, Lhim;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ligo;->f(Landroid/net/Uri;)V

    iget-object v0, p0, Lhim;->b:Lhsx;

    invoke-interface {v0}, Lhsx;->l()V

    invoke-virtual {p0}, Lhim;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lhim;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->d(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhim;->b:Lhsx;

    invoke-interface {v0}, Lhsx;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhim;->b:Lhsx;

    invoke-interface {v0}, Lhsx;->c()V

    iget-object v0, p0, Lhim;->b:Lhsx;

    invoke-interface {v0}, Lhsx;->k()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lhim;->b:Lhsx;

    invoke-interface {v0}, Lhsx;->a()V

    iget-object v0, p0, Lhim;->g:Lhie;

    iget-object v1, v0, Lhie;->d:Lhim;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lhie;->c:Lhim;

    invoke-virtual {v0}, Lhim;->b()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lhie;->c:Lhim;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lhie;->d:Lhim;

    invoke-virtual {v0}, Lhim;->b()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lhim;->b:Lhsx;

    invoke-interface {v0}, Lhsx;->m()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lhim;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhim;->e:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lhim;->f:Ligo;

    iget-object v1, p0, Lhim;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ligo;->e(Landroid/net/Uri;)Lnou;

    move-result-object v0

    new-instance v1, Lgij;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lgij;-><init>(Lhim;I)V

    iget-object v2, p0, Lhim;->h:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lhim;->b:Lhsx;

    invoke-interface {v0, p1}, Lhsx;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lhim;->b:Lhsx;

    invoke-interface {v0, p0}, Lhsx;->e(Lhsw;)V

    iget-object v0, p0, Lhim;->f:Ligo;

    iget-object v1, p0, Lhim;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ligo;->e(Landroid/net/Uri;)Lnou;

    move-result-object v0

    new-instance v1, Lgij;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lgij;-><init>(Lhim;I)V

    iget-object v2, p0, Lhim;->h:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lhim;->b:Lhsx;

    invoke-interface {p1}, Lhsx;->k()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lhim;->b:Lhsx;

    invoke-interface {p1}, Lhsx;->n()V

    invoke-virtual {p0}, Lhim;->d()V

    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lhim;->b:Lhsx;

    const/16 v0, 0x29

    invoke-interface {p1, v0}, Lhsx;->d(I)V

    iget-object p1, p0, Lhim;->b:Lhsx;

    invoke-interface {p1}, Lhsx;->k()V

    return-void
.end method
