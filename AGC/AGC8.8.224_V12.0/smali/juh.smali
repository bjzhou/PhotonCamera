.class public final Ljuh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final a:Ljui;

.field public static final b:Ljuh;

.field private static final c:Ljava/lang/ThreadLocal;


# instance fields
.field private final d:Ljui;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljud;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Ljud;-><init>(Landroid/os/Handler;)V

    sput-object v0, Ljuh;->a:Ljui;

    new-instance v1, Ljuh;

    invoke-direct {v1, v0}, Ljuh;-><init>(Ljui;)V

    sput-object v1, Ljuh;->b:Ljuh;

    new-instance v0, Ljug;

    invoke-direct {v0}, Ljug;-><init>()V

    sput-object v0, Ljuh;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Ljuh;->a:Ljui;

    invoke-direct {p0, v0}, Ljuh;-><init>(Ljui;)V

    return-void
.end method

.method public constructor <init>(Ljui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljuh;->d:Ljui;

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    const-string v1, "Not main thread."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    return-void
.end method

.method public static b()V
    .locals 2

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Is main thread."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Ljuh;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Ljuh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Ljuh;->d:Ljui;

    invoke-interface {v0, p1}, Ljui;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ljuh;->d:Ljui;

    invoke-interface {v0, p1}, Ljui;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
