.class public Lfbd;
.super Lbin/mt/signature/KillerApplication;


# static fields
.field protected static final i:J


# instance fields
.field public final j:Lezy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/pairip/StartupLauncher;->launch()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sput-wide v0, Lfbd;->i:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lezy;

    invoke-direct {v0}, Lezy;-><init>()V

    iput-object v0, p0, Lfbd;->j:Lezy;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lfbd;->j:Lezy;

    sget-object v1, Lezq;->d:Lezq;

    invoke-virtual {v0, v1}, Lezy;->f(Lfaj;)V

    iput-object v1, v0, Lezy;->d:Lfaj;

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public final onTerminate()V
    .locals 3

    iget-object v0, p0, Lfbd;->j:Lezy;

    iget-object v1, v0, Lezy;->d:Lfaj;

    invoke-virtual {v0, v1}, Lezy;->a(Lfaj;)V

    iget-object v0, v0, Lezy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfaz;

    instance-of v2, v1, Lfae;

    if-eqz v2, :cond_0

    check-cast v1, Lfae;

    invoke-interface {v1}, Lfae;->a()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
