.class public final Lcom/pairip/StartupLauncher;
.super Ljava/lang/Object;


# static fields
.field private static launchCalled:Z = false

.field private static startupProgramName:Ljava/lang/String; = "qNYRSawD6QXgskJf"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized launch()V
    .locals 3

    const-class v0, Lcom/pairip/StartupLauncher;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/pairip/StartupLauncher;->launchCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/pairip/StartupLauncher;->launchCalled:Z

    sget-object v1, Lcom/pairip/StartupLauncher;->startupProgramName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
