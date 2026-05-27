.class public final Lfoo;
.super Lchk;

# interfaces
.implements Lcqs;


# static fields
.field public static final b:Lnak;


# instance fields
.field public final c:Lcox;

.field public final d:Lcqa;

.field public final e:Ljava/lang/Object;

.field public final f:Lcgy;

.field public g:Lmqp;

.field public h:Z

.field public i:Lcsc;

.field public final j:Lfvx;

.field private final k:Landroid/content/res/Resources;

.field private final l:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final m:Lcvf;

.field private final n:Lfmf;

.field private final o:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field private final p:Ljava/util/concurrent/Executor;

.field private final q:Ldlj;

.field private r:Ljuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/modules/videointent/VideoIntentModule"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfoo;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lcgy;Lcox;Landroid/content/res/Resources;Lcom/google/android/apps/camera/bottombar/BottomBarController;Loiw;Lfvx;Ljava/util/concurrent/Executor;Lcvf;Ldlj;Lfmf;[B[B)V
    .locals 0

    invoke-direct {p0}, Lchk;-><init>()V

    new-instance p11, Ljava/lang/Object;

    invoke-direct {p11}, Ljava/lang/Object;-><init>()V

    iput-object p11, p0, Lfoo;->e:Ljava/lang/Object;

    sget-object p11, Lmpx;->a:Lmpx;

    iput-object p11, p0, Lfoo;->g:Lmqp;

    const/4 p11, 0x0

    iput-boolean p11, p0, Lfoo;->h:Z

    iput-object p1, p0, Lfoo;->f:Lcgy;

    iput-object p2, p0, Lfoo;->c:Lcox;

    iput-object p3, p0, Lfoo;->k:Landroid/content/res/Resources;

    iput-object p4, p0, Lfoo;->l:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-interface {p5}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcqa;

    iput-object p1, p0, Lfoo;->d:Lcqa;

    iput-object p8, p0, Lfoo;->m:Lcvf;

    iput-object p10, p0, Lfoo;->n:Lfmf;

    new-instance p1, Lfon;

    invoke-direct {p1, p0}, Lfon;-><init>(Lfoo;)V

    iput-object p1, p0, Lfoo;->o:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    iput-object p6, p0, Lfoo;->j:Lfvx;

    iput-object p7, p0, Lfoo;->p:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lfoo;->q:Ldlj;

    return-void
.end method


