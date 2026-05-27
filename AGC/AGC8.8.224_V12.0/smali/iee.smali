.class public final Liee;
.super Ljava/lang/Object;

# interfaces
.implements Liec;
.implements Lfaz;
.implements Lfan;
.implements Lfax;
.implements Lfat;
.implements Lfav;
.implements Lkad;
.implements Lezh;
.implements Lezm;


# static fields
.field private static final b:Lnak;


# instance fields
.field public a:I

.field private final c:Landroid/view/Window;

.field private final d:Ljuw;

.field private final e:Ljava/lang/Runnable;

.field private final f:Landroid/content/Intent;

.field private final g:Landroid/os/PowerManager;

.field private final h:Leoa;

.field private final i:Lkad;

.field private j:Z

.field private k:Z

.field private l:I

.field private final m:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/screenon/ScreenOnControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Liee;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Ljuh;Landroid/view/Window;Leoa;Ljew;Ljava/util/concurrent/ScheduledExecutorService;Lchs;Landroid/content/Intent;Landroid/os/PowerManager;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p9, 0x0

    iput-boolean p9, p0, Liee;->j:Z

    const/4 p9, 0x1

    iput-boolean p9, p0, Liee;->k:Z

    iput p9, p0, Liee;->l:I

    iput p9, p0, Liee;->a:I

    iput-object p2, p0, Liee;->c:Landroid/view/Window;

    iput-object p7, p0, Liee;->f:Landroid/content/Intent;

    iput-object p8, p0, Liee;->g:Landroid/os/PowerManager;

    iput-object p3, p0, Liee;->h:Leoa;

    iput-object p4, p0, Liee;->m:Ljew;

    new-instance p2, Ljuw;

    const-wide/32 p3, 0x1d4c0

    sget-object p7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p2, p5, p3, p4, p7}, Ljuw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    iput-object p2, p0, Liee;->d:Ljuw;

    new-instance p2, Lied;

    invoke-direct {p2, p0, p1}, Lied;-><init>(Liee;Ljuh;)V

    invoke-virtual {p6, p2}, Lchs;->a(Lchr;)Lkad;

    move-result-object p2

    iput-object p2, p0, Liee;->i:Lkad;

    new-instance p2, Licv;

    const/4 p3, 0x4

    const/4 p4, 0x0

    invoke-direct {p2, p0, p3, p4}, Licv;-><init>(Liee;I[B)V

    new-instance p3, Lhqn;

    const/16 p4, 0xa

    invoke-direct {p3, p1, p2, p4}, Lhqn;-><init>(Ljuh;Ljava/lang/Runnable;I)V

    iput-object p3, p0, Liee;->e:Ljava/lang/Runnable;

    return-void
.end method

.method private final l(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "extra_turn_screen_on"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Liee;->g:Landroid/os/PowerManager;

    const v0, 0x1000000a

    const-string v1, "camera_screen_on"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private final m()V
    .locals 1

    iget-boolean v0, p0, Liee;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Liee;->k()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Liee;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Liee;->i()V

    :cond_0
    return-void
.end method

.method public final bL(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Liee;->l(Landroid/content/Intent;)V

    return-void
.end method

.method public final bM()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Liee;->k:Z

    iput v0, p0, Liee;->a:I

    invoke-virtual {p0}, Liee;->f()V

    invoke-virtual {p0}, Liee;->k()V

    iget-object v1, p0, Liee;->m:Ljew;

    iget-object v1, v1, Ljew;->a:Ljava/lang/Object;

    check-cast v1, Lkbm;

    invoke-virtual {v1, v0}, Lkbm;->a(I)V

    return-void
.end method

.method public final bN()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Liee;->k:Z

    invoke-virtual {p0}, Liee;->k()V

    iget-object v0, p0, Liee;->m:Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Lkbm;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lkbm;->a(I)V

    return-void
.end method

.method public final bO()V
    .locals 0

    invoke-virtual {p0}, Liee;->i()V

    return-void
.end method

.method public final bQ()V
    .locals 3

    invoke-virtual {p0}, Liee;->i()V

    iget-object v0, p0, Liee;->f:Landroid/content/Intent;

    invoke-direct {p0, v0}, Liee;->l(Landroid/content/Intent;)V

    iget-object v0, p0, Liee;->h:Leoa;

    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Liee;)V

    iget-object v2, v0, Leoa;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Leoa;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Liee;->j:Z

    iget-object v0, p0, Liee;->i:Lkad;

    invoke-interface {v0}, Lkad;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Liee;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Liee;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "session closed. will NOT mute ringtone."

    const/16 v2, 0x1073

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Liee;->m:Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Lkbm;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lkbm;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Liee;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Liee;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "session closed. will NOT restore ringtone."

    const/16 v2, 0x1074

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Liee;->m:Ljew;

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    check-cast v0, Lkbm;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lkbm;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Liee;->a:I

    invoke-direct {p0}, Liee;->m()V

    return-void
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Liee;->a:I

    invoke-direct {p0}, Liee;->m()V

    return-void
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Ljuh;->a()V

    iget v0, p0, Liee;->a:I

    const/16 v1, 0x80

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Liee;->l:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Liee;->c:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iget v0, p0, Liee;->a:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Liee;->l:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Liee;->c:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    iget-object v0, p0, Liee;->d:Ljuw;

    invoke-virtual {v0}, Ljuw;->b()V

    iget v0, p0, Liee;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Liee;->d:Ljuw;

    iget-object v1, p0, Liee;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljuw;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget v0, p0, Liee;->a:I

    iput v0, p0, Liee;->l:I

    return-void
.end method
