.class public final Lcgu;
.super Ljava/lang/Object;

# interfaces
.implements Lbna;
.implements Lchi;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/os/Handler;

.field public c:Lbna;

.field public d:Lbne;

.field public e:Lkll;

.field public final f:Ljava/util/HashSet;

.field private final g:Lcgt;

.field private final h:Lkbx;

.field private final i:Lklj;

.field private final j:Landroid/app/admin/DevicePolicyManager;

.field private final k:Ljava/util/concurrent/Executor;

.field private final l:Ljava/util/concurrent/Semaphore;

.field private m:Lbnr;

.field private final n:Lbnu;

.field private final o:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/app/LegacyCameraController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcgu;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcgt;Lkbx;Lklj;Landroidx/wear/ambient/AmbientDelegate;Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Semaphore;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p9, 0x0

    iput-object p9, p0, Lcgu;->e:Lkll;

    new-instance p9, Ljava/util/HashSet;

    invoke-direct {p9}, Ljava/util/HashSet;-><init>()V

    iput-object p9, p0, Lcgu;->f:Ljava/util/HashSet;

    new-instance p9, Lerr;

    const/4 p10, 0x1

    invoke-direct {p9, p0, p10}, Lerr;-><init>(Lcgu;I)V

    iput-object p9, p0, Lcgu;->n:Lbnu;

    iput-object p1, p0, Lcgu;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcgu;->g:Lcgt;

    iput-object p6, p0, Lcgu;->j:Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcgu;->o:Landroidx/wear/ambient/AmbientDelegate;

    iput-object p3, p0, Lcgu;->h:Lkbx;

    iput-object p4, p0, Lcgu;->i:Lklj;

    iput-object p7, p0, Lcgu;->k:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcgu;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Lcgt;->a()Lbnr;

    move-result-object p3

    iput-object p3, p0, Lcgu;->m:Lbnr;

    if-nez p3, :cond_0

    iget-object p3, p0, Lcgu;->c:Lbna;

    if-eqz p3, :cond_0

    const/4 p4, -0x1

    const-string p5, "GETTING_CAMERA_INFO"

    invoke-interface {p3, p4, p5}, Lbna;->c(ILjava/lang/String;)V

    :cond_0
    new-instance p3, Lbnv;

    invoke-direct {p3, p9, p1}, Lbnv;-><init>(Lbnu;Landroid/os/Handler;)V

    invoke-virtual {p2, p3}, Lcgt;->c(Lbnv;)V

    return-void
.end method

