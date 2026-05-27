.class public final Lhzh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Ljuh;

.field public final d:Lmrl;

.field public volatile e:Lnph;

.field public volatile f:Lnph;

.field public final g:Lgus;

.field public h:Lnup;

.field private final i:Ldhi;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/lens/LensUtil"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhzh;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljuh;Ljava/util/concurrent/Executor;Ldhi;Lgus;Lmrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhzh;->b:Landroid/app/Activity;

    iput-object p2, p0, Lhzh;->c:Ljuh;

    iput-object p4, p0, Lhzh;->i:Ldhi;

    iput-object p5, p0, Lhzh;->g:Lgus;

    invoke-static {p6}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Lhzh;->d:Lmrl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhzh;->j:Z

    new-instance p1, Lhxc;

    const/16 p2, 0xc

    invoke-direct {p1, p0, p2}, Lhxc;-><init>(Lhzh;I)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 2

    iget-object v0, p0, Lhzh;->i:Ldhi;

    sget-object v1, Ldho;->aF:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lhzh;->g()V

    iget-object v0, p0, Lhzh;->e:Lnph;

    return-object v0
.end method

.method public final b()Lnou;
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lhzh;->h:Lnup;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lnup;->b:Landroid/graphics/Bitmap;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    iget-object v1, v0, Lnup;->g:Landroid/graphics/PointF;

    iget-object v3, v0, Lnup;->d:Lnui;

    iget-object v0, v0, Lnup;->f:Ljava/lang/Integer;

    invoke-virtual {p0}, Lhzh;->f()V

    invoke-static {}, Lnup;->c()Loem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Loem;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iput-object v1, v6, Loem;->e:Ljava/lang/Object;

    :cond_1
    if-eqz v3, :cond_2

    iput-object v3, v6, Loem;->b:Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    iput-object v0, v6, Loem;->d:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/lens/sdk/LensApi;->onResume()V

    new-instance v7, Lhzc;

    const/4 v8, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lhzc;-><init>(Lhzh;Landroid/graphics/Bitmap;Loem;J[B)V

    invoke-static {v7}, Lqh;->b(Lxw;)Lnou;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Lhxc;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lhxc;-><init>(Lhzh;I)V

    invoke-virtual {p0, v0}, Lhzh;->c(Ljava/lang/Runnable;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;)Lnou;
    .locals 3

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lhzh;->c:Ljuh;

    new-instance v2, Lhzb;

    invoke-direct {v2, p0, p1, v0}, Lhzb;-><init>(Lhzh;Ljava/lang/Runnable;Lnph;)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final d()Lnou;
    .locals 1

    invoke-virtual {p0}, Lhzh;->g()V

    iget-object v0, p0, Lhzh;->f:Lnph;

    return-object v0
.end method

.method public final e()Lcom/google/lens/sdk/LensApi;
    .locals 1

    iget-object v0, p0, Lhzh;->d:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/lens/sdk/LensApi;

    return-object v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lhzh;->h:Lnup;

    return-void
.end method

.method public final g()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lhzh;->j:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lhzh;->e:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lhzh;->f:Lnph;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhzh;->j:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lhzh;->c:Ljuh;

    new-instance v1, Lhxc;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lhxc;-><init>(Lhzh;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
