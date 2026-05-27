.class public final Lfes;
.super Ljava/lang/Object;

# interfaces
.implements Lifs;


# instance fields
.field public final a:Lihg;

.field public final b:Lell;

.field public final c:Landroid/os/Handler;

.field public volatile d:Lkad;

.field public final e:Lgxb;

.field private final f:Landroid/content/res/Resources;

.field private final g:Landroid/content/SharedPreferences;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Z

.field private j:Liem;

.field private k:Lkad;

.field private l:Ljava/util/concurrent/ScheduledFuture;

.field private final m:Lcdi;

.field private final n:Ljew;


# direct methods
.method public constructor <init>(Lcdi;Lihg;Landroid/content/res/Resources;Landroid/content/SharedPreferences;Lell;Ljew;Lgxb;Ldhi;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p11, Lcgk;->o:Lcgk;

    iput-object p11, p0, Lfes;->k:Lkad;

    const/4 p11, 0x0

    iput-object p11, p0, Lfes;->l:Ljava/util/concurrent/ScheduledFuture;

    iput-object p11, p0, Lfes;->d:Lkad;

    iput-object p2, p0, Lfes;->a:Lihg;

    iput-object p3, p0, Lfes;->f:Landroid/content/res/Resources;

    iput-object p4, p0, Lfes;->g:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lfes;->b:Lell;

    iput-object p6, p0, Lfes;->n:Ljew;

    iput-object p7, p0, Lfes;->e:Lgxb;

    iput-object p9, p0, Lfes;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p10, p0, Lfes;->c:Landroid/os/Handler;

    sget-object p2, Ldhv;->s:Ldhj;

    invoke-interface {p8, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    iput-boolean p2, p0, Lfes;->i:Z

    iput-object p1, p0, Lfes;->m:Lcdi;

    return-void
.end method

.method private final declared-synchronized e()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfes;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lfcz;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lfcz;-><init>(Lfes;I)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lfes;->l:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfes;->l:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lfes;->l:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lfes;->d:Lkad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfes;->d:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    iput-object v1, p0, Lfes;->d:Lkad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfes;->n:Ljew;

    const-string v1, "long_press"

    invoke-virtual {v0, v1}, Ljew;->X(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lfes;->n:Ljew;

    const-string v2, "long_press"

    invoke-virtual {v1, v2, v0}, Ljew;->aa(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Liem;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfes;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfes;->j:Liem;

    sget-object v1, Liem;->a:Liem;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lfes;->j:Liem;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Liem;->H:Liem;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lfes;->e()V

    :cond_1
    iget-object v0, p0, Lfes;->j:Liem;

    sget-object v1, Liem;->f:Liem;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Liem;->e:Liem;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lfes;->g:Landroid/content/SharedPreferences;

    const-string v1, "finish_video_capture"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lfes;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "finish_video_capture"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object v0, p0, Lfes;->j:Liem;

    sget-object v1, Liem;->H:Liem;

    if-eq v0, v1, :cond_3

    sget-object v1, Liem;->I:Liem;

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Liem;->a:Liem;

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lfes;->i:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lfes;->f()V

    :cond_4
    iget-object v0, p0, Lfes;->g:Landroid/content/SharedPreferences;

    const-string v1, "finish_long_shot_capture"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lfes;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "finish_long_shot_capture"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    sget-object v0, Liem;->a:Liem;

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lfes;->k:Lkad;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lkad;->close()V

    :cond_6
    iput-object p1, p0, Lfes;->j:Liem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfes;->j:Liem;

    sget-object v1, Liem;->a:Liem;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lfes;->n:Ljew;

    const-string v1, "long_press"

    invoke-virtual {v0, v1}, Ljew;->X(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfes;->g:Landroid/content/SharedPreferences;

    const-string v1, "finish_video_capture"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfes;->g:Landroid/content/SharedPreferences;

    const-string v1, "finish_long_shot_capture"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfes;->a:Lihg;

    iget-object v0, v0, Lihg;->l:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lfes;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfes;->a:Lihg;

    iget-object v0, v0, Lihg;->l:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lfes;->f:Landroid/content/res/Resources;

    div-int/lit8 v0, v0, 0x2

    const v2, 0x7f070285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lfes;->f:Landroid/content/res/Resources;

    const v2, 0x7f070283

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lifx;

    iget-object v2, p0, Lfes;->f:Landroid/content/res/Resources;

    const v3, 0x7f140269

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lifx;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfes;->a:Lihg;

    iget-object v2, v2, Lihg;->l:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lifx;->c(Landroid/view/View;I)V

    invoke-interface {v1}, Lify;->i()V

    invoke-interface {v1}, Lifz;->k()V

    invoke-interface {v1}, Liga;->m()V

    invoke-interface {v1}, Liga;->n()V

    const/16 v0, 0x5dc

    iput v0, v1, Lifx;->d:I

    invoke-interface {v1}, Liga;->l()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lifx;->g:Z

    new-instance v2, Lfcz;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lfcz;-><init>(Lfes;I)V

    iget-object v3, p0, Lfes;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v2, v3}, Liga;->g(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Lfes;->b:Lell;

    iput-object v2, v1, Lifx;->i:Lell;

    const/4 v2, 0x4

    iput v2, v1, Lifx;->m:I

    iput-boolean v0, v1, Lifx;->f:Z

    invoke-interface {v1}, Liga;->a()Lkad;

    move-result-object v0

    iput-object v0, p0, Lfes;->k:Lkad;

    iget-object v0, p0, Lfes;->m:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v1, p0, Lfes;->k:Lkad;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