.method private final n(Lcgt;Lkll;Landroid/os/Handler;Lbna;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcgu;->j:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgu;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {p2}, Lkll;->a()I

    move-result v0

    invoke-virtual {p1, p3, v0, p4}, Lcgt;->b(Landroid/os/Handler;ILbna;)V

    return-void

    :cond_0
    new-instance p1, Ldnp;

    invoke-direct {p1}, Ldnp;-><init>()V

    throw p1
    :try_end_0
    .catch Ldnp; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p1, Lcfz;

    const/4 v0, 0x6

    invoke-direct {p1, p4, p2, v0}, Lcfz;-><init>(Lbna;Lkll;I)V

    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcgu;->c:Lbna;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lbna;->a(I)V

    :cond_0
    invoke-virtual {p0}, Lcgu;->k()V

    return-void
.end method

.method public final declared-synchronized b(Lbne;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lbne;->a()I

    move-result v0

    iget-object v1, p0, Lcgu;->e:Lkll;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkll;->a()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lbne;->g()Lbnx;

    move-result-object v3

    invoke-virtual {v3}, Lbnx;->a()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    iget-object v1, p0, Lcgu;->d:Lbne;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbne;->a()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v2}, Lcgu;->m(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcgu;->e:Lkll;

    iput-object p1, p0, Lcgu;->d:Lbne;

    iget-object v0, p0, Lcgu;->c:Lbna;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lbna;->b(Lbne;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcgu;->c:Lbna;

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " opened, but in UNOPENED state"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbna;->c(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    invoke-virtual {p0, v2}, Lcgu;->m(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final c(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcgu;->c:Lbna;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lbna;->c(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcgu;->k()V

    return-void
.end method

.method public final d(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcgu;->g(I)V

    iget-object v0, p0, Lcgu;->c:Lbna;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lbna;->d(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcgu;->k()V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcgu;->m:Lbnr;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lbnr;->a()I

    move-result v0

    return v0
.end method

.method public final f(I)Lbnq;
    .locals 1

    iget-object v0, p0, Lcgu;->m:Lbnr;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lbnr;->b(I)Lbnq;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized g(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcgu;->e:Lkll;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkll;->a()I

    :cond_0
    iget-object v0, p0, Lcgu;->e:Lkll;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkll;->a()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcgu;->e:Lkll;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcgu;->e:Lkll;

    if-nez v0, :cond_0

    sget-object v0, Lcgu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "doRequestCamera: might be interrupted by early release. return"

    const/16 v2, 0x95

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcgu;->o:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1, v0}, Landroidx/wear/ambient/AmbientDelegate;->R(Lkll;)V

    iget-object v1, p0, Lcgu;->g:Lcgt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcgu;->d:Lbne;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcgu;->b:Landroid/os/Handler;

    invoke-direct {p0, v1, v0, v2, p0}, Lcgu;->n(Lcgt;Lkll;Landroid/os/Handler;Lbna;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lbne;->a()I

    move-result v1

    invoke-virtual {v0}, Lkll;->a()I

    move-result v3

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcgu;->m(Z)V

    iget-object v1, p0, Lcgu;->g:Lcgt;

    iget-object v2, p0, Lcgu;->b:Landroid/os/Handler;

    invoke-direct {p0, v1, v0, v2, p0}, Lcgu;->n(Lcgt;Lkll;Landroid/os/Handler;Lbna;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcgu;->b:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Lbne;->h()Lbny;

    move-result-object v1

    new-instance v3, Lblx;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v0, p0, v4}, Lblx;-><init>(Lbne;Landroid/os/Handler;Lbna;I)V

    invoke-virtual {v1, v3}, Lbny;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Lbne;->d()Lbni;

    move-result-object v1

    invoke-virtual {v1}, Lbni;->c()Lbnv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbnv;->c(Ljava/lang/RuntimeException;)V

    :goto_0
    iget-object v0, p0, Lcgu;->g:Lcgt;

    invoke-virtual {v0}, Lcgt;->a()Lbnr;

    move-result-object v0

    iput-object v0, p0, Lcgu;->m:Lbnr;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic i()V
    .locals 2

    invoke-interface {p0}, Lchi;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Lchi;->j(I)V

    :cond_0
    return-void
.end method

.method public final j(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcgu;->g(I)V

    iget-object v0, p0, Lcgu;->d:Lbne;

    if-nez v0, :cond_0

    sget-object v0, Lcgu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x99

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "releaseCamera: Try to release a not-yet-available camera(%s). Wait till it\'s available"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lbne;->a()I

    move-result v0

    if-eq v0, p1, :cond_1

    sget-object v1, Lcgu;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x98

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "releaseCamera: Try to release a camera that is not opened. current=%s id=%s"

    invoke-interface {v1, v2, v0, p1}, Lnah;->s(Ljava/lang/String;II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcgu;->o:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, p0, Lcgu;->i:Lklj;

    invoke-interface {v1, p1}, Lklj;->c(I)Lkll;

    move-result-object p1

    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v2, :cond_2

    check-cast v2, Lkll;

    invoke-virtual {v2, p1}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcgu;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgu;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_0
    return-void
.end method

.method public final synthetic l()V
    .locals 4

    invoke-interface {p0}, Lchi;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcgu;->i:Lklj;

    invoke-interface {v1, v0}, Lklj;->c(I)Lkll;

    move-result-object v1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcgu;->e:Lkll;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v2, p0, Lcgu;->e:Lkll;

    invoke-virtual {v2}, Lkll;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Lcgu;->j(I)V

    :cond_1
    iput-object v1, p0, Lcgu;->e:Lkll;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcgu;->h:Lkbx;

    invoke-interface {v1}, Lkbx;->a()V

    iget-object v1, p0, Lcgu;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lbbh;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v0, v3}, Lbbh;-><init>(Lcgu;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method public final m(Z)V
    .locals 1

    iget-object v0, p0, Lcgu;->g:Lcgt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcgt;->d(Z)V

    invoke-virtual {p0}, Lcgu;->k()V

    return-void
.end method
