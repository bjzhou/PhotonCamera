.class public Lcom/google/android/apps/camera/keepalive/ProcessGcService;
.super Landroid/app/job/JobService;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Lfbz;

.field public c:Lend;

.field public d:Landroid/os/Handler;

.field public e:Llas;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/keepalive/ProcessGcService"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->f:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->b:Lfbz;

    sget-object v1, Lnko;->d:Lnko;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_0
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lnko;

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lnko;->b:I

    iget p1, v2, Lnko;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v2, Lnko;->a:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_1
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnko;

    iget v4, p1, Lnko;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Lnko;->a:I

    iput-wide v2, p1, Lnko;->c:J

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnko;

    invoke-interface {v0, p1}, Lfbz;->J(Lnko;)V

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lemj;

    const-class v2, Leni;

    invoke-interface {v0, v2}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object v0

    check-cast v0, Leni;

    invoke-interface {v0, p0}, Leni;->i(Lcom/google/android/apps/camera/keepalive/ProcessGcService;)V

    iput-boolean v1, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->f:Z

    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v2, "keepalive_sig"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->e:Llas;

    iget-wide v4, v0, Llas;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->a(I)V

    invoke-static {p0}, Lgxb;->o(Landroid/content/Context;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/keepalive/ProcessGcService;->d:Landroid/os/Handler;

    new-instance v2, Lekf;

    const/16 v3, 0x8

    invoke-direct {v2, p0, p1, v3}, Lekf;-><init>(Lcom/google/android/apps/camera/keepalive/ProcessGcService;Landroid/app/job/JobParameters;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