# virtual methods
.method public final bZ()V
    .locals 0

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfoo;->k:Landroid/content/res/Resources;

    const v1, 0x7f140584

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cc()V
    .locals 4

    iget-object v0, p0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoo;->d:Lcqa;

    iget-object v2, p0, Lfoo;->f:Lcgy;

    invoke-interface {v2}, Lcgy;->g()Lcha;

    move-result-object v2

    sget-object v3, Lika;->i:Lika;

    invoke-virtual {v1, v2, v3}, Lcqa;->c(Lcha;Lika;)V

    iget-object v1, p0, Lfoo;->c:Lcox;

    invoke-virtual {v1}, Lcox;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final cd()V
    .locals 2

    iget-object v0, p0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoo;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lfoo;->p:Ljava/util/concurrent/Executor;

    new-instance v1, Lfof;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lfof;-><init>(Lfoo;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoo;->c:Lcox;

    invoke-virtual {v1}, Lcox;->a()Lcpk;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfoo;->c:Lcox;

    invoke-virtual {v1}, Lcox;->a()Lcpk;

    move-result-object v1

    iget-object v1, v1, Lcpk;->s:Lcsc;

    iput-object v1, p0, Lfoo;->i:Lcsc;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i(Z)V
    .locals 3

    iget-object v0, p0, Lfoo;->d:Lcqa;

    invoke-virtual {v0}, Lcqa;->o()I

    iget-object v0, p0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoo;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->o()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lfoo;->g:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    const-string v1, "URI not set."

    invoke-static {p1, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lfoo;->g:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-boolean v1, p0, Lfoo;->h:Z

    iget-object v1, p0, Lfoo;->f:Lcgy;

    invoke-interface {v1, p1}, Lcgy;->n(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfoo;->c:Lcox;

    invoke-virtual {v1, p1}, Lcox;->g(Z)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lchk;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfoo;->c:Lcox;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcox;->q(I)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    iget-object v0, p0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoo;->c:Lcox;

    iget-object v2, p0, Lfoo;->d:Lcqa;

    invoke-virtual {v2}, Lcqa;->o()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcox;->l(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iput-object v1, p0, Lfoo;->r:Ljuf;

    iget-object v1, p0, Lfoo;->n:Lfmf;

    sget-object v2, Lika;->i:Lika;

    iget-object v3, p0, Lfoo;->r:Ljuf;

    invoke-virtual {v1, p0, v2, v3}, Lfmf;->b(Lchk;Lika;Ljuf;)V

    iget-object v1, p0, Lfoo;->l:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Lfoo;->o:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v1, p0, Lfoo;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->h()V

    iget-object v1, p0, Lfoo;->c:Lcox;

    invoke-virtual {v1, p0}, Lcox;->b(Lcqs;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o(Lfsf;)V
    .locals 5

    iget-object v0, p0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lfsf;->d:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lfof;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lfof;-><init>(Lfoo;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, Lfsf;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcsx;

    iget-object v2, p0, Lfoo;->i:Lcsc;

    if-nez v2, :cond_1

    sget-object p1, Lfoo;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v2, 0x991

    invoke-interface {p1, v2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v2, "Session config is null."

    invoke-interface {p1, v2}, Lnah;->o(Ljava/lang/String;)V

    iget-object p1, p0, Lfoo;->q:Ldlj;

    iget-object v1, v1, Lcsx;->t:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    invoke-interface {p1, v1, v2}, Ldlj;->e(J)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, v2, Lcsc;->i:Lmqp;

    iput-object v2, p0, Lfoo;->g:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcsx;->a:Lctd;

    invoke-interface {v2}, Lctd;->c()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgxn;

    iget-object v2, v2, Lgxn;->a:Lkph;

    invoke-interface {v2}, Lkph;->b()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    iput-object v2, p0, Lfoo;->g:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    iget-object v2, p0, Lfoo;->m:Lcvf;

    invoke-virtual {v2, v1}, Lcvf;->d(Lcsx;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lfoo;->q:Ldlj;

    iget-object v1, v1, Lcsx;->t:Lgxz;

    iget-wide v3, v1, Lgxz;->b:J

    invoke-interface {v2, v3, v4}, Ldlj;->i(J)V

    :goto_0
    iget-object v1, p0, Lfoo;->d:Lcqa;

    iget-object p1, p1, Lfsf;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcqa;->h:Lcpc;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Lcpc;->b(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lfoo;->d:Lcqa;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcqa;->j(Z)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoo;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->i()V

    iget-object v1, p0, Lfoo;->c:Lcox;

    invoke-virtual {v1}, Lcox;->m()V

    iget-object v1, p0, Lfoo;->r:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    iget-object v1, p0, Lfoo;->c:Lcox;

    invoke-virtual {v1, p0}, Lcox;->k(Lcqs;)V

    iget-object v1, p0, Lfoo;->l:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Lfoo;->o:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lfoo;->d:Lcqa;

    invoke-virtual {v0}, Lcqa;->o()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lfoo;->x()V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lfoo;->c:Lcox;

    invoke-virtual {v0}, Lcox;->n()Z

    move-result v0

    return v0
.end method

.method public final w()V
    .locals 4

    iget-object v0, p0, Lfoo;->g:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfoo;->g:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lfoo;->p:Ljava/util/concurrent/Executor;

    new-instance v2, Levy;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v0, v3}, Levy;-><init>(Lfoo;Landroid/net/Uri;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 4

    invoke-virtual {p0}, Lfoo;->w()V

    iget-object v0, p0, Lfoo;->d:Lcqa;

    iget-object v0, v0, Lcqa;->h:Lcpc;

    invoke-virtual {v0}, Lcpc;->a()V

    iget-object v0, p0, Lfoo;->d:Lcqa;

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lclr;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lclr;-><init>(Lcqa;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lfoo;->c:Lcox;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcox;->q(I)V

    return-void
.end method
